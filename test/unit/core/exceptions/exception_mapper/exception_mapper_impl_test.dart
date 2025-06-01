import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:restaurant_app/core/exceptions/custom_exception.dart';
import 'package:restaurant_app/core/exceptions/exception_mapper/exception_mapper_impl.dart';

void main() {
  late ExceptionMapperImpl mapper;

  setUp(() {
    mapper = ExceptionMapperImpl();
  });

  group('CustomException mapping', () {
    test('should return same CustomException instance', () {
      // Arrange
      const originalException = CustomException(
        title: 'Test Error',
        subtitle: 'Details',
      );

      // Act
      final result = mapper.map(originalException);

      // Assert
      expect(result, same(originalException));
      expect(result.title, 'Test Error');
      expect(result.subtitle, 'Details');
    });
  });

  group('DioException mapping', () {
    test('should map 404 error correctly', () {
      // Arrange
      final dioException = DioException(
        requestOptions: RequestOptions(),
        response: Response(
          requestOptions: RequestOptions(),
          statusCode: 404,
          statusMessage: 'Not Found',
        ),
      );

      // Act
      final result = mapper.map(dioException);

      // Assert
      expect(result, isA<CustomException>());
      expect(result.title, '404 exception');
      expect(result.subtitle, 'Not Found');
    });

    test('should handle empty response in DioException', () {
      // Arrange
      final dioException = DioException(
        requestOptions: RequestOptions(path: '/test'),
      );

      // Act
      final result = mapper.map(dioException);

      // Assert
      expect(result.title, 'null exception');
      expect(result.subtitle, isNull);
    });
  });
}
