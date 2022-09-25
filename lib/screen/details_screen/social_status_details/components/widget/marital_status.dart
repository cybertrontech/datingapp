import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/constants.dart';
import 'package:flutter/material.dart';

class MaritalStatus extends StatefulWidget {
  const MaritalStatus({Key? key}) : super(key: key);

  @override
  State<MaritalStatus> createState() => _MaritalStatusState();
}

class _MaritalStatusState extends State<MaritalStatus> {
  bool marriedChosen = false;
  bool divorcedChosen = false;
  bool widowedChosen = false;
  bool anulledChosen = false;
  bool notmarriedChosen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SemiHeadingText(text: "Marital Status"),
        SizedBox(
          height: 5,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 2,
          child: Row(
            children: [
              marriedChosen == true
                  ? CircularButton(
                      text: "Married",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Married",
                      onPressed: () {
                        setState(() {
                          marriedChosen = true;
                          divorcedChosen = false;
                          widowedChosen = false;
                          anulledChosen = false;
                          notmarriedChosen = false;
                        });
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
              divorcedChosen == true
                  ? CircularButton(
                      text: "Divorced",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Divorced",
                      onPressed: () {
                        setState(() {
                          marriedChosen = false;
                          divorcedChosen = true;
                          widowedChosen = false;
                          anulledChosen = false;
                          notmarriedChosen = false;
                        });
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
              widowedChosen == true
                  ? CircularButton(
                      text: "Widowed",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Widowed",
                      onPressed: () {
                        setState(() {
                          marriedChosen = false;
                          divorcedChosen = false;
                          widowedChosen = true;
                          anulledChosen = false;
                          notmarriedChosen = false;
                        });
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 2,
          // color: Colors.red,
          child: Row(
            children: [
              anulledChosen == true
                  ? CircularButton(
                      text: "Anulled",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Anulled",
                      onPressed: () {
                        setState(() {
                          marriedChosen = false;
                          divorcedChosen = false;
                          widowedChosen = false;
                          anulledChosen = true;
                          notmarriedChosen = false;
                        });
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
              notmarriedChosen == true
                  ? CircularButton(
                      text: "Not Married",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Not Married",
                      onPressed: () {
                        setState(() {
                          marriedChosen = false;
                          divorcedChosen = false;
                          widowedChosen = false;
                          anulledChosen = false;
                          notmarriedChosen = true;
                        });
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
