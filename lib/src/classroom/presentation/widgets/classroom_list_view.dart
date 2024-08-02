import 'package:flutter/material.dart';

import '../../classroom.dart';

class ClassroomListView extends StatelessWidget {
  final List<ClassroomEntity> classroomList;

  const ClassroomListView({required this.classroomList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: classroomList.length,
        itemBuilder: (context, index) {
          return ClassroomListItem(classroomEntity: classroomList[index]);
        });
  }
}
