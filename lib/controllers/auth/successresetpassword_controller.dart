import 'package:get/get.dart';
import 'package:movie_app/core/constants/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {
  navigateToLogin();
}

class SuccessResetPasswordControllerImpl
    extends SuccessResetPasswordController {
  @override
  navigateToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}
