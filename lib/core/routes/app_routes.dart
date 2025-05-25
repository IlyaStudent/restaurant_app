import 'package:auto_route/auto_route.dart';
import 'package:restaurant_app/core/routes/app_router.gr.dart';
import 'package:restaurant_app/features/cart/cart.dart';
import 'package:restaurant_app/features/home/home.dart';
import 'package:restaurant_app/features/menu/menu.dart';
import 'package:restaurant_app/features/profile/profile.dart';
import 'package:restaurant_app/features/promotions/promotions.dart';

abstract class AppRoutes {
  AppRoutes._();

  static const String main = '/main';

  static final routes = <AutoRoute>[
    AutoRoute(
      page: AppScaffold.page,
      path: AppRoutes.main,
      initial: true,
      children: [
        ...CartRoutes.routes,
        ...PromotionsRoutes.routes,
        ...HomeRoutes.routes,
        ...MenuRoutes.routes,
        ...ProfileRoutes.routes,
      ],
    ),
  ];
}
