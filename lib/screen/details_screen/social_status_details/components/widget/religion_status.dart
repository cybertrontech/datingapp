import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/constants.dart';
import 'package:flutter/material.dart';

class ReligiousStatus extends StatefulWidget {
  const ReligiousStatus({Key? key}) : super(key: key);

  @override
  State<ReligiousStatus> createState() => _ReligiousStatusState();
}

class _ReligiousStatusState extends State<ReligiousStatus> {
  bool athiestChosen = false;
  bool hinduChosen = false;
  bool buddhismChosen = false;
  bool christianChosen = false;
  bool muslimChosen = false;
  bool jewChosen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SemiHeadingText(text: "Religion"),
        SizedBox(
          height: 5,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 2,
          child: Row(
            children: [
              athiestChosen == true
                  ? CircularButton(
                      text: "Athiest",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Athiest",
                      onPressed: () {
                        setState(() {
                          athiestChosen = true;
                          hinduChosen = false;
                          buddhismChosen = false;
                          christianChosen = false;
                          muslimChosen = false;
                          jewChosen = false;
                        });
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
              hinduChosen == true
                  ? CircularButton(
                      text: "Hinduism",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Hinduism",
                      onPressed: () {
                        setState(() {
                          athiestChosen = false;
                          hinduChosen = true;
                          buddhismChosen = false;
                          christianChosen = false;
                          muslimChosen = false;
                          jewChosen = false;
                        });
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
              buddhismChosen == true
                  ? CircularButton(
                      text: "Buddhism",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Buddhism",
                      onPressed: () {
                        setState(() {
                          athiestChosen = false;
                          hinduChosen = false;
                          buddhismChosen = true;
                          christianChosen = false;
                          muslimChosen = false;
                          jewChosen = false;
                        });
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
              christianChosen == true
                  ? CircularButton(
                      text: "Christianity",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Christianity",
                      onPressed: () {
                        setState(() {
                          athiestChosen = false;
                          hinduChosen = false;
                          buddhismChosen = false;
                          christianChosen = true;
                          muslimChosen = false;
                          jewChosen = false;
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
              muslimChosen == true
                  ? CircularButton(
                      text: "Muslim",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Muslim",
                      onPressed: () {
                        setState(() {
                          athiestChosen = false;
                          hinduChosen = false;
                          buddhismChosen = false;
                          christianChosen = false;
                          muslimChosen = true;
                          jewChosen = false;
                        });
                      },
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              SizedBox(
                width: 5,
              ),
              jewChosen == true
                  ? CircularButton(
                      text: "Jew",
                      onPressed: () {},
                      color: kPrimaryColor,
                    )
                  : CircularButton(
                      text: "Jew",
                      onPressed: () {
                        setState(() {
                          athiestChosen = false;
                          hinduChosen = false;
                          buddhismChosen = false;
                          christianChosen = false;
                          muslimChosen = false;
                          jewChosen = true;
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
