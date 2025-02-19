import 'dart:convert';

class Users {
  final int? usrId;
  final String? fullName;
  final String? email;
  final String usrName;
  final String password;

  Users({
    this.usrId,
    this.fullName,
    this.email,
    required this.usrName,
    required this.password,
  });

  factory Users.fromMap(Map<String, dynamic> json) => Users(
        usrId: json["usrId"],
        fullName: json["fullName"],
        email: json["email"],
        usrName: json["usrName"],
        password: json["usrPassword"],
      );

  Map<String, dynamic> toMap() => {
        "usrId": usrId,
        "fullName": fullName,
        "email": email,
        "usrName": usrName,
        "usrPassword": password,
      };
}
