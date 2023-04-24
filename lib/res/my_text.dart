import 'package:flutter/material.dart';
import 'package:food_ninja/res/my_colors.dart';

class MyText {
  static TextStyle poppins(double? size, FontWeight weight){
    return TextStyle(
      fontWeight: weight,
      fontSize: size,
      color: MyColors.mainBlack,
      fontFamily: 'Poppins',
    );
  }
  static TextStyle hinter(double? size, FontWeight weight){
    return TextStyle(
      fontWeight: weight,
      fontSize: size,
      color: MyColors.border,
      fontFamily: 'Poppins',
    );
  }
  static const TextStyle hint = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: 13,
      color: MyColors.border
  );
  static const TextStyle link = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: MyColors.mainGreen0,
    decoration: TextDecoration.underline,
    fontFamily: 'Poppins',
  );
}