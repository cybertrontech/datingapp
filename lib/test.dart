import 'package:flutter/material.dart';
import 'package:get/get.dart';



class artist extends StatelessWidget {
  artist({Key? key}) : super(key: key);
  final List<ListTile> items = [
    ListTile(
      leading: CircleAvatar(
        child:  Image.network(
          "https://www.whoa.in/download/sunny-leone-bikini-and-sizzling-with-natural-background",
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "The Rain Dance",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child:  Image.network(
          "https://www.whoa.in/download/sunny-leone-bikini-and-sizzling-with-natural-background",
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "The Rain Dance",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child:  Image.network(
          "https://www.whoa.in/download/sunny-leone-bikini-and-sizzling-with-natural-background",
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "The Rain Dance",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child:  Image.network(
          "https://www.whoa.in/download/sunny-leone-bikini-and-sizzling-with-natural-background",
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "The Rain Dance",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child:  Image.network(
          "https://www.whoa.in/download/sunny-leone-bikini-and-sizzling-with-natural-background",
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "The Rain Dance",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child:  Image.network(
          "https://www.whoa.in/download/sunny-leone-bikini-and-sizzling-with-natural-background",
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "The Rain Dance",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 20,),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                      },
                      trailing: items[index].trailing,
                      leading: CircleAvatar(
                        child: items[index].leading,
                      ),
                      title: items[index].title,
                      subtitle: items[index].subtitle,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}