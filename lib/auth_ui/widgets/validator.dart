import 'package:intl/intl.dart';

class Validator {
  static String? validateEmail(email) {
    if (email == null || email.trim().isEmpty) {
      return "Please enter an email address.";
    }
    String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(emailPattern);
    if (!regex.hasMatch(email)) {
      return "Please enter a valid email address.";
    }
    return null;
  }

  static String? validateName(name) {
    if (name == null || name.isEmpty) {
      return "Please fill this";
    }
    if (name.length < 8) {
      return "Please enter your full name";
    }
    return null;
  }

  static String? validateBirthDate(birthDate) {
    if (birthDate == null || birthDate.trim().isEmpty) {
      return "Please enter your birth date.";
    }
    final dateFormat = DateFormat("dd/MM/yyyy");
    try {
      DateTime parsedDate = dateFormat.parseStrict(birthDate);
      if (parsedDate.isAfter(DateTime.now())) {
        return "Birth date cannot be in the future.";
      }
    } catch (e) {
      return "Please enter a valid date (DD/MM/YYYY).";
    }
    return null;
  }
}
