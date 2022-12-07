import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class FileUpload extends StatefulWidget {
  const FileUpload({Key? key}) : super(key: key);

  @override
  State<FileUpload> createState() => _FileUploadState();
}

class _FileUploadState extends State<FileUpload> {

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      var postUri = Uri.parse("http://127.0.0.1:8000/classify");
      var request = http.MultipartRequest("POST", postUri);
      request.files
          .add(await http.MultipartFile.fromPath('file', tempImage.path));
      request.send().then((result) async {
        http.Response.fromStream(result).then((response) async {
          var body = json.decode(response.body);
          // Text(
          //     body['FruitName'],
          // ),
          // print("User Upload Profile " + body.toString());
          // if(body!=null){
          //   Navigator.pop(context);
          //   Navigator.pop(context);
          // }
        });
      });
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  bool showImageLoader = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 140.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 32.5,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/logo.png'),
                ),
              ],
            ),
            Text(
              'T-Urban India',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
            ),
            Text(
              'Pride of India',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            Container(
              height: 161.0,
              width: 282.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: GestureDetector(
                child: Icon(
                  Icons.add_a_photo,
                  size: 50.0,
                ),
                onTap: () {

                },
              ),
            ),
            SizedBox(
              height: 70.0,
            ),
            InkWell(
              onTap: () {
                pickImage(ImageSource.gallery);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffEB3527),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                height: 50.0,
                width: 310.0,
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
