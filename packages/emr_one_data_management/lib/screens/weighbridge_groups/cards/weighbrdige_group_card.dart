import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/extensions/string_extensions.dart';
import 'package:emr_one_data_management/screens/screens.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class WeighbridgeGroupCard extends EmrTabBarVerticalViewCard {
  WeighbridgeGroupCard({
    required BuildContext context,
    required super.title,
    required WeighbridgeGroupFormData model,
    required bool creating,
    required UserInfoService userInfoService,
    super.key,
  }) : super(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EmrPickerFormField<Yard>(
                labelText: context.l10n.yard,
                items: (query) async {
                  final yards =
                      await context.coreApi.referenceData.yards(query);
                  final userYardCodes = userInfoService.userInfo.depots
                      .map((e) => e.yardCode!)
                      .toSet();

                  return yards
                      .where(
                        (yard) => userYardCodes.contains(yard.yardCode),
                      )
                      .toList();
                },
                itemTitleText: (item) => item.yardCode,
                binding: model.yard,
                enabled: ValueNotifier(creating),
                validator: Validators.required,
              ),
              EmrMultiPickerFormField<String>(
                labelText: context.l10n.weighbridgeGroups,
                items: (query) async {
                  final inputValue = query.trim();

                  if (inputValue.isEmpty || !inputValue.validateName()) {
                    return Future.value([]);
                  }

                  return Future.value([query]);
                },
                itemTitleText: (item) => item,
                binding: model.group,
                validator: (groups) {
                  final requiredValidatorResult = Validators.required(groups);

                  if (requiredValidatorResult == null) {
                    final groupsList = groups as List<String>;
                    final invalidValues = groupsList
                        .where((group) => !group.trim().validateName());

                    if (invalidValues.isNotEmpty) {
                      return '''${context.l10n.onlyLettersNumbersHyphensSpacesAllowed} ${context.l10n.invalid}: (${invalidValues.join(',')})''';
                    }
                  }

                  return requiredValidatorResult;
                },
              ),
            ],
          ),
        );
}
