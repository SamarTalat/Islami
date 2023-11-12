import 'package:flutter/material.dart';

class MyTheme {

  // color , light mode :
  static Color blackColor =  Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color whitecolor = Colors.white;
  static Color lightwhitecolor = Color(0xffF8F8F8);



  //object ThemeData :
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
      displaySmall: TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w400,
        fontSize: 25 ,
        fontStyle: FontStyle.normal,
      ),
        ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whitecolor,
    ),
  );


  // color , dark theme :
  static const Color primaryDark = Color(0xff141A2E);
  static const Color yellowColor = Color(0xffFACC1D);
  static const Color black = Colors.black;
  // static Color primaryColorDark = const Color.fromRGBO(20, 26, 46, 1.0);
  // static Color secondary_Color = const Color.fromRGBO(183, 147, 95, 1.0);
  // static Color secondaryColorDark = const Color.fromRGBO(250, 204, 29, 1.0);

  //object ThemeData :
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryDark,
    appBarTheme: const AppBarTheme(
      toolbarHeight: 100,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
          color: Colors.white
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: lightwhitecolor,
        fontWeight: FontWeight.w700,
        fontSize: 30 ,
        fontStyle: FontStyle.normal,
      ),
      titleMedium: TextStyle(
        color: lightwhitecolor,
        fontWeight: FontWeight.w600,
        fontSize: 25 ,
        fontStyle: FontStyle.normal,
      ),
      titleSmall: TextStyle(
        color: lightwhitecolor,
        fontWeight: FontWeight.w400,
        fontSize: 25 ,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: TextStyle(
        color: yellowColor,
        fontWeight: FontWeight.w400,
        fontSize: 25 ,
        fontStyle: FontStyle.normal,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor: whitecolor,
    ),
  );

}