import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/auth/successsignup_controller.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/image_asset.dart';
import 'package:movie_app/core/constants/style.dart';
import 'package:movie_app/views/widgets/auth/button_auth.dart';
import 'package:movie_app/views/widgets/auth/title_auth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImpl controller =
        Get.put(SuccessSignUpControllerImpl());
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "congrats".tr.toUpperCase(),
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
        child: Column(
          children: [
            SizedBox(
                height: 240,
                child: SvgPicture.asset(
                  AppImageAsset.successresetpassword,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 40,
            ),
            TitleAuth(title: 'signup_successfully'.tr),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ButtonAuth(
                text: "back_to_login".tr,
                onPressed: () {
                  controller.navigateToLogin();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
