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
    return InkWell(
        onTap: press as void Function()?,

    child: Container(
        width: double.infinity,
        height: (45),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(198, 105, 231, 1.0),
            Color.fromRGBO(239, 119, 177, 1.0),
            Color.fromRGBO(255, 115, 183, 1.0),
          ],
        )
        ),
        // child: MaterialButton(
        //     shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //     color: kPrimaryColor,
        //   onPressed: press as void Function()?,
          child: Center(
            child: Text(
              text!,
              style: TextStyle(
                fontSize: (24),
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        // ),
      ),
    );
  }
}
