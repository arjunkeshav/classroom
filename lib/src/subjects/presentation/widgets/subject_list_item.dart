import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../utils/common/common.dart';
import '../../subjects.dart';

class SubjectListItem extends StatelessWidget {
  final SubjectEntity subjectEntity;

  const SubjectListItem({required this.subjectEntity, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, RouteGenerator.detailsPage,
            arguments: DetailsPageParam(
              title: SubjectConst.subjectDetailsTitle,
              firstText: subjectEntity.name,
              secondText: subjectEntity.teacher,
              thirdText: 'credit : ${subjectEntity.credits}',
              avatarUrl: SubjectConst.subjectImageUrl,
            )),
        title: Text(
          subjectEntity.name,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        subtitle: Text(
          subjectEntity.teacher,
          style: const TextStyle(fontSize: 13),
        ),
        trailing: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: '${subjectEntity.credits}\n',
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const TextSpan(
                      text: 'Credits', style: TextStyle(fontSize: 13))
                ])),
      ),
    );
  }
}
