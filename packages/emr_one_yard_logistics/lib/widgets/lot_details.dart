import 'dart:io';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/controllers/existing_lot.dart';
import 'package:emr_one_yard_logistics/extensions/extensions.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yl_photostorage.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LotDetails extends StatelessWidget {
  const LotDetails({
    required this.controller,
    required this.uomForView,
    required this.compositionAcronyms,
    super.key,
  });

  final ExistingLotController controller;
  final List<LotCompositionAcronym> compositionAcronyms;
  final Uom uomForView;
  @override
  Widget build(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: Insets.gutter / 2),
              child: FormRow(
                children: [
                  Text(
                    context.l10n.status,
                    style: EmrOneConstants.kSmallestHeadingTextStyle,
                  ),
                  LotCardStatusIcons(
                    lot: controller.lot.value,
                    direction: Axis.horizontal,
                    compositionAcronyms: compositionAcronyms,
                  ),
                ],
              ),
            ),
            FormRow(
              children: [
                LotCardAssessmentIcons(
                  lot: controller.lot.value,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ],
            ),
            FormHeadingRow(
              headings: [
                context.l10n.code,
                controller.lot.value.code,
              ],
            ),
            FormHeadingRow(
              headings: [
                context.l10n.ticket,
                controller.lot.value.ticketInfo.ticketNumber.toString(),
              ],
            ),
            FormHeadingRow(
              headings: [
                'Party',
                controller.lot.value.ticketInfo.partyAccountNo,
              ],
            ),
            FormHeadingRow(
              headings: [
                'Location',
                controller.lot.value.sourceInventoryLocationInfo?.productId
                        .split('/')
                        .last ??
                    '-',
              ],
            ),
            FormHeadingRow(
              headings: [
                'Trade 2 ID',
                controller.lot.value.t2LotNumber ?? '-',
              ],
            ),
            FormRow(
              padding: const EdgeInsets.only(
                top: Insets.gutter / 4,
                bottom: Insets.gutter / 2,
              ),
              children: [
                Text(
                  context.l10n.grossWeight,
                  style: EmrOneConstants.kSmallestHeadingTextStyle,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        controller.lot.value.grossWeightUom == null
                            ? '-'
                            : controller.lot.value.grossWeightUom!
                                .convertWeight(uomForView)
                                .toWeightString(),
                        style: EmrOneConstants.kSmallestHeadingTextStyle
                            .copyWith(overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    if (controller.lot.value.grossWeightUom == null)
                      YlConstants.warningIcon,
                  ],
                ),
              ],
            ),
            FormRow(
              padding: const EdgeInsets.only(
                bottom: Insets.gutter / 2,
              ),
              children: [
                Text(
                  context.l10n.tareWeight,
                  style: EmrOneConstants.kSmallestHeadingTextStyle,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        controller.lot.value.tareWeightUom
                            .convertWeight(uomForView)
                            .toWeightString(),
                        style: EmrOneConstants.kSmallestHeadingTextStyle
                            .copyWith(overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            FormRow(
              padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
              children: [
                Text(
                  'Net Weight',
                  style: EmrOneConstants.kSmallestHeadingTextStyle,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        controller.lot.value.netWeightUom
                            .convertWeight(uomForView)
                            .toWeightString(),
                        style: EmrOneConstants.kSmallestHeadingTextStyle
                            .copyWith(overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    if (controller.lot.value.grossWeightUom == null)
                      YlConstants.warningIcon,
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: Insets.gutter / 2),
              child: FormRow(
                children: [
                  Text(
                    'Contents',
                    style: EmrOneConstants.kSmallestHeadingTextStyle,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          controller.lot.value.type.description,
                          style: EmrOneConstants.kSmallestHeadingTextStyle
                              .copyWith(overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (controller.lot.value.type == LotType.sticks)
              const FormHeadingRow(
                headings: [
                  'Photos',
                ],
              ),
            // Grid of lot images
            if (controller.lot.value.photos != null &&
                controller.lot.value.photos!.isNotEmpty)
              GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: YlConstants.gridCrossAxisCount,
                  crossAxisSpacing: Insets.gutter,
                  mainAxisSpacing: Insets.gutter,
                ),
                itemCount: controller.lot.value.photos!.length,
                itemBuilder: (context, index) {
                  // Try to derive a possible cache hit to save fetching
                  // the image from the cloud
                  final ylPhotoStorage =
                      YlPhotoStorage(appConfig.temporaryDirectory);
                  final cachePossibleHit = ylPhotoStorage.cloudFileNameToCache(
                    controller.lot.value.photos![index],
                  );

                  if (File(cachePossibleHit).existsSync()) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(Insets.gutter / 2),
                      child: TappableImage.localfile(
                        imagePath: cachePossibleHit,
                      ),
                    );
                  } else {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(Insets.gutter / 2),
                      child: TappableImage(
                        imagePath: controller.lot.value.photos![index],
                      ),
                    );
                  }
                },
              ),
            if (controller.lot.value.type == LotType.sticks &&
                (controller.lot.value.photos == null ||
                    controller.lot.value.photos!.isEmpty))
              Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: Row(
                  children: [
                    YlConstants.warningIcon,
                    const SizedBox(width: Insets.gutter / 2),
                    Text(context.l10n.noPhotos),
                  ],
                ),
              ),
            FormHeadingRow(
              headings: [
                context.l10n.comments,
              ],
            ),
            // Grid of lot images
            if (controller.lot.value.comments.isNotEmpty)
              ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.lot.value.comments.length,
                itemBuilder: (context, index) {
                  final comment = controller.lot.value.comments[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: Insets.gutter),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          comment.commentText,
                        ),
                        Row(
                          children: [
                            Text(
                              style: EmrOneConstants.kSmallSubtleTextStyle,
                              '${comment.userName} - ${comment.commentDate}',
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            if (controller.lot.value.comments.isEmpty)
              Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: Row(
                  children: [
                    Text(context.l10n.noComments),
                  ],
                ),
              ),
            FormHeadingRow(
              headings: [
                context.l10n.createdBy,
                if (controller.lot.value.created.userName.isNotEmpty)
                  controller.lot.value.created.userName
                else
                  controller.lot.value.created.userInfoId,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
