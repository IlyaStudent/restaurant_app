part of '../dtos.dart';

@freezed
abstract class MealCategoryDTO extends MealCategoryEntity
    with _$MealCategoryDTO {
  MealCategoryDTO._({
    required super.id,
    required super.name,
    required super.imageUrl,
    required super.description,
  }) : super();

  factory MealCategoryDTO({
    @JsonKey(name: 'idCategory') required int id,
    @JsonKey(name: 'strCategory') required String name,
    @JsonKey(name: 'strCategoryThumb') required String imageUrl,
    @JsonKey(name: 'strCategoryDescription') required String description,
  }) = _MealCategoryDTO;

  factory MealCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$MealCategoryDTOFromJson(json);
}
