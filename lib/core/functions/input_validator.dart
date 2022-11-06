import 'package:get/get.dart';
import 'package:movie_app/core/constants/regex.dart';

inputValidator(val, min, max, type) {
  if (type == 'name') {
    if (!GetUtils.isUsername(val)) {
      return "invalid_name".tr;
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return "invalid_email".tr;
    }
  }

  if (type == 'password') {
    if (!validateStructure(val, AppRegex.strongPassword)) {
      return "invalid_password".tr;
    }
  }

  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return "invalid_phone".tr;
    }
  }

  if (val.length < min) {
    // ignore: prefer_interpolation_to_compose_strings
    return 'cant_be_less_than'.tr + ' $min';
  }
  if (val.length > max) {
    // ignore: prefer_interpolation_to_compose_strings
    return 'cant_be_greater_than'.tr + ' $max';
  }

  if (val.isEmpty) {
    return 'is_required';
  }
}

bool validateStructure(String value, pattern) {
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}
