import 'package:flutter/material.dart';

class BackgroundImages extends StatelessWidget {
  const BackgroundImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        padding: EdgeInsets.only(bottom: 86),
        child: Image.network(
          "https://m.photos.timesofindia.com/thumb.cms?msid=54376363&width=500&resizemode=4",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}
