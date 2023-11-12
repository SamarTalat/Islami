import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Home/quran/sura_details_screen.dart';
import 'package:islami/my_theme.dart';

class ItemHadethDetails extends StatelessWidget {
String content ;

ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(content,
      style: Theme.of(context).textTheme.displaySmall,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      );
  }
}
