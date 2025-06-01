import 'dart:async';

import 'package:restaurant_app/core/exceptions/custom_exception.dart';
import 'package:restaurant_app/core/exceptions/exception_mapper/exception_mapper.dart';
import 'package:restaurant_app/core/utils/state_controller/state_controller.dart';

class StateControllerImpl implements StateController {
  final ExceptionMapper _exceptionMapper;

  StateControllerImpl({required ExceptionMapper exceptionMapper})
    : _exceptionMapper = exceptionMapper;

  @override
  Future<void> handleProccess<T>(
    Future<T> Function() process, {
    FutureOr<void> Function()? onLoading,
    FutureOr<void> Function(T? data)? onSuccess,
    FutureOr<void> Function(CustomException exception)? onError,
  }) async {
    await onLoading?.call();

    try {
      final result = await process.call();

      await onSuccess?.call(result);
    } catch (error) {
      final customException = _exceptionMapper.map(error);

      await onError?.call(customException);
    }
  }
}
