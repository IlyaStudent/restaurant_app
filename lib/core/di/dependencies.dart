import 'package:data/data.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_app/core/constants/app_config.dart';
import 'package:restaurant_app/core/exceptions/exception_mapper/exception_mapper.dart';
import 'package:restaurant_app/core/exceptions/exception_mapper/exception_mapper_impl.dart';
import 'package:restaurant_app/core/networks/parse_error_logger_impl.dart';
import 'package:restaurant_app/core/networks/interceptor_impl.dart';
import 'package:restaurant_app/core/routes/app_router.dart';
import 'package:restaurant_app/core/utils/state_controller/state_controller.dart';
import 'package:restaurant_app/core/utils/state_controller/state_controller_impl.dart';
import 'package:retrofit/error_logger.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  await dotenv.load(fileName: AppConfig.envFileName);

  getIt
    /// Data sources
    ..registerLazySingleton(
      () => MealCategoriesDataSource(
        getIt<Dio>(),
        errorLogger: getIt<ParseErrorLogger>(),
      ),
    )
    /// Repositories
    ..registerLazySingleton<MealCategoriesRepository>(
      () => MealCategoriesRepositoryImpl(
        categoriesDataSource: getIt<MealCategoriesDataSource>(),
      ),
    )
    /// Use cases
    ..registerLazySingleton(
      () => GetAllMealCategoriesUseCase(
        categoriesRepository: getIt<MealCategoriesRepository>(),
      ),
    )
    /// Routing dependency
    ..registerLazySingleton<AppRouter>(() => AppRouter())
    /// External
    ..registerLazySingleton<Interceptor>(() => InterceptorImpl())
    ..registerLazySingleton<ParseErrorLogger>(() => ParseErrorLoggerImpl())
    ..registerLazySingleton<ExceptionMapper>(() => ExceptionMapperImpl())
    ..registerLazySingleton<StateController>(
      () => StateControllerImpl(exceptionMapper: getIt<ExceptionMapper>()),
    )
    ..registerLazySingleton<Dio>(
      () => Dio(BaseOptions(baseUrl: AppConfig.baseUrl)),
    );
}
