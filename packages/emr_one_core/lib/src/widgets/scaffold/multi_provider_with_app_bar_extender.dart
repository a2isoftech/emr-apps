import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

@internal
class MultiProviderWithAppBarExtender extends StatelessWidget
    with AppBarExtender {
  const MultiProviderWithAppBarExtender({
    required this.providers,
    required this.child,
    super.key,
  });

  final AppBarExtender child;

  final List<SingleChildWidget> providers;

  @override
  Widget build(BuildContext context) =>
      MultiProvider(providers: providers, child: child);

  @override
  List<Widget> getActions(BuildContext context) => child.getActions(context);

  @override
  bool hideDefaultAppBar() => child.hideDefaultAppBar();
}
