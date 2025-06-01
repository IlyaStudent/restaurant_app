part of '../profile.dart';

abstract class ProfileRoutes {
  ProfileRoutes._();

  static final routes = <AutoRoute>[
    AutoRoute(
      page: ProfileRoute.page,
      path: ProfilePathes.profile,
      initial: true,
    ),
  ];
}

abstract class ProfilePathes {
  ProfilePathes._();

  static const String profile = 'profile';
}
