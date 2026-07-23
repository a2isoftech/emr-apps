class CreateAccountContactPreferences {
  /// Returns a new [CreateAccountContactPreferences] instance.
  CreateAccountContactPreferences({
    required this.email,
    required this.post,
    required this.sms,
    required this.phone,
  });

  bool email;
  bool post;
  bool sms;
  bool phone;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['email'] = email;
    json['post'] = post;
    json['sms'] = sms;
    json['phone'] = phone;
    return json;
  }

  static CreateAccountContactPreferences? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CreateAccountContactPreferences(
        email: json['email'] as bool,
        post: json['post'] as bool,
        sms: json['sms'] as bool,
        phone: json['phone'] as bool,
      );
    }
    return null;
  }
}
