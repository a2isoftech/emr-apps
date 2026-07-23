import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/screens/client/client_common.dart';
import 'package:flutter/material.dart';

class ClientWeb extends ClientCommon {
  ClientWeb({super.key});

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onRefresh,
        icon: Icon(Icons.refresh, color: FormAppColors.white),
      ),
      ...super.getActions(context),
    ];
  }

  @override
  Widget? getActionButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.pushNamed(FormsRoutingName.addClient),
      icon: Icon(Icons.add, color: FormAppColors.white),
      label: Text(context.l10n.addClient),
    );
  }

  @override
  bool isWeb() => true;
}
