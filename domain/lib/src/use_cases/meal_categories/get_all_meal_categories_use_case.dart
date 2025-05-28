part of '../use_cases.dart';

class GetAllMealCategoriesUseCase {
  final MealCategoriesRepository _categoriesRepository;

  GetAllMealCategoriesUseCase({
    required MealCategoriesRepository categoriesRepository,
  }) : _categoriesRepository = categoriesRepository;

  Future<List<MealCategoryEntity>> call() async {
    return await _categoriesRepository.getAllMealCategories();
  }
}
