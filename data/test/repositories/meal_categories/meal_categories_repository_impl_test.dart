import 'package:data/data.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:test/test.dart';

import '../../data_sources/meal_categories/fake_meal_categories_data_source.dart';

void main() {
  late MealCategoriesDataSource mockDataSource;
  late MealCategoriesRepository repository;

  group('Successful scenarios', () {
    setUp(() {
      mockDataSource = FakeMealCategoriesDataSource(withError: false);
      repository = MealCategoriesRepositoryImpl(
        categoriesDataSource: mockDataSource,
      );
    });
    test('return MealCategoriesListEntity ', () async {
      // Arrange

      // Act
      final result = await repository.getAllMealCategories();

      // Asset
      expect(result, isA<MealCategoriesListEntity>());
    });
  });

  group('Error scenarios', () {
    setUp(() {
      mockDataSource = FakeMealCategoriesDataSource(withError: true);
      repository = MealCategoriesRepositoryImpl(
        categoriesDataSource: mockDataSource,
      );
    });
    test('propagates DioException', () async {
      // Arrange

      // Act
      final result = repository.getAllMealCategories();

      // Assert
      expect(result, throwsA(isA<DioException>()));
    });
  });
}
