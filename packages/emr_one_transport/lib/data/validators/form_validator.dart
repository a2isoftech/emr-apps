class FormValidator {
  static String? validateEmails(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    // Split by semicolon and trim whitespace
    final emails =
        value.split(';').map((e) => e.trim()).where((e) => e.isNotEmpty);

    // Simple email regex
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$');

    for (final email in emails) {
      if (!emailRegex.hasMatch(email)) {
        return 'Invalid email: $email';
      }
    }

    return null;
  }
}
