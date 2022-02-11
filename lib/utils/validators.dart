class Validators {
  static String emailValidator(String value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email must not be empty';
    } else {
      const String pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      final RegExp regex = RegExp(pattern);
      if (!regex.hasMatch(value)) {
        return 'Enter Valid Email';
      } else {
        return null;
      }
    }
  }

  static String notEmptyValidator(String value) {
    if (value == null || value.trim().isEmpty) {
      return 'Value must not be empty';
    }
    return null;
  }
}
