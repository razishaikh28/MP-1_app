import 'package:flutter/material.dart';
import 'package:greengrocer_detector/main.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.green,
      ),
    );
}
