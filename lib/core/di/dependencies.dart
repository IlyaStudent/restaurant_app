import 'package:get_it/get_it.dart';
import 'package:restaurant_app/core/routes/app_router.dart';

final getIt = GetIt.instance;

void initDependencies() {
  getIt
    // Routing dependency
    ..registerSingleton<AppRouter>(AppRouter());
}
