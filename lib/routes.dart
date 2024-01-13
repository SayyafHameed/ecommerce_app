import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';
import 'package:untitled/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:untitled/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:untitled/view/screen/auth/login.dart';
import 'package:untitled/view/screen/auth/forgetpassword/reset_password.dart';
import 'package:untitled/view/screen/auth/signup.dart';
import 'package:untitled/view/screen/auth/forgetpassword/verify_code.dart';
import 'package:untitled/view/screen/auth/success_signup.dart';
import 'package:untitled/view/screen/auth/verify_code_signup.dart';
import 'package:untitled/view/screen/boarding.dart';
import 'view/screen/auth/language.dart';

List<GetPage<dynamic>>? routes = [
    GetPage(name: "/", page: () => const AppLanguage()),
    GetPage(name: AppRoute.login, page: () => const AppLoginScreen()),
    GetPage(name: AppRoute.boarding, page: () => const OnBoarding()),
    GetPage(name: AppRoute.signUp, page: () => const AppSignUpScreen()),
    GetPage(name: AppRoute.forgetPassword, page: () => const AppForgetPassword()),
    GetPage(name: AppRoute.verifyCode, page: () => const AppVerifyCode()),
    GetPage(name: AppRoute.resetPassword, page: () => const AppReSetPassword()),
    GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
    GetPage(name: AppRoute.successResetPass, page: () => const SuccessResetPassword()),
    GetPage(name: AppRoute.verifyCodeSignUp, page: () => const AppVerifyCodeSignup()),

];