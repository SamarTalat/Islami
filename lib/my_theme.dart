import 'package:flutter/material.dart';

class MyTheme {
  // color , light mode
  static Color blackColor =  Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color whitecolor = Colors.white;
  static Color lightwhitecolor = Color(0xffF8F8F8);


  //object ThemeData
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryLight,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xff242424)
        ),
          ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w700,
        fontSize: 30 ,
        fontStyle: FontStyle.normal,
      ),
      titleMedium: TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w600,
        fontSize: 25 ,
        fontStyle: FontStyle.normal,
      ),
      titleSmall: TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w400,
        fontSize: 25 ,
        fontStyle: FontStyle.normal,
      ),
        ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whitecolor,
      // selectedIconTheme: IconThemeData(
      //   size: 35,
      // ),
      // selectedLabelStyle: TextStyle(
      //   fontSize: 15,
      //   fontStyle: FontStyle.normal,
      //   fontWeight: FontWeight.w400,
      // ),
      // unselectedIconTheme: IconThemeData(
      //   size: 35,
      // ),
      // unselectedLabelStyle: TextStyle(
      //   fontSize: 15,
      //   fontStyle: FontStyle.normal,
      //   fontWeight: FontWeight.w400,
      // ),
    ),
  );


  // color , dark theme


  //object ThemeData
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 30 ,
        color: Color(0xff242424),
        fontStyle: FontStyle.normal,
      ),
    ),
  );
}