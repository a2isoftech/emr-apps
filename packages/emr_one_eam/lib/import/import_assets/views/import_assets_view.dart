import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/base/base_page.dart';
import 'package:emr_one_eam/import/controllers/import_controller.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:emr_one_eam/widgets/api_response_type_ui_widget.dart';
import 'package:emr_one_eam/widgets/eam_textbox.dart';
import 'package:emr_one_eam/widgets/list_card_item_widget.dart';
import 'package:emr_one_eam/widgets/type_ahead_search_generic.dart';
import 'package:flutter/material.dart';

class ImportAssetsView extends BasePage {
  ImportAssetsView({
    required super.controller,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => ImportAssetsViewState();
}

class ImportAssetsViewState
    extends BasePageState<ImportAssetsView, IImportAssetController> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: controller.isBusy,
              builder: (context, value, child) {
                if (value) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: EmrColours.primaryBlue,
                    ),
                  );
                }
                return Column(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    _getImportParameters(),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ValueListenableBuilder(
                                      valueListenable:
                                          controller.importResponseType,
                                      builder: (context, impType, child) {
                                        if (impType == null) {
                                          return Column(
                                            children: [
                                              _propertiesListBuilder(),
                                              Row(
                                                children: [
                                                  const Spacer(),
                                                  SizedBox(
                                                    width: 200,
                                                    child: ElevatedButton(
                                                      onPressed: validate,
                                                      child: Text(
                                                        context.l10n.validate,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        }
                                        return Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: ApiResponseTypeWidget(
                                            importResponseType:
                                                controller.importResponseType,
                                            onResetPressed: () {
                                              controller.importResponseType
                                                  .value = null;
                                            },
                                            onImportPressed: () {
                                              if (controller.selectedFile ==
                                                  null) {
                                                showEmrDialog(
                                                  context.l10n.pleaseSelectFile,
                                                );
                                                return;
                                              }
                                              controller.importAsset(
                                                preview: false,
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _getImportParameters() => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurStyle: BlurStyle.outer,
                color: Colors.grey.shade600,
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.attach_file_sharp,
                      ),
                      onPressed: () async {
                        final selected = await controller.pickFile();
                        if (!selected && mounted) {
                          showEmrDialog(
                            context.l10n.pleaseSelectXlsxFile,
                          );
                        }
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: EAMTextBox(
                        controller: controller.importFileTextController,
                        labelText: context.l10n.selectAssetFile,
                        onChanged: null,
                        onTap: () async {
                          final selected = await controller.pickFile();
                          if (!selected && mounted) {
                            showEmrDialog(
                              context.l10n.pleaseSelectXlsxFile,
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.file_present,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: EAMTextBox(
                        controller: controller.workSheetName,
                        labelText: context.l10n.worksheetName,
                        onChanged: null,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.format_list_numbered_sharp,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: EAMTextBox(
                        controller: controller.startRow,
                        labelText: context.l10n.startRow,
                        customValidator: (text) {
                          final val = int.tryParse(
                            text ?? '0',
                          );
                          if (val == null) {
                            return context.l10n.pleaseEnterNumber;
                          }
                          return null;
                        },
                        validationMessage: context.l10n.pleaseEnterNumber,
                        onChanged: null,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: EAMTextBox(
                        controller: controller.endRow,
                        labelText: context.l10n.endRow,
                        customValidator: (text) {
                          final val = int.tryParse(
                            text ?? '0',
                          );
                          if (val == null) {
                            return context.l10n.pleaseEnterNumber;
                          }
                          return null;
                        },
                        validationMessage: context.l10n.pleaseEnterNumber,
                        onChanged: null,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.check_box_outline_blank,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    _getTypeAheadSearch(),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget _getTypeAheadSearch() => Expanded(
        child: TypeAheadSearchGeneric<AssetTemplate>(
          suggestionsCallback: (p0) async {
            return controller.fetchAssetTemplates(
              p0,
            );
          },
          label: context.l10n.assetTemplate,
          onSuggestionSelected: (p0) {
            controller.setSelectedTemplate(
              p0,
            );
          },
          onCleared: () {
            controller.setSelectedTemplate(
              null,
            );
          },
          controller: controller.selectedTemplate,
          valueSelector: (object) => object.name!,
        ),
      );
  void validate() {
    if (controller.selectedFile == null) {
      showEmrDialog(
        context.l10n.pleaseSelectFile,
      );
      return;
    }
    if (controller.startRow.text.isEmpty ||
        controller.endRow.text.isEmpty ||
        controller.workSheetName.text.isEmpty ||
        controller.responseJson == null) {
      return;
    }
    controller.importAsset();
  }

  Widget _propertiesListBuilder() {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .4,
        child: ValueListenableBuilder(
          valueListenable: controller.editProps,
          builder: (context, value, child) {
            if (value == null) {
              return Container();
            }
            return ListView.builder(
              key: GlobalKey(),
              shrinkWrap: true,
              itemCount: controller.editProps.value!.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListCardItemWidget(
                        widgetsForCardItem: [
                          Expanded(
                            child: Text(
                              controller.editProps.value![index]['name']
                                  .toString(),
                            ),
                          ),
                          Expanded(
                            child: DropdownMenu(
                              initialSelection: (controller
                                              .editProps.value![index]
                                          ['fragment'] as Map<String, dynamic>)[
                                      'xslxToJsonProcessor'] as String? ??
                                  'CellValue',
                              onSelected: (value) {
                                final currentVal =
                                    controller.editProps.value![index];
                                final frag = currentVal['fragment']
                                    as Map<String, String>;
                                frag['xslxToJsonProcessor'] = value ?? '';
                                controller.updateAssetPropOrCounter(
                                  currentVal['name'],
                                  frag,
                                );
                              },
                              dropdownMenuEntries: [
                                DropdownMenuEntry(
                                  value: 'CellValue',
                                  label: context.l10n.cellValue,
                                ),
                                DropdownMenuEntry(
                                  value: 'GUID',
                                  label: context.l10n.guid,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: EAMTextBox(
                              labelText: context.l10n.column,
                              controller: TextEditingController(
                                text: (controller.editProps.value![index]
                                                ['fragment']
                                            as Map<String, dynamic>)['column']
                                        as String? ??
                                    '',
                              ),
                              onChanged: (text) {
                                final currentVal =
                                    controller.editProps.value![index];
                                final frag = currentVal['fragment']
                                    as Map<String, String>;
                                frag['column'] = text ?? '';
                                controller.updateAssetPropOrCounter(
                                  currentVal['name'],
                                  frag,
                                );
                              },
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  void showEmrDialog(String? message) {
    if (message != null) {
      EmrDialog.ok(
        context,
        titleText: context.l10n.information,
        contentText: message,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    controller.fetchAssetTemplates('');
    controller.resetController();
  }
}
