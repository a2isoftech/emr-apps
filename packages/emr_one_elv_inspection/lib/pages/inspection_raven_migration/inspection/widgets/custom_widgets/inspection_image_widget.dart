import 'dart:typed_data';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/enums/inspection_image_enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/custom_widgets/inspection_validate_vin_alert_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class InspectionImageWidget extends StatefulWidget {
  const InspectionImageWidget({
    required this.imageType,
    required this.onImageAdded,
    this.width = 180.0,
    this.height = 180.0,
    this.title,
    this.placeholderImage,
    this.serverImagePath,
    this.isTitleAtBottom = false,
    this.imagePath,
    super.key,
  });

  final InspectionImageEnum imageType;
  final double width;
  final double height;
  final String? title;
  final String? placeholderImage;
  final String? serverImagePath;
  final bool isTitleAtBottom;
  final String? imagePath;
  final void Function(String) onImageAdded;

  @override
  State<InspectionImageWidget> createState() => _InspectionImageWidgetState();
}

class _InspectionImageWidgetState extends State<InspectionImageWidget> {
  late ValueNotifier<Uint8List?> fileNotifier;

  @override
  void initState() {
    super.initState();
    fileNotifier = ValueNotifier(null);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);

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
              imageType: widget.imageType,
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
                  if (controller
                      .state
                      .vehicleQuote
                      .vehicleInfo
                      .detail
                      .vin
                      .isNotEmpty) {
                    if (!(await _validateVinNumber(controller))) return;
                  }

                  final image = await ImagePicker().pickImage(
                    source: ImageSource.camera,
                  );

                  if (image != null) {
                    fileNotifier.value = await image.readAsBytes();

                    final imagePath = await controller.uploadDocument(
                      imageType: widget.imageType,
                      file: image,
                    );

                    widget.onImageAdded(imagePath);
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

  Future<bool> _validateVinNumber(InspectionController controller) async {
    if (controller.activeTerritory == ElvTerritory.usa) {
      controller.state.hideVehicleIdentifier.value = true;
    }
    if (widget.imageType == InspectionImageEnum.vinPhoto) {
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
      controller.state.hideVehicleIdentifier.value = false;
      return returnValue;
    }
    return true;
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
