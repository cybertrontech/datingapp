import 'package:flutter/material.dart';

import 'components/body.dart';

class GenderDetails extends StatelessWidget {
  static String routeName = "/gender_details";

  const GenderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return body();
  }
}
