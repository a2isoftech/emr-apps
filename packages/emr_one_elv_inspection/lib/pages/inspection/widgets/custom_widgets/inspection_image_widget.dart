import 'dart:typed_data';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class InspectionImageWidget extends StatefulWidget {
  const InspectionImageWidget({
    required this.documentTypeEnum,
    this.width = 180.0,
    this.height = 180.0,
    this.title,
    this.placeholderImage,
    this.serverImagePath,
    this.isTitleAtBottom = false,
    this.imagePath,
    super.key,
  });

  final VehicleDocumentEnums documentTypeEnum;
  final double width;
  final double height;
  final String? title;
  final String? placeholderImage;
  final String? serverImagePath;
  final bool isTitleAtBottom;
  final String? imagePath;

  @override
  State<InspectionImageWidget> createState() => _InspectionImageWidgetState();
}

class _InspectionImageWidgetState extends State<InspectionImageWidget> {
  late ValueNotifier<Uint8List?> fileNotifier;
  late InspectionScreenController controller;
  late AppConfig config;
  late VerificationSubTypeEnum proofOfAddressDocument;
  late VerificationSubTypeEnum identificationDocument;

  @override
  void initState() {
    super.initState();
    fileNotifier = ValueNotifier(null);
    controller = Provider.of<InspectionScreenController>(
      context,
      listen: false,
    );
    config = Provider.of<AppConfig>(context, listen: false);
    proofOfAddressDocument = controller.state.proofOfAddressType.value;
    identificationDocument = controller.state.identificationType.value;
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.title != null && !widget.isTitleAtBottom)
          _getTitle(
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            border: Border.all(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.circular(Insets.gutter / 2),
          ),
          child: FutureBuilder(
            future: controller.getDocument(
              documentType: widget.documentTypeEnum,
              serverImagePath: widget.serverImagePath,
            ),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return SizedBox(
                  width: widget.width,
                  height: widget.height,
                  child: const Center(child: CircularProgressIndicator()),
                );
              }

              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data != null) {
                  fileNotifier.value = snapshot.data;
                }
              }

              return InkWell(
                onTap: () async {
                  if (controller.state.quoteToInspect?.vehicleDescription.vin !=
                      null) {
                    if (!(await _validateDocument())) return;
                  }

                  final image = await ImagePicker().pickImage(
                    source: ImageSource.camera,
                  );

                  if (image != null) {
                    _updateDocument(true);
                    fileNotifier.value = await image.readAsBytes();

                    await controller.uploadDocument(
                      documentType: widget.documentTypeEnum,
                      file: image,
                      imageBaseUrl: config.mediaApi,
                    );
                  } else {
                    _updateDocument(false);
                  }
                },
                child: Container(
                  width: widget.width,
                  height: widget.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(),
                  ),
                  child: ValueListenableBuilder(
                    valueListenable: fileNotifier,
                    builder: (context, value, child) {
                      if (value == null) {
                        if ((widget.placeholderImage ?? '').isNotEmpty) {
                          return _placeholderImageWidget(
                            widget.placeholderImage!,
                          );
                        } else {
                          return _dummyPlaceholderWidget();
                        }
                      }

                      return Image.memory(value, fit: BoxFit.cover);
                    },
                  ),
                ),
              );
            },
          ),
        ),
        if (widget.title != null && widget.isTitleAtBottom)
          SizedBox(
            width: widget.width,
            child: Center(
              child: _getTitle(
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
      ],
    );
  }

  Widget _placeholderImageWidget(String assetImagePath) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter * 2),
            child: Center(
              child: SizedBox(
                width: widget.width,
                height: widget.height / 2.5,
                child: Image.asset(assetImagePath, fit: BoxFit.fill),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Icon(
              Icons.add_circle,
              size: Insets.gutter * 2,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _dummyPlaceholderWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: const BorderRadius.all(
          Radius.circular(Insets.gutter / 2),
        ),
      ),
      child: Icon(
        Icons.add_circle,
        size: Insets.gutter * 3,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }

  Future<bool> _validateDocument() async {
    if (widget.documentTypeEnum == VehicleDocumentEnums.vin ||
        widget.documentTypeEnum == VehicleDocumentEnums.vrn) {
      return _validateVinNumber();
    }

    if (widget.documentTypeEnum == VehicleDocumentEnums.identification) {
      final response = await showDialog<bool>(
        context: context,
        builder: (context) => _documentAlert(
          title: context.l10n.documentIdentification,
          subtitle: context.l10n.pleaseSelectTheTypeOfIdentification,
          entries: VerificationSubTypeEnum.identificationTypes.entries,
          selectedItem: controller.state.identificationType.value,
          onChanged: (verificationSubType) {
            if (verificationSubType != null) {
              identificationDocument = verificationSubType;
            }
          },
        ),
      );
      return response ?? false;
    }

    if (widget.documentTypeEnum == VehicleDocumentEnums.proofOfAddress) {
      if (mounted) {
        final response = await showDialog<bool>(
          context: context,
          builder: (context) => _documentAlert(
            title: context.l10n.proofOfAddress,
            subtitle: context.l10n.pleaseSelectTheTypeOfProofOfAddress,
            entries: VerificationSubTypeEnum.proofOfAddressTypes.entries,
            selectedItem: controller.state.proofOfAddressType.value,
            onChanged: (verificationSubType) {
              if (verificationSubType != null) {
                proofOfAddressDocument = verificationSubType;
              }
            },
          ),
        );
        return response ?? false;
      }
      return false;
    }
    return true;
  }

  Future<bool> _validateVinNumber() async {
    if (controller.activeTerritory == ElvTerritory.usa) {
      controller.hideVehicleIdentifier();
    }
    if (widget.documentTypeEnum == VehicleDocumentEnums.vrn ||
        widget.documentTypeEnum == VehicleDocumentEnums.vin) {
      var returnValue = false;

      await showDialog<bool>(
        context: context,
        builder: (context) {
          return InspectionValidateVinAlertWidget(
            controller: controller,
            onValidVinEntered: (vin) {
              returnValue = true;
              controller.changeValidVinStatus(status: true);
            },
          );
        },
      );
      controller.showVehicleIdentifier();
      return returnValue;
    }
    return true;
  }

  void _updateDocument(bool isValid) {
    if (widget.documentTypeEnum == VehicleDocumentEnums.identification) {
      controller.state.identificationType.value = isValid
          ? identificationDocument
          : controller.state.identificationType.value;
    } else if (widget.documentTypeEnum == VehicleDocumentEnums.proofOfAddress) {
      controller.state.proofOfAddressType.value = isValid
          ? proofOfAddressDocument
          : controller.state.proofOfAddressType.value;
    }
  }

  Widget _documentAlert({
    required String title,
    required String subtitle,
    required Iterable<MapEntry<String, VerificationSubTypeEnum>> entries,
    required void Function(VerificationSubTypeEnum?) onChanged,
    VerificationSubTypeEnum? selectedItem,
  }) {
    return DocumentTypeAlertWidget(
      title: title,
      header: subtitle,
      items: entries
          .map(
            (type) =>
                DropdownMenuItem(value: type.value, child: Text(type.key)),
          )
          .toList(),
      selectedItem: selectedItem,
      onChanged: onChanged,
    );
  }

  Widget _getTitle({required TextStyle style}) {
    final popSize =
        MediaQuery.of(context).size.width < InspectionDeviceTypeConstants.tablet
        ? 250.0
        : 400.0;
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.title!, style: style),
          const SizedBox(width: Insets.gutter / 4),
           if (widget.imagePath != null && widget.imagePath!.isNotEmpty)
            InkWell(
              onTap: () {
                EmrDialog.modal<void>(
                  context,
                  titleText: context.l10n.example,
                  acceptLabel: context.l10n.ok,
                  buttons: const {EmrDialogButton.accept},
                  onAccept: () async {
                    Navigator.of(context).pop(true);
                  },
                  builder: (context) {
                    return SizedBox(
                      width: popSize,
                      height: popSize,
                      child: Image.asset(widget.imagePath!, fit: BoxFit.cover),
                    );
                  },
                );
              },
              child: const Icon(Icons.info_outline, size: Insets.gutter * 1.2),
            )
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }
}
