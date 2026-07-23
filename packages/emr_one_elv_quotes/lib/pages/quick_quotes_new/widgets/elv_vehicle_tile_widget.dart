import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ElvVehicleTileWidget extends StatelessWidget {
  const ElvVehicleTileWidget({
    required this.vehicleIdentifier,
    required this.vehicleInfo,
    super.key,
    this.validVehicle = true,
    this.vehicleType,
    this.setBackgroundColor = false,
    this.onTap,
    this.onDelete,
    this.leadingIndex,
  });

  final String vehicleIdentifier;
  final String vehicleInfo;
  final bool validVehicle;
  final String? vehicleType;
  final bool setBackgroundColor;
  final void Function()? onTap;
  final void Function()? onDelete;
  final int? leadingIndex;

  @override
  Widget build(BuildContext context) {
    
    //TODO: Values are static here. Will change in next PR
    return ListTile(
      onTap: onTap,
      tileColor: setBackgroundColor ? Theme.of(context).dividerColor : null,
      leading: leadingIndex == null
          ? null
          : Text(
              leadingIndex.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
      trailing: onDelete == null
          ? null
          : IconButton(
              onPressed: onDelete,
              icon: const Icon(Icons.delete_outline_rounded),
            ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (!validVehicle) ...[
            Align(
              alignment: Alignment.topLeft,
              child: EmrStatusChip(
                text: vehicleType ?? '',
                statusType: StatusType.warning,
              ),
            ),
            const SizedBox(height: Insets.gutter / 2),
          ],
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${context.l10n.vin} : ',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: vehicleIdentifier,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
      subtitle: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '${context.l10n.vehicle} : ',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: vehicleInfo,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
