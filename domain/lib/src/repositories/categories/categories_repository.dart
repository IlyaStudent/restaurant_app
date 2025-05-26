part of '../repositories.dart';

abstract class CategoriesRepository {
  Future<List<CategoryEntity>> getAllCategories();
}
