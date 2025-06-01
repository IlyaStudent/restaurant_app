part of '../use_cases.dart';

class GetAllMealCategoriesUseCase {
  final MealCategoriesRepository _categoriesRepository;

  GetAllMealCategoriesUseCase({
    required MealCategoriesRepository categoriesRepository,
  }) : _categoriesRepository = categoriesRepository;

  Future<MealCategoriesListEntity> call() async {
    return await _categoriesRepository.getAllMealCategories();
  }
}
