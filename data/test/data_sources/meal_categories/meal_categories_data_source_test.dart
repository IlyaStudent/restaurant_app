import 'package:data/data.dart';
import 'package:data/src/data_sources/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  late MealCategoriesDataSource dataSource;
  late DioAdapter dioAdapter;
  late Dio dio;

  setUp(() {
    dio = Dio(BaseOptions());
    dioAdapter = DioAdapter(dio: dio);

    dataSource = MealCategoriesDataSource(dio);
  });

  group('Successful scenarios', () {
    test('return MealCategoriesListDTO', () async {
      // Arrange
      const jsonResponse = {
        'categories': [
          {
            "idCategory": "1",
            "strCategory": "Beef",
            "strCategoryThumb":
                "https://www.themealdb.com/images/category/beef.png",
            "strCategoryDescription":
                "Beef is the culinary name for meat from cattle, particularly skeletal muscle.",
          },
        ],
      };

      dioAdapter.onGet(
        Endpoints.mealCategories,
        (server) => server.reply(200, jsonResponse),
      );

      // Act
      final result = await dataSource.getAllCategories();

      // Assert
      expect(result, isA<MealCategoriesListDTO>());
    });
  });

  group('Error scenarios', () {
    test('propagates DioException', () async {
      // Arrange
      dioAdapter.onGet(
        Endpoints.mealCategories,
        (server) => server.reply(404, null),
      );

      // Act
      final result = dataSource.getAllCategories();

      // Assert
      expect(result, throwsA(isA<DioException>()));
    });
  });
}
