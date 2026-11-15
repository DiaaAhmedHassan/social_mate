class TextValidator {
  TextValidator._(); // static-only, no instances

  static final _emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]{2,}$');

  static String? required(String? value, {String message = 'This field is required'}) {
    if (value == null || value.trim().isEmpty) return message;
    return null;
  }

  static String? validateFullName(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return 'Please enter your name';
    if (v.length < 2) return 'Name is too short';
    if (v.length > 50) return 'Name is too long';
    return null;
  }

  static String? validateEmail(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return 'Please enter your email';
    if (!_emailRegex.hasMatch(v)) return 'Enter a valid email address';
    return null;
  }

  /// Firebase rejects passwords under 6 chars; 8 is a safer app-level minimum.
  static String? validatePassword(String? value, {int minLength = 8}) {
    // Don't trim: spaces are valid password characters.
    if (value == null || value.isEmpty) return 'Please enter a password';
    if (value.length < minLength) {
      return 'Password must be at least $minLength characters';
    }
    return null;
  }

  /// Takes a getter, not a String, so it reads the password at validation
  /// time instead of the value it had when the widget was built.
  static String? Function(String?) validateConfirmPassword(String Function() getPassword) {
    return (value) {
      if (value == null || value.isEmpty) return 'Please confirm your password';
      if (value != getPassword()) return 'Passwords do not match';
      return null;
    };
  }
}