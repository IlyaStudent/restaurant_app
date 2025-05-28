part of '../data_sources.dart';

@RestApi()
abstract class MealCategoriesDataSource {
  factory MealCategoriesDataSource(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _MealCategoriesDataSource;

  @GET(Endpoints.mealCategories)
  Future<List<MealCategoryDTO>> getAllCategories();
}
