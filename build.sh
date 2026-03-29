#!/bin/bash

# Exit on error
set -e

# Clone Flutter SDK if it doesn't exist
if [ ! -d "flutter_sdk" ]; then
  echo "Cloning Flutter SDK..."
  git clone https://github.com/flutter/flutter.git -b stable flutter_sdk
fi

# Add Flutter to PATH
export PATH="$PATH:$(pwd)/flutter_sdk/bin"

# Pre-download dependencies
flutter precache --web

# Build for web
echo "Building Flutter Web..."
flutter build web --release

echo "Build complete!"
