import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/auth/verifyemailsignup_controller.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/image_asset.dart';
import 'package:movie_app/core/constants/style.dart';
import 'package:movie_app/views/widgets/auth/text_auth.dart';
import 'package:movie_app/views/widgets/auth/title_auth.dart';

class VerifyEmailSignUp extends StatelessWidget {
  const VerifyEmailSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerSignUpImpl controller =
        Get.put(VerifyCodeControllerSignUpImpl());
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
                height: 300,
                child: SvgPicture.asset(
                  AppImageAsset.otp,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 30,
            ),
            TitleAuth(title: 'enter_verfication_code'.tr),
            const SizedBox(
              height: 8,
            ),
            TextAuth(text: "enter_verfication_code_text".tr),
            const SizedBox(
              height: 25,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: OtpTextField(
                numberOfFields: 5,
                borderColor: AppColor.mainColor,
                borderRadius: BorderRadius.circular(20),
                fieldWidth: MediaQuery.of(context).size.width / 7,
                keyboardType: TextInputType.number,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.navigateToSignUpSuccess();
                }, // end onSubmit
              ),
            ),
          ],
        ),
      ),
    );
  }
}
