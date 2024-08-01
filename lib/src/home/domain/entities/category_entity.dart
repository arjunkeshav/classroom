import 'package:flutter/cupertino.dart';

class CategoryEntity {
  final String categoryName;
  final String navigateTo;
  final IconData iconData;
  final Color iconColor;
  final Color cardBg;

  CategoryEntity({
    required this.categoryName,
    required this.navigateTo,
    required this.iconData,
    required this.iconColor,
    required this.cardBg,
  });

  CategoryEntity copyWith({
    String? categoryName,
    String? navigateTo,
    IconData? iconData,
    Color? iconColor,
    Color? cardBg,
  }) {
    return CategoryEntity(
      categoryName: categoryName ?? this.categoryName,
      navigateTo: navigateTo ?? this.navigateTo,
      iconData: iconData ?? this.iconData,
      iconColor: iconColor ?? this.iconColor,
      cardBg: cardBg ?? this.cardBg,
    );
  }
}
