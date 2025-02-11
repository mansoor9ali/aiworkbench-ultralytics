#!/bin/bash
# This file contains bash commands that will be executed at the beginning of the container build process,
# before any system packages or programming language specific package have been installed.
#
# Note: This file may be removed if you don't need to use it
sudo apt-get update

# Install ffmpeg and its dependencies
sudo apt-get install ffmpeg libsm6 libxext6 -y

# Check if the installation was successful (optional but recommended)
if [ $? -eq 0 ]; then
  echo "FFmpeg and dependencies installed successfully."
else
  echo "Error: Installation failed."
  exit 1  # Exit with a non-zero code to indicate failure
fi

# You can add more commands here if needed. For example, you might
# want to check the ffmpeg version:
ffmpeg -version

# Or use ffmpeg for something:
# ffmpeg -i input.mp4 output.avi 

exit 0 # Exit with a zero code to indicate success