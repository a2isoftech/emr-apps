import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BasePage extends StatefulWidget with AppBarExtender {
  BasePage({this.controller, super.key});
  final BaseController? controller;
}

abstract class BasePageState<TPage extends BasePage, T extends BaseController>
    extends State<TPage> {
  late T controller;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      controller = Provider.of<T>(context, listen: false);
    } else {
      controller = widget.controller! as T;
    }
    controller.addListener(onChangeDetected);
  }

  @override
  void dispose() {
    try {
      controller.removeListener(onChangeDetected);
    } catch (e) {
      // ignored
    }
    super.dispose();
  }

  void onChangeDetected() {
    setState(() {});
  }
}
