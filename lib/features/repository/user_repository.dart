import 'package:buildez/features/authentication/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _db.collection("User").add(user.toJson())
        .whenComplete(
            () => Get.snackbar('Success', 'Your account has been created',
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.green,
            backgroundColor: Colors.green.withOpacity(0.1))
        )
        .catchError((error, stackTrace) {
          Get.snackbar('Error', 'Something went wrong. Try Again.',
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.red,
          backgroundColor: Colors.redAccent.withOpacity(0.1));
        });
  }
}