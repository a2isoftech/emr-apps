import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/models/yard.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/select_yard/select_yard_native.dart';
import 'package:emr_one_inform/screens/select_yard/select_yard_web.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class YardFutureBuilder extends StatefulWidget {
  const YardFutureBuilder({
    required this.widgetBuilder,
    super.key,
  });

  final Widget Function(Yard yard) widgetBuilder;

  @override
  State<YardFutureBuilder> createState() => _YardFutureBuilderState();
}

class _YardFutureBuilderState extends State<YardFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    final userPreferencesRepository =
        Provider.of<IUserPreferencesRepository>(context, listen: false);
    final appConfig = Provider.of<AppConfig>(context, listen: false);
    final yardFuture = userPreferencesRepository.getYard();
    return FutureBuilder<Yard?>(
      future: yardFuture,
      builder: (context, snapshot) {
        if (!snapshot.hasData &&
            snapshot.connectionState != ConnectionState.done) {
          return showSpinner();
        }
        if (snapshot.data == null &&
            snapshot.connectionState == ConnectionState.done) {
          EmrLogger.info(
            source: 'inform',
            'No yard selected, Navigating to yard selection screen',
          );
          return appConfig.isWeb
              ? SelectYardWeb(
                  canNavigateBack: false,
                  onSave: () => setState(() {}),
                )
              : SelectYardNative(
                  canNavigateBack: false,
                  onSave: () => setState(() {}),
                );
        }
        return widget.widgetBuilder(snapshot.data!);
      },
    );
  }
}
