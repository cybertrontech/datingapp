import 'package:datingapp/screen/home/main_page/profile_page/components/widget/widgetcircularanimator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:widget_circular_animator/widget_circular_animator.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // WidgetCircularAnimators(),
        SizedBox(height: 5,),
        WidgetCircularAnimators(),
        SizedBox(height: 10,),
        Text("Kripas,21",
          style: TextStyle(color: Colors.black87,
              fontSize: 30,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
