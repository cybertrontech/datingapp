import 'package:flutter/material.dart';

import '../constants.dart';

class CircularButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? color;

  CircularButton({
    Key? key,
    required this.text,
    // required this.press,
    required this.onPressed,
    required this.color,
    // this.press,
  }) : super(key: key);
  final String? text;
  // final SizedBox;
  // final Function? press;

  @override
  Widget build(BuildContext context) {
    bool _enabled = false;
    return Container(
      // width: 60,
      // height: (35),
      child: MaterialButton(
        minWidth: 1,
        height: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.black12)),
        // color: (_enabled ? Colors.red[50] : kbackgroundcolor),
        color: color,
        onPressed: () {
          onPressed();
        },
        child: Text(
          text!,
          style: TextStyle(
            fontSize: (11),
            color: Color.fromARGB(255, 148, 146, 146),
          ),
        ),
      ),
    );
  }
}
