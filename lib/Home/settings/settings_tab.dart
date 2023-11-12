import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Home/settings/theme_bottomsheet.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'language_bottomsheet.dart';


class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
          style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(
            onTap: (){
              ShowLanguageBottomSheet();
            },
            child: Container(
              width: 55,
              height: 55,
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  provider.appLanguage == 'ar'?
                  Text(AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.titleMedium)
                  :
                  Text(AppLocalizations.of(context)!.english,
                      style: Theme.of(context).textTheme.titleMedium),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Text(AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(
            onTap: (){
              ShowThemeBottomSheet();
            },
            child: Container(
              width: 55,
              height: 55,
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  provider.appTheme == ThemeMode.light ?
                  Text(AppLocalizations.of(context)!.light,
                      style: Theme.of(context).textTheme.titleMedium)
                      :
                  Text(AppLocalizations.of(context)!.dark,
                      style: Theme.of(context).textTheme.titleMedium),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => LanguageBottomSheet()
    );
  }

  void ShowThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => ThemeBottomSheet()
    );
  }

}
