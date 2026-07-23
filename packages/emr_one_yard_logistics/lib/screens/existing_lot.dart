import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_core/widgets/camera/enums.dart';
import 'package:emr_one_core/widgets/camera/eo_basic_camera.dart';
import 'package:emr_one_core/widgets/media_dialog/add_media_button.dart';
import 'package:emr_one_core/widgets/media_dialog/add_media_dialog.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/controllers/existing_lot.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/lot_weight_scale.dart';
import 'package:emr_one_yard_logistics/widgets/lot_weight_scale_manual.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:emr_one_yard_logistics/widgets/wrapper_error.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class ExistingLot extends StatelessWidget {
  ExistingLot({
    required this.controller,
    super.key,
  });

  final ExistingLotController controller;

  final Signal<bool> loadingTareScaleData = signal<bool>(false);
  final Signal<bool> loadingGrossScaleData = signal<bool>(false);

  final Signal<bool> loadingLotCompositionMaterial = signal<bool>(false);

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<YardLogisticsService>(context, listen: false);

    return FutureBuilder(
      future: service.fetchLotCompositionAcronymsFromCache(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 64,
                  height: 64,
                  child: CircularProgressIndicator(),
                ),
                const SizedBox(height: Insets.gutter),
                Text(context.l10n.loading),
              ],
            ),
          );
        }

        if (snapshot.hasError) {
          return WrapperError(message: snapshot.error.toString());
        }

        if (snapshot.data == null || snapshot.data!.isEmpty) {
          return const WrapperError(
            message: 'No Lot Acronyms found',
          );
        }

        return _showExistingLot(
          context,
          service,
          snapshot.data!,
        );
      },
    );
  }

  Widget _showExistingLot(
    BuildContext context,
    YardLogisticsService service,
    List<LotCompositionAcronym> compositionAcronyms,
  ) {
    const tareWeightError =
        'Tare Weight cannot be same or more than Gross Weight';
    const grossWeightError =
        'Gross Weight cannot be same or less than Tare Weight';
    const grossWeightZeroError = 'Gross Weight cannot be 0 or less than that';

    const verifiedIcon = Icon(
      YlConstants.verifiedIcon,
      color: YlConstants.verifiedIconColour,
    );

    return Column(
      children: [
        Expanded(
          child: ColoredBox(
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(Insets.gutter),
                      bottomRight: Radius.circular(Insets.gutter),
                    ),
                    child: ColoredBox(
                      color: Theme.of(context).colorScheme.surface,
                      child: ValueListenableBuilder(
                        valueListenable: controller.lot,
                        builder: (context, Lot lot, _) => LotDetails(
                          controller: controller,
                          uomForView: service.uomForView,
                          compositionAcronyms: compositionAcronyms,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Insets.gutter / 2,
                  child: Container(color: Colors.black),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(Insets.gutter),
                      topRight: Radius.circular(Insets.gutter),
                    ),
                    child: ColoredBox(
                      color: Theme.of(context).colorScheme.surface,
                      child: ValueListenableBuilder(
                        valueListenable: controller.lot,
                        builder: (context, Lot lot, _) {
                          return YlActionPanel(
                            actions: [
                              (
                                context.l10n.ylSpecificTakeTareWeight,
                                Icons.scale,
                                controller.lotCanBeModified.watch(context) &&
                                        !loadingTareScaleData.watch(context)
                                    ? () async {
                                        loadingTareScaleData.value = true;

                                        final service =
                                            Provider.of<YardLogisticsService>(
                                          context,
                                          listen: false,
                                        );

                                        var lookupYard =
                                            service.defaultYardCode;

                                        if (!lookupYard.startsWith('yards/')) {
                                          lookupYard = 'yards/$lookupYard';
                                        }

                                        final scales = await service
                                            .fetchScaleInfosByYardId(
                                          lookupYard,
                                        );

                                        loadingTareScaleData.value = false;

                                        if (scales.data == null ||
                                            scales.success == false ||
                                            scales.data!.$2.isEmpty) {
                                          if (context.mounted) {
                                            await _showScaleDataError(
                                              context,
                                              service,
                                            );
                                          }
                                          return;
                                        }

                                        if (!context.mounted) return;

                                        final weightCapture =
                                            await showModalBottomSheet<
                                                WeightCapture?>(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: LotWeightScale(
                                                service: service,
                                                defaultScaleAlias:
                                                    scales.data!.$1,
                                                scales: scales.data!.$2,
                                              ),
                                            );
                                          },
                                        );

                                        if (weightCapture == null) {
                                          return;
                                        } else if (!isWeightValid(
                                              controller
                                                  .lot.value.grossWeightUom,
                                              weightCapture.uomValue,
                                            ) &&
                                            context.mounted) {
                                          await _showWeightError(
                                            context,
                                            tareWeightError,
                                          );
                                          return;
                                        }

                                        controller.lot.value.tareWeightUom =
                                            weightCapture.uomValue;

                                        if (context.mounted) {
                                          await _saveLot(
                                            context,
                                            service,
                                          );
                                        }
                                      }
                                    : null,
                                loadingTareScaleData.watch(context)
                                    ? const SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: CircularProgressIndicator(),
                                      )
                                    : verifiedIcon,
                                controller.lotCanBeModified.watch(context) &&
                                        !loadingGrossScaleData.watch(context)
                                    ? () async {
                                        final uom = await showModalBottomSheet<
                                            UomValue?>(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child:
                                                  const LotWeightScaleManual(),
                                            );
                                          },
                                        );

                                        if (uom == null) {
                                          return;
                                        } else if (!isWeightValid(
                                              controller
                                                  .lot.value.grossWeightUom,
                                              uom,
                                            ) &&
                                            context.mounted) {
                                          await _showWeightError(
                                            context,
                                            tareWeightError,
                                          );
                                          return;
                                        }

                                        controller.lot.value.tareWeightUom =
                                            uom;

                                        if (context.mounted) {
                                          await _saveLot(
                                            context,
                                            service,
                                          );
                                        }
                                      }
                                    : null,
                              ),
                              (
                                context.l10n.ylSpecificTakeGrossWeight,
                                Icons.scale,
                                controller.lotCanBeModified.watch(context) &&
                                        !loadingGrossScaleData.watch(context)
                                    ? () async {
                                        loadingGrossScaleData.value = true;

                                        final service =
                                            Provider.of<YardLogisticsService>(
                                          context,
                                          listen: false,
                                        );

                                        var lookupYard =
                                            service.defaultYardCode;

                                        if (!lookupYard.startsWith('yards/')) {
                                          lookupYard = 'yards/$lookupYard';
                                        }

                                        final scales = await service
                                            .fetchScaleInfosByYardId(
                                          lookupYard,
                                        );

                                        loadingGrossScaleData.value = false;

                                        if (scales.data == null ||
                                            scales.success == false ||
                                            scales.data!.$2.isEmpty) {
                                          if (context.mounted) {
                                            await _showScaleDataError(
                                              context,
                                              service,
                                            );
                                          }
                                          return;
                                        }

                                        if (!context.mounted) return;

                                        final weightCapture =
                                            await showModalBottomSheet<
                                                WeightCapture?>(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: LotWeightScale(
                                                service: service,
                                                defaultScaleAlias:
                                                    scales.data!.$1,
                                                scales: scales.data!.$2,
                                              ),
                                            );
                                          },
                                        );

                                        if (weightCapture == null) {
                                          return;
                                        } else if (weightCapture
                                                    .uomValue.mtValue <=
                                                0 &&
                                            context.mounted) {
                                          await _showWeightError(
                                            context,
                                            grossWeightZeroError,
                                          );
                                          return;
                                        } else if (!isWeightValid(
                                              weightCapture.uomValue,
                                              controller
                                                  .lot.value.tareWeightUom,
                                            ) &&
                                            context.mounted) {
                                          await _showWeightError(
                                            context,
                                            grossWeightError,
                                          );
                                          return;
                                        }
                                        controller.lot.value.grossWeightUom =
                                            weightCapture.uomValue;

                                        if (context.mounted) {
                                          await _saveLot(
                                            context,
                                            service,
                                          );
                                        }
                                      }
                                    : null,
                                loadingGrossScaleData.watch(context)
                                    ? const SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: CircularProgressIndicator(),
                                      )
                                    : controller.lot.value.grossWeightUom ==
                                            null
                                        ? YlConstants.warningIcon
                                        : verifiedIcon,
                                controller.lotCanBeModified.watch(context) &&
                                        !loadingGrossScaleData.watch(context)
                                    ? () async {
                                        final uom = await showModalBottomSheet<
                                            UomValue?>(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child:
                                                  const LotWeightScaleManual(),
                                            );
                                          },
                                        );

                                        if (uom == null) {
                                          return;
                                        } else if (uom.mtValue <= 0 &&
                                            context.mounted) {
                                          await _showWeightError(
                                            context,
                                            grossWeightZeroError,
                                          );
                                          return;
                                        } else if (!isWeightValid(
                                              uom,
                                              controller
                                                  .lot.value.tareWeightUom,
                                            ) &&
                                            context.mounted) {
                                          await _showWeightError(
                                            context,
                                            grossWeightError,
                                          );
                                          return;
                                        }

                                        controller.lot.value.grossWeightUom =
                                            uom;

                                        if (context.mounted) {
                                          await _saveLot(
                                            context,
                                            service,
                                          );
                                        }
                                      }
                                    : null,
                              ),
                              if (lot.type == LotType.sticks)
                                (
                                  context.l10n.ylSpecificAddPhotos,
                                  Icons.photo,
                                  controller.saveError.watch(context) == true
                                      ? null
                                      : () async {
                                          final changes =
                                              await showModalBottomSheet<
                                                  AddedMedia>(
                                            context: context,
                                            builder: (context) {
                                              return SafeArea(
                                                child: AddMediaDialog(
                                                  addMediaButtons:
                                                      _mediaButtons(context),
                                                ),
                                              );
                                            },
                                          );

                                          if (changes == null ||
                                              changes.media.isEmpty) {
                                            return;
                                          }

                                          final copies =
                                              await service.copyPhotos(changes);

                                          // Update the lot with the new photos
                                          controller.lot.value.photos ??= [];
                                          controller.lot.value.photos!
                                              .addAll(copies);

                                          if (context.mounted) {
                                            await _saveLot(
                                              context,
                                              service,
                                            );
                                          }
                                        },
                                  controller.lot.value.photos == null ||
                                          controller.lot.value.photos!.isEmpty
                                      ? YlConstants.warningIcon
                                      : verifiedIcon,
                                  null
                                ),
                              (
                                context.l10n.assess,
                                Symbols.experiment_rounded,
                                controller.saveAllowed.watch(context) == true &&
                                        controller.lotCanBeModified
                                                .watch(context) ==
                                            true &&
                                        !loadingLotCompositionMaterial
                                            .watch(context)
                                    ? () async {
                                        await _assessLot(context, lot);
                                      }
                                    : null,
                                loadingLotCompositionMaterial.watch(context)
                                    ? const SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: CircularProgressIndicator(),
                                      )
                                    : controller.assessed.watch(context)
                                        ? verifiedIcon
                                        : YlConstants.warningIcon,
                                null
                              ),
                              (
                                context.l10n.ylSpecificAddComment,
                                Symbols.chat,
                                controller.saveAllowed.watch(context) == true
                                    ? () async {
                                        final comment =
                                            await showModalBottomSheet<String?>(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (context) {
                                            return SafeArea(
                                              child: Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: const LotCommentDlg(),
                                              ),
                                            );
                                          },
                                        );

                                        if (comment == null) {
                                          return;
                                        }

                                        controller.lot.value.comments.add(
                                          Comment(
                                            userId: UserInfoService
                                                .instance!.userInfo.id,
                                            userName: UserInfoService
                                                .instance!.userInfo.name,
                                            commentText: comment,
                                            commentDate: DateTime.now(),
                                          ),
                                        );

                                        if (context.mounted) {
                                          await _saveLot(
                                            context,
                                            service,
                                          );
                                        }
                                      }
                                    : null,
                                null,
                                null
                              ),
                              (
                                'Transfer Lot',
                                Symbols.receipt_long,
                                controller.lotCanBeModified.watch(context) ==
                                        true
                                    ? () async {
                                        final ticketInfo =
                                            await _getTicketSelector(context);

                                        if (ticketInfo != null &&
                                            context.mounted) {
                                          await EmrDialog.noYes(
                                            context,
                                            titleText:
                                                'Are you sure you want to '
                                                'transfer this lot to the '
                                                'Ticket Number: '
                                                '${ticketInfo.ticketNumber}/${ticketInfo.yardCode}',
                                            onYes: () async {
                                              if (context.mounted) {
                                                await _updateLotTicket(
                                                  context,
                                                  service,
                                                  ticketInfo,
                                                );
                                              }
                                            },
                                          );
                                        }
                                      }
                                    : null,
                                null,
                                null
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (controller.confirmAllowed.watch(context) == true) ...[
          Padding(
            padding: const EdgeInsets.only(
              left: Insets.gutter,
              right: Insets.gutter,
              bottom: Insets.gutter / 2,
            ),
            child: SizedBox(
              height: 48,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: YlConstants.calStyle,
                      onPressed: controller.lotCanBeConfirmed.watch(context)
                          ? !controller.busy.watch(context)
                              ? () async {
                                  await _confirmLot(context, service);
                                }
                              : () {}
                          : null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Visibility(
                            visible: controller.confirming.watch(context) ||
                                controller.saving.watch(context),
                            child: const SizedBox(
                              height: 22,
                              width: 22,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: Insets.gutter),
                          Text(
                            controller.saving.watch(context)
                                ? '${context.l10n.saving}...'
                                : controller.confirming.watch(context)
                                    ? '${context.l10n.confirming}...'
                                    : context.l10n.confirmLot,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: !controller.lotCanBeConfirmed.watch(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                YlConstants.warningIcon,
                const SizedBox(width: Insets.gutter),
                Text(
                  context.l10n.completeAllMarkedItems,
                ),
              ],
            ),
          ),
        ],
        ValueListenableBuilder(
          valueListenable: controller.saveError,
          builder: (context, error, _) {
            if (error == false) {
              return const SizedBox();
            }

            return Padding(
              padding: const EdgeInsets.only(
                left: Insets.gutter,
                right: Insets.gutter,
                bottom: Insets.gutter,
              ),
              child: SizedBox(
                height: 76,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.l10n.thereWasAnErrorSavingTheLot,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            style: YlConstants.calStyle,
                            child: controller.saving.watch(context)
                                ? const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 22,
                                        width: 22,
                                        child: CircularProgressIndicator(),
                                      ),
                                      SizedBox(width: Insets.gutter),
                                      Text('Retrying...'),
                                    ],
                                  )
                                : const Text('Retry save'),
                            onPressed: () async {
                              if (context.mounted) {
                                await _saveLot(
                                  context,
                                  service,
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Future<void> _showScaleDataError(
    BuildContext context,
    YardLogisticsService service,
  ) async {
    await showDialog<void>(
      context: context,
      builder: (context) => Material(
        elevation: 5,
        child: GenericMessage(
          title: 'Configuration Error',
          subTitle: 'No Scale Data Found for '
              'Yard ${service.defaultYardCode}',
          onTapOk: () => Navigator.of(
            context,
            rootNavigator: true,
          ).pop(),
        ),
      ),
    );
  }

  Future<void> _saveLot(
    BuildContext context,
    YardLogisticsService service,
  ) async {
    controller.saving.value = true;

    final updateResult = await service.updateLot(controller.lot.value);

    controller.saveError.value = false;
    controller.saving.value = false;

    if (updateResult.success && updateResult.data != null) {
      controller.lot.value = updateResult.data!.$2!;
    } else {
      controller.saveError.value = true;

      if (context.mounted) {
        unawaited(
          EmrModal.showMessageBar(
            context,
            updateResult.message,
            messageType: MessageBarTypes.error,
          ),
        );
      }
    }
  }

  Future<void> _updateLotTicket(
    BuildContext context,
    YardLogisticsService service,
    TicketInfo ticketInfo,
  ) async {
    controller.saving.value = true;

    final updateResult = await service.updateLotTicket(
      controller.lot.value.id,
      ticketInfo,
    );

    controller.saveError.value = false;
    controller.saving.value = false;

    if (updateResult.success && updateResult.data != null) {
      controller.lot.value = updateResult.data!;

      if (context.mounted) {
        unawaited(
          EmrModal.showMessageBar(
            context,
            'Lot Transferred',
          ),
        );
      }
    } else {
      if (context.mounted) {
        unawaited(
          EmrModal.showMessageBar(
            context,
            updateResult.message,
            messageType: MessageBarTypes.error,
          ),
        );
      }
    }
  }

  Future<void> _confirmLot(
    BuildContext context,
    YardLogisticsService service,
  ) async {
    controller.confirming.value = true;

    final updateResult = await service.confirmLot(controller.lot.value);

    controller.confirmError.value = false;
    controller.confirming.value = false;

    if (!context.mounted) {
      return;
    }

    if (updateResult.success && updateResult.data != null) {
      controller.lot.value = updateResult.data!.$2!;

      unawaited(
        EmrModal.showMessageBar(
          context,
          context.l10n.lotConfirmed,
        ),
      );
    } else {
      controller.confirmError.value = true;

      unawaited(
        EmrModal.showMessageBar(
          context,
          '${context.l10n.thereWasAnErrorConfirmingTheLot}:'
          '\n${updateResult.message}',
          messageType: MessageBarTypes.error,
        ),
      );
    }
  }

  List<MediaButtonBuilder> _mediaButtons(BuildContext context) {
    return [
      MediaButtonBuilder(
        mediaCallback: () async {
          final newPhotos = <MediaFile>[];
          await showDialog<void>(
            context: context,
            builder: (context) {
              return EOBasicCamera(
                mediaMode: MediaMode.photo,
                onMediaCapture: (path) async {
                  if (path != null) {
                    newPhotos.add(
                      MediaFile(
                        media: path,
                        mediaType: MediaType.image,
                        retainSourceOnDelete: false,
                      ),
                    );
                  }
                },
              );
            },
          );
          return newPhotos;
        },
      ),
    ];
  }

  Future<TicketInfo?> _getTicketSelector(BuildContext context) async {
    final service = Provider.of<YardLogisticsService>(context, listen: false);

    final result = await showDialog<TicketInfo?>(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Find ticket'),
            ),
            body: SelectTicketDialog(
              service: service,
            ),
          ),
        );
      },
    );
    return result;
  }

  bool isWeightValid(UomValue? grossWeight, UomValue tareWeight) {
    if (grossWeight == null) return true;

    return grossWeight.mtValue > tareWeight.mtValue;
  }

  Future<void> _showWeightError(
    BuildContext context,
    String body,
  ) async {
    await showDialog<void>(
      context: context,
      builder: (context) => Material(
        elevation: 5,
        child: GenericMessage(
          title: 'Weight Error',
          subTitle: body,
          onTapOk: () => Navigator.of(
            context,
            rootNavigator: true,
          ).pop(),
        ),
      ),
    );
  }

  Future<void> _assessLot(BuildContext context, Lot lot) async {
    loadingLotCompositionMaterial.value = true;

    final service = Provider.of<YardLogisticsService>(
      context,
      listen: false,
    );

    final lotCompositionMaterial = await service.fetchLotCompositionsFromCache(
      yardCode: service.defaultYardCode,
    );

    loadingLotCompositionMaterial.value = false;

    if (context.mounted && lotCompositionMaterial.isNotEmpty) {
      final results = await showModalBottomSheet<Map<String, dynamic>?>(
        context: context,
        builder: (context) {
          return SafeArea(
            child: LotStickAssessmentDlg(
              lot: controller.lot.value,
              lotProductCompositionMapList: lotCompositionMaterial
                  .where(
                    (x) => x.supportedLotTypes.contains(
                      lot.type,
                    ),
                  )
                  .toList(),
            ),
          );
        },
      );

      if (results == null) {
        return;
      }

      controller.lot.value.extendedProperties = removeNullValues(results);

      if (context.mounted) {
        await _saveLot(
          context,
          service,
        );
      }
    }
  }

  Map<String, dynamic> removeNullValues(Map<String, dynamic>? input) {
    return Map.fromEntries(
      input!.entries.where((entry) => entry.value != null),
    );
  }
}
