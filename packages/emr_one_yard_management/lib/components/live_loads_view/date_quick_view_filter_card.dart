import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class DateQuickViewFilterCard extends StatelessWidget {
  const DateQuickViewFilterCard({
    required this.title,
    this.onClick,
    this.isSelected,
    super.key,
  });

  final String? title;
  final bool? isSelected;

  final void Function(String?)? onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.all(5),
      child: OutlinedButton(
        onPressed: () => onClick == null ? null : onClick!(title),
        style: (isSelected ?? false)
            ? Theme.of(context)
                .extension<EOBrandTheme>()!
                .yardLiveLoadsBtnFilterSelectedBtnStyle
            : Theme.of(context)
                .extension<EOBrandTheme>()!
                .yardLiveLoadsBtnFilterUnSelectedBtnStyle,
        child: Text(
          title!,
          style: TextStyle(
            fontWeight:
                isSelected ?? false ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
