import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigText  extends StatelessWidget{
  String text;

  BigText(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(text,style: TextStyle(
      color: Colors.grey
    ),);
  }
}