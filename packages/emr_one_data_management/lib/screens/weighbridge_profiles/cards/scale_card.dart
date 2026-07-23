import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeighbridgeScaleCard extends EmrTabBarVerticalViewCard {
  WeighbridgeScaleCard({
    required BuildContext context,
    required super.title,
    required WeighbridgeScaleData model,
    required void Function(WeighbridgeScaleData) deleteScale,
    required void Function(WeighbridgeScaleData) addCamera,
    required void Function(WeighbridgeScaleCameraData) deleteCamera,
    super.key,
  }) : super(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder(
                valueListenable: model.name,
                builder: (_, __, ___) {
                  return WeighbridgeProfileSectionHeader(
                    iconData: FontAwesomeIcons.scaleBalanced,
                    text: model.name.value,
                    onDelete: () => deleteScale(model),
                  );
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrTextFormField(
                      labelText: context.l10n.scaleName,
                      binding: model.name,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) => Validators.join([
                        Validators.required(value),
                        if (value?.validateName() ?? false)
                          null
                        else
                          context.l10n.onlyLettersNumbersHyphensSpacesAllowed,
                      ]),
                    ),
                  ),
                  const SizedBox(width: Insets.gutter),
                  Expanded(
                    child: EmrTextFormField(
                      labelText: context.l10n.scaleUrl,
                      binding: model.url,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) => Validators.join([
                        Validators.required(value),
                        Validators.url(value),
                      ]),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrTextFormField(
                      labelText: context.l10n.assetCode,
                      binding: model.assetCode,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: Validators.required,
                    ),
                  ),
                  const SizedBox(width: Insets.gutter),
                  Expanded(
                    child: EmrTextFormField(
                      labelText: context.l10n.scaleNumber,
                      hintText: 'e.g. 1',
                      binding: model.scaleNumber,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) => Validators.join([
                        Validators.required(value),
                        Validators.integer(value, min: 1),
                      ]),
                    ),
                  ),
                ],
              ),
              ValueListenableBuilder<List<WeighbridgeScaleCameraData>>(
                valueListenable: model.cameras,
                builder: (context, cameras, _) {
                  return WeighbridgeScaleCameraCards(
                    title: context.l10n.cameras,
                    model: model,
                    addCamera: addCamera,
                    deleteCamera: deleteCamera,
                  );
                },
              ),
            ],
          ),
        );
}
