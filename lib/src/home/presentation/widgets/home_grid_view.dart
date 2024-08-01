import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 16.0,childAspectRatio: .8/1
      ),
      itemCount: HomeConst.categoryList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Navigator.pushNamed(
              context, HomeConst.categoryList[index].navigateTo),
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
