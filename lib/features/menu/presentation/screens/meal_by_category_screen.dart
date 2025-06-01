part of '../../menu.dart';

@RoutePage()
class MealByCategoryScreen extends StatelessWidget {
  final String categoryName;
  const MealByCategoryScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AppText.cofosansBodyLarge("text"));
  }

  // @override
  // Widget wrappedRoute(BuildContext context) {
  //   return this;
  // }
}
