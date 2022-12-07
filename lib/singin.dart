import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer_detector/camera_capture.dart';
import 'package:greengrocer_detector/reusable_widget/reusable_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  // final Dio _dio = Dio();
  // TextEditingController _passwordTextController = TextEditingController();
  // TextEditingController _emailTextController = TextEditingController();
  //
  // Future<void> login(String email, String password) async {
  //   try {
  //     Response response = await _dio.post(
  //       'http://127.0.0.1:8000/handlefile',
  //       data: {
  //         'email': email,
  //         'password': password
  //       },
  //       queryParameters: {'apikey': 'YOUR_API_KEY'},
  //     );
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),);
  //     //returns the successful user data json object
  //   } on DioError catch (e) {
  //     //returns the error object if any
  //     return e.response!.data;
  //   }
  // }

  // Future<void> loginUsers() async {
  //   if (_formKey.currentState!.validate()) {
  //     //show snackbar to indicate loading
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: const Text('Processing Data'),
  //       backgroundColor: Colors.green.shade300,
  //     ));
  //
  //     //get response from ApiClient
  //     dynamic res = await _apiClient.login(
  //       emailController.text,
  //       passwordController.text,
  //     );
  //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
  //
  //     //if there is no error, get the user's accesstoken and pass it to HomeScreen
  //     if (res['ErrorCode'] == null) {
  //       String accessToken = res['access_token'];
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) => HomeScreen(accesstoken: accessToken)));
  //     } else {
  //       //if an error occurs, show snackbar with error message
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         content: Text('Error: ${res['Message']}'),
  //         backgroundColor: Colors.red.shade300,
  //       ));
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // padding: EdgeInsets.only(
          //   top: 64 + MediaQuery.of(context).padding.top,
          //   bottom: 24,
          //   left: 150,
          //   right: 150,
          // ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.green,
                Colors.blue,
              ],
            )
          ),
          child: Column(
            children: [
              SizedBox(height: 22),
              ClipOval(
                clipBehavior: Clip.antiAlias,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 130,
                  child:Image(
                      image:  AssetImage(
                        "assets/app_logo.png",
                      )),
                ),
              ),
              SizedBox(height: 120),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                child: Container(
                  child: Text(
                    "Sign in",
                  ),
                ),
                onTap: (){

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}