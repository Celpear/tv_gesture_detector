import 'package:flutter/material.dart';

class TVAppGestureDetector extends StatelessWidget {
  final Widget child;
  final Function onPressKey;
  String presskey;
  TVAppGestureDetector({this.child, this.onPressKey});
  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: new FocusNode(),
      onKey: (RawKeyEvent event) {
        switch (event.logicalKey.keyId.toString()) {
          case "42954261" + "30":
            presskey = "keyUp";
            break;
          case "42954261" + "28":
            presskey = "keyLeft";
            break;
          case "42954261" + "29":
            presskey = "keyDown";
            break;
          case "42954261" + "67":
            presskey = "keyKlick";
            break;
          case "42954261" + "27":
            presskey = "keyRight";
            break;
          case "42954261" + "49":
            presskey = "keySettings";
            break;
          case "4295753908":
            presskey = "keyFastBackward";
            break;
          case "4295753933":
            presskey = "keyPlayStop";
            break;
          case "4295753907":
            presskey = "keyFastForward";
            break;
          default:
            presskey = event.logicalKey.keyId.toString();
            break;
        }
        if (presskey != null && presskey != "") {
          onPressKey(presskey);
          presskey = "";
        }
      },
      child: child,
    );
  }
}
