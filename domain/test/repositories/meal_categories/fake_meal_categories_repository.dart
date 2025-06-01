import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:test/fake.dart';

class FakeMealCategoriesRepository extends Fake
    implements MealCategoriesRepository {
  final bool withError;

  FakeMealCategoriesRepository({required this.withError});

  final _exception = DioException(requestOptions: RequestOptions());

  @override
  Future<MealCategoriesListEntity> getAllMealCategories() async {
    if (withError) throw _exception;

    return _mealCategories;
  }

  static final _mealCategories = MealCategoriesListEntity(
    categories: [
      MealCategoryEntity(
        id: '1',
        name: 'Beef',
        imageUrl: 'https://www.themealdb.com/images/category/beef.png',
        description:
            'Beef is the culinary name for meat from cattle, particularly skeletal muscle.',
      ),
      MealCategoryEntity(
        id: '2',
        name: 'Chicken',
        imageUrl: 'https://www.themealdb.com/images/category/chicken.png',
        description:
            'Chicken is a type of domesticated fowl, a subspecies of the red junglefowl.',
      ),
      MealCategoryEntity(
        id: '3',
        name: 'Dessert',
        imageUrl: 'https://www.themealdb.com/images/category/dessert.png',
        description: 'Dessert is a course that concludes a meal.',
      ),
    ],
  );
}
