part of '../repositories.dart';

class MealCategoriesRepositoryImpl implements MealCategoriesRepository {
  final MealCategoriesDataSource _categoriesDataSource;

  MealCategoriesRepositoryImpl({
    required MealCategoriesDataSource categoriesDataSource,
  }) : _categoriesDataSource = categoriesDataSource;

  @override
  Future<MealCategoriesListEntity> getAllMealCategories() =>
      _categoriesDataSource.getAllCategories();
}
