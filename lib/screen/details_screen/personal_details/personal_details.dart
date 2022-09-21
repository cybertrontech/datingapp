import 'package:flutter/material.dart';

import 'components/body.dart';


class PersonalDetails extends StatelessWidget {
  static String routeName = "/personaldetails";

  const PersonalDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return body();
  }
}
