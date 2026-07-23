import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:flutter/material.dart';

class InspectionFooterButtons extends StatelessWidget {
  const InspectionFooterButtons({
    required this.backText,
    required this.nextText,
    required this.saveText,
    required this.onBack,
    required this.isLoadingNotifier,
    this.onNext,
    this.onSave,
    this.deviceType = DeviceTypeEnum.desktop,
    super.key,
  });

  final String backText;
  final String nextText;
  final String saveText;
  final void Function() onBack;
  final ValueNotifier<bool> isLoadingNotifier;
  final void Function()? onNext;
  final void Function()? onSave;
  final DeviceTypeEnum deviceType;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (onSave != null) ...{
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: OutlinedButton(
              onPressed: onSave,
              style: ButtonStyle(
                side: WidgetStateProperty.all(
                  BorderSide(
                    color: Theme.of(context).primaryColor,
                  ), // red border
                ),
              ),
              child: Text(
                saveText,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        },
        if (deviceType != DeviceTypeEnum.mobile) ...{
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: ElevatedButton(
              onPressed: onBack,
              child: Text(backText),
            ),
          ),
        },
        _bottomButtonWidget(
          child: ValueListenableBuilder(
            valueListenable: isLoadingNotifier,
            builder: (context, loading, child) {
              if (deviceType == DeviceTypeEnum.mobile) {
                return FilledButton(
                  onPressed: loading ? null : onNext,
                  child: _buttonText(context: context, isLoading: loading),
                );
              }
              return ElevatedButton(
                onPressed: loading ? null : onNext,
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Theme.of(context).colorScheme.primary,
                  ),
                  foregroundColor: WidgetStatePropertyAll(
                    Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                child: _buttonText(context: context, isLoading: loading),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _bottomButtonWidget({required Widget child}) {
    if (deviceType == DeviceTypeEnum.mobile) {
      return Expanded(
        child: child,
      );
    }
    return child;
  }

  Widget _buttonText({required BuildContext context, bool isLoading = false}) {
    return isLoading
        ? Row(
            children: [
              SizedBox(
                width: Insets.gutter,
                height: Insets.gutter,
                child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              const SizedBox(
                width: Insets.gutter / 3,
              ),
              Text(nextText),
            ],
          )
        : Text(nextText);
  }
}
