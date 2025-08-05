#!/bin/bash

echo "🚀 Setting up Android development environment..."

# Update system
sudo apt-get update -y

# Install Java 11
echo "📦 Installing Java 11..."
sudo apt-get install -y openjdk-11-jdk

# Set JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
echo 'export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64' >> ~/.bashrc

# Create Android SDK directory
echo "📱 Setting up Android SDK..."
mkdir -p ~/android-sdk

# Download Android Command Line Tools
cd ~/android-sdk
wget -q https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
unzip -q commandlinetools-linux-9477386_latest.zip
mkdir -p cmdline-tools
mv cmdline-tools cmdline-tools/latest

# Set Android environment variables
export ANDROID_HOME=~/android-sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools
echo 'export ANDROID_HOME=~/android-sdk' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools' >> ~/.bashrc

# Accept Android licenses and install required components
echo "⚖️ Accepting Android licenses..."
yes | sdkmanager --licenses

echo "📦 Installing Android SDK components..."
sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"

# Download Gradle Wrapper JAR
echo "📦 Downloading Gradle Wrapper..."
mkdir -p gradle/wrapper
wget -q -O gradle/wrapper/gradle-wrapper.jar https://github.com/gradle/gradle/raw/master/gradle/wrapper/gradle-wrapper.jar

# Make gradlew executable
chmod +x gradlew

echo "✅ Setup complete! You can now build the app with: ./gradlew assembleDebug"
echo "📱 APK will be created in: app/build/outputs/apk/debug/" 