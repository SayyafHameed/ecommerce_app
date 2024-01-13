// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: 'Poppins',
  textTheme: const TextTheme(
    headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
    headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 17),
    bodyText2: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontSize: 14),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  textTheme: const TextTheme(
    headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
    headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 17),
    bodyText2: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontSize: 14),
  ),
  primarySwatch: Colors.blue,
);