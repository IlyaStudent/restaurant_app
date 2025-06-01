part of '../../menu.dart';

@RoutePage()
class MealCategoriesScreen extends StatelessWidget implements AutoRouteWrapper {
  const MealCategoriesScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    final cubit = MealCategoriesCubit(
      stateController: getIt<StateController>(),
      getAllMealCategoriesUseCase: getIt<GetAllMealCategoriesUseCase>(),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await cubit.fetchData();
    });

    return BlocProvider(create: (context) => cubit, child: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<MealCategoriesCubit, MealCategoriesState>(
        builder: (context, state) {
          return state.map(
            initial: () {
              return SizedBox.shrink();
            },
            loading: () {
              return CustomLoadingIndicatorWidget();
            },
            successful: (data) {
              return MealCategoriesScreenBodyWidget(data: data);
            },
            error: (exception) {
              return CustomErrorWidget(exception: exception);
            },
          );
        },
      ),
    );
  }
}
