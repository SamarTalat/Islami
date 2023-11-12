import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage = 'ar' ;
  ThemeMode appTheme = ThemeMode.light;

  void changeLanguage(String newLanguage){
    if(appLanguage == newLanguage){
      return ;
    }
    appLanguage = newLanguage ;
    notifyListeners();
  }

  void changeTheme(ThemeMode newTheme){
    if(appTheme == newTheme){
      return ;
    }
    appTheme = newTheme ;
    notifyListeners();
  }
}