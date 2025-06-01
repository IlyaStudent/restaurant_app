import 'package:restaurant_app/core/exceptions/custom_exception.dart';

abstract class ExceptionMapper {
  CustomException map(Object? error);
}
