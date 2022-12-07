import 'package:flutter/material.dart';
import 'package:greengrocer_detector/Profile.dart';
import 'package:greengrocer_detector/camera_capture.dart';
import 'package:greengrocer_detector/file_upload.dart';
import 'package:greengrocer_detector/fruit.dart';
import 'package:greengrocer_detector/vegetable.dart';
import 'package:greengrocer_detector/singin.dart';
// import 'package:greengrocer_detector/signup.dart';

void main() => runApp(const MaterialApp(
    debugShowCheckedModeBanner:false,
    home: Home(),
));

// class SignInPage extends StatefulWidget {
//   const SignInPage({Key? key}) : super(key: key);
//
//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }
//
// class _SignInPageState extends State<SignInPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SignIn();
//   }
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("Greengrocer Doctor",
        style: TextStyle(
          fontSize: 25,
        ),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      drawer: const NavigationDrawer(),
    );
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context)
        ],
      ),
    );

  Widget buildHeader(BuildContext context) => Container(
    color: Colors.green.shade500,
    padding: EdgeInsets.only(
      top: 24 + MediaQuery.of(context).padding.top,
      bottom: 24,
    ),
    child: Column(
      children: const [
        // CircleAvatar(
        //   radius: 52,
        //   backgroundImage: AssetImage("assets/app_logo.png",
        //   ),
        // ),
      ClipOval(
        clipBehavior: Clip.antiAlias,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 52,
          child:Image(
              image:  AssetImage(
                "assets/app_logo.png",
              )),
          ),
        ),
        SizedBox(height: 10),
        Text("Greengrocer Doctor",
        style: TextStyle( fontSize: 28, color: Colors.white,
          ),
        ),
        SizedBox(height: 7),
        Text("Qualitative analysis of fruits and vegitables",
          textAlign: TextAlign.center,
          style:
            TextStyle(
            fontSize: 14, color: Colors.white,
          ),
        ),
      ],
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),

    child: Wrap(
      // runSpacing: 0,
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text("Home"),
          onTap: () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Home(),
            )),
        ),
        ListTile(
          leading: const Icon(Icons.account_circle_outlined),
          title: const Text("Profile"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Profile(),
            ));
          }
        ),
        ListTile(
          leading: const Icon(Icons.add_card_sharp),
          title: const Text("Fruit"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Fruit(),
            ));
          }
        ),
        ListTile(
          leading: const Icon(Icons.add_card_sharp),
          title: const Text("Vegetable"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Vegetable(),
            ));
          }
        ),
        ListTile(
          leading: const Icon(Icons.accessibility_new_sharp),
          title: const Text("Accessibility"),
          onTap: () {},
        ),
        const Divider(color: Colors.black54,),
        ListTile(
          // leading: const Icon(Icons.),
          title: const Text("Sign Out",
          textAlign: TextAlign.center,),
          onTap: () {},
        ),
        ListTile(
          title: const Text("©2022 WCE, ALL RIGHTS RESERVED",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
          ),),
        ),
      ],
    ),
  );
}



