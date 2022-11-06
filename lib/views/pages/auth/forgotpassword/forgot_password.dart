import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/auth/forgotpassword_controller.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/image_asset.dart';
import 'package:movie_app/core/constants/routes.dart';
import 'package:movie_app/core/constants/style.dart';
import 'package:movie_app/views/widgets/auth/signin_or_signup_text.dart';
import 'package:movie_app/views/widgets/auth/button_auth.dart';
import 'package:movie_app/views/widgets/auth/text_auth.dart';
import 'package:movie_app/views/widgets/auth/text_form_auth.dart';
import 'package:movie_app/views/widgets/auth/title_auth.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerImpl controller =
        Get.put(ForgotPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            '',
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
        child: ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            SizedBox(
                height: 250,
                child: SvgPicture.asset(
                  AppImageAsset.forgotpassword,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 30,
            ),
            TitleAuth(title: 'forgot_password'.tr),
            const SizedBox(
              height: 8,
            ),
            TextAuth(text: "forgot_password_text".tr),
            const SizedBox(
              height: 25,
            ),
            TextFormAuth(
              controller: controller.email,
              validator: (val) {},
              hintText: "enter_your_email".tr,
              labelText: "email".tr,
              icon: Icons.alternate_email_outlined,
            ),
            const SizedBox(
              height: 8,
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
            const SizedBox(
              height: 15,
            ),
            SignInOrSignUpTextAuth(
              text: "already_have_account".tr,
              inkText: 'signin'.tr,
              onTap: () {
                // controller.navigateToLogin();
                Get.toNamed(AppRoutes.login);
              },
            )
          ],
        ),
      ),
    );
  }
}
