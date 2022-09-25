import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExployedIn extends StatefulWidget {
  const ExployedIn({Key? key}) : super(key: key);

  @override
  State<ExployedIn> createState() => _ExployedInState();
}

class _ExployedInState extends State<ExployedIn> {
  bool privateSectorChosen = false;
  bool governmentSectorChosen = false;
  bool defenseChosen = false;
  bool businessChosen = false;
  bool notWorkingChosen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SemiHeadingText(text: "Exployed In"),
        SizedBox(
          height: 5,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 2,
          child: Row(
            children: [
              privateSectorChosen == true
                  ? CircularButton(
                      text: "Private Sector",
                      onPressed: () {},
                      color: kPrimaryColor)
                  : CircularButton(
                      text: "Private Sector",
                      onPressed: () {
                        setState(() {
                          privateSectorChosen = true;
                          governmentSectorChosen = false;
                          defenseChosen = false;
                          businessChosen = false;
                          notWorkingChosen = false;
                        });
                        Get.find<RegisterController>()
                            .changeEmployedField("Private");
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
              governmentSectorChosen == true
                  ? CircularButton(
                      text: "Government/Public Sector",
                      onPressed: () {},
                      color: kPrimaryColor)
                  : CircularButton(
                      text: "Government/Public Sector",
                      onPressed: () {
                        setState(() {
                          privateSectorChosen = false;
                          governmentSectorChosen = true;
                          defenseChosen = false;
                          businessChosen = false;
                          notWorkingChosen = false;
                        });
                        Get.find<RegisterController>()
                            .changeEmployedField("Government");
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 2,
          // color: Colors.red,
          child: Row(
            children: [
              defenseChosen == true
                  ? CircularButton(
                      text: "Defence", onPressed: () {}, color: kPrimaryColor)
                  : CircularButton(
                      text: "Defense",
                      onPressed: () {
                        setState(() {
                          privateSectorChosen = false;
                          governmentSectorChosen = false;
                          defenseChosen = true;
                          businessChosen = false;
                          notWorkingChosen = false;
                        });
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 2,
          // color: Colors.red,
          child: Row(
            children: [
              businessChosen == true
                  ? CircularButton(
                      text: "Business/Self Employed",
                      onPressed: () {},
                      color: kPrimaryColor)
                  : CircularButton(
                      text: "Business/Self Employed",
                      onPressed: () {
                        setState(() {
                          privateSectorChosen = false;
                          governmentSectorChosen = false;
                          defenseChosen = false;
                          businessChosen = true;
                          notWorkingChosen = false;
                        });
                        Get.find<RegisterController>()
                            .changeEmployedField("Business");
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 5,
              ),
              notWorkingChosen == true
                  ? CircularButton(
                      text: "Not Working",
                      onPressed: () {},
                      color: kPrimaryColor)
                  : CircularButton(
                      text: "Not working",
                      onPressed: () {
                        setState(() {
                          privateSectorChosen = false;
                          governmentSectorChosen = false;
                          defenseChosen = false;
                          businessChosen = false;
                          notWorkingChosen = true;
                        });
                        Get.find<RegisterController>()
                            .changeEmployedField("Notworking");
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
