class LoginModel {
  String? phneNumber;
  String? password;
  String? token;

  LoginModel({this.phneNumber, this.password, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    phneNumber = json['phne_number'];
    password = json['password'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phne_number'] = this.phneNumber;
    data['password'] = this.password;
    return data;
  }
}