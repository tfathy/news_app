import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_constants.dart';
import 'package:news_app/core/widgets/shared/app_bottom_nav_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppConstants.isSwitched,
      builder: (context,isLanguageEn,child){
        return  MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales : AppLocalizations.supportedLocales,
          locale:isLanguageEn? Locale('en'):Locale('ar'),
          debugShowCheckedModeBanner: false,
          home: AppBottomNavBar(),
        );
      },

    );
  }
}
