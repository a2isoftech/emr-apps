import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class VehicleDetailWidget extends StatelessWidget {
  const VehicleDetailWidget({
    required this.makeVN,
    required this.modelVN,
    required this.yearVN,
    required this.engineSizeVN,
    super.key,
  });

  final ValueNotifier<String?> makeVN;
  final ValueNotifier<String?> modelVN;
  final ValueNotifier<int?> yearVN;
  final ValueNotifier<double> engineSizeVN;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: Insets.gutter / 2,
              left: Insets.gutter * 2,
            ),
            child: Text(
              context.l10n.vehicleDetails,
              style: EmrOneConstants.kSmallHeadingTextStyle,
            ),
          ),
          const SizedBox(height: Insets.gutter / 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Insets.gutter / 2,
            children: [
              Expanded(
                child: EmrTextFormField(
                  labelText: context.l10n.make,
                  binding: makeVN,
                  validator: (value) => Validators.join([
                    Validators.length(value, max: 10),
                    Validators.required(value),
                  ]),
                ),
              ),
              Expanded(
                child: EmrTextFormField(
                  labelText: context.l10n.model,
                  binding: modelVN,
                  validator: (value) => Validators.join([
                    Validators.length(value, max: 100),
                    Validators.required(value),
                  ]),
                ),
              ),
            ],
          ),
          Row(
            spacing: Insets.gutter / 2,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: EmrTextFormField(
                  labelText: context.l10n.year,
                  keyboardType: TextInputType.number,
                  binding: yearVN,
                  validator: (value) => Validators.join([
                    Validators.length(value, min: 4, max: 4),
                    Validators.required(value),
                  ]),
                ),
              ),
              Expanded(
                child: EmrTextFormField(
                  labelText: context.l10n.engineSize,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  inputFormatters: [
                    Localizations.localeOf(context).decimalInputFormatter(),
                  ],
                  binding: engineSizeVN,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
