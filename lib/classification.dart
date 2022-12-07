import 'package:flutter/material.dart';
import 'package:greengrocer_detector/camera_capture.dart';
import 'package:greengrocer_detector/file_upload.dart';
import 'package:greengrocer_detector/main.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class Classification extends StatelessWidget {
  const Classification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawer(),
    appBar: AppBar(
      title: Text(
            'Two options to upload files'
      ),
      backgroundColor: Colors.green,
    ),
    body: Container(
      color: Colors.transparent,
      height: 650,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IconButton(
            padding: EdgeInsets.all(20.0),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => FileUpload())),
                icon: Icon(
                  Icons.file_upload,
                  size: 80,
                  color: Colors.black,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          IconButton(
            padding: EdgeInsets.all(30.0),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CameraCapture())),
            icon: Icon(
              Icons.camera,
              size: 80,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}