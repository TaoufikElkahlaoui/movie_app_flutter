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

class SignUpComplete extends StatelessWidget {
  const SignUpComplete({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImpl controller = Get.find();
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
          key: controller.formStateComplete,
          child: ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                TitleAuth(title: 'register_account'.tr),
                TextAuth(text: "signup_text".tr),
                SizedBox(
                    height: 190,
                    child: SvgPicture.asset(
                      AppImageAsset.signupcomplete,
                      fit: BoxFit.contain,
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormAuth(
                  controller: controller.name,
                  validator: (val) {
                    return inputValidator(val, 2, 30, "name");
                  },
                  hintText: "enter_your_name".tr,
                  labelText: "name".tr,
                  icon: Icons.person_outline_outlined,
                ),
                TextFormAuth(
                  controller: controller.phone,
                  validator: (val) {
                    return inputValidator(val, 5, 30, "phone");
                  },
                  keyboardType: TextInputType.phone,
                  hintText: "enter_your_phone".tr,
                  labelText: "phone".tr,
                  icon: Icons.phone_android_rounded,
                ),
                TextFormAuth(
                  controller: controller.address,
                  validator: (val) {
                    return inputValidator(val, 3, 100, "");
                  },
                  hintText: "enter_your_address".tr,
                  labelText: "address".tr,
                  icon: Icons.home_outlined,
                ),
                const SizedBox(
                  height: 10,
                ),
                ButtonAuth(
                  text: "continue".tr,
                  onPressed: () {
                    controller.navigateToVerifyEmail();
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
