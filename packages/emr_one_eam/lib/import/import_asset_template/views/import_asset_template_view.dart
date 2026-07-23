import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/import/controllers/import_controller.dart';
import 'package:emr_one_eam/widgets/api_response_type_ui_widget.dart';
import 'package:emr_one_eam/widgets/eam_textbox.dart';
import 'package:emr_one_eam/widgets/list_card_item_widget.dart';
import 'package:flutter/material.dart';

class ImportAssetTemplateView extends BasePage {
  ImportAssetTemplateView({
    required super.controller,
    super.key,
  });
  @override
  State<StatefulWidget> createState() => ImportAssetTemplateViewState();
}

class ImportAssetTemplateViewState
    extends BasePageState<ImportAssetTemplateView, IImportController> {
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
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ListCardItemWidget(
                                    widgetsForCardItem: [
                                      IconButton(
                                        icon:
                                            const Icon(Icons.attach_file_sharp),
                                        onPressed: () async {
                                          final selected =
                                              await controller.pickFile();
                                          if (!selected && context.mounted) {
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
                                          controller: controller
                                              .importFileTextController,
                                          labelText: context.l10n.selectFile,
                                          onChanged: (text) {
                                            if (text == null || text == '') {
                                              controller.resetController();
                                            }
                                          },
                                          onTap: () async {
                                            final selected =
                                                await controller.pickFile();
                                            if (!selected && context.mounted) {
                                              showEmrDialog(
                                                context
                                                    .l10n.pleaseSelectXlsxFile,
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
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: SizedBox(
                                      width: 200,
                                      child: ElevatedButton(
                                        child: Text(context.l10n.validate),
                                        onPressed: () {
                                          if (controller.selectedFile == null) {
                                            showEmrDialog(
                                              context.l10n.pleaseSelectFile,
                                            );
                                            return;
                                          }
                                          controller.importAssetTemplate(
                                            preview: true,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ApiResponseTypeWidget(
                                    importResponseType:
                                        controller.importResponseType,
                                    onImportPressed: () {
                                      if (controller.selectedFile == null) {
                                        showEmrDialog(
                                          context.l10n.pleaseSelectFile,
                                        );
                                        return;
                                      }
                                      controller.importAssetTemplate(
                                        preview: false,
                                      );
                                    },
                                  ),
                                ],
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
    controller.resetController();
  }
}
