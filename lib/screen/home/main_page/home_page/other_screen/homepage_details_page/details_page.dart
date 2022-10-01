import 'package:datingapp/components/circular_button.dart';
import 'package:datingapp/constants.dart';
import 'package:datingapp/screen/home/main_page/home_page/other_screen/homepage_details_page/widgets/background_image.dart';
import 'package:datingapp/screen/home/main_page/home_page/other_screen/homepage_details_page/widgets/circular_container.dart';
import 'package:datingapp/screen/home/main_page/home_page/other_screen/homepage_details_page/widgets/description.dart';
import 'package:datingapp/screen/home/main_page/home_page/other_screen/homepage_details_page/widgets/listview_horz_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: MediaQuery.of(context).size.height * 0.60,
                floating: true,
                pinned: true,
                snap: true,
                collapsedHeight: 116,
                actionsIconTheme: IconThemeData(opacity: 0.0),
                toolbarHeight: 56,
                titleSpacing: 0,
                centerTitle: false,
                leading: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.all(0),
                  title: Container(
                    height: 67,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: kbackgroundcolor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28),
                        topRight: Radius.circular(28),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 2),
                                Text(
                                  'Sunny Leoni, 34',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 6),
                                Container(
                                  height: 12,
                                  width: 12,
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue[300],
                                          borderRadius:
                                          BorderRadius.circular(100),
                                        ),
                                      ),
                                      Center(
                                        child: Icon(
                                          Icons.check,
                                          size: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.pink,
                                  size: 14,
                                ),
                                Text(
                                  'Kathmandu . 25km',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  background: Container(
                    // color: kPrimaryColor,
                    height: MediaQuery.of(context).size.height * 0.50,
                    child: Stack(
                      children: <Widget>[
                        BackgroundImages(),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 150,
                            margin: EdgeInsets.only(bottom: 60),
                            width: double.infinity,
                            decoration: new BoxDecoration(
                              gradient: new LinearGradient(
                                end: const Alignment(0.0, 0.4),
                                begin: const Alignment(0.0, -1),
                                colors: <Color>[
                                  Colors.transparent,
                                  Colors.black,
                                ],
                              ),
                            ),
                          ),
                        ),
                        ListviewImages()
                      ],
                    ),
                  ),
                ),
              ),
              CircularContainer(),
              Description()
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    margin: EdgeInsets.fromLTRB(16, 16, 10, 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close_rounded,
                        color: Colors.deepOrange,
                        size: 28,
                      ),
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 64,
                    margin: EdgeInsets.fromLTRB(10, 16, 16, 16),
                    decoration: BoxDecoration(
                      gradient: new LinearGradient(
                        end: const Alignment(0.0, 0.4),
                        begin: const Alignment(0.0, -1),
                        colors: <Color>[

                          Colors.pink,
                          Colors.pinkAccent,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {

                      },
                      icon: Icon(
                        Icons.favorite_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
