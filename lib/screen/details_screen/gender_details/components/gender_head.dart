import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderHead extends StatefulWidget {
  const GenderHead({Key? key}) : super(key: key);

  @override
  State<GenderHead> createState() => _GenderHeadState();
}

class _GenderHeadState extends State<GenderHead> {
  bool color = true;

  bool chosenMale = false;
  bool chosenFemale = false;
  bool chosenOthers = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(text: "Lets start with the basics"),
        SemiText(
          text: "Adding these details would help ypu get suitable matches",
        ),
        // Text("Adding these details would help ypu get suitable matches",
        //   style: TextStyle(fontWeight:FontWeight.w500,fontSize: 10,color: Colors.black87),),

        SizedBox(
          height: 20,
        ),

        Text(
          "Gender",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Muli",
              fontSize: 15,
              color: Colors.black87),
        ),
        SizedBox(
          height: 0,
        ),
        Row(
          children: [
            chosenMale == true
                ? CircularButton(
                    text: "Male", onPressed: () {}, color: kPrimaryColor)
                : CircularButton(
                    text: "Male",
                    onPressed: () {
                      print("hello");
                      setState(() {
                        chosenMale = true;
                        chosenFemale = false;
                        chosenOthers = false;
                      });
                      Get.find<RegisterController>().gender("Male");
                    },
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
            SizedBox(
              width: 12,
            ),
            chosenFemale == true
                ? CircularButton(
                    text: "Female",
                    onPressed: () {},
                    color: kPrimaryColor,
                  )
                : CircularButton(
                    text: "Female",
                    onPressed: () {
                      setState(() {
                        chosenMale = false;
                        chosenFemale = true;
                        chosenOthers = false;
                      });
                      Get.find<RegisterController>().gender("Female");
                    },
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
            SizedBox(
              width: 12,
            ),
            chosenOthers == true
                ? CircularButton(
                    text: "Others",
                    onPressed: () {},
                    color: kPrimaryColor,
                  )
                : CircularButton(
                    text: "Others",
                    onPressed: () {
                      setState(() {
                        chosenMale = false;
                        chosenFemale = false;
                        chosenOthers = true;
                      });
                      Get.find<RegisterController>().gender("Others");
                    },
                    color: Color.fromARGB(255, 255, 255, 255),
                  )
          ],
        ),
      ],
    );
  }
}
