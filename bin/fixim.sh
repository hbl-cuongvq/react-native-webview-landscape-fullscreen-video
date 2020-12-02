#!/usr/bin/env bash


if grep -qF "ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE" node_modules/react-native-webview/android/src/main/java/com/reactnativecommunity/webview/RNCWebViewManager.java; then
    echo "Fix landscape fullscreen webview"
    echo "Done"
else
    echo "Fix landscape fullscreen webview"
    sed -i -e 's/SCREEN_ORIENTATION_UNSPECIFIED/SCREEN_ORIENTATION_LANDSCAPE/g' node_modules/react-native-webview/android/src/main/java/com/reactnativecommunity/webview/RNCWebViewManager.java
    echo "Done"
fi
