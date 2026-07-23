import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_crm/temp/depot_provider.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CWDepotSelectMobile extends StatefulWidget {
  const CWDepotSelectMobile({
    required this.controller,
    super.key,
  });

  final ContractController controller;

  @override
  State<CWDepotSelectMobile> createState() => _CWDepotSelectMobileState();
}

class _CWDepotSelectMobileState extends State<CWDepotSelectMobile> {
  @override
  Widget build(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    final selectedDepotText =
        widget.controller.model!.selectedDepots.map((e) => e.code).join(', ');

    final provider = DepotProvider(
      contractController: widget.controller,
      userInfoService: userInfoService,
    );

    return Column(
      children: [
        FormHeadingRow(
          key: widget.controller.depotKey,
          headings: [
            if (widget.controller.appConfig.isWeb)
              '${context.l10n.depot}:'
            else
              '${context.l10n.selectADepot}:',
          ],
        ),
        EmrPicker<Depot>(
          itemTitleText: (depot) => depot.code,
          itemSubtitleText: (depot) => depot.name,
          items: (query) => provider.getSuggestions(
            query,
            defaultTerritory: widget.controller.settingsController.territory,
          ),
          initialValue: selectedDepotText,
          validator: Validators.required,
          labelText: context.l10n.depot,
          onItemSelected: _onDepotSelected,
          mode: EmrPickerMode.inline,
          onCleared: () => widget.controller.model!.selectedDepots.forEach(
            widget.controller.removeDepot,
          ),
        ),
      ],
    );
  }

  void _onDepotSelected(Depot depot) {
    setState(() {
      if (widget.controller.model!.pricingList.isNotEmpty) {
        widget.controller.model!.regenerateGrades = true;
      }
      widget.controller.setSelectedDepot(depot);
    });
  }
}
