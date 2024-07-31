import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(shrinkWrap: true,
      itemCount: HomeConst.categoryList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(color: HomeConst.categoryList[index].cardBg,borderRadius: BorderRadius.circular(8)),
          child:  Center(child: Text(HomeConst.categoryList[index].categoryName,style:const TextStyle(fontWeight: FontWeight.w500,fontSize: 16) ,)),
        );
      },
    );
  }
}
