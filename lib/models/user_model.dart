class UserModel {
  String? name;
  String? profile;
  String? education;
  String? course;

  UserModel({this.name, this.profile, this.education, this.course});

  Map<String, dynamic> toJson() {
    return {
      "name": name,

      "profile": profile,

      "education": education,

      "course": course,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json["name"],

      profile: json["profile"],

      education: json["education"],

      course: json["course"],
    );
  }
}
