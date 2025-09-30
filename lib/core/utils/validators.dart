import 'package:krakebic/core/constants/app_strings.dart';

extension AppValidators on String? {
  String? validateEmail() {
    if (this == null || this!.isEmpty) {
      return AppStrings.emailEmpty;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(this!)) {
      return AppStrings.emailInvalid;
    }
    return null;
  }

  String? validatePassword() {
    if (this == null || this!.isEmpty) {
      return AppStrings.passwordEmpty;
    }
    if (this!.length < 8) {
      return AppStrings.passwordTooShort;
    }
    return null;
  }

  String? notEmptyValidator(String message) {
    if (this == null || this!.isEmpty) {
      return message;
    }
    return null;
  }
}
