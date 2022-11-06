import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/constants/routes.dart';

abstract class VerifyCodeController extends GetxController {
  checkVerificationCode();
  navigateToResetPassword();
}

class VerifyCodeControllerImpl extends VerifyCodeController {
  late TextEditingController verifyCode;
  @override
  checkVerificationCode() {}

  @override
  navigateToResetPassword() {
    Get.offNamed(AppRoutes.resetpassword);
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
