import 'package:collection/collection.dart';
import 'package:emr_one_portal/graphql/cam_raven/graphql.dart';
import 'package:emr_one_portal/portal.dart';

extension ToContactUsModelMapping on Query$GetPartyPrimaryManager$account {
  ContactUsModel toContactUsModel(
    List<String>? headOfficeAddress,
    String partyAccountNumber,
  ) {
    final phone = headOfficeAddress!.lastOrNull!;
    final mainContact = accountContacts?.firstWhereOrNull(
      (element) =>
          element!.value.contactTypes.any((y) => y == Enum$ContactType.MAIN),
    );

    headOfficeAddress.removeLast();
    return ContactUsModel(
      partyAccountNumber: partyAccountNumber,
      accountName: _mapContactName(mainContact),
      //TODO: set email: primaryAccountManager?.user?.emailAddress
      email: 'No Email Available',
      accountManagerName: primaryManager?.name ?? 'No Name Available',
      phone: phone,
      addresses: headOfficeAddress,
    );
  }

  static String _mapContactName(
    Query$GetPartyPrimaryManager$account$accountContacts? contact,
  ) {
    var name = 'UNKNOWN';
    if (contact?.value.firstName != null && contact?.value.lastName != null) {
      name = '${contact?.value.firstName} ${contact?.value.lastName}';
    }
    return name;
  }
}
