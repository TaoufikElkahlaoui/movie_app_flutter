import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/constants/routes.dart';

abstract class ForgotPasswordController extends GetxController {
  verifyEmail();
  navigateToVerifyEmail();
}

class ForgotPasswordControllerImpl extends ForgotPasswordController {
  late TextEditingController email;
  @override
  navigateToVerifyEmail() {
    Get.offNamed(AppRoutes.verifyemail);
  }

  @override
  verifyEmail() {}

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
