// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:restaurant_app/core/routes/route_wrappers.dart' as _i3;
import 'package:restaurant_app/core/widgets/widgets.dart' as _i1;
import 'package:restaurant_app/features/cart/cart.dart' as _i2;
import 'package:restaurant_app/features/home/home.dart' as _i4;
import 'package:restaurant_app/features/menu/menu.dart' as _i5;
import 'package:restaurant_app/features/profile/profile.dart' as _i6;
import 'package:restaurant_app/features/promotions/promotions.dart' as _i7;

/// generated route for
/// [_i1.AppScaffold]
class AppScaffold extends _i8.PageRouteInfo<void> {
  const AppScaffold({List<_i8.PageRouteInfo>? children})
    : super(AppScaffold.name, initialChildren: children);

  static const String name = 'AppScaffold';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppScaffold();
    },
  );
}

/// generated route for
/// [_i2.CartScreen]
class CartRoute extends _i8.PageRouteInfo<void> {
  const CartRoute({List<_i8.PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.CartScreen();
    },
  );
}

/// generated route for
/// [_i3.CartWrapperRoute]
class CartWrapperRoute extends _i8.PageRouteInfo<void> {
  const CartWrapperRoute({List<_i8.PageRouteInfo>? children})
    : super(CartWrapperRoute.name, initialChildren: children);

  static const String name = 'CartWrapperRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.CartWrapperRoute();
    },
  );
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeWrapperRoute]
class HomeWrapperRoute extends _i8.PageRouteInfo<void> {
  const HomeWrapperRoute({List<_i8.PageRouteInfo>? children})
    : super(HomeWrapperRoute.name, initialChildren: children);

  static const String name = 'HomeWrapperRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeWrapperRoute();
    },
  );
}

/// generated route for
/// [_i5.MealByCategoryScreen]
class MealByCategoryRoute extends _i8.PageRouteInfo<MealByCategoryRouteArgs> {
  MealByCategoryRoute({
    _i9.Key? key,
    required String categoryName,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         MealByCategoryRoute.name,
         args: MealByCategoryRouteArgs(key: key, categoryName: categoryName),
         initialChildren: children,
       );

  static const String name = 'MealByCategoryRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MealByCategoryRouteArgs>();
      return _i5.MealByCategoryScreen(
        key: args.key,
        categoryName: args.categoryName,
      );
    },
  );
}

class MealByCategoryRouteArgs {
  const MealByCategoryRouteArgs({this.key, required this.categoryName});

  final _i9.Key? key;

  final String categoryName;

  @override
  String toString() {
    return 'MealByCategoryRouteArgs{key: $key, categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i5.MealCategoriesScreen]
class MealCategoriesRoute extends _i8.PageRouteInfo<void> {
  const MealCategoriesRoute({List<_i8.PageRouteInfo>? children})
    : super(MealCategoriesRoute.name, initialChildren: children);

  static const String name = 'MealCategoriesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.WrappedRoute(child: const _i5.MealCategoriesScreen());
    },
  );
}

/// generated route for
/// [_i3.MenuWrapperRoute]
class MenuWrapperRoute extends _i8.PageRouteInfo<void> {
  const MenuWrapperRoute({List<_i8.PageRouteInfo>? children})
    : super(MenuWrapperRoute.name, initialChildren: children);

  static const String name = 'MenuWrapperRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.MenuWrapperRoute();
    },
  );
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i3.ProfileWrapperRoute]
class ProfileWrapperRoute extends _i8.PageRouteInfo<void> {
  const ProfileWrapperRoute({List<_i8.PageRouteInfo>? children})
    : super(ProfileWrapperRoute.name, initialChildren: children);

  static const String name = 'ProfileWrapperRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProfileWrapperRoute();
    },
  );
}

/// generated route for
/// [_i7.PromotionsScreen]
class PromotionsRoute extends _i8.PageRouteInfo<void> {
  const PromotionsRoute({List<_i8.PageRouteInfo>? children})
    : super(PromotionsRoute.name, initialChildren: children);

  static const String name = 'PromotionsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.PromotionsScreen();
    },
  );
}

/// generated route for
/// [_i3.PromotionsWrapperRoute]
class PromotionsWrapperRoute extends _i8.PageRouteInfo<void> {
  const PromotionsWrapperRoute({List<_i8.PageRouteInfo>? children})
    : super(PromotionsWrapperRoute.name, initialChildren: children);

  static const String name = 'PromotionsWrapperRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.PromotionsWrapperRoute();
    },
  );
}
