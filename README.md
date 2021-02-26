# tv_gesture_detector

GestureDetector for FireTV.

## Description:

Currently it supports the gestures of fireTV remote control. Controller support is being worked on.

## How to use it:

Import the tv_gesture_detector.dart file and wrap your Scaffold() widget with the TVAppGestureDetector() widget. The widget has a callback function onPressKey: (key){} with a string as return value. If the input is not known it returns the pressed KeyID as default.

"keyUp",
"keyLeft,
"keyDown",
"keyKlick",
"keyRight",
"keySettings",
"FastBackward",
"keyPlayStop",
"keyFastForward"