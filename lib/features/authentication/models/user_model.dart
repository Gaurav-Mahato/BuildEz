import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String? id;
  final String name;
  final String email;
  final String contact;
  final String password;
  const UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.contact,
  });
  toJson(){
    return {
      "name": name,
      "contact": contact,
      "email": email,
      "password": password
    };
  }
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String,dynamic>> document){
    final data = document.data()!;

    return UserModel(
        id: document.id,
        email: data["email"],
        contact: data["contact"],
        name: data["name"],
        password: data["password"]
    );
  }
}