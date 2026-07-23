import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_fire_register/constants/constants.dart';
import 'package:emr_one_fire_register/models/models.dart';
import 'package:emr_one_fire_register/screens/fire_register_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FireRegisterScreenWidget extends StatelessWidget {
  const FireRegisterScreenWidget(
    this.controller,
    this.selectedYard,
    this.changeYard,
    this.formKey,
    this.addNewUserController,
    this.addNoteController,
    this.searchController,
    this.toggleGrid, {
    super.key,
  });

  final FireRegisterController controller;
  final String selectedYard;
  final void Function() changeYard;
  final GlobalKey<FormState> formKey;
  final TextEditingController addNewUserController;
  final TextEditingController addNoteController;
  final TextEditingController searchController;
  final void Function(FrcTab) toggleGrid;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsGeometry.all(
            Insets.gutter,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: Insets.gutter,
                ),
                child: SizedBox(
                  width: 200,
                  height: 35,
                  child: TextField(
                    controller: searchController,
                    cursorHeight: 18,
                    decoration: FormStyles.textFieldDecoration(
                      context,
                    ).copyWith(
                      labelText: context.l10n.search,
                      isDense: false,
                      contentPadding: const EdgeInsets.only(
                        bottom: Insets.gutter / 2,
                        left: Insets.gutter,
                      ),
                      suffix: IconButton(
                        onPressed: () {
                          searchController.clear();
                          controller.searchInGrid(
                            '',
                            frcTab: controller.frcTab.value,
                          );
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 20,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      controller.searchInGrid(
                        value,
                        frcTab: controller.frcTab.value,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsGeometry.only(
                  left: Insets.gutter,
                  right: Insets.gutter,
                ),
                child: SizedBox(
                  width: 90,
                  height: 50,
                  child: Tooltip(
                    message: context.l10n.actions,
                    child: ValueListenableBuilder(
                      valueListenable: controller.busy,
                      builder: (context, value, child) => MenuAnchor(
                        builder: (
                          BuildContext context,
                          MenuController menuController,
                          Widget? child,
                        ) {
                          return IconButton(
                            onPressed: () {
                              if (menuController.isOpen) {
                                menuController.close();
                              } else {
                                menuController.open();
                              }
                            },
                            icon: const Icon(Icons.more_vert),
                          );
                        },
                        menuChildren: _buildMenuItems(context),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: Insets.gutter,
              ),
              child: SizedBox(
                height: 35,
                child: ValueListenableBuilder(
                  valueListenable: controller.busy,
                  builder: (context, value, child) {
                    if (controller.showRefresh()) {
                      return IconButton(
                        icon: const Icon(
                          Icons.refresh,
                        ),
                        onPressed: controller.refreshGrid,
                      );
                    } else {
                      return const SizedBox(
                        width: 10,
                      );
                    }
                  },
                ),
              ),
            ),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: controller.busy,
                builder: (context, value, child) => Center(
                  child: Text(
                    frcTabToTitle(context),
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  List<MenuItemButton> _buildMenuItems(BuildContext context) {
    final menuItems = <MenuItemButton>[];

    menuItems.add(
      MenuItemButton(
        onPressed: changeYard,
        child: Text(
          '${context.l10n.changeYard} - ${selectedYard.toUpperCase()}',
        ),
      ),
    );

    if (controller.frcTab.value != FrcTab.missingFromMusterPoint) {
      menuItems.add(
        MenuItemButton(
          onPressed: () async {
            await controller.getMissingEmployees();
            toggleGrid(
              FrcTab.missingFromMusterPoint,
            );
          },
          child: Text(context.l10n.viewMissingFromMusterPoint),
        ),
      );
    }

    if (controller.frcTab.value == FrcTab.punches) {
      menuItems.add(
        MenuItemButton(
          onPressed: () => addNameDialog(context),
          child: Text(
            context.l10n.addNameToPunches,
          ),
        ),
      );

      if (controller.gridController.data.value.isNotEmpty) {
        menuItems.add(
          MenuItemButton(
            onPressed: () => exportToCSV(context),
            child: Text(context.l10n.exportToCSV),
          ),
        );
      }
    }

    if (controller.filterController.filtersSelected ||
        controller.frcTab.value == FrcTab.missingFromMusterPoint) {
      menuItems.add(
        MenuItemButton(
          onPressed: getFrcLogs,
          child: controller.frcTab.value != FrcTab.punches
              ? Text(context.l10n.viewPunches)
              : Text(context.l10n.viewSavedLogs),
        ),
      );
    }

    return menuItems;
  }

  Future<void> addNameDialog(BuildContext context) {
    return showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: Text(
            context.l10n.addManually,
          ),
          content: Material(
            color: Colors.transparent,
            child: SizedBox(
              width: 300,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: addNewUserController,
                      decoration: InputDecoration(
                        label: Text(
                          context.l10n.enterName,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '${context.l10n.pleaseEnterName}.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      maxLines: 2,
                      maxLength: 100,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: addNoteController,
                      decoration: InputDecoration(
                        label: Text(
                          '${context.l10n.addNote}:',
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '${context.l10n.pleaseEnterNote}.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _resetForm();
                  },
                  child: Text(
                    context.l10n.cancel,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final punch = PunchEvent(
                        id: DateTime.now().millisecondsSinceEpoch,
                        subjectName: addNewUserController.text,
                        subjectType: 1,
                        punchTime: DateTime.now().dateOnly,
                        punchType: PunchTypeConstants.manual,
                        badgeNo: '',
                        note: addNoteController.text,
                      );
                      controller.addSelectedUser(
                        punch,
                      );
                      controller.selectedRows.add(
                        punch,
                      );
                      Navigator.of(context).pop();
                      _resetForm();
                    }
                  },
                  child: Text(
                    context.l10n.submit,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  void _resetForm() {
    addNewUserController.clear();
    addNoteController.clear();
    formKey.currentState?.reset();
  }

  Future<void> exportToCSV(BuildContext context) async {
    try {
      final path = await controller.exportToCsv(
        StringConstants.permissionDenied,
      );

      if (!kIsWeb && context.mounted) {
        await EmrModal.showMessageBar(
          context,
          '${path?.split('/').last ?? ''} '
          '${context.l10n.savedInDownloadedFolder}.',
        );
      }
    } catch (e) {
      if (!context.mounted) {
        return;
      }

      final message = e.toString().contains(
                StringConstants.permissionDenied,
              )
          ? context.l10n.storagePermissionDenied
          : context.l10n.unableToSaveTheExportedData;

      await EmrModal.showMessageBar(
        context,
        message,
        messageType: MessageBarTypes.error,
      );
    }
  }

  Future<void> getFrcLogs() async {
    final isPunchScreen = controller.frcTab.value == FrcTab.punches;
    if (isPunchScreen) {
      await controller.getFrcLogs();
    } else {
      await controller.reset(FrcTab.punches);
    }
    toggleGrid(
      isPunchScreen ? FrcTab.fireRollCallLogs : FrcTab.punches,
    );
  }

  String frcTabToTitle(BuildContext context) {
    switch (controller.frcTab.value) {
      case FrcTab.punches:
        if (controller.filterController.filtersSelected ||
            controller.gridController.data.value.isNotEmpty) {
          return context.l10n.punches;
        }
        return '';
      case FrcTab.missingFromMusterPoint:
        return context.l10n.missingFromMusterPoint;
      case FrcTab.fireRollCallLogs:
        return context.l10n.viewFireRollCallLogs;
    }
  }
}
