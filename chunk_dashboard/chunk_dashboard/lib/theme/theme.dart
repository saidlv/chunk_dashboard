import 'package:flutter/material.dart';

class theme {
  static Color appBackgroundColor = Color(0xffE5E5E5);
  static Color mainColor = Colors.blue.shade600;
  static Color lightTextColor = Colors.grey.shade400;
  static Color darkTextColor = Colors.grey.shade800;
  static Color whiteColor = Colors.white;
  static LinearGradient btnColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.blue.shade400, Colors.blue.shade200]);
  static LinearGradient redBtnColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.red.shade600, Colors.red.shade300]);

  static List<BoxShadow> boxShadow = [
    BoxShadow(
        offset: Offset(2, 2),
        blurRadius: 5,
        spreadRadius: 3,
        color: Colors.grey.shade300),
  ];
}
