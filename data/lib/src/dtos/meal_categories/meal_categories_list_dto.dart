part of '../dtos.dart';

@JsonSerializable(createToJson: false)
class MealCategoriesListDTO extends MealCategoriesListEntity {
  MealCategoriesListDTO({required List<MealCategoryDTO> categories})
    : super(categories: categories);

  factory MealCategoriesListDTO.fromJson(Map<String, dynamic> json) =>
      _$MealCategoriesListDTOFromJson(json);
}
