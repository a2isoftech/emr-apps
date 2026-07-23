import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class DismantlingHeader extends StatefulWidget {
  const DismantlingHeader({
    required this.title,
    this.subTitle,
    super.key,
  });

  final Widget title;
  final Widget? subTitle;

  @override
  State<DismantlingHeader> createState() => _DismantlingHeaderState();
}

class _DismantlingHeaderState extends State<DismantlingHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: widget.subTitle == null
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      widget.title,
                      if (widget.subTitle != null) ...{
                        widget.subTitle!,
                      },
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
