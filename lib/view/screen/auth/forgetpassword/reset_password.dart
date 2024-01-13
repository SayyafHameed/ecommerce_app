// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/reset_password_controller.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/view/widget/auth/custom_bottom_auth.dart';
import 'package:untitled/view/widget/auth/custom_text_body.dart';
import 'package:untitled/view/widget/auth/custom_text_title.dart';

import '../../../../core/function/validation.dart';
import '../../../widget/auth/custom_text_form.dart';


class AppReSetPassword extends StatelessWidget {
  const AppReSetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppResetPassControllerImp controller = Get.put(AppResetPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 1.0,
        title: Text(
          'Reset Password',
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.primaryColor),
        ),
      ),
      body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AuthTextTitle(text: 'New Password'),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const AuthTextBody(
                      text:
                      'Please Enter Password'),
                  AuthTextFormFiled(
                    valid: (val){
                      return validText(val!, 5, 25, "password");
                    },
                    controller: controller.password,
                    textLabel: 'Password',
                    textHint: 'Enter Your Password',
                    prefix: Icons.lock_outline,
                    textInputType: TextInputType.emailAddress,
                  ),
                  AuthTextFormFiled(
                    valid: (val){
                      return validText(val!, 5, 25, "password");
                    },
                    controller: controller.rePassword,
                    textLabel: 'Password',
                    textHint: 'Re Enter Your Password',
                    prefix: Icons.lock_outline,
                    textInputType: TextInputType.emailAddress,
                  ),
                  AuthCustomBottom(
                    text: 'save',
                    onPressed: () {
                      controller.goToSuccessResetPassword();
                    },
                  ),
                ],
              ),
            ),),
    );
  }
}
