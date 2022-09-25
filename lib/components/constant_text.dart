import 'package:flutter/material.dart';

import '../constants.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(text!,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: kTextColor)));
  }
}

class SemiHeadingText extends StatelessWidget {
  const SemiHeadingText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text!,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 10, color: Colors.black54),
      ),
    );
  }
}

class SemiText extends StatelessWidget {
  const SemiText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text!,
        style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 10, color: Colors.black54),
      ),
    );
  }
}

class HomeHeadText extends StatelessWidget {
  const HomeHeadText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.local_fire_department_rounded,
            size: 33,
            color: kbackgroundcolor,
          ),
          Text(
            text!,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: kbackgroundcolor),
          ),
        ],
      ),
    );
  }
}

class SettingListText extends StatelessWidget {
  const SettingListText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text!,
        style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black),
      ),
    );
  }
}

class SettingHeadingText extends StatelessWidget {
  const SettingHeadingText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text!,
        style: TextStyle(fontSize: 15, color: Colors.black54),
      ),
    );
  }
}
