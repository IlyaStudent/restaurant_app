part of 'extensions.dart';

extension ContextExtension on BuildContext {
  AppRouter get appRouter => AppRouter();
  S get localization => S.of(this);
}
