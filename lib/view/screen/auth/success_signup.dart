import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../widget/auth/custom_sign.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSignUpControllerImp  controller = Get.put(AppSignUpControllerImp());
    return Scaffold(

      body: Center(
        child: AuthSignInOrSignOn(
          textOne: "Don't Have an Account? ",
          textTwo: "Sign In",
          onTap: (){
            controller.goToLogin();
          },
        ),
      ),
    );
  }
}
