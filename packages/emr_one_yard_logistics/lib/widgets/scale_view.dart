import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/scales/emr_scale_controller.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ScaleView extends StatefulWidget {
  const ScaleView({
    required this.scale,
    required this.service,
    super.key,
  });

  final YardLogisticsService service;
  final Scale scale;

  @override
  State<ScaleView> createState() => _ScaleViewState();
}

class _ScaleViewState extends State<ScaleView> {
  late EmrScaleController _scaleController;
  final Signal<bool> _isFetchingArchivedWeight = Signal<bool>(false);

  @override
  void initState() {
    super.initState();

    _scaleController = EmrScaleController(
      scale: widget.scale,
    );
    _scaleController.initialise();
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                _scaleController.weightTaken.watch(context) == null
                    ? '---'
                    : UomValue.fromValue(
                        _scaleController.weightTaken.value?.value ?? 0,
                        Uom.fromCode(
                          _scaleController.weightTaken.value?.uomCode ?? 'mt',
                        ),
                      ).toWeightString(),
                style: EmrOneConstants.kOpenSans18BoldTextStyle.copyWith(
                  fontSize: 48,
                  color: _scaleController.isSteady.watch(context)
                      ? Colors.green
                      : Colors.red,
                ),
              ),
              const SizedBox(height: Insets.gutter),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop();
                    },
                    child: Text(context.l10n.cancel),
                  ),
                  ElevatedButton(
                    onPressed: _scaleController.isSteady.watch(context) &&
                            !_isFetchingArchivedWeight.watch(context)
                        ? () async {
                            _isFetchingArchivedWeight.value = true;

                            final weight = await widget.service
                                .getArchivedWeight(widget.scale.url,
                                 widget.scale.assetCode,
                                 );

                            _isFetchingArchivedWeight.value = false;

                            if (context.mounted && weight.success == false) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Error getting weight: ${weight.message}',
                                  ),
                                ),
                              );
                              return;
                            }

                            if (context.mounted) {
                              Navigator.of(context, rootNavigator: true)
                                  .pop<WeightCapture>(
                                WeightCapture(
                                  uomValue: UomValue.fromValue(
                                    weight.data!.value!,
                                    Uom.fromCode(weight.data!.uomCode!),
                                  ),
                                  weighbridgeId: widget.scale.name,
                                ),
                              );
                            }
                          }
                        : null,
                    child: _isFetchingArchivedWeight.watch(context)
                        ? const Text('Fetching...')
                        : Text(context.l10n.ok),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
