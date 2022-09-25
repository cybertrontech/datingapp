import 'package:datingapp/components/constant_text.dart';
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
         SizedBox(height: 6,),
         Container(
           color: Colors.white,
           height: MediaQuery.of(context).size.height*0.2,
           width: MediaQuery.of(context).size.width,
           child: ListView.separated(
             physics: NeverScrollableScrollPhysics(),
             // padding: const EdgeInsets.all(2 ),
             itemCount: entries.length,
             itemBuilder: (BuildContext context, int index) {
               return Container(
                 height: 40,
                 child: ListTile(
                   title: SettingListText(text: '${entries[index]}',),

                 ),
               );
             },
             separatorBuilder: (BuildContext context, int index) => Padding(
               padding: const EdgeInsets.only(left: 15),
               child: const Divider(color: Colors.black54,),
             ),

           ),
         )
       ],
    );
  }
}
