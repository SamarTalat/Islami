import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class RadioTab extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image.asset('assets/images/radio/radio_logo.png'),
         SizedBox(
           width: 40,
           height: 40,
         ),
         Text(AppLocalizations.of(context)!.radio_Text,
         textAlign: TextAlign.center,
           style: Theme.of(context).textTheme.titleMedium,
         ),
         SizedBox(
           width: 50,
           height: 50,
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             provider.appTheme == ThemeMode.light?
             Image.asset('assets/images/radio/icon_previous.png')
             :
             Image.asset('assets/images/radio/icon_previous_dark.png'),
             SizedBox(
               width: 40,
             ),
             provider.appTheme == ThemeMode.light?
             Image.asset('assets/images/radio/icon_play.png')
             :
             Image.asset('assets/images/radio/icon_play_dark.png') ,
             SizedBox(
               width: 40,
             ),
             provider.appTheme == ThemeMode.light?
             Image.asset('assets/images/radio/icon_next.png')
                 :
             Image.asset('assets/images/radio/icon_next_dark.png'),
           ],
         ),
       ],
      ),
    );
  }
}
