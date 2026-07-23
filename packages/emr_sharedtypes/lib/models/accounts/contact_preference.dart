import 'package:emr_sharedtypes/models/accounts/contact_method.dart';

class ContactPreference {
  ContactPreference({
    this.mobile,
    this.email,
    this.phone,
    this.fax,
    this.post,
    this.otherContactMethods,
  });

  final ContactMethod? mobile;
  final ContactMethod? email;
  final ContactMethod? phone;
  final ContactMethod? fax;
  final ContactMethod? post;
  final Map<String, ContactMethod>? otherContactMethods;
}
