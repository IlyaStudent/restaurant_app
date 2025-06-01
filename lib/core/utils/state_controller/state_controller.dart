import 'dart:async';

import 'package:restaurant_app/core/exceptions/custom_exception.dart';

abstract class StateController {
  Future<void> handleProccess<T>(
    Future<T> Function() process, {
    FutureOr<void> Function()? onLoading,
    FutureOr<void> Function(T? data)? onSuccess,
    FutureOr<void> Function(CustomException exception)? onError,
  });
}
