part of '../repositories.dart';

abstract class MealCategoriesRepository {
  Future<MealCategoriesListEntity> getAllMealCategories();
}
