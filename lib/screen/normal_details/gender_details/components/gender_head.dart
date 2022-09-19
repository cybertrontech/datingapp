import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/screen/normal_details/gender_details/components/gender_form.dart';
import 'package:flutter/material.dart';

class GenderHead  extends StatefulWidget {
  const GenderHead({Key? key}) : super(key: key);

  @override
  State<GenderHead> createState() => _GenderHeadState();
}

class _GenderHeadState extends State<GenderHead> {
  bool color = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Padding(
            padding:  EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  // color: Colors.pink,
                  // height: 123,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lets start with the basics",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 23),),
                      Text("Adding these details would help ypu get suitable matches",
                        style: TextStyle(fontWeight:FontWeight.w500,fontSize: 10,color: Colors.black87),),

                      SizedBox(height: 12,),

                      Text("Gender",style: TextStyle(fontWeight: FontWeight.bold,fontFamily:"Muli",fontSize: 15,color: Colors.black87),),
                      SizedBox(height: 9,),
                      Row(
                        children: [
                          CircularButton(

                            text: "Male",
                            onPressed: (){
                              setState(() {
                                return print("click");
                              });
                            },
                          ),
                          SizedBox(width: 12,),
                          CircularButton(
                            text: "Female",
                            onPressed: (){
                            },
                          ),
                        ],
                      ),
                      GenderForm()
                    ],
                  ),
                ),

              ],
            ),
          ),

    );
  }
}
