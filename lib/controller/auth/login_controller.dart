// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';

abstract class AppLoginController extends GetxController
{
  login();
  goToSignUp();
  goToForgetPassword();
}

class AppLoginControllerImp extends AppLoginController
{
  late TextEditingController email;
  late TextEditingController password;

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  bool isPassword = true;

  isPasswordChange(){
    isPassword = isPassword == true ? false : true;
    update();
  }

  @override
  login() {
    var formData = formState.currentState;
    if(formData!.validate()){
      print('Valid');
    }else{
      print('not Valid');
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

}