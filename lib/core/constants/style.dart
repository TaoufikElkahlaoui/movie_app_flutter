import 'package:flutter/cupertino.dart';
import 'package:movie_app/core/constants/color.dart';

class AppStyle {
  static const TextStyle headline1 = TextStyle(
      fontSize: 40,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w800,
      color: AppColor.mainColor);
  static TextStyle subHeadline1 = const TextStyle(
      fontSize: 18,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w300,
      color: AppColor.textGrey);
  static TextStyle btnLangText = const TextStyle(
      color: AppColor.textWhite,
      fontFamily: "Poppins",
      fontSize: 16,
      fontWeight: FontWeight.w600);
}
