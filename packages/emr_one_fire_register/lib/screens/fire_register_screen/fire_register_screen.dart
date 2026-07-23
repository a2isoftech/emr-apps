import 'dart:convert';

import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/graphql/schema.graphql.dart';
import 'package:emr_one_fire_register/models/enums.dart';
import 'package:emr_one_fire_register/screens/fire_register_controller.dart';
import 'package:emr_one_fire_register/screens/fire_register_filter_controller.dart';
import 'package:emr_one_fire_register/screens/fire_register_screen/widgets/widgets.dart';
import 'package:emr_one_fire_register/services/fire_register_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FireRegisterScreen extends StatefulWidget {
  const FireRegisterScreen({
    required this.fireRegisterService,
    required this.locale,
    required this.exportDataService,
    required this.selectedYard,
    required this.changeYard,
    super.key,
  });

  final FireRegisterService fireRegisterService;
  final Locale locale;
  final ExportDataService exportDataService;
  final void Function() changeYard;
  final String selectedYard;

  @override
  State<FireRegisterScreen> createState() => _FireRegisterScreenState();
}

class _FireRegisterScreenState extends State<FireRegisterScreen> {
  late final FireRegisterController controller;
  final TextEditingController _searchController = TextEditingController();
  late final FireRegisterFilterController filterController;
  late final TextEditingController addNewUserController;
  late final TextEditingController addNoteController;
  final formKey = GlobalKey<FormState>();
  final yardSelectFormKey = GlobalKey<FormState>();

  Future<bool>? _loadFilterDataFuture;

  @override
  void initState() {
    super.initState();

    final userInfoService = context.read<UserInfoService>();

    filterController = FireRegisterFilterController(
      widget.fireRegisterService,
      widget.locale,
      widget.selectedYard,
    );

    controller = FireRegisterController(
      userInfoService: userInfoService,
      fireRegisterService: widget.fireRegisterService,
      filterController: filterController,
      exportDataService: widget.exportDataService,
      searchController: _searchController,
    );
    addNewUserController = TextEditingController();
    _loadFilterDataFuture = controller.loadFilterData();
    addNoteController = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    _searchController.dispose();
    addNewUserController.dispose();
    addNoteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadFilterDataFuture,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.data == false) {
          return Center(child: Text(context.l10n.failedToLoadData));
        }
        return Scaffold(
          appBar: AppBar(
            backgroundColor: EmrColours.primaryBlue,
            title: Text(
              '${context.l10n.fireRegister}: '
              '${controller.filterController.selectedYard}',
              style: const TextStyle(
                color: EmrColours.primaryWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            children: [
              EmrFilter(
                controller: controller.filterController,
                showAddFilter: false,
                padding: const EdgeInsets.symmetric(
                  vertical: Insets.gutter * 2,
                ),
                innerPadding: const EdgeInsets.only(left: Insets.gutter),
              ),
              FireRegisterScreenWidget(
                controller,
                widget.selectedYard,
                widget.changeYard,
                formKey,
                addNewUserController,
                addNoteController,
                _searchController,
                _toggleGrid,
              ),
              const Row(children: [SizedBox(height: Insets.gutter)]),
              ValueListenableBuilder(
                valueListenable: controller.busy,
                builder: (BuildContext context, value, Widget? child) {
                  if (!controller.gridIsEmpty()) {
                    return Expanded(
                      child: ValueListenableBuilder(
                        valueListenable: controller.gridController.data,
                        builder:
                            (BuildContext context2, value2, Widget? child2) {
                              return Stack(
                                children: [
                                  Positioned(
                                    child: GridToggleWidget(
                                      addNoteController: addNoteController,
                                      controller: controller,
                                    ),
                                  ),
                                ],
                              );
                            },
                      ),
                    );
                  } else {
                    if (!controller.filterController.zoneSelected &&
                        controller.frcTab.value !=
                            FrcTab.missingFromMusterPoint) {
                      return const SizedBox();
                    }

                    if (controller.busy.value) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (controller.gridIsEmpty()) {
                      return Center(child: Text(context.l10n.noResults));
                    }
                    return const SizedBox();
                  }
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: ValueListenableBuilder(
                      valueListenable: controller.busy,
                      builder: (BuildContext context, value, Widget? child) {
                        return Container(child: _confirmBtn(controller));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _onConfirmRollCall() async {
    var okPressed = true;
    if (controller.selectedRows.length !=
        controller.gridController.data.value.length) {
      await EmrDialog.cancelOk(
        context,
        titleText: context.l10n.warning,
        contentText: context.l10n.somePeopleAreNotPresent,
        onCancel: () => okPressed = false,
      );
    } else {
      await EmrDialog.ok(
        context,
        titleText: context.l10n.success,
        contentText: context.l10n.theFireRegisterHasBeenCompleted,
      );
    }

    if (!okPressed) {
      return;
    }

    final selectedPunchData = controller.selectedRows
        .map((e) => e.toMap())
        .toList();

    final missingFromRollCall = controller.getUnselectedRows();
    final currentFilters = controller.getFilterValue();
    final filterInfo = <Map<String, dynamic>>[
      {
        'yardCode': widget.selectedYard,
        'area': currentFilters.area,
        'zone': currentFilters.zone,
        'logDate': currentFilters.date,
      },
    ];

    final jsonData = {'filterInfo': filterInfo, 'punchData': selectedPunchData};
    final input = Input$FireRollCallLogsInput(
      id: 0,
      loggedBy: controller.userInfoService.userInfo.name,
      loggedOn: DateTime.now(),
      punchData: jsonEncode(jsonData),
    );
    await controller.fireRegisterService.createFireRollcall(
      input,
      widget.selectedYard,
      currentFilters.dateAsUtc(),
      presentEmployees: controller.selectedRows.toList(),
      missingEmployees: missingFromRollCall,
    );
  }

  void _toggleGrid(FrcTab newTab) {
    setState(() {
      controller.frcTab.value = newTab;
    });
  }

  Widget _confirmBtn(FireRegisterController controller) {
    final btnType = controller.confirmBtnType();
    switch (btnType) {
      case ConfimrBtn.rollCall:
        return ElevatedButton(
          onPressed: _onConfirmRollCall,
          child: Text(context.l10n.confirm),
        );
      case ConfimrBtn.missingList:
        return ElevatedButton(
          onPressed: _onConfirmMissingList,
          child: Text(context.l10n.confirm),
        );
      case ConfimrBtn.hide:
        return const SizedBox();
    }
  }

  Future<void> _onConfirmMissingList() async {
    var okPressed = true;

    if (controller.selectedMissingFrcRows.isEmpty) {
      return EmrDialog.ok(
        context,
        titleText: context.l10n.noneSelected,
        contentText: context.l10n.noStaffMarkedFound,
      );
    }

    await EmrDialog.cancelOk(
      context,
      titleText: context.l10n.confirm,
      contentText: context.l10n.confirmSelectedAsFound,
      onCancel: () => okPressed = false,
    );

    if (!okPressed) {
      return;
    }

    final foundStaff = controller.selectedMissingFrcRows.toList();

    await controller.fireRegisterService.updateMissingListFromMissingGrid(
      foundStaff,
    );

    await controller.refreshGrid();
  }
}
