part of '../menu.dart';

abstract class MenuRoutes {
  MenuRoutes._();

  static final routes = <AutoRoute>[
    AutoRoute(
      page: MealCategoriesRoute.page,
      path: MenuPathes.mealCategories,
      initial: true,
    ),
    AutoRoute(page: MealByCategoryRoute.page, path: MenuPathes.mealByCategory),
  ];
}

abstract class MenuPathes {
  MenuPathes._();
  static const String mealCategories = 'mealCategories';
  static const String mealByCategory = 'mealByCategory:categoryName';
}
