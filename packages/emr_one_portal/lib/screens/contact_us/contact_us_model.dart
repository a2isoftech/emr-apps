class ContactUsModel {
  ContactUsModel({
    required this.partyAccountNumber,
    required this.accountName,
    required this.addresses,
    required this.accountManagerName,
    required this.phone,
    required this.email,
  });

  final List<String> addresses;

  final String accountManagerName;

  final String phone;

  final String email;

  final String accountName;

  final String partyAccountNumber;
}
