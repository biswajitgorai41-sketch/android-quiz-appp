#!/bin/bash

echo "🔨 Building Android Quiz App..."

# Make sure gradlew is executable
chmod +x gradlew

# Clean previous builds
echo "🧹 Cleaning previous builds..."
./gradlew clean

# Build debug APK
echo "📱 Building APK..."
./gradlew assembleDebug

# Check if build was successful
if [ -f "app/build/outputs/apk/debug/app-debug.apk" ]; then
    echo "✅ SUCCESS! APK built successfully!"
    echo "📁 APK location: app/build/outputs/apk/debug/app-debug.apk"
    echo "📲 Download this file and install on your Android device"
    
    # Show file size
    SIZE=$(du -h app/build/outputs/apk/debug/app-debug.apk | cut -f1)
    echo "📊 APK Size: $SIZE"
else
    echo "❌ Build failed! Check the error messages above."
fi 