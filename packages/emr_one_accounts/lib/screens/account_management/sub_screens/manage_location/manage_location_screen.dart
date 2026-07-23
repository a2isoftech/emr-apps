import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_location/controllers/manage_location_controller.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_location/widgets/location_address_section.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_location/widgets/location_information.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageLocationScreen extends StatefulWidget {
  const ManageLocationScreen({
    required this.accountId,
    required this.locationCode,
    required this.manageLocationController,
    required this.accountService,
    required this.locationsFormKey,
    super.key,
  });

  final String accountId;
  final String? locationCode;
  final ManageLocationController manageLocationController;
  final AccountService accountService;
  final GlobalKey<FormState> locationsFormKey;

  @override
  State<ManageLocationScreen> createState() => _ManageLocationScreenState();
}

class _ManageLocationScreenState extends State<ManageLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<(Account?, String?, String?)>(
      future: widget.accountService.getAccountInfo(widget.accountId),
      builder:
          (
            BuildContext ctx,
            AsyncSnapshot<(Account?, String?, String?)> snapshot,
          ) {
            Location? location;
            if (snapshot.data?.$2 ==
                AccountAccessConstants.accountNotAuthorized) {
              return Center(child: Text(context.l10n.doNotHaveAccessToAccount));
            }
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.data != null) {
              widget.manageLocationController.account = snapshot.data?.$1;
              location =
                  (widget.manageLocationController.account?.locations ?? [])
                      .firstWhereOrNull((c) => c.code == widget.locationCode);
              widget.manageLocationController.setLocation(location);
            }

            return Column(
              children: [
                Expanded(
                  child: (snapshot.connectionState != ConnectionState.done)
                      // Loading.
                      ? const Center(child: CircularProgressIndicator())
                      : (snapshot.data == null)
                      // User not found.
                      ? Center(child: Text(context.l10n.locationNotFound))
                      // Form.
                      : Form(
                          key: widget.locationsFormKey,
                          child: EmrTabBarVerticalView(
                            children: [
                              LocationInformation(
                                context,
                                title: context.l10n.locationInformation,
                                controller: widget.manageLocationController,
                              ),
                              LocationAddressSection(
                                controller: widget.manageLocationController,
                                title: context.l10n.addresses,
                              ),
                            ],
                          ),
                        ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ValueListenableBuilder<String>(
                        valueListenable:
                            widget.manageLocationController.showErrorMessage,
                        builder: (_, visible, __) {
                          return visible != ''
                              ? Container(
                                  key: const ValueKey(1),
                                  padding: const EdgeInsets.all(
                                    Insets.gutter / 2,
                                  ),
                                  color: Theme.of(context).colorScheme.error,
                                  child: Text(
                                    widget
                                        .manageLocationController
                                        .showErrorMessage
                                        .value,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                )
                              : const SizedBox.shrink();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
    );
  }
}
