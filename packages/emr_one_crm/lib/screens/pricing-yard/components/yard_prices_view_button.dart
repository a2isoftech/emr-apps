import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class YardPricesViewButton extends StatefulWidget {
  const YardPricesViewButton({
    required this.description,
    required this.icon,
    required this.selected,
    required this.onTap,
    super.key,
  });

  final String description;
  final FaIconData icon;
  final bool Function() selected;
  final void Function()? onTap;

  @override
  State<YardPricesViewButton> createState() => YardPricesViewButtonState();
}

class YardPricesViewButtonState extends State<YardPricesViewButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(Insets.gutter * 5, Insets.gutter * 3),
      child: Material(
        color: EmrColours.primaryBlue,
        child: InkWell(
          splashColor: EmrColours.primaryWhite,
          onTap: widget.onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FaIcon(
                widget.icon,
                color: widget.selected()
                    ? EmrColours.primaryWhite
                    : EmrColours.primaryWhite.withAlpha(128),
              ),
              Text(
                widget.description,
                style: TextStyle(
                  color: widget.selected()
                      ? EmrColours.primaryWhite
                      : EmrColours.primaryWhite.withAlpha(128),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
