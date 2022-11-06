import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/constants/routes.dart';

abstract class LoginController extends GetxController {
  login();
  navigateToSignUp();
  navigateToForgotPassword();
}

class LoginControllerImpl extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {
    var formData = formState.currentState;

    if (formData!.validate()) {
      print("valid");
    } else {
      print("invalid");
    }
  }

  @override
  navigateToSignUp() {
    Get.toNamed(AppRoutes.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  navigateToForgotPassword() {
    Get.toNamed(AppRoutes.forgotpassword);
  }
}
