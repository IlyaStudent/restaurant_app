part of '../../../menu.dart';

class MealCategoriesScreenBodyWidget extends StatelessWidget {
  final MealCategoriesListEntity data;
  const MealCategoriesScreenBodyWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final categories = data.categories;
    return DecoratedBox(
      decoration: BoxDecoration(color: AppColors.accentColor),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
            child: AppText.cofosansHeadlineMedium(
              context.localization.categories,
              color: AppColors.additionalColor,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.9,
            minChildSize: 0.9,
            maxChildSize: 1,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  child: CustomScrollView(
                    clipBehavior: Clip.none,
                    controller: scrollController,
                    physics: BouncingScrollPhysics(),
                    slivers: [
                      SliverList.separated(
                        itemCount: categories.length,
                        itemBuilder:
                            (_, index) => MealCategoryWidget(
                              mealCategory: categories[index],
                            ),
                        separatorBuilder: (_, __) => SizedBox(height: 16),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
