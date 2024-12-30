class UserModel {
  String? id;
  String? name;
  String? email;
  String? phoneNumber;
  String? profileImage;
  String? about;
  String? createdAt;
  String? lastOnlineStatus;
  String? status;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.phoneNumber,
      this.profileImage,
      this.about,
      this.createdAt,
      this.lastOnlineStatus,
      this.status});

  UserModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["phoneNumber"] is String) {
      phoneNumber = json["phoneNumber"];
    }
    if (json["profileImage"] is String) {
      profileImage = json["profileImage"];
    }
    if (json["About"] is String) {
      about = json["About"];
    }
    if (json["CreatedAt"] is String) {
      createdAt = json["CreatedAt"];
    }
    if (json["LastOnlineStatus"] is String) {
      lastOnlineStatus = json["LastOnlineStatus"];
    }
    if (json["Status"] is String) {
      status = json["Status"];
    }
  }

  static List<UserModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(UserModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["email"] = email;
    _data["phoneNumber"] = phoneNumber;
    _data["profileImage"] = profileImage;
    _data["About"] = about;
    _data["CreatedAt"] = createdAt;
    _data["LastOnlineStatus"] = lastOnlineStatus;
    _data["Status"] = status;
    return _data;
  }
}
