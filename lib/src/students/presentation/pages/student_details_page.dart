import 'package:classroom/core/core.dart';
import 'package:flutter/material.dart';

import '../../students.dart';

class StudentDetailsPage extends StatelessWidget {
  final StudentEntity studentEntity;

  const StudentDetailsPage({required this.studentEntity, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StudentConst.studentDetailsTitle,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(
            height: 137,
          ),
          const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              StudentConst.studentAvatarUrl,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            studentEntity.name,
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Age : ${studentEntity.age}',
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(studentEntity.email, style: const TextStyle(fontSize: 17)),
        ],
      ),
    );
  }
}
