part of '../cart.dart';

abstract class CartRoutes {
  CartRoutes._();

  static final routes = <AutoRoute>[AutoRoute(page: CartRoute.page, path: CartPathes.cart)];
}

abstract class CartPathes {
  CartPathes._();

  static const String cart = 'cart';
}
