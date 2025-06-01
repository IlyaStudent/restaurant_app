import 'package:flutter_test/flutter_test.dart';
import 'package:restaurant_app/core/exceptions/custom_exception.dart';
import 'package:restaurant_app/core/exceptions/exception_mapper/exception_mapper_impl.dart';
import 'package:restaurant_app/core/utils/state_controller/state_controller.dart';
import 'package:restaurant_app/core/utils/state_controller/state_controller_impl.dart';

void main() {
  final ExceptionMapperImpl exceptionMapper = ExceptionMapperImpl();
  late StateController stateController;

  setUp(() {
    stateController = StateControllerImpl(exceptionMapper: exceptionMapper);
  });

  group('Should maintain correct callback order', () {
    test('Success scenario', () async {
      final callOrder = <String>[];

      await stateController.handleProccess(
        () async {
          callOrder.add('process');
          return null;
        },
        onLoading: () => callOrder.add('loading'),
        onSuccess: (_) => callOrder.add('success'),
        onError: (exception) => callOrder.add('error'),
      );

      expect(callOrder, ['loading', 'process', 'success']);
    });

    test('Error scenario', () async {
      final callOrder = <String>[];

      await stateController.handleProccess(
        () async {
          callOrder.add('process');
          throw CustomException(title: 'title');
        },
        onLoading: () => callOrder.add('loading'),
        onSuccess: (_) => callOrder.add('success'),
        onError: (exception) => callOrder.add('error'),
      );

      expect(callOrder, ['loading', 'process', 'error']);
    });
  });
}
