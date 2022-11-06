import 'package:get/get.dart';
import 'package:movie_app/core/constants/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  navigateToLogin();
}

class SuccessSignUpControllerImpl extends SuccessSignUpController {
  @override
  navigateToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}
