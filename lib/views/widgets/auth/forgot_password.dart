import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/constants/color.dart';

class ForgotPasswordAuth extends StatelessWidget {
  final void Function() onTap;
  const ForgotPasswordAuth({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        "forgot_password".tr,
        textAlign: TextAlign.end,
        style: const TextStyle(
          shadows: [Shadow(color: AppColor.textGrey, offset: Offset(0, -5))],
          color: Colors.transparent,
          decoration: TextDecoration.underline,
          decorationColor: AppColor.textGrey,
        ),
      ),
    );
  }
}
