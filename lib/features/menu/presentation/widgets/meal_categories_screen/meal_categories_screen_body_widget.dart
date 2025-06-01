part of '../../../menu.dart';

class MealCategoriesScreenBodyWidget extends StatelessWidget {
  final MealCategoriesListEntity data;
  const MealCategoriesScreenBodyWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.cofosansDisplayMedium("Категории"),
          Divider(color: AppColors.accentColor, thickness: 1),
          ...data.categories.map(
            (mealCategory) => MealCategoryWidget(mealCategory: mealCategory),
          ),
        ],
      ),
    );
  }
}
