import 'package:classroom/core/core.dart';
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
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(8)),
            child: ListTile(
                onTap: () =>
                    Navigator.pushNamed(context, RouteGenerator.classRoomPage),
                title: Text(
                  studentList[index].name,
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  studentList[index].email,
                  style: const TextStyle(fontSize: 13),
                ),
                trailing: Text(
                  'Age: ${studentList[index].age}',
                  style: const TextStyle(fontSize: 17),
                )),
          );
        });
  }
}
