part of '../home.dart';

abstract class HomeRoutes {
  HomeRoutes._();

  static final routes = <AutoRoute>[
    AutoRoute(page: HomeRoute.page, path: HomePathes.home, initial: true),
  ];
}

abstract class HomePathes {
  HomePathes._();

  static const String home = 'home';
}
