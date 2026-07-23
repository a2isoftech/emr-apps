import 'package:flutter/material.dart';

mixin AppBarExtender on Widget {
  List<Widget> getActions(BuildContext context) => [];

  bool hideDefaultAppBar() => false;
}
