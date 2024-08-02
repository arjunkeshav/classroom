import 'dart:convert';

import '../../subjects.dart';

SubjectsModel subjectsModelFromJson(String str) => SubjectsModel.fromJson(json.decode(str));

String subjectsModelToJson(SubjectsModel data) => json.encode(data.toJson());

class SubjectsModel {
  final List<SubjectEntity> subjects;

  SubjectsModel({
    required this.subjects,
  });

  factory SubjectsModel.fromJson(Map<String, dynamic> json) => SubjectsModel(
    subjects: List<SubjectEntity>.from(json["subjects"].map((x) => SubjectEntity.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "subjects": List<dynamic>.from(subjects.map((x) => x.toJson())),
  };
}


