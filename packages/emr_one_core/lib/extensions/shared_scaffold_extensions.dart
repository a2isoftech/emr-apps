import 'package:emr_one_core/routing/shared_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

extension SharedScaffoldExtensions on SharedScaffold {
  Widget withMultiProvider(List<SingleChildWidget> providers) =>
      providers.isEmpty
          ? this
          : MultiProvider(providers: providers, child: this);
}
