import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/services/services.dart';
import 'package:movie_app/core/localization/localization_controller.dart';
import 'package:movie_app/core/localization/translation.dart';
import 'package:movie_app/routes.dart';
import 'package:movie_app/views/pages/language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalizationController controller = Get.put(LocalizationController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie app',
      home: const Language(),
      routes: routes,
      translations: AppTranslation(),
      locale: controller.language,
      // theme: ThemeData(
      //   textTheme: const TextTheme(
      //       // bodyText2: TextStyle(
      //       //     color: Colors.white,
      //       //     fontSize: 25,
      //       //     fontWeight: FontWeight.w800,
      //       //     fontFamily: "Poppins"),
      //       button: TextStyle(
      //     color: Colors.white,
      //     fontFamily: "Poppins",
      //     letterSpacing: .7,
      //   )),
      // ),
    );
  }
}
