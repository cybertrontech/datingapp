import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Divider(
            height: 1,
            thickness: 1,
            indent: 32,
            endIndent: 32,
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Interests',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              children: [
                // HomeCircularButton(
                //   text: 'Shopping',
                //   color: Colors.deepOrange.withOpacity(0.2),
                //   onPressed: () {  },),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_cart_rounded,
                        color: Colors.pinkAccent,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Shopping',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.library_music,
                        color: Colors.pinkAccent,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Music',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_drink_sharp,
                        color: Colors.pinkAccent,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Coffe',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu_book_rounded,
                        color: Colors.pinkAccent,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Books',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.airplanemode_active,
                        color: Colors.pinkAccent,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Travel',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.sports_basketball,
                        color: Colors.pinkAccent,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Basketball',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
