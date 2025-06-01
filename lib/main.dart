import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app/core/di/dependencies.dart';
import 'package:restaurant_app/core/styles/app_colors.dart';
import 'package:restaurant_app/restaurant_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.accentColor,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  await initDependencies();
  runApp(RestaurantApp());
}
