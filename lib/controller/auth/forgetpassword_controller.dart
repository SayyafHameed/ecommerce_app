import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constants/routes.dart';

abstract class AppForgetPasswordController extends GetxController
{
  checkEmail();
  goToVeryCode();
}

class AppForgetPassControllerImp extends AppForgetPasswordController
{
  late TextEditingController email;

  @override
  checkEmail() {

  }

  @override
  goToVeryCode() {
    Get.offNamed(AppRoute.verifyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

}