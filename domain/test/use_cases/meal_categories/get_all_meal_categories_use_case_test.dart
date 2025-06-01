import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:test/test.dart';

import '../../repositories/meal_categories/fake_meal_categories_repository.dart';

void main() {
  late MealCategoriesRepository fakeRepository;
  late GetAllMealCategoriesUseCase useCase;

  void setUpUseCase({required bool withError}) {
    setUp(() {
      fakeRepository = FakeMealCategoriesRepository(withError: withError);
      useCase = GetAllMealCategoriesUseCase(
        categoriesRepository: fakeRepository,
      );
    });
  }

  group('Successful scenarios', () {
    setUpUseCase(withError: false);
    test('returns MealCategoriesListEntity', () async {
      // Arrange

      // Act
      final result = await useCase();

      // Assert
      expect(result, isA<MealCategoriesListEntity>());
    });
  });

  group('Eror scenarios', () {
    setUpUseCase(withError: true);

    test('propagates exceptions', () async {
      // Arrange

      // Act
      final result = useCase();

      // Assert
      expect(result, throwsA(isA<DioException>()));
    });
  });
}
