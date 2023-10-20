import 'package:flutter/material.dart';

class MyThem {
  static Color primaryColor = Color(0xff39A552);
  static Color blue = Color(0xff5D9CEC);
  static Color backgroundColor = Color(0xffDFECDB);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color redColor = Color(0xffEC4B4B);
  static Color greyColor = Color(0xff8888a6);
  static Color blackColor = Color(0xff060E1E);

  static ThemeData lightThem = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: whiteColor,
          )),
      backgroundColor: whiteColor,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
      primaryColor: primaryColor,
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 22, color: whiteColor),
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: blackColor,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: blackColor,
        ),
        bodySmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: whiteColor,
        ),
      ));
}
