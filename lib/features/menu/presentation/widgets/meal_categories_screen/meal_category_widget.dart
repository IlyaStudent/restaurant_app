part of '../../../menu.dart';

class MealCategoryWidget extends StatelessWidget {
  final MealCategoryEntity mealCategory;
  const MealCategoryWidget({super.key, required this.mealCategory});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () async => context.pushRoute(
            MealByCategoryRoute(categoryName: mealCategory.name),
          ),
      child: Container(
        constraints: BoxConstraints.expand(height: 120),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              Positioned.fill(
                child: Transform.scale(
                  scale: 1.05,
                  child: AppImage.network(
                    mealCategory.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.7),
                        Colors.black.withValues(alpha: 0.5),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: AppText.cofosansLabelMedium(
                  mealCategory.name,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
