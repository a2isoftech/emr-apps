import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DummyMenuData {
  DummyMenuData(this.section, this.icon, this.name, this.path);
  final String section;
  final IconData icon;
  final String path;
  final String name;

  static List<DummyMenuData> getTestRoutes() {
    return [
      DummyMenuData('One', FontAwesomeIcons.link.data, 'Home', '/'),
      DummyMenuData('One', FontAwesomeIcons.link.data, 'A', '/one/a'),
      DummyMenuData('One', FontAwesomeIcons.link.data, 'B', '/one/b'),
      DummyMenuData('One', FontAwesomeIcons.link.data, 'C', '/one/c'),
      DummyMenuData('Two', FontAwesomeIcons.link.data, 'D', '/two/d'),
      DummyMenuData('Two', FontAwesomeIcons.link.data, 'E', '/two/e'),
      DummyMenuData('Two', FontAwesomeIcons.link.data, 'F', '/two/f'),
    ];
  }
}
