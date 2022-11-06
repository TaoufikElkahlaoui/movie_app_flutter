import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/auth/signup_controller.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/image_asset.dart';
import 'package:movie_app/core/constants/style.dart';
import 'package:movie_app/core/functions/input_validator.dart';
import 'package:movie_app/views/widgets/auth/signin_or_signup_text.dart';
import 'package:movie_app/views/widgets/auth/button_auth.dart';
import 'package:movie_app/views/widgets/auth/sociallinks_auth.dart';
import 'package:movie_app/views/widgets/auth/text_auth.dart';
import 'package:movie_app/views/widgets/auth/text_form_auth.dart';
import 'package:movie_app/views/widgets/auth/title_auth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImpl controller = Get.put(SignUpControllerImpl());

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'signup'.tr.toUpperCase(),
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
                TitleAuth(title: 'register_account'.tr),
                const SizedBox(
                  height: 8,
                ),
                TextAuth(text: "signup_text".tr),
                SizedBox(
                    height: 190,
                    child: SvgPicture.asset(
                      AppImageAsset.signup,
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
                  controller: controller.password,
                  validator: (val) {
                    return inputValidator(val, 8, 50, "password");
                  },
                  hintText: "enter_your_password".tr,
                  labelText: "password".tr,
                  icon: Icons.remove_red_eye_outlined,
                ),
                TextFormAuth(
                  controller: controller.confirmPassword,
                  validator: (val) {
                    return inputValidator(val, 8, 50, "password");
                  },
                  hintText: "re_enter_your_password".tr,
                  labelText: "confirm_password".tr,
                  icon: Icons.lock_outline_rounded,
                ),
                ButtonAuth(
                  text: "continue".tr,
                  onPressed: () {
                    controller.navigateToSignUpComplete();
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
                  text: "already_have_account".tr,
                  inkText: 'signin'.tr,
                  onTap: () {
                    controller.navigateToLogin();
                  },
                )
              ]),
        ),
      ),
    );
  }
}
