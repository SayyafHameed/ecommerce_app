// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/verifycode_controller.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/view/widget/auth/custom_text_body.dart';
import 'package:untitled/view/widget/auth/custom_text_title.dart';

class AppVerifyCode extends StatelessWidget {
  const AppVerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppVerifyCodeControllerImp controller = Get.put(AppVerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 1.0,
        title: Text(
          'Verification Code',
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
                const AuthTextTitle(text: 'Check Code'),
                const SizedBox(
                  height: 10.0,
                ),
                const AuthTextBody(
                    text:
                    'Please Enter Verification Code'),
                const SizedBox(
                  height: 10.0,
                ),
                OtpTextField(
                  fieldWidth: 50.0,
                  borderRadius: BorderRadius.circular(20.0),
                  numberOfFields: 5,
                  borderColor: const Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textField is filled
                  onSubmit: (String verificationCode){
                    controller.goToResetPassword();
                  }, // end onSubmit
                ),
              ],
            ),
          )),
    );
  }
}
