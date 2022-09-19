import 'package:flutter/material.dart';

import '../constants.dart';


class CircularButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CircularButton({
    Key? key,
    required this.text,
    // required this.press,
    required this.onPressed,
    // this.press,


  }) : super(key: key);
  final String? text;
  // final SizedBox;
  // final Function? press;


  @override
  Widget build(BuildContext context) {
    bool _enabled = true;

    return Container(

      // width: 60,
      // height: (35),
      child:
      MaterialButton(
        shape:
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
           side:
           BorderSide(color: Colors.black12)

      ),
        color: (_enabled
            ? Colors.pink[50]
            : Colors.white
        ),

        onPressed: (){
        },
        child: Text(
          text!,
          style: TextStyle(
            fontSize: (20),
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
