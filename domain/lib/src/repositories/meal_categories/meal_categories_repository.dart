part of '../repositories.dart';

abstract class MealCategoriesRepository {
  Future<List<MealCategoryEntity>> getAllMealCategories();
}
