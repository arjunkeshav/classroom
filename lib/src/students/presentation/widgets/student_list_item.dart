import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../utils/common/common.dart';
import '../../students.dart';

class StudentListItem extends StatelessWidget {
  final StudentEntity studentEntity;

  const StudentListItem({required this.studentEntity, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(8)),
      child: ListTile(
          onTap: () => Navigator.pushNamed(context, RouteGenerator.detailsPage,
              arguments: DetailsPageParam(
                title: StudentConst.studentDetailsTitle,
                firstText: studentEntity.name,
                thirdText: studentEntity.email,
                secondText: 'Age : ${studentEntity.age}',
                avatarUrl: StudentConst.studentAvatarUrl,
              )),
          title: Text(
            studentEntity.name,
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
          subtitle: Text(
            studentEntity.email,
            style: const TextStyle(fontSize: 13),
          ),
          trailing: Text(
            'Age : ${studentEntity.age}',
            style: const TextStyle(fontSize: 17),
          )),
    );
  }
}
