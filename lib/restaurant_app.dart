import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:restaurant_app/core/extensions/extensions.dart';
import 'package:restaurant_app/core/styles/app_colors.dart';
import 'package:restaurant_app/generated/l10n.dart';

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routerConfig: context.appRouter.config(),
    debugShowCheckedModeBanner: false,
    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
    theme: ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: AppColors.white,
    ),
  );
}
