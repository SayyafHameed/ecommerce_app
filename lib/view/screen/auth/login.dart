// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/login_controller.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/core/function/alert_exit.dart';
import 'package:untitled/core/function/validation.dart';
import 'package:untitled/view/widget/auth/custom_bottom_auth.dart';
import 'package:untitled/view/widget/auth/custom_sign.dart';
import 'package:untitled/view/widget/auth/custom_text_body.dart';
import 'package:untitled/view/widget/auth/custom_text_form.dart';
import 'package:untitled/view/widget/auth/custom_text_title.dart';

class AppLoginScreen extends StatelessWidget {
  const AppLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppLoginControllerImp controller = Get.put(AppLoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          'Sign In',
          style: Theme.of(context)
              .textTheme
              .headline1!
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
                  AuthTextTitle(text: "wel".tr),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const AuthTextBody(
                      text:
                          'Sign In With Your Email And Password OR Continue With Social Media'),
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
              GetBuilder<AppLoginControllerImp>(builder: (controller) => AuthTextFormFiled(
                valid: (val) {
                  return validText(val!, 5, 25, "password");
                },
                obscureText: controller.isPassword,
                suffix: controller.isPassword
                    ? Icons.visibility
                    : Icons.visibility_off,
                onTapIcon: () {
                  controller.isPasswordChange();
                },
                controller: controller.password,
                textLabel: 'Password',
                textHint: 'Enter Your Password',
                prefix: Icons.lock_outline,
                textInputType: TextInputType.emailAddress,
              ),),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: Text(
                      "forget".tr,
                      textAlign: TextAlign.end,
                      style: const TextStyle(color: AppColor.primaryColor),
                    ),
                  ),
                  AuthCustomBottom(
                    text: 'Sign In',
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  AuthSignInOrSignOn(
                    textOne: "Don't Have an Account? ",
                    textTwo: "Sign In",
                    onTap: () {
                      controller.goToSignUp();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
