import 'package:flutter/material.dart';

import '../../subjects.dart';

class SubjectListView extends StatelessWidget {
  final List<SubjectEntity> subjectList;

  const SubjectListView({required this.subjectList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: subjectList.length,
        itemBuilder: (context, index) {
          return SubjectListItem(subjectEntity: subjectList[index]);
        });
  }
}
