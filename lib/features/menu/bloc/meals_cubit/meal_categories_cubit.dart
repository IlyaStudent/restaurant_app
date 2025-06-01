part of '../../menu.dart';

typedef MealCategoriesState = ApiResponseState<MealCategoriesListEntity>;

class MealCategoriesCubit extends Cubit<MealCategoriesState> {
  final StateController _stateController;
  final GetAllMealCategoriesUseCase _getAllMealCategoriesUseCase;

  MealCategoriesCubit({
    required StateController stateController,
    required GetAllMealCategoriesUseCase getAllMealCategoriesUseCase,
  }) : _stateController = stateController,
       _getAllMealCategoriesUseCase = getAllMealCategoriesUseCase,
       super(ApiResponseState.initial());

  Future<void> fetchData() async {
    _stateController.handleProccess(
      _getAllMealCategoriesUseCase.call,
      onLoading: () {
        emit(ApiResponseState.loading());
      },
      onSuccess: (data) {
        emit(ApiResponseState.successful(data: data!));
      },
      onError: (exception) {
        emit(ApiResponseState.error(exception: exception));
      },
    );
  }
}
