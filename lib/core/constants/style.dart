import 'package:flutter/cupertino.dart';
import 'package:movie_app/core/constants/color.dart';

class AppStyle {
  static const String fontFamily = "Poppins";

  static const TextStyle headline1 = TextStyle(
      fontSize: 40,
      fontFamily: AppStyle.fontFamily,
      fontWeight: FontWeight.w800,
      color: AppColor.mainColor);
  static TextStyle subHeadline1 = const TextStyle(
      fontSize: 18,
      fontFamily: AppStyle.fontFamily,
      fontWeight: FontWeight.w300,
      color: AppColor.textGrey);
  static TextStyle btnLangText = const TextStyle(
      color: AppColor.textWhite,
      fontFamily: AppStyle.fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600);

  static const TextStyle headline2 = TextStyle(
      fontSize: 30,
      fontFamily: AppStyle.fontFamily,
      fontWeight: FontWeight.w500,
      color: AppColor.mainColor);
  static TextStyle appBarTitle = TextStyle(
      fontFamily: AppStyle.fontFamily,
      fontWeight: FontWeight.w200,
      fontSize: 15,
      color: AppColor.mainColor.withOpacity(0.4));

  static const TextStyle textMedium = TextStyle(
      fontFamily: AppStyle.fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: 13,
      color: AppColor.textGrey);
}
