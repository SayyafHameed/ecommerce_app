// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/services/services.dart';
import 'package:untitled/routes.dart';
import 'core/localization/change_locale.dart';
import 'core/localization/translate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppChangeLocaleController controller = Get.put(AppChangeLocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslation(),
      // title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme,
      // initialBinding: AppBinding(),
      // home: const AppLanguage(),
      getPages: routes,
      // routes: routes,
    );
  }
}


// if you want an otp_text_field with different
// styles for each field

// Color accentPurpleColor = Color(0xFF6A53A1);
// Color primaryColor = Color(0xFF121212);
// Color accentPinkColor = Color(0xFFF99BBD);
// Color accentDarkGreenColor = Color(0xFF115C49);
// Color accentYellowColor = Color(0xFFFFB612);
// Color accentOrangeColor = Color(0xFFEA7A3B);

// otpTextStyles = [
//     createStyle(accentPurpleColor),
//     createStyle(accentYellowColor),
//     createStyle(accentDarkGreenColor),
//     createStyle(accentOrangeColor),
//     createStyle(accentPinkColor),
//     createStyle(accentPurpleColor),
// ];

// TextStyle? createStyle(Color color) {
//     ThemeData theme = Theme.of(context);
//     return theme.textTheme.headline3?.copyWith(color: color);
// }

// OtpTextField(
//         numberOfFields: 6,
//         borderColor: accentPurpleColor,
//         focusedBorderColor: accentPurpleColor,
//         styles: otpTextStyles,
//         showFieldAsBox: false,
//         borderWidth: 4.0,
//         //runs when a code is typed in
//         onCodeChanged: (String code) {
//             //handle validation or checks here if necessary
//         },
//         //runs when every textField is filled
//         onSubmit: (String verificationCode) {

//         },
// ),

