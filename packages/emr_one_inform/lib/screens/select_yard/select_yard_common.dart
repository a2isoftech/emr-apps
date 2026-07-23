import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/common/common_export.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/yard.dart';
import 'package:emr_one_inform/screens/select_yard/select_yard_controller.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class SelectYardCommon extends StatefulWidget with AppBarExtender {
  SelectYardCommon({this.canNavigateBack = true, this.onSave, super.key});

  final bool canNavigateBack;
  final void Function()? onSave;
  late final SelectYardController controller;

  @override
  State<SelectYardCommon> createState() => _SelectYardCommonState();

  @override
  bool hideDefaultAppBar() => true;

  PreferredSizeWidget? getAppBar(BuildContext context);
  Widget? pageHeader(BuildContext context);
  Widget? actionButton(BuildContext context);
  bool isWeb();
}

class _SelectYardCommonState extends State<SelectYardCommon> {
  final _yardController = TextEditingController();

  @override
  void initState() {
    super.initState();

    widget.controller =
        Provider.of<SelectYardController>(context, listen: false);
    widget.controller.addListener(onChange);
    widget.controller.load();
  }

  void onChange() {
    setState(() {});
  }

  @override
  void dispose() {
    widget.controller.removeListener(onChange);
    widget.controller.dispose();
    _yardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _yardController.text = widget.controller.selectedYard?.yardCode ?? '';
    final pageHeader = widget.pageHeader(context);
    return SafeArea(
      child: Scaffold(
        appBar: widget.getAppBar(context),
        bottomNavigationBar: BottomAppBar(
          height: 65,
          color: FormAppColors.primaryBlue,
          shape: const CircularNotchedRectangle(),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton:
            widget.isWeb() ? null : widget.actionButton(context),
        body: Column(
          children: [
            if (pageHeader != null) pageHeader,
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  if (widget.controller.isBusy) ...[
                    showSpinner(),
                  ] else ...[
                    Wrap(
                      runSpacing: 10,
                      children: [
                        DropdownButtonHideUnderline(
                          child: DropdownButtonFormField<String?>(
                            hint: Text(
                              context.l10n.selectTerritory,
                            ),
                            icon: FormAppIcons.dropdownList,
                            iconSize: 30,
                            isExpanded: true,
                            items:
                                widget.controller.territories.map((territory) {
                              return DropdownMenuItem(
                                value: territory,
                                child: Text(territory),
                              );
                            }).toList(),
                            initialValue:
                                widget.controller.selectedTerritory?.isEmpty ??
                                        true
                                    ? null
                                    : widget.controller.selectedTerritory,
                            onChanged: (String? value) async {
                              InformLogger.logEvent(
                                EmrOneInformTelemetry.kYardSelection,
                                params: {'Territory': '$value'},
                              );
                              await widget.controller
                                  .setSelectedTerritory(value!);
                            },
                          ),
                        ),
                        TypeAheadFormField<Yard?>(
                          suggestionsCallback: (searchText) {
                            return _getYards(
                              context,
                              searchText,
                              widget.controller.yards,
                            );
                          },
                          itemBuilder: (context, Yard? suggestedYard) {
                            final yard = suggestedYard!;
                            return ListTile(
                              title: Text(
                                yard.yardCode!,
                              ),
                              subtitle: Text(
                                yard.displayName,
                              ),
                            );
                          },
                          onSuggestionSelected: (Yard? suggestedYard) async {
                            _yardController.text =
                                suggestedYard?.yardCode ?? '';

                            InformLogger.logEvent(
                              EmrOneInformTelemetry.kYardSelection,
                              params: {'Yard': '$suggestedYard'},
                            );
                            await widget.controller
                                .setSelectedYard(suggestedYard!);
                          },
                          noItemsFoundBuilder: (context) => SizedBox(
                            height: 50,
                            child: Center(
                              child: Text(
                                context.l10n.typeAheadMessageYards,
                              ),
                            ),
                          ),
                          textFieldConfiguration: TextFieldConfiguration(
                            controller: _yardController,
                            decoration: FormStyles.textFieldDecoration(context)
                                .copyWith(
                              labelText: context.l10n.selectYard,
                              hintText: context.l10n.selectYard,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List<Yard>> _getYards(
    BuildContext context,
    String searchText,
    List<Yard> yards,
  ) async {
    return yards
        .where(
          (x) =>
              (x.yardCode ?? '')
                  .toLowerCase()
                  .contains(searchText.toLowerCase()) ||
              (x.name ?? '').toLowerCase().contains(searchText.toLowerCase()),
        )
        .toList();
  }
}
