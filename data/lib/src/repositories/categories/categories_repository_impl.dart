part of '../repositories.dart';

class CategoriesRepositoryImpl implements MealCategoriesRepository {
  final MealCategoriesDataSource _categoriesDataSource;

  CategoriesRepositoryImpl({
    required MealCategoriesDataSource categoriesDataSource,
  }) : _categoriesDataSource = categoriesDataSource;

  @override
  Future<List<MealCategoryEntity>> getAllMealCategories() =>
      _categoriesDataSource.getAllCategories();
}
