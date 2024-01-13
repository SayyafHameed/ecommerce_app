import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constants/routes.dart';

abstract class AppResetPasswordController extends GetxController
{
  resetPassword();
  goToSuccessResetPassword();
}

class AppResetPassControllerImp extends AppResetPasswordController
{
  late TextEditingController password;
  late TextEditingController rePassword;


  @override
  resetPassword() {

  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetPass);
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();

    super.dispose();
  }

}