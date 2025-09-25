class AppValidators {
  static String? emailValidator(String? value) {
    final checkEmpty=notEmptyValidator(value,'Please enter your email');
    if (checkEmpty!=null)return checkEmpty;
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value!)) {
      return 'Enter a valid email';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    final checkEmpty=notEmptyValidator(value,'Please enter your password');
    if (checkEmpty!=null)return checkEmpty;
    if (value!.length < 8) {
      return 'Password must be at least 8 characters';
    }
  return null;
  }
   static String? notEmptyValidator(String? value, String massage){
     if (value == null || value.isEmpty) {
      return massage;
     }
     return null;
   }
}
