import 'package:flutter/material.dart';

class ListviewImages extends StatelessWidget {
  const ListviewImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 120,
        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        margin: EdgeInsets.only(bottom: 100),
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 1.4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://www.whoa.in/download/sunny-leone-bikini-and-sizzling-with-natural-background",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 1.4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2udzv9Kk4Hb_uusM9ilqff9UF7v_V1C5wbA&usqp=CAU",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 1.4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tb"
                        "n:ANd9GcSfDEQ6Ij-b7fGKvH_zG6L612j1EYn1A7bpHA&usqp=CAU",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 1.4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://www.rvcj.com/wp-content/uploads/2015/04/sunny-leone-bikini-020111130326182444.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
