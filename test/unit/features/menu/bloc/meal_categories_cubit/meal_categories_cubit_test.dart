// ignore_for_file: discarded_futures

import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:restaurant_app/core/exceptions/exception_mapper/exception_mapper_impl.dart';
import 'package:restaurant_app/core/utils/state_controller/state_controller_impl.dart';
import 'package:restaurant_app/features/menu/menu.dart';

import 'meal_categories_cubit_test.mocks.dart';

@GenerateMocks([GetAllMealCategoriesUseCase])
void main() {
  late MealCategoriesCubit cubit;
  late GetAllMealCategoriesUseCase mockUseCase;

  final ExceptionMapperImpl exceptionMapper = ExceptionMapperImpl();
  final StateControllerImpl stateController = StateControllerImpl(
    exceptionMapper: exceptionMapper,
  );
  setUp(() {
    mockUseCase = MockGetAllMealCategoriesUseCase();
    cubit = MealCategoriesCubit(
      stateController: stateController,
      getAllMealCategoriesUseCase: mockUseCase,
    );
  });

  final testData = MealCategoriesListEntity(
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

  final testException = DioException(
    requestOptions: RequestOptions(),
    response: Response(
      requestOptions: RequestOptions(),
      statusCode: 500,
      statusMessage: 'Test error message',
    ),
  );

  final mappedException = exceptionMapper.map(testException);

  group('Initialization', () {
    test('initial state is MealCategoriesState.initial()', () {
      // Act
      final state = cubit.state;

      // Assert
      expect(state, equals(MealCategoriesState.initial()));
    });
  });

  group('Success scenarios', () {
    blocTest(
      'emits [loading, successful] when data fetched',
      build: () {
        when(mockUseCase()).thenAnswer((_) async => testData);
        return cubit;
      },
      act: (bloc) async => await bloc.fetchData(),
      expect:
          () => [
            MealCategoriesState.loading(),
            MealCategoriesState.successful(data: testData),
          ],
    );
  });

  group('Error scenasrios', () {
    blocTest(
      'emits [loading, error] on Exception',
      build: () {
        when(mockUseCase()).thenThrow(testException);
        return cubit;
      },
      act: (bloc) async => await bloc.fetchData(),
      expect:
          () => [
            MealCategoriesState.loading(),
            MealCategoriesState.error(exception: mappedException),
          ],
    );
  });
}
