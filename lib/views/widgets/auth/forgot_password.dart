import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/constants/color.dart';

class ForgotPasswordAuth extends StatelessWidget {
  const ForgotPasswordAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "forgot_password".tr,
      textAlign: TextAlign.end,
      style: const TextStyle(
        shadows: [Shadow(color: AppColor.textGrey, offset: Offset(0, -5))],
        color: Colors.transparent,
        decoration: TextDecoration.underline,
        decorationColor: AppColor.textGrey,
      ),
    );
  }
}
