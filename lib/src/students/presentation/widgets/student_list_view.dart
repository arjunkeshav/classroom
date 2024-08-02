import 'package:flutter/material.dart';

import '../../students.dart';

class StudentListView extends StatelessWidget {
  final List<StudentEntity> studentList;

  const StudentListView({required this.studentList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: studentList.length,
        itemBuilder: (context, index) {
          return StudentListItem(studentEntity: studentList[index]);
        });
  }
}
