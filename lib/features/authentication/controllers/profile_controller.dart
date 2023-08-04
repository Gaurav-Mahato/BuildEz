
import 'package:buildez/features/authentication/models/user_model.dart';
import 'package:buildez/features/repository/authentication_repository.dart';
import 'package:buildez/features/repository/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  getUserData(){
    final email = _authRepo.firebaseUser.value?.email;
    if(email != null){
      return _userRepo.getUserDetails(email);
    }
    else{
      Get.snackbar("Error", "Please log in to continue");
    }
  }

  updateRecord(UserModel user) async{
    print('Profile controller Reached');
    print('Points here are - ${user.points}');
    await _userRepo.updateUserRecord(user);
    Get.snackbar("Success", "Your points have been updated");
  }
}