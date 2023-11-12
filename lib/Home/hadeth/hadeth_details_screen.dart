import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Home/hadeth/hadeth_tab.dart';
import 'package:islami/Home/hadeth/item_hadeth_details.dart';
import 'package:islami/Home/quran/item_sura_details.dart';
import 'package:provider/provider.dart';

import '../../my_theme.dart';
import '../../providers/app_config_provider.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadethdetailsscreen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth;
    return Stack(
      children: [
        provider.appTheme == ThemeMode.light?
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        )
        :
        Image.asset(
          'assets/images/main_background_dark.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            toolbarHeight: 40,
            title: Text(
              args.title,
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery
                  .of(context)
                  .size
                  .width * 0.05,
              vertical: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,
            ),
            decoration: provider.appTheme == ThemeMode.light
                ? BoxDecoration(
              color: MyTheme.lightwhitecolor,
              borderRadius: BorderRadius.circular(25),
            )
                : BoxDecoration(
              color: MyTheme.primaryDark,
              borderRadius: BorderRadius.circular(25),
            ),
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return ItemHadethDetails(content: args.content[index] );
              }),
              itemCount: args.content.length,
            ),
          ),
        ),
      ],
    );
  }
}
