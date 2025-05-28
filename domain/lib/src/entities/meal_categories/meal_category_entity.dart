part of '../entities.dart';

abstract class MealCategoryEntity {
  final int id;
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
