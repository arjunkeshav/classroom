import 'package:flutter/cupertino.dart';

class CategoryEntity {
  final String categoryName;
  final IconData iconData;
  final Color iconColor;
  final Color cardBg;

  CategoryEntity({
    required this.categoryName,
    required this.iconData,
    required this.iconColor,
    required this.cardBg,
  });

  CategoryEntity copyWith({
    String? categoryName,
    IconData? iconData,
    Color? iconColor,
    Color? cardBg,
  }) {
    return CategoryEntity(
      categoryName: categoryName ?? this.categoryName,
      iconData: iconData ?? this.iconData,
      iconColor: iconColor ?? this.iconColor,
      cardBg: cardBg ?? this.cardBg,
    );
  }
}