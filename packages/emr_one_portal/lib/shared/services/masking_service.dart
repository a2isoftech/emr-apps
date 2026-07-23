class MaskingService {
  static String maskPhoneNumber(String phoneNumber) {
    if (phoneNumber.length >= 3) {
      final maskedDigits = '*' * (phoneNumber.length - 3);
      final lastThreeDigits = phoneNumber.substring(phoneNumber.length - 3);
      return maskedDigits + lastThreeDigits;
    } else {
      return phoneNumber; // Do not mask if the phone number is too short
    }
  }
}
