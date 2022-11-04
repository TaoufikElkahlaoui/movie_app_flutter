import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/lang.dart';
import 'package:movie_app/core/constants/routes.dart';
import 'package:movie_app/core/localization/localization_controller.dart';
import 'package:movie_app/views/widgets/language/button_lang.dart';

class GridLanguage extends GetView<LocalizationController> {
  const GridLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: Lang.languageList.length,
      itemBuilder: (context, i) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColor.mainColor.withOpacity(.8),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 173, 173, 173).withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ButtonLang(
          onTap: () {
            controller.changeLang(Lang.languageList[i]["lang"]);
            Get.toNamed(AppRoutes.onboarding);
          },
          title: Lang.languageList[i]["text"],
          subtitle: Lang.languageList[i]["displayName"],
          image: Lang.languageList[i]["image"],
        ),
      ),
    );
  }
}
