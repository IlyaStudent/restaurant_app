import 'package:auto_route/auto_route.dart';
import 'package:restaurant_app/core/routes/app_router.gr.dart';
import 'package:restaurant_app/features/cart/cart.dart';
import 'package:restaurant_app/features/home/home.dart';
import 'package:restaurant_app/features/menu/menu.dart';
import 'package:restaurant_app/features/profile/profile.dart';
import 'package:restaurant_app/features/promotions/promotions.dart';

abstract class AppRoutes {
  AppRoutes._();

  static const String main = '/';

  static const String nested = 'nested';

  static const String menuWrapper = 'menuWrapper';
  static const String promotionsWrapper = 'promotionsWrapper';
  static const String homeWrppaer = 'homeWrppaer';
  static const String cartWrapper = 'cartWrapper';
  static const String profileWrapper = 'profileWrapper';

  static final routes = <AutoRoute>[
    AutoRoute(
      page: AppScaffold.page,
      path: AppRoutes.main,
      initial: true,
      children: [
        AutoRoute(
          page: MenuWrapperRoute.page,
          path: AppRoutes.menuWrapper,
          children: MenuRoutes.routes,
        ),
        AutoRoute(
          page: PromotionsWrapperRoute.page,
          path: AppRoutes.promotionsWrapper,
          children: PromotionsRoutes.routes,
        ),
        AutoRoute(
          page: HomeWrapperRoute.page,
          path: AppRoutes.homeWrppaer,
          children: HomeRoutes.routes,
        ),
        AutoRoute(
          page: CartWrapperRoute.page,
          path: AppRoutes.cartWrapper,
          children: CartRoutes.routes,
        ),
        AutoRoute(
          page: ProfileWrapperRoute.page,
          path: AppRoutes.profileWrapper,
          children: ProfileRoutes.routes,
        ),

        // ...MenuRoutes.routes,
        // ...PromotionsRoutes.routes,
        // ...HomeRoutes.routes,
        // ...CartRoutes.routes,
        // ...ProfileRoutes.routes,
      ],
    ),
  ];
}
