import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/screens/form_lists/form_list_common.dart';
import 'package:flutter/material.dart';

class FormListNative extends FormListCommon {
  FormListNative({super.key});

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  bool isWeb() => false;

  @override
  Widget? getActionButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      onPressed: () => context.pushNamed(FormsRoutingName.addList),
      shape: const CircleBorder(),
      backgroundColor: EmrColours.primaryGreen,
      child: Icon(Icons.add, color: FormAppColors.white),
    );
  }
}
