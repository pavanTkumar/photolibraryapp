#!/bin/bash

echo "Flutter iOS Build Diagnostic Report"
echo "===================================="

# Flutter and System Information
echo -e "\n1. System & Flutter Version:"
sw_vers
echo "---"
flutter --version
dart --version

# Xcode Configuration
echo -e "\n2. Xcode Configuration:"
xcode-select -p
xcodebuild -version

# Available Simulators
echo -e "\n3. Available Simulators:"
xcrun simctl list devices

# Flutter Devices
echo -e "\n4. Flutter Connected Devices:"
flutter devices

# CocoaPods Version
echo -e "\n5. CocoaPods Version:"
pod --version

# Simulator Runtime Information
echo -e "\n6. Simulator Runtime Details:"
xcrun simctl list runtimes

# Developer Tools Path
echo -e "\n7. Developer Tools Path:"
ls -l /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/

# Check for potential path conflicts
echo -e "\n8. Flutter and Dart Paths:"
which flutter
which dart

# Verbose Flutter Doctor
echo -e "\n9. Verbose Flutter Doctor:"
flutter doctor -v
