import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:flutter/material.dart';

class AddMoreButton extends StatelessWidget {
  const AddMoreButton({
    super.key,
    this.onTap,
    this.width,
    this.height,
    this.isActive,
  });
  final VoidCallback? onTap;
  final bool? isActive;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        onTap?.call();
      },
      child: ThumbnailWidget(
        height: height,
        width: width,
        color: (isActive ?? false) ? Theme.of(context).focusColor : null,
        child: const Icon(
          Icons.add,
          size: LayoutConstants.iconSizeLarge,
        ),
      ),
    );
  }
}
