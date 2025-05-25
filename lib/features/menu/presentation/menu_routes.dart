part of '../menu.dart';

abstract class MenuRoutes {
  MenuRoutes._();

  static final routes = <AutoRoute>[AutoRoute(page: MenuRoute.page, path: MenuPathes.menu)];
}

abstract class MenuPathes {
  MenuPathes._();

  static const String menu = 'menu';
}
