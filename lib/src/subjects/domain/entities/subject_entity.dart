import 'dart:convert';

SubjectEntity subjectEntityFromJson(String str) =>
    SubjectEntity.fromJson(json.decode(str));

String subjectEntityToJson(SubjectEntity data) => json.encode(data.toJson());

class SubjectEntity {
  final int credits;
  final int id;
  final String name;
  final String teacher;

  SubjectEntity({
    required this.credits,
    required this.id,
    required this.name,
    required this.teacher,
  });

  factory SubjectEntity.fromJson(Map<String, dynamic> json) => SubjectEntity(
        credits: json["credits"],
        id: json["id"],
        name: json["name"],
        teacher: json["teacher"],
      );

  Map<String, dynamic> toJson() => {
        "credits": credits,
        "id": id,
        "name": name,
        "teacher": teacher,
      };
}
