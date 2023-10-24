class LoginResonseModel {
  bool? status;
  User? user;
  dynamic? token;

  LoginResonseModel({this.status, this.user, this.token});

  LoginResonseModel.fromJson(Map<dynamic, dynamic> json) {
    status = json['status'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['status'] = this.status;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  dynamic? name;
  dynamic? title;
  dynamic? email;
  dynamic? emailVerifiedAt;
  dynamic? status;
  dynamic? createdAt;
  dynamic? updatedAt;
  dynamic? image;

  User(
      {this.id,
        this.name,
        this.title,
        this.email,
        this.emailVerifiedAt,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.image});

  User.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['title'] = this.title;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image'] = this.image;
    return data;
  }
}
