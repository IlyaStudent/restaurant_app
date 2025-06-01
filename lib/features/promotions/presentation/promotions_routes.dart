part of '../promotions.dart';

abstract class PromotionsRoutes {
  PromotionsRoutes._();

  static final routes = <AutoRoute>[
    AutoRoute(
      page: PromotionsRoute.page,
      path: PromotionsPathes.promotions,
      initial: true,
    ),
  ];
}

abstract class PromotionsPathes {
  PromotionsPathes._();

  static const String promotions = 'promotions';
}
