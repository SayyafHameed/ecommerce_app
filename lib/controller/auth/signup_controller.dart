// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constants/routes.dart';

abstract class AppSignUpController extends GetxController
{
  signUp();
  goToLogin();
}

class AppSignUpControllerImp extends AppSignUpController
{
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  @override
  signUp() {
    if(formState.currentState!.validate()){
      Get.offNamed(AppRoute.verifyCodeSignUp);
    }else{
      print("Not Valid");
    }
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

}