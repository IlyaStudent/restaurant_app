part of '../cart.dart';

abstract class CartRoutes {
  CartRoutes._();

  static final routes = <AutoRoute>[
    AutoRoute(page: CartRoute.page, path: CartPathes.cart, initial: true),
  ];
}

abstract class CartPathes {
  CartPathes._();

  static const String cart = 'cart';
}
