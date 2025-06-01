import 'package:dio/dio.dart';
import 'package:restaurant_app/core/exceptions/custom_exception.dart';
import 'package:restaurant_app/core/exceptions/exception_mapper/exception_mapper.dart';

class ExceptionMapperImpl implements ExceptionMapper {
  @override
  CustomException map(Object? error) {
    {
      switch (error) {
        case CustomException _:
          return error;
        case DioException _:
          return CustomException(
            title: '${error.response?.statusCode} exception',
            subtitle: error.response?.statusMessage,
          );
        default:
          return CustomException(title: 'Unexpected exception');
      }
    }
  }
}
