import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/components/container.dart';
import 'package:flutter/material.dart';

class AccountSetting extends StatelessWidget {
  final List<String> entries = <String>['Phone Number', 'Email', 'Username'];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.only(left: 8),
           child: SettingHeadingText(text: 'ACCOUNT SETTING',),
         ),
         SizedBox(height: 10,),
         Container(
             decoration: myBoxDecoration(),
             height: MediaQuery.of(context).size.height*0.22,
             width: MediaQuery.of(context).size.width,
           child:Column(
             children: [
               ListContainers(text: 'Phone Number', trailingtext: '9860486269',
                 onPressed: () { return print("click"); },),
               Padding(
                 padding: const EdgeInsets.only(left: 15),
                 child: Divider(color: Colors.black38,height: 1,),
               ),
               ListContainers(text: 'Email', trailingtext: 'Kripask50@gmail.com',
                 onPressed: () { return print("click23"); },),
               Padding(
                 padding: const EdgeInsets.only(left: 15),
                 child: Divider(color: Colors.black38,height: 1,),
               ),
               ListContainers(text: 'Username', trailingtext: 'Kripask50', onPressed: () {  },),
             ],
           )
         ),

       ],
    );
  }
}
BoxDecoration myBoxDecoration() {
  return BoxDecoration(
      color: Colors.white,
      border: Border(
        top:  BorderSide( //                    <--- top side
          color: Colors.black26,
          width: 1.0,
        ),
        bottom:  BorderSide( //                    <--- top side
          color: Colors.black26,
          width: 1.0,
        ),
      )
  );
}