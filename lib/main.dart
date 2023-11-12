import 'package:flutter/material.dart';
import 'package:islami/Home/quran/sura_details_screen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'Home/hadeth/hadeth_details_screen.dart';
import 'Home/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => AppConfigProvider(),
      child: MyApp()));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: HomeScreen.routeName,
     routes: {
       HomeScreen.routeName:(context) => HomeScreen(),
       SuraDetailsScreen.routeName:(context) => SuraDetailsScreen(),
       HadethDetailsScreen.routeName:(context) => HadethDetailsScreen(),
     },
     localizationsDelegates: AppLocalizations.localizationsDelegates,
     supportedLocales: AppLocalizations.supportedLocales,
     theme: MyTheme.lightTheme,
     darkTheme: MyTheme.darkTheme,
     locale: Locale(provider.appLanguage),
     themeMode: provider.appTheme,
   );
  }

}