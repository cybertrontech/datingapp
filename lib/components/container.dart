import 'package:datingapp/components/constant_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class ListContainers extends StatelessWidget {
  final VoidCallback onPressed;
  const ListContainers({
    Key? key,
    required this.text,
    // required this.press,
    required this.onPressed,
    required this.trailingtext,
    // this.press,


  }) : super(key: key);
  final String? text;
  final String? trailingtext;
  // final SizedBox;
  // final Function? press;


  @override
  Widget build(BuildContext context) {
    bool _enabled = false;
    return Container(
      color: Colors.white,
      // decoration: myBoxDecoration(), //             <--- BoxDecoration here
      child:
      Column(
        children: [
          ListTile(
            title: SettingListText( text: text!,),
            trailing: InkWell(
              onTap: (){onPressed();},
              child: Container(
                  // color: Colors.blue,
                  width: MediaQuery.of(context).size.width *0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SettingListTrailingText( text:trailingtext!),
                      SizedBox(width: 5,),
                      RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios,size: 18,color: Colors.black38,)),

                    ],
                  )),
            ),
          ),
          // MaterialButton(
          //   minWidth: 1,
          //   height: 30,
          //   shape:
          //   RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20),
          //       side:
          //       BorderSide(color: Colors.black12)
          //   ),
          //   color: (_enabled
          //       ? Colors.pink[50]
          //       : kbackgroundcolor
          //   ),
          //
          //   onPressed: (){
          //   },
          //   child: Text(
          //     text!,
          //     style: TextStyle(
          //       fontSize: (11),
          //       color: Colors.black87,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

// BoxDecoration myBoxDecoration() {
//   return BoxDecoration(
//     color: Colors.white,
//     border: Border(
//       top:  BorderSide( //                    <--- top side
//         color: Colors.black26,
//         width: 1.0,
//       ),
//       bottom:  BorderSide( //                    <--- top side
//         color: Colors.black26,
//         width: 1.0,
//     ),
//   )
//   );
// }





