import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class ViewFilterCard extends StatelessWidget {
  const ViewFilterCard({
    required this.btnClick,
    this.header,
    this.bodyValue,
    this.isSelected,
    super.key,
  });

  final void Function(String?)? btnClick;
  final String? header;
  final String? bodyValue;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    {
      return GestureDetector(
        onTap: btnClick == null ? null : () => btnClick!(header),
        child: Container(
          height: 150,
          width: 125,
          decoration: (isSelected ?? false)
              ? Theme.of(context)
                  .extension<EOBrandTheme>()!
                  .yardLiveLoadsCardFilterSelectedDecoration
              : Theme.of(context)
                  .extension<EOBrandTheme>()!
                  .yardLiveLoadsCardFilterUnSelectedDecoration,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                header ?? '',
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .yardLiveLoadsCardFilterHeaderTextStyle,
              ),
              Text(
                bodyValue ?? '',
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .yardLiveLoadsCardFilterBodyTextStyle,
              ),
              ElevatedButton(
                onPressed: btnClick == null ? null : () => btnClick!(header),
                style: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .yardLiveLoadsCardFilterBtnStyle,
                child: Text(
                  (isSelected ?? false)
                      ? context.l10n.yardLiveLoadsViewCardFilterBtnTextViewing
                      : context.l10n.yardLiveLoadsViewCardFilterBtnTextView,
                  style: (isSelected ?? false)
                      ? Theme.of(context)
                          .extension<EOBrandTheme>()!
                          .yardLiveLoadsCardFilterBtnSelectedTextStyle
                      : Theme.of(context)
                          .extension<EOBrandTheme>()!
                          .yardLiveLoadsCardFilterBtnUnSelectedTextStyle,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
