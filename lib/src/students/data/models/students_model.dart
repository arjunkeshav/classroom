import 'dart:convert';

import '../../students.dart';

StudentsModel studentsModelFromJson(String str) =>
    StudentsModel.fromJson(json.decode(str));

String studentsModelToJson(StudentsModel data) => json.encode(data.toJson());

class StudentsModel {
  final List<StudentEntity> students;

  StudentsModel({
    required this.students,
  });

  factory StudentsModel.fromJson(Map<String, dynamic> json) => StudentsModel(
        students: List<StudentEntity>.from(
            json["students"].map((x) => StudentEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "students": List<dynamic>.from(students.map((x) => x.toJson())),
      };
}
