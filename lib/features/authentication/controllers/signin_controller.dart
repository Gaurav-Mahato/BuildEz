import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../repository/authentication_repository.dart';

class SignInController extends GetxController{
  static SignInController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  void loginUser(String email,String password){
    AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
  }
}