// import 'package:flutter/material.dart';
//
// class BottomNavBar extends StatefulWidget{
//   static const String routeName = 'BottomNavBar';
//   int selecind = 0;
//   BottomNavBar({required this.selecind});
//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState(selectedIndex: selecind);
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//    int selectedIndex = 0 ;
//    _BottomNavBarState({required this.selectedIndex});
//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data:Theme.of(context).copyWith(
//           canvasColor: Theme.of(context).primaryColor
//       ),
//       child: BottomNavigationBar(
//         currentIndex: selectedIndex,
//         onTap: (index){
//           selectedIndex = index ;
//           setState(() {});
//         },
//         items: [
//           BottomNavigationBarItem(
//             label: 'القرآن',
//             icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_quran.png')),
//           ),
//           BottomNavigationBarItem(
//             label: 'الأحاديث',
//             icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_hadeth.png')),
//           ),
//           BottomNavigationBarItem(
//             label: 'التسبيح',
//             icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_sebha.png')),
//           ),
//           BottomNavigationBarItem(
//             label: 'الراديو',
//             icon: ImageIcon(AssetImage('assets/images/BottomNavBar/icon_radio.png')),
//           ),
//         ],
//       ),
//     );
//   }
// }