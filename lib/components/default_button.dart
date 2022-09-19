import 'package:flutter/material.dart';

import '../constants.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: (45),
      child: MaterialButton(
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: kPrimaryColor,
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: (20),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
