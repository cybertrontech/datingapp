//
// import 'package:flutter/material.dart';
// import 'package:untitled/examples/basic_example.dart';
//
// class GeneralDrawer extends StatelessWidget {
//   const GeneralDrawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Future<void> navigate(Route<void> route) async {
//       Navigator.of(context).pop();
//       await Future<void>.delayed(const Duration(milliseconds: 150));
//       await Navigator.of(context).pushReplacement<void, void>(route);
//     }
//
//     return Drawer(
//       child: ListView(
//         children: [
//           // ListTile(
//           //   title: const Text('BasicExample'),
//           //   onTap: () {
//           //     navigate(
//           //       BasicExample.route(),
//           //     );
//           //   },
//           // ),
//           // ListTile(
//           //   title: const Text('IgnoreVerticalSwipeExample'),
//           //   onTap: () {
//           //     navigate(
//           //       IgnoreVerticalSwipeExample.route(),
//           //     );
//           //   },
//           // ),
//           // ListTile(
//           //   title: const Text('PopupOnSwipeExample'),
//           //   onTap: () {
//           //     navigate(
//           //       PopupOnSwipeExample.route(),
//           //     );
//           //   },
//           // ),
//           // ListTile(
//           //   title: const Text('SwipeAnchorExample'),
//           //   onTap: () {
//           //     navigate(
//           //       SwipeAnchorExample.route(),
//           //     );
//           //   },
//           // ),
//           // ListTile(
//           //   title: const Text('DetectableDirectionsExample'),
//           //   onTap: () {
//           //     navigate(
//           //       DetectableDirectionsExample.route(),
//           //     );
//           //   },
//           // ),
//         ],
//       ),
//     );
//   }
// }
