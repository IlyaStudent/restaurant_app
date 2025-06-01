import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app/core/di/dependencies.dart';
import 'package:restaurant_app/restaurant_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  await initDependencies();
  runApp(RestaurantApp());
}
