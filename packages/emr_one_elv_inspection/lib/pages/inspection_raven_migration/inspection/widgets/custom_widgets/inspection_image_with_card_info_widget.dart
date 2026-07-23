import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_inspection/enums/catalytic_converter_classification_enum.dart';
import 'package:emr_one_elv_inspection/enums/inspection_image_enum.dart';
import 'package:emr_one_elv_inspection/functions/currency_symbol.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_border_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionImageWithCardInfoWidget extends StatelessWidget {
  const InspectionImageWithCardInfoWidget({
    required this.territory,
    required this.catLocation,
    required this.catClassification,
    required this.onEdit,
    required this.onDelete,
    this.imagePath,
    this.showImage = false,
    this.sealNumber,
    this.serialNumber,
    this.catValue,
    super.key,
  });

  final PartLocationEnum catLocation;
  final ElvTerritory territory;
  final CatalyticConverterClassificationEnum catClassification;
  final void Function()? onEdit;
  final void Function()? onDelete;
  final bool showImage;
  final String? imagePath;
  final String? sealNumber;
  final String? serialNumber;
  final double? catValue;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);

    return Row(
      children: [
        if (showImage) ...[
          InspectionBorderWidget(
            child: SizedBox(
              width: 100,
              height: 100,
              child: FutureBuilder(
                future: controller.getDocument(
                  imageType: InspectionImageEnum.catalyticConverter,
                  serverImagePath: imagePath,
                ),
                builder: (context, snapshot) {
                  if (snapshot.connectionState != ConnectionState.done) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.data != null) {
                    return Image.memory(snapshot.data!, fit: BoxFit.fill);
                  }
                  return const SizedBox();
                },
              ),
            ),
          ),
          const SizedBox(width: Insets.gutter / 1.5),
        ],
        Expanded(
          child: SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.location,
                      style: EmrOneConstants.kSmallTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: Insets.gutter,
                      ),
                    ),
                    Text(catLocation.label),
                    const SizedBox(height: Insets.gutter / 1.5),
                    if (territory.requiredSealNumber()) ...[
                      Text(
                        context.l10n.sealNumber,
                        style: EmrOneConstants.kSmallTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: Insets.gutter,
                        ),
                      ),
                      Text(sealNumber ?? ''),
                      const SizedBox(height: Insets.gutter / 1.5),
                    ],
                    Text(
                      context.l10n.catClassification,
                      style: EmrOneConstants.kSmallTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: Insets.gutter,
                      ),
                    ),
                    Text(catClassification.label),
                  ],
                ),
                const SizedBox(width: Insets.gutter),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: territory.requiredSerialNumber()
                        ? [
                            Text(
                              context.l10n.serialNumber,
                              style: EmrOneConstants.kSmallTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: Insets.gutter,
                              ),
                            ),
                            Text(serialNumber ?? ''),
                            const SizedBox(height: Insets.gutter / 1.5),
                            Text(
                              context.l10n.value,
                              style: EmrOneConstants.kSmallTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: Insets.gutter,
                              ),
                            ),
                            Text(
                              formatCurrency(
                                context,
                                territory.currencyCode(),
                                catValue ?? 0,
                              ),
                            ),
                          ]
                        : [],
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: onEdit,
                  icon: const Icon(Icons.edit),
                ),
                if (onDelete != null) ...{
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: onDelete,
                    icon: Icon(
                      Icons.delete,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                },
              ],
            ),
          ),
        ),
      ],
    );
  }
}
