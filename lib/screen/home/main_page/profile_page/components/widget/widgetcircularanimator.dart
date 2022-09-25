import 'package:flutter/material.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class WidgetCircularAnimators extends StatelessWidget {
  const WidgetCircularAnimators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetCircularAnimator(
      singleRing: true,
      size: 190,
      innerIconsSize: 3,
      outerIconsSize: 3,
      innerAnimation: Curves.bounceIn,
      outerAnimation: Curves.bounceInOut,
      innerColor: Colors.black54,
      innerAnimationSeconds: 10,
      outerAnimationSeconds: 10,
      child: Container(
        decoration:
        BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
        child: Image.asset(
            "assets/images/2.png"
        ),
      ),
    );
  }
}
