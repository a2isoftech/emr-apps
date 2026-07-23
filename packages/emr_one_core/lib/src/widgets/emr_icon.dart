import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta/meta.dart';

/// This is an internal widget which is used by the menu and tiles to show an
/// icon, whether Font Awesome or otherwise.
@internal
class EmrIcon extends StatelessWidget {
  const EmrIcon(this.icon, {this.size, this.color, super.key});

  final IconData icon;

  final double? size;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (icon.fontPackage == 'font_awesome_flutter') {
      return FaIcon(FaIconData(icon), size: size, color: color);
    }

    return Icon(icon, size: size, color: color);
  }
}
