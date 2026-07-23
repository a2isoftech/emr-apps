import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/functions/currency_symbol.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class InspectionImageWithCardInfoWidget extends StatelessWidget {
  const InspectionImageWithCardInfoWidget({
    required this.territory,
    required this.catLocation,
    required this.catClassification,
    required this.onEdit,
    required this.onDelete,
    this.catImage,
    this.sealNumber,
    this.serialNo,
    this.amount,
    super.key,
    this.vehicleCatId = 0,
    this.showImage = false,
  });

  final ElvTerritory territory;
  final String catLocation;
  final String catClassification;
  final void Function()? onEdit;
  final void Function()? onDelete;
  final String? catImage;
  final String? sealNumber;
  final String? serialNo;
  final double? amount;
  final int vehicleCatId;
  final bool showImage;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    return Row(
      children: [
        if (showImage) ...[
          InspectionBorderWidget(
            child: SizedBox(
              width: 100,
              height: 100,
              child: FutureBuilder(
                future: controller.getDocument(
                  documentType: VehicleDocumentEnums.cat,
                  serverImagePath: catImage,
                  vehicleCatId: vehicleCatId,
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
                    Text(catLocation),
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
                    Text(catClassification),
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
                            Text(serialNo ?? ''),
                            const SizedBox(height: Insets.gutter / 1.5),
                            Text(
                              context.l10n.value,
                              style: EmrOneConstants.kSmallTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: Insets.gutter,
                              ),
                            ),
                            Text(
                              '${getCurrencySymbol(TerritoryCodes.uk)}'
                              '''${NumberFormat.decimalPattern(Localizations.localeOf(context).toString()).format(amount)}''',
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
