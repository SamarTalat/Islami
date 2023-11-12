import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab>
    with SingleTickerProviderStateMixin {
  int counter = 0;
  int x = 0;
  double turn = 0.0;
  List<String> azkar = [
    'سبحان الله',
    'الحمد الله',
    'لا اله الا الله',
    'الله أكبر'
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 1, 1, 180),
                  child: Image.asset(
                    provider.appTheme == ThemeMode.light
                        ? 'assets/images/sebha/head_of_seb7a.png'
                        : 'assets/images/sebha/head_of_seb7a_dark.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 100, 1, 1),
                  child: AnimatedRotation(
                    turns: turn,
                    duration: const Duration(seconds: 1),
                    child: Image.asset(provider.appTheme == ThemeMode.light
                        ? 'assets/images/sebha/body_of_seb7a.png'
                        : 'assets/images/sebha/body_of_seb7a_dark.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 10, 1, 1),
              child: Text(
                AppLocalizations.of(context)!.number_of_altaspihat,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color:  provider.appTheme == ThemeMode.light
                      ? const Color(0xff242424)
                      : Colors.white),
                ),
              ),
            Container(
                margin: const EdgeInsets.fromLTRB(1, 5, 1, 10),
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                decoration: BoxDecoration(
                  color: provider.appTheme == ThemeMode.light
                      ? MyTheme.primaryLight
                      : MyTheme.primaryDark,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  ' $counter ',
                  style: Theme.of(context).textTheme.titleSmall,
                )),
            ElevatedButton(
              onPressed: () {
                if (counter < 33) {
                  counter++;
                } else {
                  counter = 0;
                  if (x < 3) {
                    x++;
                  } else {
                    x = 0;
                  }
                }
                setState(() {
                  turn += 1 / 32;
                });
              },
              style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0.0),
                backgroundColor: MaterialStatePropertyAll(
                    provider.appTheme == ThemeMode.light
                        ? MyTheme.primaryLight
                        : MyTheme.yellowColor),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.fromLTRB(20, 8, 20, 8)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
              ),
              child: Text(azkar[x],
              style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
