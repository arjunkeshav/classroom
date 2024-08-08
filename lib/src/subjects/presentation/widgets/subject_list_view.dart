import 'package:flutter/material.dart';

import '../../subjects.dart';

class SubjectListView extends StatelessWidget {
  final List<SubjectEntity> subjectList;
  final SubjectListParam subjectListParam;

  const SubjectListView({required this.subjectList,required  this.subjectListParam, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: subjectList.length,
        itemBuilder: (context, index) {
          return SubjectListItem(subjectEntity: subjectList[index],subjectListParam:subjectListParam);
        });
  }
}
