import 'package:flutter/material.dart';

class ApplicationTheme {
  static Color primaryColor =  Color(0xff39A552);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      elevation: 0,
      toolbarHeight: 75,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )
      ),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 22,
      ),

    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      titleMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.normal,
        color: Colors.white
      )
    )
  );
  static ThemeData get darkTheme => ThemeData();
}