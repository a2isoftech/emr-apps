import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TagChip extends StatelessWidget {
  const TagChip({
    required this.description,
    super.key,
    this.onDeleted,
    this.leading,
    this.backgroundColour,
    this.foregroundColour,
  });

  final String description;
  final void Function()? onDeleted;
  final Widget? leading;
  final Color? backgroundColour;
  final Color? foregroundColour;

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 4,
      avatar: leading,
      shape: const StadiumBorder(side: BorderSide()),
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(4),
      // ),
      label: Text(
        description,
        style: TextStyle(
          color: foregroundColour ??
              Theme.of(context).colorScheme.onSecondaryContainer,
        ),
      ),
      deleteIcon: Icon(
        Icons.cancel,
        color: foregroundColour,
      ),
      backgroundColor:
          backgroundColour ?? Theme.of(context).colorScheme.secondaryContainer,
      onDeleted: onDeleted,
    );
  }

  static SvgPicture getTagIcon(double size) {
    return SvgPicture.asset(
      height: size,
      width: size,
      'assets/tag-icon.svg',
      fit: BoxFit.scaleDown,
      alignment: Alignment.topLeft,
      package: 'emr_one_crm',
    );
  }

  static SvgPicture getMultipleTagIcon(double size) {
    return SvgPicture.asset(
      height: size,
      width: size * 2,
      'assets/tag-icon-multiple.svg',
      fit: BoxFit.scaleDown,
      alignment: Alignment.topLeft,
      package: 'emr_one_crm',
    );
  }

  static Color? getTagBackgroundColourById(int id) {
    switch (id) {
      case 2: // protect increase
        return const Color.fromARGB(255, 33, 150, 242);
      case 3: // protect decrease
        return const Color.fromARGB(255, 64, 80, 181);
      case 5: // haulage kicker
        return const Color.fromARGB(255, 254, 85, 32);
      case 6: // good quality
        return const Color.fromARGB(255, 139, 194, 75);
      case 7: // bad quality
        return const Color.fromARGB(255, 0, 152, 136);
    }
    return Colors.red;
  }

  static Color? getTagForegroundColourById(int id) {
    switch (id) {
      case 3: // protect decrease
      case 2: // protect increase
      case 7: // bad quality
        return Colors.white;
      case 6: // good quality
        return Colors.black;
      case 5: // haulage kicker
        return Colors.white;
    }
    return Colors.white;
  }
}
