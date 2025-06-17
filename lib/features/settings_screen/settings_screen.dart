import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/core/utils/app_constants.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.language),
            SizedBox(width: 6),
            Switch(
              activeColor: Colors.lightBlue,
              activeTrackColor: Colors.grey,
              value: AppConstants.isSwitched.value,
              onChanged: (change) {
                AppConstants.isSwitched.value = !AppConstants.isSwitched.value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
