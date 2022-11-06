import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/auth/login_controller.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/image_asset.dart';
import 'package:movie_app/core/constants/style.dart';
import 'package:movie_app/core/functions/input_validator.dart';
import 'package:movie_app/views/widgets/auth/signin_or_signup_text.dart';
import 'package:movie_app/views/widgets/auth/button_auth.dart';
import 'package:movie_app/views/widgets/auth/forgot_password.dart';
import 'package:movie_app/views/widgets/auth/sociallinks_auth.dart';
import 'package:movie_app/views/widgets/auth/text_auth.dart';
import 'package:movie_app/views/widgets/auth/text_form_auth.dart';
import 'package:movie_app/views/widgets/auth/title_auth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImpl controller = Get.put(LoginControllerImpl());
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'signin'.tr.toUpperCase(),
            style: AppStyle.appBarTitle,
          ),
          backgroundColor: AppColor.textWhite,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: AppColor.mainColor),
            onPressed: () => Get.back(),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          )),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Form(
          key: controller.formState,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              TitleAuth(title: 'welcome_back'.tr),
              const SizedBox(
                height: 8,
              ),
              TextAuth(text: "signin_text".tr),
              SizedBox(
                  height: 190,
                  child: SvgPicture.asset(
                    AppImageAsset.signin,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 25,
              ),
              TextFormAuth(
                controller: controller.email,
                validator: (val) {
                  return inputValidator(val, 2, 50, "email");
                },
                keyboardType: TextInputType.emailAddress,
                hintText: "enter_your_email".tr,
                labelText: "email".tr,
                icon: Icons.alternate_email_outlined,
              ),
              TextFormAuth(
                validator: (val) {
                  return inputValidator(val, 8, 50, "password");
                },
                controller: controller.password,
                hintText: "enter_your_password".tr,
                labelText: "password".tr,
                icon: Icons.remove_red_eye_outlined,
              ),
              ForgotPasswordAuth(
                onTap: () {
                  controller.navigateToForgotPassword();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonAuth(
                text: "continue".tr,
                onPressed: () {
                  controller.login();
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const SocialLinksAuth(),
              const SizedBox(
                height: 15,
              ),
              SignInOrSignUpTextAuth(
                text: "dont_have_account".tr,
                inkText: 'signup'.tr,
                onTap: () {
                  controller.navigateToSignUp();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
