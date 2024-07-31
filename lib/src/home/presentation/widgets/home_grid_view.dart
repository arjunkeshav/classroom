import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // Allows the GridView to take only the space it needs
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0, // Horizontal space between items
          mainAxisSpacing: 16.0,childAspectRatio: .8/1 // Vertical space between items
      ),
      itemCount: HomeConst.categoryList.length,
      itemBuilder: (context, index) {
        return SizedBox(
          child: Container(
            decoration: BoxDecoration(
              color: HomeConst.categoryList[index].cardBg,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    HomeConst.categoryList[index].iconData,
                    color: HomeConst.categoryList[index].iconColor,
                    size: 40,
                  ),
                  const SizedBox(height: 12,),
                  Text(
                    HomeConst.categoryList[index].categoryName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
