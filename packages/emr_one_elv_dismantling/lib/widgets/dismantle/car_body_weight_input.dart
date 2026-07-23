import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_dismantling/models/weight.dart';
import 'package:emr_one_elv_dismantling/widgets/dismantle/car_body_suffix_icon.dart';
import 'package:emr_one_elv_dismantling/widgets/dismantle/dismantle_input_field.dart';
import 'package:flutter/material.dart';

class CarBodyWeightInput extends StatefulWidget {
  const CarBodyWeightInput({
    required this.carBodyNetWeight,
    required this.onCarNetWeightChange,
    required this.enabled,
    super.key,
  });

  final Weight carBodyNetWeight;
  final void Function(String) onCarNetWeightChange;
  final bool enabled;

  @override
  State<CarBodyWeightInput> createState() => _CarBodyWeightInputState();
}

class _CarBodyWeightInputState extends State<CarBodyWeightInput> {
  late TextEditingController carBodyController;

  @override
  void initState() {
    super.initState();
    carBodyController =
        TextEditingController(text: widget.carBodyNetWeight.value.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.takeWeight,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: Insets.gutter / 2),
        DismantleInputField(
          controller: carBodyController,
          label: '${context.l10n.netWeight}:',
          keyBoardType: const TextInputType.numberWithOptions(
            decimal: true,
          ),
          allowInputAsDecimalOnly: true,
          suffixIcon: CarBodySuffixIcon(
            controller: carBodyController,
            uomCode: widget.carBodyNetWeight.uomCode,
          ),
          onChanged: widget.onCarNetWeightChange,
          enabled: widget.enabled,
        ),
      ],
    );
  }
}
