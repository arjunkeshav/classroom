import 'dart:convert';

import '../../classroom.dart';

ClassroomsModel classroomsModelFromJson(String str) => ClassroomsModel.fromJson(json.decode(str));

String classroomsModelToJson(ClassroomsModel data) => json.encode(data.toJson());

class ClassroomsModel {
  final List<ClassroomEntity> classrooms;

  ClassroomsModel({
    required this.classrooms,
  });

  factory ClassroomsModel.fromJson(Map<String, dynamic> json) => ClassroomsModel(
    classrooms: List<ClassroomEntity>.from(json["classrooms"].map((x) => ClassroomEntity.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "classrooms": List<dynamic>.from(classrooms.map((x) => x.toJson())),
  };
}


