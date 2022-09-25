import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/components/container.dart';
import 'package:datingapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:seekbar/seekbar.dart';

class Dicovery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: SettingHeadingText(text: 'DISCOVERY',),
        ),
        SizedBox(height: 10,),
        Container(
            decoration: myBoxDecoration(),
            height: MediaQuery.of(context).size.height*0.21,
            width: MediaQuery.of(context).size.width,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    children: [
                      ListContainers(text: 'Distance Preference',
                        trailingtext: '123km', onPressed: () {  },),
                       Container(
    padding: EdgeInsets.symmetric(horizontal: 12),
    alignment: Alignment.center,
    child: SeekBar(
      barColor: Colors.black26,
    thumbColor: kPrimaryColor,

    // value: _value,
    // secondValue: _secondValue,
    progressColor: kPrimaryColor,
    secondProgressColor: Colors.white.withOpacity(0.5),
    ),
    ),

                    ],
                  ),
                ),
                SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: SettingListTrailingText(text: 'Only Showpeople in the this range',),
                ),
                SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Divider(color: Colors.black38,height: 1,),),
                ListContainers(text: 'Show Me', trailingtext: 'Women', onPressed: () {  },),
                // Padding(
                //   padding: const EdgeInsets.only(left: 15),
                //   child: Divider(color: Colors.black38,height: 1,),
                // ),
                // ListContainers(text: 'Username', trailingtext: 'sjkbdvkj', onPressed: () {  },),
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