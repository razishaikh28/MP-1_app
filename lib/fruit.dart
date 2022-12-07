import 'package:flutter/material.dart';
import 'package:greengrocer_detector/camera_capture.dart';
import 'package:greengrocer_detector/classification.dart';
import 'package:greengrocer_detector/file_upload.dart';
import 'package:greengrocer_detector/main.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greengrocer_detector/object_detection.dart';

class Fruit extends StatelessWidget {
  const Fruit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawer(),
    appBar: AppBar(
      title: Center(
        child: Text(
          'Fruit'
        ),
      ),
      backgroundColor: Colors.green,
    ),
    body: Container(
      color: Colors.transparent,
      height: 650,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedButton.strip(
            animatedOn: AnimatedOn.onHover,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Classification()),
              );
            },
            height: 70,
            width: 150,
            text: 'Classification',
            textStyle: TextStyle(
              // fontSize: 10,
              color: Colors.black,
            ),
            isReverse: true,
            selectedTextColor: Colors.black,
            stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
            backgroundColor: Colors.white,
            selectedBackgroundColor: Colors.lightGreen,
          ),
          AnimatedButton.strip(
            animatedOn: AnimatedOn.onHover,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ObjectDetection()),
              );
            },
            height: 70,
            width: 150,
            text: 'Object Detection',
            textStyle: TextStyle(
              // fontSize: 10,
              color: Colors.black,
            ),
            isReverse: true,
            selectedTextColor: Colors.black,
            stripTransitionType: StripTransitionType.RIGHT_TO_LEFT,

            selectedBackgroundColor: Colors.lightGreen,
          ),
        ],
      ),
    ),
  );
}