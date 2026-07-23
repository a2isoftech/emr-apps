import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AllowedYardInformation extends EmrTabBarVerticalViewCard {
  AllowedYardInformation({
    required super.title,
    required ManagePublicationsController controller,
    super.key,
  }) : super(
         child: ValueListenableBuilder(
           valueListenable: controller.data.newPublication,
           builder: (context, value, _) {
             if (value == null || value.key.isEmpty) {
               return const SizedBox.shrink();
             }

             return Column(
               children: [
                 AllowedGrid(
                   allowedEntries: controller.data.allowedYards,
                   columnNames: [context.l10n.code, context.l10n.description],
                   allowSelectAll: true,
                 ),
               ],
             );
           },
         ),
       );
}
