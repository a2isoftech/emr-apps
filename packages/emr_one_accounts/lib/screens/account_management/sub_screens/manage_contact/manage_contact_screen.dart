import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_contact/widgets/contact_address_section.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_contact/widgets/contact_type_information.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_contact/widgets/marketing_preferences.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' hide AccountSettings;
import 'package:flutter/material.dart';

class ManageContactScreen extends StatefulWidget {
  const ManageContactScreen({
    required this.account,
    required this.contact,
    required this.manageContactController,
    required this.contactFormKey,
    this.errorKey,
    super.key,
  });

  final Account account;
  final Contact? contact;
  final ManageContactController manageContactController;
  final GlobalKey<FormState> contactFormKey;
  final GlobalKey? errorKey;

  @override
  State<ManageContactScreen> createState() => _ManageContactScreenState();
}

class _ManageContactScreenState extends State<ManageContactScreen> {
  late final TextEditingController _addressLookupController;

  @override
  void initState() {
    super.initState();
    _addressLookupController = TextEditingController();
    widget.manageContactController.account = widget.account;
    widget.manageContactController.setContact(widget.contact);
    _addressLookupController.text = widget.contact?.address?.address1 ?? '';
  }

  @override
  void didUpdateWidget(covariant ManageContactScreen oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.account != widget.account ||
        oldWidget.contact != widget.contact ||
        oldWidget.manageContactController != widget.manageContactController) {
      _initialiseFormData();
    }
  }

  @override
  void dispose() {
    _addressLookupController.dispose();
    super.dispose();
  }

  void _initialiseFormData() {
    widget.manageContactController.account = widget.account;
    widget.manageContactController.setContact(widget.contact);
    _addressLookupController.text = widget.contact?.address?.address1 ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final identifications = <Identification>[];
    if ((widget.contact?.proofOfIdentification ?? []).isNotEmpty) {
      identifications.addAll(widget.contact!.proofOfIdentification!.toList());
    }
    if ((widget.contact?.proofOfAddress ?? []).isNotEmpty) {
      identifications.addAll(widget.contact!.proofOfAddress!.toList());
    }

    return Form(
      key: widget.contactFormKey,
      child: EmrTabBarVerticalView(
        children: [
          ContactInformation(
            context,
            title: context.l10n.contactInfo,
            controller: widget.manageContactController,
          ),
          EmrTabBarVerticalViewCard(
            title: context.l10n.contactType,
            child: ContactTypeInformation(
              title: context.l10n.contactType,
              controller: widget.manageContactController,
            ),
             ),
          ContactAddressSection(
            controller: widget.manageContactController,
            title: context.l10n.addresses,
          ),
          MarketingPreferences(
            context,
            title: context.l10n.marketingPreferences,
            controller: widget.manageContactController,
          ),
        ],
      ),
    );
  }
}
