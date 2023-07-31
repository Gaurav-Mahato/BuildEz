

import 'package:buildez/features/repository/authentication_repository.dart';
import 'package:buildez/features/repository/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../models/user_model.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final contact = TextEditingController();
  final name = TextEditingController();
  final password = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email,String password){
    String? error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String?;
    if(error != null){
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  Future<void> createUser(UserModel user) async{
    await userRepo.createUser(user);
    registerUser(user.email, user.password);
  }
}
