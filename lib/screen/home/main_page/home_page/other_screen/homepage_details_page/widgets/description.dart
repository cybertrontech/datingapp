import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Test of the page,he descriof the page,he descriof the page,he descriof the page,he descriof the page,he descriof the page,he descriof the page,he descriof the page,he descriof the page,he descri of the page,he descriof the page,he descriof the page,he descriof the page,he descriof the page,he descriof the page,he descri'
                  'he page, testing the description of the page...',
              style: TextStyle(
                color: Colors.grey[600],
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 800),
          ],
        ),
      ),
    );
  }
}
