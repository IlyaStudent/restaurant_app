part of '../use_cases.dart';

class GetAllCategoriesUseCase {
  final CategoriesRepository _categoriesRepository;

  GetAllCategoriesUseCase({required CategoriesRepository categoriesRepository})
    : _categoriesRepository = categoriesRepository;

  Future<List<CategoryEntity>> call() async {
    return await _categoriesRepository.getAllCategories();
  }
}
