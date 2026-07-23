import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class UpdateContactInput {
  UpdateContactInput({
    required this.contact,
    this.linkedIn,
    this.whatsApp,
    this.facebook,
    this.x,
    this.bulkEmail,
    this.portalEnabled,
    this.jobTitle,
    this.toBeDeleted,
  });

  Contact contact;
  ContactMethod? linkedIn;
  ContactMethod? whatsApp;
  ContactMethod? facebook;
  ContactMethod? x;
  ContactMethod? bulkEmail;
  bool? portalEnabled;
  String? jobTitle;
  bool? toBeDeleted;
}
