// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors, library_private_types_in_public_api, unnecessary_import, avoid_unnecessary_containers

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';

class UploadImageButton extends StatefulWidget {
  @override
  _UploadImageButtonState createState() => _UploadImageButtonState();
}

class _UploadImageButtonState extends State<UploadImageButton> {
  File? _image;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _getImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: height*0.40),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Upload Image",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.055,
                      )
                    ),
                  ),

                  GestureDetector(
                    onTap: _getImage,
                    child: Container(
                      margin: EdgeInsets.only(left: width*0.04, top: height*0.04),
                      child: Image(
                        image: AssetImage('assets/icons/Upload.png'),
                          width: width*0.06,
                          height: height*0.06,
                          fit: BoxFit.contain,
                      ),
                    ),
                  ),               
                ] 
              ),
            ),

            _image == null
                ? Text('No image selected.')
                : Image.file(_image!),

            
            
            
          ],
        ),
      ),
    );
  }
}

