import 'dart:math' as math;

import 'package:datingapp/screen/home/main_page/home_page/theme/colors.dart';
import 'package:datingapp/screen/home/main_page/home_page/widgets/details_page.dart';
import 'package:flutter/material.dart';

const _labelAngle = math.pi / 2 * 0.2;

class CardLabel extends StatelessWidget {
  const CardLabel._({
    required this.color,
    required this.label,
    required this.angle,
    required this.alignment,
  });

  factory CardLabel.right() {
    return const CardLabel._(
      color: SwipeDirectionColor.right,
      label: 'RIGHT',
      angle: -_labelAngle,
      alignment: Alignment.topLeft,
    );
  }

  factory CardLabel.left() {
    return const CardLabel._(
      color: SwipeDirectionColor.left,
      label: 'LEFT',
      angle: _labelAngle,
      alignment: Alignment.topRight,
    );
  }


  final Color color;
  final String label;
  final double angle;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(),
          ),
        );
      },
      child: Container(
        alignment: alignment,
        padding:  EdgeInsets.symmetric(
          vertical: 36,
          horizontal: 36,
        ),
        child: Transform.rotate(
          angle: angle,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: color,
                width: 4,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),),
            padding: const EdgeInsets.all(6),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.4,
                color: color,
                height: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
