import 'package:data/data.dart';
import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';

class FakeMealCategoriesDataSource extends Fake
    implements MealCategoriesDataSource {
  final bool withError;

  FakeMealCategoriesDataSource({required this.withError});

  final _exception = DioException(requestOptions: RequestOptions());

  @override
  Future<MealCategoriesListDTO> getAllCategories() async {
    if (withError) throw _exception;

    return _mealCategories;
  }

  static final _mealCategories = MealCategoriesListDTO(
    categories: [
      MealCategoryDTO(
        id: '1',
        name: 'Beef',
        imageUrl: 'https://www.themealdb.com/images/category/beef.png',
        description:
            'Beef is the culinary name for meat from cattle, particularly skeletal muscle.',
      ),
      MealCategoryDTO(
        id: '2',
        name: 'Chicken',
        imageUrl: 'https://www.themealdb.com/images/category/chicken.png',
        description:
            'Chicken is a type of domesticated fowl, a subspecies of the red junglefowl.',
      ),
      MealCategoryDTO(
        id: '3',
        name: 'Dessert',
        imageUrl: 'https://www.themealdb.com/images/category/dessert.png',
        description: 'Dessert is a course that concludes a meal.',
      ),
    ],
  );
}
