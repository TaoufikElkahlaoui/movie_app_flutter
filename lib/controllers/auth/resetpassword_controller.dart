import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/constants/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  navigateToSuccessResetPassword() {}
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController confirmPassword;

  @override
  navigateToSuccessResetPassword() {
    Get.offNamed(AppRoutes.successResetPassword);
  }

  @override
  resetPassword() {}

  @override
  void onInit() {
    password = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
