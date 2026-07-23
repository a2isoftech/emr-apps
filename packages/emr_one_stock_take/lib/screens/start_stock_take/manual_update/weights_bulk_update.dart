import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/screens/start_stock_take/take_weights/location_weight_controller.dart';
import 'package:emr_sharedtypes/extensions/user_extensions.dart';
import 'package:emr_sharedtypes/models/user.dart';
import 'package:emr_sharedtypes/uom/uom_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeightsBulkUpdate extends StatelessWidget {
  const WeightsBulkUpdate({
    required this.userAccessService,
    required this.stockTakeCreatedDate,
    required this.controller,
    super.key,
  });

  final UserAccessService userAccessService;
  final DateTime stockTakeCreatedDate;
  final LocationWeightController controller;
  @override
  Widget build(BuildContext context) {
    final uomService = Provider.of<UomService>(context, listen: false);
    final settingsController =
        Provider.of<BaseSettingsController>(context) as SettingsController;
    final uoms = uomService.getUoms(
      settingsController.territory,
    );

    controller.bulkUpdateUomValue.value = null;
    controller.bulkUpdateWeighedBy.value = null;
    controller.bulkUpdateWeighedDateTime.value = null;

    uoms.remove(Enum$Uom.EA.toUomModel());
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmrPickerFormField<User>(
            labelText: context.l10n.weighedBy,
            items: (query) async {
              final users = await userAccessService.searchUsers(query: query);
              return users.data?.$1 ?? [];
            },
            itemTitleText: (item) => item.displayName,
            itemSubtitleText: (item) => item.emailAddress,
            binding: controller.bulkUpdateWeighedBy,
          ),
          EmrDateFormField(
            labelText: context.l10n.weighedDate,
            binding: controller.bulkUpdateWeighedDateTime,
            firstDate: stockTakeCreatedDate.dateOnly,
            lastDate: DateTime.now(),
          ),
        ],
      ),
    );
  }
}
