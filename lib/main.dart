import 'package:flutter/material.dart';
import 'modules/tv_gesture_detector.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tv_gesture_detector Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TV_Gesture_Page(),
    );
  }
}

class TV_Gesture_Page extends StatefulWidget {
  @override
  _TV_Gesture_PageState createState() => _TV_Gesture_PageState();
}

class _TV_Gesture_PageState extends State<TV_Gesture_Page> {
  String keypress = "";

  @override
  Widget build(BuildContext context) {
    return TVAppGestureDetector(
      onPressKey: (key) {
        setState(() {
          this.keypress = key;
        });
      },
      child: Scaffold(
          body: Center(
        child: Text("key:${keypress}"),
      )),
    );
  }
}
