import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutColumn extends StatelessWidget {
  String text1;
  String text2;

  AboutColumn(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(color: Colors.grey),
        ),
        Stack(
          children: [
            Container(
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFF3CFC6), // Background color
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Text(
                    text2,
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
              )
          ],
        )
      ],
    );
  }
}
