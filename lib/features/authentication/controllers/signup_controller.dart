

import 'package:buildez/features/repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final contact = TextEditingController();
  final name = TextEditingController();
  final password = TextEditingController();

  void registerUser(String email,String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}