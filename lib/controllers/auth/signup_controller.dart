import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/constants/routes.dart';

abstract class SignUpController extends GetxController {
  signUp();
  navigateToSignUpComplete();
  navigateToLogin();
  navigateToVerifyEmail();
}

class SignUpControllerImpl extends SignUpController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late TextEditingController name;
  late TextEditingController phone;
  late TextEditingController address;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  GlobalKey<FormState> formStateComplete = GlobalKey<FormState>();

  @override
  navigateToLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  navigateToSignUpComplete() {
    var formData = formState.currentState;

    if (formData!.validate()) {
      print('valid');
      Get.toNamed(AppRoutes.signupcomplete);
    } else {
      print('invalid');
    }
  }

  @override
  navigateToVerifyEmail() {
    var formData = formStateComplete.currentState;

    if (formData!.validate()) {
      print('valid');
      Get.toNamed(AppRoutes.verifyemailsignup);
    } else {
      print('invalid');
    }
  }

  @override
  signUp() {
    // var formData = formState.currentState;

    // if (formData!.validate()) {
    //   print('valid');
    // } else {
    //   print('invalid');
    // }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    name = TextEditingController();
    phone = TextEditingController();
    address = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
    name.dispose();
    phone.dispose();
    address.dispose();
    super.dispose();
  }
}
