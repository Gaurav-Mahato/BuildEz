import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String? id;
  final String name;
  final String email;
  final String contact;
  final String password;
  final int points;
  const UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.contact,
    this.points = 0
  });
  toJson(){
    return {
      "name": name,
      "contact": contact,
      "email": email,
      "password": password,
      "points": 0
    };
  }

  updatePoints(){
    return {
      "name": name,
      "contact": contact,
      "email": email,
      "password": password,
      "points": points+10
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String,dynamic>> document){
    final data = document.data()!;

    return UserModel(
        id: document.id,
        email: data["email"],
        contact: data["contact"],
        name: data["name"],
        password: data["password"],
        points: data["points"]
    );
  }
}
