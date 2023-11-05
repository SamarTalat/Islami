import 'package:flutter/material.dart';
import 'package:islami/Home/bottomnavbar.dart';
import 'package:islami/Home/hadeth/hadeth_tab.dart';
import 'package:islami/Home/quran/quran_tab.dart';
import 'package:islami/Home/radio/radio_tab.dart';
import 'package:islami/Home/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png',
        width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title:  Text('إسلامي',
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
                  label: 'القرآن',
                  icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_quran.png')),
                ),
                BottomNavigationBarItem(
                  label: 'الأحاديث',
                  icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_hadeth.png')),
                ),
                BottomNavigationBarItem(
                  label: 'التسبيح',
                  icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_sebha.png')),
                ),
                BottomNavigationBarItem(
                  label: 'الراديو',
                  icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_radio.png')),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  List<Widget>tabs=[
    QuranTab(),HadethTab(),SebhaTab(),RadioTab(),
  ];
}