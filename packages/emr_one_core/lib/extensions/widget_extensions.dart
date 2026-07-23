import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/scaffold/multi_provider_with_app_bar_extender.dart';
import 'package:flutter/widgets.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

extension SharedScaffoldExtensions on Widget {
  Widget withMultiProvider(List<SingleChildWidget> providers) {
    if (this is AppBarExtender) {
      return MultiProviderWithAppBarExtender(
        providers: providers,
        child: this as AppBarExtender,
      );
    }

    return providers.isEmpty
        ? this
        : MultiProvider(providers: providers, child: this);
  }
}
