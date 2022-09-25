import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/components/constant_text.dart';
import 'package:flutter/material.dart';

class ExployedIn extends StatelessWidget {
  const ExployedIn({Key? key}) : super(key: key);

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
              CircularButton(
                text: "Private Sector",
                onPressed: () {},
              ),
              SizedBox(
                width: 5,
              ),
              CircularButton(
                text: "Goverment/Public Sector",
                onPressed: () {},
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
              CircularButton(
                text: "Civil Services",
                onPressed: () {},
              ),
              SizedBox(
                width: 5,
              ),
              CircularButton(
                text: "Defence",
                onPressed: () {},
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
              CircularButton(
                text: "Business/ Self Employed",
                onPressed: () {},
              ),
              SizedBox(
                width: 5,
              ),
              CircularButton(
                text: "Not Working",
                onPressed: () {},
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
