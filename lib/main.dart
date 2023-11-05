import 'package:flutter/material.dart';
import 'package:islami/Home/quran/sura_details_screen.dart';
import 'package:islami/my_theme.dart';
import 'Home/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: HomeScreen.routeName,
     routes: {
       HomeScreen.routeName:(context) => HomeScreen(),
       SuraDetailsScreen.routeName:(context) => SuraDetailsScreen(),
     },
     theme: MyTheme.lightTheme,
   );
  }

}