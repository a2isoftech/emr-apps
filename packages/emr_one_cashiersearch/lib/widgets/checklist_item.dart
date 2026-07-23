import 'package:emr_one_cashiersearch/common/colors.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class ChecklistItem extends StatelessWidget {
  const ChecklistItem({
    required this.label,
    required this.isSuccess,
    this.onTap,
    this.flex = 1,
    super.key,
  });

  final bool isSuccess;
  final String label;
  final void Function()? onTap;
  final int flex;

  @override
  Widget build(BuildContext context) => Expanded(
        flex: flex,
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: Insets.gutter / 2,
                  right: Insets.gutter / 2,
                ),
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CashierSearchColors.foreground,
                      ),
                      borderRadius: BorderRadius.circular(Insets.gutter / 4),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: Insets.gutter / 8,
                      horizontal: (Insets.gutter / 4) + 2,
                    ),
                    child: Align(
                      child: Text(
                        label.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Insets.gutter / 8,
                right: 0,
                child: Container(
                  width: Insets.gutter,
                  height: Insets.gutter,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSuccess
                        ? CashierSearchColors.green
                        : CashierSearchColors.red,
                  ),
                  child: Icon(
                    isSuccess ? Icons.done : Icons.cancel,
                    size: 15,
                    color: CashierSearchColors.background,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
