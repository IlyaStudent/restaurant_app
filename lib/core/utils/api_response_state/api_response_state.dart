import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/core/exceptions/custom_exception.dart';
part 'api_response_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResponseState<T> with _$ApiResponseState<T> {
  const ApiResponseState._();

  const factory ApiResponseState.initial() = _ApiResponseStateInitial;
  const factory ApiResponseState.loading() = _ApiResponseStateLoading;
  const factory ApiResponseState.successful({required T data}) =
      _ApiResponseStateSuccessful;
  const factory ApiResponseState.error({required CustomException exception}) =
      _ApiResponseStateError;

  bool get isLoading => this is _ApiResponseStateLoading;
  bool get hasError => this is _ApiResponseStateError;
  bool get hasData => this is _ApiResponseStateSuccessful;

  R map<R>({
    required R Function() initial,
    required R Function() loading,
    required R Function(T data) successful,
    required R Function(CustomException exception) error,
  }) {
    return switch (this) {
      _ApiResponseStateInitial<T> _ => initial(),
      _ApiResponseStateLoading<T> _ => loading(),
      _ApiResponseStateSuccessful<T> _ => successful(
        (this as _ApiResponseStateSuccessful).data as T,
      ),
      _ApiResponseStateError<T> _ => error(
        (this as _ApiResponseStateError).exception,
      ),
    };
  }
}
