import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party/party_controller.dart';
import 'package:emr_one_crm/screens/party/sub-screens/party_manager_individual.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class PartyManagers extends StatefulWidget {
  const PartyManagers({
    required this.partyController,
    super.key,
  });

  final PartyController partyController;

  @override
  State<PartyManagers> createState() => _PartyManagersState();
}

class _PartyManagersState extends State<PartyManagers> {
  List<bool> _isChecked = [];

  bool showManagerDetail = false;
  AccountManager? selectedManager;

  @override
  void initState() {
    super.initState();

    _isChecked = List<bool>.filled(
      (widget.partyController.partyInfo.managers ?? []).length,
      false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final allManagers = widget.partyController.partyInfo.managers ?? [];
    final colorScheme = Theme.of(context).colorScheme;

    if (allManagers.isEmpty) {
      return const GenericMessage(
        subTitle: '',
        title: 'This party does not have any managers',
      );
    }

    if (showManagerDetail) {
      return PartyManagerIndividual(
        selectedManager: selectedManager!,
        onBackButtonPressed: () {
          setState(() {
            selectedManager = null;
            showManagerDetail = false;
          });
        },
      );
    }

    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: RichText(
            text: TextSpan(
              style: EmrOneConstants.kMediumHeadingTextStyle.copyWith(
                fontWeight: FontWeight.normal,
                color: colorScheme.onSurface,
              ),
              children: [
                TextSpan(
                  text: '${allManagers.length} ',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: context.l10n.managers),
              ],
            ),
          ),
        ),
        const SizedBox(height: Insets.gutter),
        buildPrimaryManager(widget.partyController.partyInfo.primaryManager),
        const SizedBox(height: Insets.gutter),
        ListView.separated(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: (widget.partyController.partyInfo.managers ?? []).length,
          separatorBuilder: (context, index) => const Divider(
            height: 1,
          ),
          itemBuilder: (BuildContext ctx, index) {
            final manager = allManagers[index];

            return ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {
                setState(() {
                  _isChecked[index] = !_isChecked[index];
                  showManagerDetail = true;
                  selectedManager = manager;
                });
              },
              title: Text(
                manager.name ?? '',
              ),
              subtitle: Text(
                manager.accountManagerTypeId,
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
        ),
      ],
    );
  }

  Align buildPrimaryManager(AccountManager? primaryManager) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.primaryManager.toUpperCase(),
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
          if (primaryManager == null)
            Text(
              context.l10n.noPrimaryAccountManagerSet,
              style: EmrOneConstants.kSmallestHeadingTextStyle,
            )
          else
            InkWell(
              onTap: () async {
                setState(() {
                  showManagerDetail = true;
                  selectedManager = primaryManager;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    primaryManager.name ?? '',
                    style: EmrOneConstants.kSmallHeadingTextStyle,
                  ),
                  Text(
                    primaryManager.accountManagerTypeId,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
