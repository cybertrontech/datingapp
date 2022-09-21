// import 'package:flutter/material.dart';
//
// class test extends StatefulWidget {
//   @override
//   State<test> createState() => _testState();
// }
//
// class _testState extends State<test> {
//   bool selected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: AnimatedContainer(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(20), topLeft: Radius.circular(20)),
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 // _color,
//                 // Colors.black87,
//                 Colors.orangeAccent,
//                 Colors.redAccent,
//                 Colors.white,
//               ],
//             )),
//         width: selected ? 430.0 : 500.0,
//         height: selected ? 65.0 : 800.0,
//
//         // Provide an optional curve to make the animation feel smoother.
//         curve: Curves.fastOutSlowIn,
//         duration: const Duration(milliseconds: 500),
//         child: Stack(
//           children: [
//             Positioned(
//               top: 123,
//               bottom: 123,
//               child: IconButton(
//                 color: Colors.blue,
//                 onPressed: () {
//                   setState(() {
//                     // return print("kripas");
//                     selected = !selected;
//                   });
//                 },
//                 icon: RotatedBox(
//                     quarterTurns: 5,
//                     child: Icon(
//                       Icons.arrow_back_ios_sharp,
//                       size: 24,
//                     )),
//               ),
//             ),
//             Container(
//               height: 123,
//               width: 200,
//               color: Colors.redAccent ,
//
//             ),
//             Positioned(
//               top: 123,
//               child: Container(
//                 height: 123,
//                 width: 120,
//                 color: Colors.orangeAccent ,
//
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
