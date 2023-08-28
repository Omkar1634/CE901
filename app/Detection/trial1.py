import cv2
import numpy as np
from scipy.spatial.distance import euclidean

# Load the pre-trained OpenPose model
net = cv2.dnn.readNetFromTensorflow("path/to/openpose/model.pb")

# Function to extract pose keypoints from a frame using OpenPose
def extract_pose_keypoints(frame):
    # Prepare the frame for OpenPose
    blob = cv2.dnn.blobFromImage(frame, 1.0, (368, 368), (127.5, 127.5, 127.5), swapRB=True, crop=False)
    # Set the prepared frame as input to the network
    net.setInput(blob)
    # Forward pass through the network
    output = net.forward()

    # Extract pose keypoints from the output
    keypoints = output[0, :, :, :2]  # Take only x, y coordinates (omit confidence scores)
    return keypoints

# Function to compare two pose keypoints using a distance-based similarity measure
def compare_poses(keypoints1, keypoints2):
    # Calculate the Euclidean distance between corresponding keypoints
    distances = [euclidean(kp1, kp2) for kp1, kp2 in zip(keypoints1, keypoints2)]
    # Calculate the average distance as the similarity score
    similarity_score = np.mean(distances)
    return similarity_score

# Open the video file
video_path = "path/to/video.mp4"
video = cv2.VideoCapture(video_path)

# Read the first frame
ret, frame_correct = video.read()

# Extract pose keypoints from the first frame (assumed to be a correct pose)
keypoints_correct = extract_pose_keypoints(frame_correct)

# Variable to keep track of the frame number
frame_num = 0

# Loop through the remaining frames in the video
while True:
    # Read the next frame
    ret, frame_potentially_incorrect = video.read()
    if not ret:
        break

    # Extract pose keypoints from the frame
    keypoints_potentially_incorrect = extract_pose_keypoints(frame_potentially_incorrect)

    # Compare the two poses using the similarity measure
    similarity_score = compare_poses(keypoints_correct, keypoints_potentially_incorrect)

    # Define a threshold to determine if the pose is correct or incorrect
    threshold = 0.2

    # Compare the similarity score with the threshold
    if similarity_score <= threshold:
        print(f"Frame {frame_num}: The pose is correct.")
    else:
        print(f"Frame {frame_num}: The pose is incorrect.")

    # Increment the frame number
    frame_num += 1

# Release the video object and close any open windows
video.release()
cv2.destroyAllWindows()
