#!/bin/sh

# URL to download
URL="https://objects.githubusercontent.com/github-production-release-asset-2e65be/201858552/619d0c12-2b10-4965-8ac3-62058ea775f1?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240626%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240626T170816Z&X-Amz-Expires=300&X-Amz-Signature=b6a70989acea2734c38df4d5439bb71675c434ff9685b01fe9a6516366e66923&X-Amz-SignedHeaders=host&actor_id=173768024&key_id=0&repo_id=201858552&response-content-disposition=attachment%3B%20filename%3DXQuartz-2.8.5.pkg&response-content-type=application%2Foctet-stream"

# Destination file name
DEST="XQuartz-2.8.5.pkg"

# Download the file
fetch -o $DEST "$URL"

# Check if the download was successful
if [ $? -eq 0 ]; then
  echo "Download completed successfully."
else
  echo "Download failed."
fi
