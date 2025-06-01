part of '../dtos.dart';

@JsonSerializable(createToJson: false)
class MealCategoryDTO extends MealCategoryEntity {
  @override
  @JsonKey(name: "idCategory")
  final String id;

  @override
  @JsonKey(name: "strCategory")
  final String name;

  @override
  @JsonKey(name: "strCategoryThumb")
  final String imageUrl;

  @override
  @JsonKey(name: "strCategoryDescription")
  final String description;

  MealCategoryDTO({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
  }) : super(id: id, name: name, imageUrl: imageUrl, description: description);

  factory MealCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$MealCategoryDTOFromJson(json);
}
