import cv2
import numpy as np
from scipy.spatial.distance import euclidean
import os

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

# Function to process a folder of poses
def process_poses(folder_path, keypoints_correct):
    # Get the list of files in the folder
    file_list = os.listdir(folder_path)

    # Loop through the files in the folder
    for file_name in file_list:
        # Read the frame
        frame = cv2.imread(os.path.join(folder_path, file_name))

        # Extract pose keypoints from the frame
        keypoints = extract_pose_keypoints(frame)

        # Compare the two poses using the similarity measure
        similarity_score = compare_poses(keypoints_correct, keypoints)

        # Define a threshold to determine if the pose is correct or incorrect
        threshold = 0.2

        # Compare the similarity score with the threshold
        if similarity_score <= threshold:
            print(f"{file_name}: The pose is correct.")
        else:
            print(f"{file_name}: The pose is incorrect.")

# Define the paths to the correct pose and incorrect pose folders
correct_pose_folder = "path/to/correct_pose_folder"
incorrect_pose_folder = "path/to/incorrect_pose_folder"

# Read the first frame from the correct pose folder
frame_correct = cv2.imread(os.path.join(correct_pose_folder, os.listdir(correct_pose_folder)[0]))

# Extract pose keypoints from the first frame (assumed to be a correct pose)
keypoints_correct = extract_pose_keypoints(frame_correct)

# Process the frames from the correct pose folder
print("Correct poses:")
process_poses(correct_pose_folder, keypoints_correct)

# Process the frames from the incorrect pose folder
print("\nIncorrect poses:")
process_poses(incorrect_pose_folder, keypoints_correct)
