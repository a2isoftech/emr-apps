class UpdateSelfServeAccountRequest {
  UpdateSelfServeAccountRequest({
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.address1,
    this.address2,
    this.address3,
    this.postCode,
    this.county,
    this.country,
    this.title,
    this.canEmail,
    this.canSms,
    this.canPhone,
    this.canPost,
    this.height,
    this.eyeColour,
  });

  final String? firstName;
  final String? lastName;
  final DateTime? dateOfBirth;
  final String? address1;
  final String? address2;
  final String? address3;
  final String? postCode;
  final String? county;
  final String? country;
  final String? title;
  final bool? canEmail;
  final bool? canSms;
  final bool? canPhone;
  final bool? canPost;
  final String? height;
  final String? eyeColour;
}
