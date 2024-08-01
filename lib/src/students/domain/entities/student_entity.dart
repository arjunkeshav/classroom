class StudentEntity {
  final int age;
  final String email;
  final int id;
  final String name;

  StudentEntity({
    required this.age,
    required this.email,
    required this.id,
    required this.name,
  });

  factory StudentEntity.fromJson(Map<String, dynamic> json) => StudentEntity(
        age: json["age"],
        email: json["email"],
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "age": age,
        "email": email,
        "id": id,
        "name": name,
      };
}
