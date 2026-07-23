import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/functions/currency_symbol.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class CatLookupListSubScreen extends StatefulWidget {
  const CatLookupListSubScreen({
    required this.deviceType,
    this.isImageRequired = false,
    super.key,
  });

  final bool isImageRequired;
  final DeviceTypeEnum deviceType;

  @override
  State<CatLookupListSubScreen> createState() => _CatLookupListSubScreenState();
}

class _CatLookupListSubScreenState extends State<CatLookupListSubScreen> {
  late final String mediaApi;

  @override
  void initState() {
    super.initState();
    final controller = Provider.of<InspectionScreenController>(
      context,
      listen: false,
    );

    final appConfig = Provider.of<AppConfig>(context, listen: false);
    mediaApi = appConfig.mediaApi;
    controller.getAllAvailableCats();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: controller.state.loadingNotifier,
            builder: (context, isLoading, child) {
              if (isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return ValueListenableBuilder(
                valueListenable: controller.state.cats,
                builder: (context, list, child) {
                  if (list.isEmpty) {
                    return Align(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: context.l10n.noCATAvailableMessage),
                            const TextSpan(text: ' '),
                            TextSpan(
                              text: controller
                                  .state
                                  .quoteToInspect!
                                  .vehicleDescription
                                  .vehicleReg,
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    );
                  }
                  return SingleChildScrollView(
                    child: Wrap(
                      runAlignment: WrapAlignment.spaceEvenly,
                      runSpacing: Insets.gutter,
                      spacing: Insets.gutter,
                      children: list.map((x) {
                        return FutureBuilder(
                          future: controller.fetchCatImages(x.sid!),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState !=
                                ConnectionState.done) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return SizedBox(
                              width: _catCardWidth(context),
                              child: _getCatLookupWidget(
                                cats: controller.state.cats,
                                selectedCat: x,
                                image: snapshot.data,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  );
                },
              );
            },
          ),
        ),
        if (widget.deviceType == DeviceTypeEnum.mobile) ...{
          Watch((ctx) {
            return FilledButton(
              onPressed: controller.isSealNumberValid.value
                  ? () async {
                      await doSaveCat(
                        controller: controller,
                        isImageRequired: widget.isImageRequired,
                      );
                    }
                  : null,
              child: Text(
                widget.isImageRequired
                    ? context.l10n.takePhotoAndSave
                    : context.l10n.save,
              ),
            );
          }),
        } else ...{
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  controller.isSealNumberUsed.value = false;
                  if (Navigator.of(context).canPop()) {
                    context.pop();
                  }
                },
                child: Text(context.l10n.cancel),
              ),
              Watch((ctx) {
                return TextButton(
                  onPressed: controller.isSealNumberValid.value
                      ? () async {
                          await doSaveCat(
                            controller: controller,
                            isImageRequired: widget.isImageRequired,
                          );
                        }
                      : null,
                  child: Text(
                    widget.isImageRequired
                        ? context.l10n.takePhotoAndSave
                        : context.l10n.save,
                  ),
                );
              }),
            ],
          ),
        },
      ],
    );
  }

  double _catCardWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = 0;
    if (screenWidth > 1000) {
      itemWidth = 350;
    } else if (screenWidth > 750 && screenWidth < 1000) {
      itemWidth = (screenWidth / 2) - 75;
    } else {
      itemWidth = screenWidth;
    }
    return itemWidth;
  }

  Widget _getCatLookupWidget({
    required ValueNotifier<List<TechCatSearchModel>> cats,
    required TechCatSearchModel selectedCat,
    String? image,
  }) {
    return widget.deviceType == DeviceTypeEnum.mobile
        ? CatLookupCardMobileSubScreen(
            title: '${context.l10n.serialNo}: ${selectedCat.serialNumber}',
            currencyShort: getCurrencySymbol(TerritoryCodes.uk),
            image: image,
            disableSealNumber: false,
            selectedCat: selectedCat,
            cats: cats,
          )
        : CatLookupCardSubScreen(
            currencyShort: getCurrencySymbol(TerritoryCodes.uk),
            image: image,
            selectedCat: selectedCat,
          );
  }

  Future<void> doSaveCat({
    required InspectionScreenController controller,
    required bool isImageRequired,
  }) async {
    unawaited(EmrDialog.busy(context, titleText: context.l10n.inProgress));

    final selectedCat = controller.state.cats.value
        .where((x) => x.isSelected.value)
        .firstOrNull;

    if (selectedCat == null) {
      if (context.mounted) {
        // hide busy dialog
        context.pop();

        await EmrModal.showMessageBar(
          context,
          context.l10n.pleaseSelectCAT,
          messageType: MessageBarTypes.error,
        );
      }
      return;
    }

    if (selectedCat.catalyticFill == null) {
      // hide busy dialog
      context.pop();

      await EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.pleaseSelectCatalyticFill,
      );
      return;
    }

    if (selectedCat.catClassification == null) {
      // hide busy dialog
      context.pop();

      await EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.pleaseSelectCatalyticClassification,
      );
      return;
    }

    if (selectedCat.sealNo == null) {
      // hide busy dialog
      context.pop();

      await EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.invalidSealNumber,
      );
      return;
    }

    XFile? file;

    if (isImageRequired) {
      file = await ImagePicker().pickImage(source: ImageSource.camera);

      // If user cancels image picking, don't proceed
      if (file == null && mounted) {
        // hide busy dialog
        context.pop();
        return;
      }
    }

    // Only call selectUKCats
    //if either image is not required,
    // or it's required and captured
    if (!isImageRequired || file != null) {
      controller.state.loadingNotifier.value = true;
      final error = await controller.selectUKCats(
        selectedCat: selectedCat,
        imageBaseUrl: mediaApi,
        file: file,
      );
      if (error.isNotEmpty) {
        if (error.contains('SEAL_NUMBER_IS_USED')) {
          controller.isSealNumberUsed.value = true;
        }

        if (mounted) {
          // hide busy dialog
          context.pop();
        }

        controller.state.loadingNotifier.value = false;
        return;
      }
    }

    if (mounted && Navigator.of(context).canPop()) {
      // hide busy dialog
      context.pop();

      // hide lookup dialog
      context.pop();
    }
    controller.state.loadingNotifier.value = false;
  }
}
