import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/create_work_request/create_work_request_controller.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';

abstract class CreateWorkRequestCommon
    extends BasePage<CreateWorkRequestController> {
  CreateWorkRequestCommon({super.key});

  final _formKey = GlobalKey<FormState>();

  final _depotController = TextEditingController();
  final _assetController = TextEditingController();
  final _requestTypeController = TextEditingController();
  final _serviceLevelController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _additionalNotesController = TextEditingController();
  final _faultSymptomsController = TextEditingController();

  late final String userName;
  late final String submitDate;
  late final String submitTime;

  @override
  String getTitle(BuildContext context) {
    final userName = UserInfoService.instance!.userInfo.name;
    return '$userName (${yard.yardCode})';
  }

  @override
  void initState(BuildContext context) {
    _serviceLevelController.text = '-1';
    final locale = Localizations.localeOf(context);
    userName = UserInfoService.instance!.userInfo.name;
    submitDate = controller.getDate(locale);
    submitTime = controller.getTime();
  }

  @override
  void dispose() {
    _depotController.dispose();
    _assetController.dispose();
    _requestTypeController.dispose();
    _serviceLevelController.dispose();
    _descriptionController.dispose();
    _additionalNotesController.dispose();
    _faultSymptomsController.dispose();
    super.dispose();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Wrap(
            runSpacing: 10,
            children: [
              if (controller.isBusy) ...[
                showSpinner(),
              ] else ...[
                InformPageTitle(title: context.l10n.createWorkRequest),
                TypeAheadFormField<Depot?>(
                  suggestionsCallback: (searchText) async {
                    if (searchText.length > 2) {
                      return controller.getDepots(searchText);
                    }
                    return const Iterable<Depot>.empty();
                  },
                  itemBuilder: (context, Depot? suggestedDepots) {
                    final depot = suggestedDepots!;
                    return ListTile(
                      title: Text(
                        '${depot.depotNo} - ${depot.name}',
                      ),
                      subtitle: Text(
                        'Yard : ${depot.yardCode}',
                      ),
                    );
                  },
                  onSuggestionSelected: (Depot? suggestedDepot) {
                    final depot = suggestedDepot!;
                    _depotController.text = depot.depotNo!;
                    _assetController.text = '';
                    controller.getAssets(
                      filter: AssetQueryFilter(depotNos: [depot.depotNo!]),
                    );
                    controller.selectedDepot = depot.depotNo!;
                    controller.selectedAsset = '';
                  },
                  noItemsFoundBuilder: (context) => SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        context.l10n.typeAheadMessageDepots,
                      ),
                    ),
                  ),
                  textFieldConfiguration: TextFieldConfiguration(
                    controller: _depotController,
                    decoration:
                        FormStyles.textFieldDecoration(context).copyWith(
                      labelText: context.l10n.depotLabel,
                      hintText: context.l10n.hintDepot,
                      focusedBorder: FormAppDecorations.textfieldBorder,
                    ),
                  ),
                  validator: (value) {
                    return (value == null || value.isEmpty)
                        ? context.l10n.validationDepot
                        : null;
                  },
                ),
                TypeAheadFormField<Asset?>(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  suggestionsCallback: (searchText) async {
                    return controller.getAssetsForDepot(searchText);
                  },
                  itemBuilder: (context, Asset? suggestedAssets) {
                    final asset = suggestedAssets!;
                    final displayText =
                        '${asset.assetCode} - ${asset.name ?? ''}';
                    return ListTile(
                      title: Text(
                        displayText,
                      ),
                    );
                  },
                  onSuggestionSelected: (Asset? suggestedAsset) {
                    final asset = suggestedAsset!;
                    _assetController.text = asset.assetCode;
                    controller.selectedAsset = asset.assetCode;
                    controller.getWorkRequestOptionsForDepots(
                      filter:
                          DepotQueryFilter(depotNos: [_depotController.text]),
                      asset: asset,
                    );
                  },
                  noItemsFoundBuilder: (context) => SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        context.l10n.typeAheadMessageAssets,
                      ),
                    ),
                  ),
                  textFieldConfiguration: TextFieldConfiguration(
                    controller: _assetController,
                    decoration:
                        FormStyles.textFieldDecoration(context).copyWith(
                      labelText: context.l10n.assetLabel,
                      hintText: context.l10n.hintAssetId,
                      focusedBorder: FormAppDecorations.textfieldBorder,
                      suffixIcon: _assetController.text.isEmpty
                          ? null
                          : IconButton(
                              onPressed: _assetController.clear,
                              icon: const Icon(Icons.clear),
                            ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return context.l10n.validationAsset;
                    }
                    return null;
                  },
                ),
                InformDropdownButtonFormField(
                  controller: _requestTypeController,
                  hintText: context.l10n.selectRequestType,
                  labelText: context.l10n.maintenanceTypeLabel,
                  items: controller.requestTypes!,
                  onChanged: (Object? value) {
                    if (value is String) {
                      controller.selectedRequestType = value;
                    }
                  },
                  validationMessage: context.l10n.validationRequestType,
                  value: _requestTypeController.text == ''
                      ? null
                      : _requestTypeController.text,
                ),
                InformMultilineTextbox(
                  controller: _descriptionController,
                  maxLength: 60,
                  onChanged: (value) => controller.description = value ?? '',
                  labelText: context.l10n.descriptionLabel,
                  validationMessage: context.l10n.validationDescription,
                ),
                InformMultilineTextbox(
                  controller: _additionalNotesController,
                  maxLength: 250,
                  onChanged: (value) =>
                      controller.additionalNotes = value ?? '',
                  labelText: context.l10n.additionalNotesLabel,
                ),
                InformDropdownButtonFormField(
                  controller: _faultSymptomsController,
                  hintText: context.l10n.selectFaultSymptom,
                  labelText: context.l10n.faultSymptomLabel,
                  items: controller.faultSymptoms!,
                  onChanged: (Object? value) {
                    if (value is String) {
                      controller.selectedFaultSymptom = value;
                    }
                  },
                  value: _faultSymptomsController.text == ''
                      ? null
                      : _faultSymptomsController.text,
                ),
                _addMediaWidget(context),
                _addSubmissionWidget(context),
                const SizedBox(height: 70),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _addMediaWidget(BuildContext context) {
    var newWorkRequestMedia = controller.newWorkRequestMedia;
    var existingMedia = controller.existingMedia;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: FormAppColors.lighterGrey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Wrap(
        runSpacing: 5,
        children: [
          InformPageSubTitle(title: context.l10n.mediaLabel),
          Row(
            children: [
              Stack(
                children: [
                  TextButton.icon(
                    onPressed: () async {
                      await context.pushNamed(
                        FormsRoutingName.mediaCapture,
                        extra: MediaCapture(
                          existingMediaPaths: existingMedia,
                          onSave: (mediaItems) async {
                            newWorkRequestMedia = await getMedia(mediaItems);
                            existingMedia = getExistingMedia(mediaItems);

                            controller.newWorkRequestMedia =
                                newWorkRequestMedia;
                            controller.existingMedia = existingMedia;
                          },
                        ),
                      );
                    },
                    icon: newWorkRequestMedia!.isEmpty
                        ? FormAppIcons.mediaCameraIcon
                        : FormAppIcons.hasMediaCameraIcon,
                    label: Text(
                      context.l10n.addMedia,
                      style: newWorkRequestMedia.isEmpty
                          ? FormAppTextStyles.mediaTexts
                          : FormAppTextStyles.hasMediaTexts,
                    ),
                  ),
                  _addMediaCount(newWorkRequestMedia),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _addMediaCount(List<NewWorkRequestMedia>? newWorkRequestMedia) {
    return Align(
      child: newWorkRequestMedia!.isNotEmpty
          ? Container(
              width: 50 * .4,
              height: 50 * .4,
              decoration: BoxDecoration(
                color: FormAppColors.success,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '${newWorkRequestMedia.length}',
                  style: TextStyle(color: FormAppColors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          : Container(),
    );
  }

  Future<List<NewWorkRequestMedia>?> getMedia(
    List<WorkRequestCapturedMedia> mediaItems,
  ) async {
    final newWorkRequestMedia = <NewWorkRequestMedia>[];
    for (var i = 0; i < mediaItems.length; i++) {
      newWorkRequestMedia.add(
        NewWorkRequestMedia(
          id: mediaItems[i].uniqueId,
          mediaTypeId: mediaItems[i].type.index + 1,
          fileName: mediaItems[i].file?.path,
          filePath: mediaItems[i].file?.name,
          file: mediaItems[i].file,
          thumbnail: mediaItems[i].thumbnail,
        ),
      );
    }
    if (controller.newWorkRequestMedia != null &&
        controller.newWorkRequestMedia!.isNotEmpty) {
      newWorkRequestMedia.addAll(controller.newWorkRequestMedia!);
    }
    return newWorkRequestMedia;
  }

  List<WorkRequestCapturedMedia>? getExistingMedia(
    List<WorkRequestCapturedMedia> mediaItems,
  ) {
    final existingMedia = <WorkRequestCapturedMedia>[];
    for (var i = 0; i < mediaItems.length; i++) {
      existingMedia.add(
        WorkRequestCapturedMedia(
          type: mediaItems[i].type,
          uniqueId: mediaItems[i].uniqueId,
          file: mediaItems[i].file,
          thumbnail: mediaItems[i].thumbnail,
        ),
      );
    }
    if (controller.existingMedia != null &&
        controller.existingMedia!.isNotEmpty) {
      existingMedia.addAll(controller.existingMedia!);
    }
    return existingMedia;
  }

  Widget _addSubmissionWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: FormAppColors.lighterGrey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Wrap(
        runSpacing: 5,
        children: [
          InformPageSubTitle(title: context.l10n.submissionTitle),
          _submissionInfo(),
        ],
      ),
    );
  }

  Widget _submissionInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.person),
            const SizedBox(width: 2),
            Text(userName),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.calendar_today),
            const SizedBox(width: 2),
            Text(submitDate),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.schedule),
            const SizedBox(width: 2),
            Text(submitTime),
          ],
        ),
      ],
    );
  }

  void onActionButtonPressed(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      controller.createWorkRequest();
      context.goNamed(FormsRoutingName.inForms);
    }
  }
}
