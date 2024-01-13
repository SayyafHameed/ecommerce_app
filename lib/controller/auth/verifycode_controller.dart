import 'package:get/get.dart';

import '../../core/constants/routes.dart';

abstract class AppVerifyCodeController extends GetxController
{
  checkCode();
  goToResetPassword();
}

class AppVerifyCodeControllerImp extends AppVerifyCodeController
{
  late String verifyCode;

  @override
  checkCode() {

  }

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

}