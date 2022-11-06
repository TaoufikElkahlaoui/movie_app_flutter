import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/constants/routes.dart';

abstract class VerifyCodeControllerSignUp extends GetxController {
  checkVerificationCode();
  navigateToSignUpSuccess();
}

class VerifyCodeControllerSignUpImpl extends VerifyCodeControllerSignUp {
  late TextEditingController verifyCode;
  @override
  checkVerificationCode() {}
  @override
  navigateToSignUpSuccess() {
    Get.toNamed(AppRoutes.successSignUp);
  }

  @override
  void onInit() {
    verifyCode = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    verifyCode.dispose();
    super.dispose();
  }
}
