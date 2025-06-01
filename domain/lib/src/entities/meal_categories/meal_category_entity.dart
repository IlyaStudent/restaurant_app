part of '../entities.dart';

class MealCategoryEntity {
  final String id;
  final String name;
  final String imageUrl;
  final String description;

  const MealCategoryEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
  });
}
