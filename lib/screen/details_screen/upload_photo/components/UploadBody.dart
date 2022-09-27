import 'dart:io';

import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/components/default_button.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/screen/details_screen/personal_details/personal_details.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadBody extends StatefulWidget {
  const UploadBody({Key? key}) : super(key: key);

  @override
  State<UploadBody> createState() => _UploadBodyState();
}

class _UploadBodyState extends State<UploadBody> {
  var imageURL;
  File? uploadImg;
  PickedFile? pickedFile;
  final ImagePicker _picker = ImagePicker();
  Future<void> getimagefromgallery() async {
    //set source: ImageSource.camera to get image from camera
    var choosedimage = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      uploadImg = File(choosedimage!.path);
      imageURL = File(choosedimage.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: (){
              getimagefromgallery();
            },
            child: CircleAvatar(radius: 40,
              backgroundColor: kPrimaryColor,
              child: imageURL == null

              ?Icon(Icons.add_a_photo,size: 35,color: Colors.white,)
            : Image.file(
                File(imageURL!.path),
                fit: BoxFit.cover,
              )
            ),
          ),
          SizedBox(height: 15,),
          SemiText(text: "Supported file format jpg,jpge,png"),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 85,right: 85),
            child: DefaultButton(
              text: "Upload Photo",

                press: () {
                  print("object");

                    Navigator.pushNamed(context, PersonalDetails.routeName);

                }
            ),
          ),
        ],
      ),
    );
  }
}
