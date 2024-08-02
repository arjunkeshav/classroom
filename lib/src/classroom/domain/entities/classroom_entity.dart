class ClassroomEntity {
  final int id;
  final String layout;
  final String name;
  final int size;
  final String subject;

  ClassroomEntity({
    required this.id,
    required this.layout,
    required this.name,
    required this.size,
    required this.subject,

  });

  factory ClassroomEntity.fromJson(Map<String, dynamic> json) => ClassroomEntity(
    id: json["id"],
    layout: json["layout"],
    name: json["name"],
    size: json["size"],
    subject: json["subject"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "layout": layout,
    "name": name,
    "size": size,
    "subject": subject,
  };
}