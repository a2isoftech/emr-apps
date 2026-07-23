extension HttpStatusExtension on int {
  bool get isSuccessful => this >= 200 && this <= 299;
  bool get isUnauthorized => this == 401;
}
