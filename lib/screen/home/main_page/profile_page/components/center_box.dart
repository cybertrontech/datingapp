import 'package:datingapp/components/constant_text.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/reusable/reusable_functional_components/logout_user.dart';
import 'package:datingapp/screen/home/main_page/profile_page/components/widget/account_seeting.dart';
import 'package:datingapp/screen/home/main_page/profile_page/components/widget/dicovery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterBox extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        AccountSetting(),
        SizedBox(height: 20,),
        // Divider(color: Colors.black54,),
        Dicovery(),
        SizedBox(height: 100,),

        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: InkWell(
            onTap: (){
              logout();
            },
            child: Row(
              children: [
                Icon(Icons.output,color: Colors.red,),
                SizedBox(width: 5,),
                Text("Login",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),




      ],
    );
  }
}
