import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/signup_controller.dart';

import '../../../core/constants/color.dart';
import '../../../core/function/alert_exit.dart';
import '../../../core/function/validation.dart';
import '../../widget/auth/custom_bottom_auth.dart';
import '../../widget/auth/custom_sign.dart';
import '../../widget/auth/custom_text_body.dart';
import '../../widget/auth/custom_text_form.dart';
import '../../widget/auth/custom_text_title.dart';

class AppSignUpScreen extends StatelessWidget {
  const AppSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSignUpControllerImp controller = Get.put(AppSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          'Sign Up',
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: AppColor.primaryColor),
        ),
      ),
      body: WillPopScope(
        onWillPop: appAlertExit,
        child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Form(
                  key: controller.formState,
                  child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const AuthTextTitle(text: 'Welcome'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const AuthTextBody(
                          text:
                              'Sign In With Your Email And Password OR Continue With Social Media'),
                      AuthTextFormFiled(
                        valid: (val) {
                          return validText(val!, 5, 50, "userName");
                        },
                        controller: controller.userName,
                        textLabel: 'Name',
                        textHint: 'Enter Your UserName',
                        prefix: Icons.person_outline_outlined,
                        textInputType: TextInputType.name,
                      ),
                      AuthTextFormFiled(
                        valid: (val) {
                          return validText(val!, 5, 50, "email");
                        },
                        controller: controller.email,
                        textLabel: 'Email',
                        textHint: 'Enter Your Email',
                        prefix: Icons.email_outlined,
                        textInputType: TextInputType.emailAddress,
                      ),
                      AuthTextFormFiled(
                        valid: (val) {
                          return validText(val!, 5, 20, "phone");
                        },
                        controller: controller.phone,
                        textLabel: 'Phone',
                        textHint: 'Enter Your Phone',
                        prefix: Icons.phone_android_outlined,
                        textInputType: TextInputType.phone,
                      ),
                      AuthTextFormFiled(
                        valid: (val) {
                          return validText(val!, 5, 25, "password");
                        },
                        controller: controller.password,
                        textLabel: 'Password',
                        textHint: 'Enter Your Password',
                        prefix: Icons.lock_outline,
                        textInputType: TextInputType.visiblePassword,
                      ),
                      AuthCustomBottom(
                        text: 'Sign In',
                        onPressed: () {
                          controller.signUp();
                        },
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      AuthSignInOrSignOn(
                        textOne: "Don't Have an Account? ",
                        textTwo: "Sign In",
                        onTap: () {
                          controller.goToLogin();
                        },
                      ),
                    ],
                  ),
                ),
              ),),
      ),
    );
  }
}
