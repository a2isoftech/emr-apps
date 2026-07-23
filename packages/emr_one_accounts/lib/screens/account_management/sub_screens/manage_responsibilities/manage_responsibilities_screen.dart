import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ManageResponsibilitiesScreen extends StatefulWidget {
  const ManageResponsibilitiesScreen({
    required this.accountId,
    required this.userId,
    required this.accountManagerTypeId,
    required this.manageResponsibilitiesController,
    required this.responsibilityFormKey,
    this.isEditing = false,
    super.key,
  });

  final String accountId;
  final String? userId;
  final String? accountManagerTypeId;
  final ManageResponsibilitiesController manageResponsibilitiesController;
  final GlobalKey<FormState> responsibilityFormKey;
  final bool isEditing;

  @override
  State<ManageResponsibilitiesScreen> createState() =>
      _ManageResponsibilitiesScreenState();
}

class _ManageResponsibilitiesScreenState
    extends State<ManageResponsibilitiesScreen> {
  @override
  void initState() {
    super.initState();
    // Only re-initialise form data when a late reset() from a previous
    // dialog has cleared it.  When the data is already populated (by the
    // _onRowTapped call that opened this dialog) we must NOT call
    // setAccountManager again – doing so would re-run the allManagers lookup
    // which, for duplicate userIds, can return the wrong (highest-priority)
    // manager and overwrite the correct form values.
    if (widget.isEditing &&
        widget.userId != null &&
        widget.manageResponsibilitiesController.data.newManager.value.key
            .isEmpty) {
      widget.manageResponsibilitiesController.setAccountManager(
        widget.userId,
        widget.accountManagerTypeId,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.responsibilityFormKey,
      child: EmrTabBarVerticalView(
        children: [
          EditResponsibilities(
            context,
            controller: widget.manageResponsibilitiesController,
            title: context.l10n.responsibilities
          ),
        ],
      ),
    );
  }
}
