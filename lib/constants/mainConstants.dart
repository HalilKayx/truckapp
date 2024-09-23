import 'package:flutter/material.dart';

class MainConstants {
  static const SizedBox sizeBox15px = SizedBox(
    height: 15,
  );
  static const TextStyle fontWeightBoldColorBlack =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.black);

  static final Color mainColor = Colors.green.shade400;

  static final TextStyle titleStyle = TextStyle(
      color: Colors.grey.shade800, fontSize: 25, fontWeight: FontWeight.bold);
  static final TextStyle titleStyleGreen = TextStyle(
      color: mainColor, fontSize: 25, fontWeight: FontWeight.bold);
  static const TextStyle titleSolidDescriptionStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w300);
  static const InputBorder textFieldInputBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 1),
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );
}
