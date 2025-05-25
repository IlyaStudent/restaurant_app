// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:restaurant_app/core/widgets/widgets.dart' as _i1;
import 'package:restaurant_app/features/cart/cart.dart' as _i2;
import 'package:restaurant_app/features/home/home.dart' as _i3;
import 'package:restaurant_app/features/menu/menu.dart' as _i4;
import 'package:restaurant_app/features/profile/profile.dart' as _i5;
import 'package:restaurant_app/features/promotions/promotions.dart' as _i6;

/// generated route for
/// [_i1.AppScaffold]
class AppScaffold extends _i7.PageRouteInfo<void> {
  const AppScaffold({List<_i7.PageRouteInfo>? children})
    : super(AppScaffold.name, initialChildren: children);

  static const String name = 'AppScaffold';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppScaffold();
    },
  );
}

/// generated route for
/// [_i2.CartScreen]
class CartRoute extends _i7.PageRouteInfo<void> {
  const CartRoute({List<_i7.PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.CartScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.MenuScreen]
class MenuRoute extends _i7.PageRouteInfo<void> {
  const MenuRoute({List<_i7.PageRouteInfo>? children})
    : super(MenuRoute.name, initialChildren: children);

  static const String name = 'MenuRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.MenuScreen();
    },
  );
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i6.PromotionsScreen]
class PromotionsRoute extends _i7.PageRouteInfo<void> {
  const PromotionsRoute({List<_i7.PageRouteInfo>? children})
    : super(PromotionsRoute.name, initialChildren: children);

  static const String name = 'PromotionsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.PromotionsScreen();
    },
  );
}
