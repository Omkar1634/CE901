from flask import Flask, render_template, request
import cv2
app = Flask(__name__, template_folder='templates')

net = cv2.dnn.readNetFromTensorflow("graph_opt.pb")  # weights

BODY_PARTS = {
    "Nose": 0, "Neck": 1, "RShoulder": 2, "RElbow": 3, "RWrist": 4,
    "LShoulder": 5, "LElbow": 6, "LWrist": 7, "RHip": 8, "RKnee": 9,
    "RAnkle": 10, "LHip": 11, "LKnee": 12, "LAnkle": 13, "REye": 14,
    "LEye": 15, "REar": 16, "LEar": 17, "Background": 18
}

POSE_PAIRS = [
    ["Neck", "RShoulder"], ["Neck", "LShoulder"], ["RShoulder", "RElbow"],
    ["RElbow", "RWrist"], ["LShoulder", "LElbow"], ["LElbow", "LWrist"],
    ["Neck", "RHip"], ["RHip", "RKnee"], ["RKnee", "RAnkle"], ["Neck", "LHip"],
    ["LHip", "LKnee"], ["LKnee", "LAnkle"], ["Neck", "Nose"], ["Nose", "REye"],
    ["REye", "REar"], ["Nose", "LEye"], ["LEye", "LEar"]
]

inWidth = 368
inHeight = 368
thr = 0.5


def detect_pose(video_path):
    cap = cv2.VideoCapture(video_path)

    detected_body_parts = set()

    if not cap.isOpened():
        raise IOError("Cannot open video")

    while True:
        hasFrame, frame = cap.read()
        if not hasFrame:
            break

        frameWidth = frame.shape[1]
        frameHeight = frame.shape[0]
        net.setInput(cv2.dnn.blobFromImage(frame, 1.0, (inWidth, inHeight), (127.5, 127.5, 127.5), swapRB=True, crop=False))
        out = net.forward()
        out = out[:, :19, :, :]

        assert len(BODY_PARTS) == out.shape[1]

        points = []

        for i in range(len(BODY_PARTS)):
            heatMap = out[0, i, :, :]
            _, conf, _, point = cv2.minMaxLoc(heatMap)
            x = (frameWidth * point[0]) / out.shape[3]
            y = (frameHeight * point[1]) / out.shape[2]
            points.append((int(x), int(y)) if conf > thr else None)

        for pair in POSE_PAIRS:
            partFrom = pair[0]
            partTo = pair[1]
            assert partFrom in BODY_PARTS
            assert partTo in BODY_PARTS

            idFrom = BODY_PARTS[partFrom]
            idTo = BODY_PARTS[partTo]

            if idFrom < len(points) and idTo < len(points):
                if points[idFrom] and points[idTo]:
                    cv2.line(frame, points[idFrom], points[idTo], (0, 255, 0), 3)
                    cv2.ellipse(frame, points[idFrom], (3, 3), 0, 0, 360, (0, 0, 255), cv2.FILLED)
                    cv2.ellipse(frame, points[idTo], (3, 3), 0, 0, 360, (0, 0, 255), cv2.FILLED)
            else:
                print("Invalid indices")

        for i in range(len(BODY_PARTS)):
            if points[i]:
                detected_body_parts.add(list(BODY_PARTS.keys())[i])

        cv2.imshow('POSE DETECTION', frame)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    cap.release()
    cv2.destroyAllWindows()
    return detected_body_parts


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        if 'video' not in request.files:
            return render_template('index.html', error='No video file selected')

        video = request.files['video']
        video.save('uploaded_video.mp4')

        # Print the BODY_PARTS and POSE_PAIRS
        print("BODY_PARTS:", BODY_PARTS)
        print("POSE_PAIRS:", POSE_PAIRS)

        detected_body_parts = detect_pose('uploaded_video.mp4')

        return render_template('index.html', video_uploaded=True)

    return render_template('index.html', video_uploaded=False)



if __name__ == '__main__':
    app.run(debug=True)
