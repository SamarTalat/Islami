import 'package:flutter/material.dart';
import 'package:islami/Home/hadeth/hadeth_tab.dart';
import 'package:islami/Home/quran/quran_tab.dart';
import 'package:islami/Home/radio/radio_tab.dart';
import 'package:islami/Home/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Home/settings/settings_tab.dart';
import 'package:provider/provider.dart';

import '../providers/app_config_provider.dart';


class HomeScreen extends StatefulWidget{
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.appTheme == ThemeMode.light?
        Image.asset('assets/images/main_background.png',
        width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        )
        :
        Image.asset('assets/images/main_background_dark.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            toolbarHeight: 30,
            title:  Text(AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: tabs[selectedIndex],
          bottomNavigationBar:Theme(
            data:Theme.of(context).copyWith(
                canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
                selectedIndex = index ;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.quran,
                  icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_quran.png')),
                ),
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.hadeth,
                  icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_hadeth.png')),
                ),
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.sebha,
                  icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_sebha.png')),
                ),
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.radio,
                  icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_radio.png')),
                ),
                BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.settings,
                  icon:Icon(Icons.settings),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  List<Widget>tabs=[
    QuranTab(),HadethTab(),SebhaTab(),RadioTab(),SettingsTab(),
  ];
}