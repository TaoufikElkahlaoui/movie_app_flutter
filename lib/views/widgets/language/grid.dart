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
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemCount: Lang.languageList.length,
      itemBuilder: (context, i) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColor.mainColor.withOpacity(.7),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 173, 173, 173).withOpacity(0.5),
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
        ),
      ),
    );
  }
}
