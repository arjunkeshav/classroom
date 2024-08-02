import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../classroom.dart';

class ClassroomListItem extends StatelessWidget {
  final ClassroomEntity classroomEntity;

  const ClassroomListItem({required this.classroomEntity, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, RouteGenerator.detailsPage,
            // arguments: DetailsPageParam(
            //   title: SubjectConst.subjectDetailsTitle,
            //   firstText: classroomEntity.name,
            //   secondText: subjectEntity.teacher,
            //   thirdText: 'credit : ${subjectEntity.credits}',
            //   avatarUrl: SubjectConst.subjectImageUrl,
            // )
        ),
        title: Text(
          classroomEntity.name,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        subtitle: Text(
          classroomEntity.layout,
          style: const TextStyle(fontSize: 13),
        ),
        trailing: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: '${classroomEntity.size}\n',
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const TextSpan(
                      text: 'Seats', style: TextStyle(fontSize: 13))
                ])),
      ),
    );
  }
}
