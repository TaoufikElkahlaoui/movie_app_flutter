import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/auth/resetpassword_controller.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/image_asset.dart';
import 'package:movie_app/core/constants/style.dart';
import 'package:movie_app/views/widgets/auth/button_auth.dart';
import 'package:movie_app/views/widgets/auth/text_form_auth.dart';
import 'package:movie_app/views/widgets/auth/title_auth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl controller =
        Get.put(ResetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "",
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
                height: 240,
                child: SvgPicture.asset(
                  AppImageAsset.resetpassword,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 18,
            ),
            TitleAuth(title: 'resetpassword'.tr),
            const SizedBox(
              height: 25,
            ),
            TextFormAuth(
              controller: controller.password,
              validator: (val) {},
              hintText: "new_password".tr,
              labelText: "new_password".tr,
              icon: Icons.alternate_email_outlined,
            ),
            TextFormAuth(
              controller: controller.confirmPassword,
              validator: (val) {},
              hintText: "re_enter_new_password".tr,
              labelText: "confirm_new_password".tr,
              icon: Icons.remove_red_eye_outlined,
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonAuth(
              text: "continue".tr,
              onPressed: () {
                controller.navigateToSuccessResetPassword();
              },
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
