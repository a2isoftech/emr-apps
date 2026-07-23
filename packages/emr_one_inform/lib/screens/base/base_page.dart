import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/yard_cache.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/inform_bottom_app_bar.dart';
import 'package:emr_one_inform/widgets/yard_future_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BasePage<T extends BaseController> extends StatefulWidget
    with AppBarExtender {
  BasePage({super.key});

  late final T controller;

  final YardCache _yardCache = YardCache(yard: Yard());
  final StateMediator stateMediator = StateMediator();

  Yard get yard => _yardCache.yard;
  void initState(BuildContext context);
  Widget widgetBuilder(BuildContext context);
  Widget? getActionButton(BuildContext context);
  String getTitle(BuildContext context);
  void dispose() {}

  void setState(void Function() func) {
    func();
    controller.reload();
  }

  Widget? getBottomBar(Yard yard) {
    return InformBottomAppBar(yard: yard);
  }

  PreferredSizeWidget? getAppBar(BuildContext context) {
    return defaultAppBar(
      context: context,
      title: getTitle(context),
      actions: getActions(context),
    );
  }

  Widget? pageHeader(BuildContext context) {
    return getPageHeader(
      getTitle(context),
      actionButton: getActionButton(context),
    );
  }

  @override
  bool hideDefaultAppBar() => true;

  @override
  State<BasePage<T>> createState() => _BasePageState<T>();

  /// Build a `String` with the asset code and optionally its name.
  String assetDisplayText(String? assetCode, String? assetName) {
    if (assetCode == null) {
      return '--';
    }

    if (assetName?.isNotEmpty ?? false) {
      return '$assetCode ($assetName)';
    }

    return assetCode;
  }
}

class _BasePageState<T extends BaseController> extends State<BasePage<T>> {
  late final AppConfig appConfig;
  @override
  void initState() {
    super.initState();

    widget.stateMediator.getBuildContext = getBuildContext;
    widget.stateMediator.isMounted = isMounted;

    try {
      widget.controller = Provider.of<T>(context, listen: false);
    } catch (e) {
      //ignored
    }
    widget.controller.addListener(onChangeDetected);

    appConfig = Provider.of<AppConfig>(context, listen: false);
    WidgetsBinding.instance
        .addPostFrameCallback((_) => widget.initState(context));
  }

  @override
  void dispose() {
    try {
      widget.controller.removeListener(onChangeDetected);
    } catch (e) {
      // ignored
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YardFutureBuilder(
      widgetBuilder: (yard) {
        widget._yardCache.yard = yard;
        final pageHeader = widget.pageHeader(context);
        return SafeArea(
          child: Scaffold(
            appBar: widget.getAppBar(context),
            body: Column(
              children: [
                if (pageHeader != null) pageHeader,
                Flexible(
                  child: widget.widgetBuilder(context),
                ),
              ],
            ),
            bottomNavigationBar: widget.getBottomBar(yard),
            floatingActionButton:
                appConfig.isWeb ? null : widget.getActionButton(context),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
          ),
        );
      },
    );
  }

  void onChangeDetected() {
    setState(() {});
  }

  BuildContext getBuildContext() {
    return context;
  }

  bool isMounted() {
    return mounted;
  }
}

class StateMediator {
  StateMediator({this.getBuildContext, this.isMounted});

  BuildContext Function()? getBuildContext;
  bool Function()? isMounted;
}
