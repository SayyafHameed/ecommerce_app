import 'package:get/get.dart';

import '../../core/constants/routes.dart';

abstract class AppVerifyCodeSignupController extends GetxController
{
  checkCode();
  goToSuccessSignUp();
}

class AppVerifyCodeSignupControllerImp extends AppVerifyCodeSignupController
{
  late String verifyCode;

  @override
  checkCode() {

  }

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }

}