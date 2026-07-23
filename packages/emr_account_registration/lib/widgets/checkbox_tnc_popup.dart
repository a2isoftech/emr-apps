import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class CheckboxTncPopup extends StatelessWidget {
  const CheckboxTncPopup({
    required this.initialValue,
    required this.tncTitle,
    required this.tncBody,
    required this.tncCheckBoxText,
    required this.onAgree,
    this.titleStyle,
    this.indicateRequired,
    super.key,
  });

  final bool? initialValue;
  final String tncTitle;
  final String tncBody;
  final String tncCheckBoxText;
  final void Function({bool? val}) onAgree;
  final TextStyle? titleStyle;
  final bool? indicateRequired;

  void _showPopup(BuildContext context, ThemeData theme) {
    final (isPhone, _) = context.getScreenFacts();

    final screenWidth = context.screenWidth();
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        var agree = false;
        return AlertDialog(
          contentPadding: const EdgeInsets.all(Insets.gutter),
          content: SizedBox(
            width: isPhone ? screenWidth : screenWidth / 2,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  Text(
                    tncTitle,
                    style: titleStyle ?? theme.textTheme.labelSmall,
                  ),
                  const SizedBox(height: Insets.gutter),
                  HtmlWidget(tncBody),
                  const SizedBox(height: Insets.gutter),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {
                          agree = value ?? false;
                          if (agree) {
                            onAgree(val: agree);
                            Navigator.of(context).pop();
                          }
                        },
                      ),
                      Expanded(
                        child: Text(
                          tncCheckBoxText,
                          style: theme.textTheme.labelSmall,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Checkbox(
      value: initialValue,
      side: indicateRequired ?? false
          ? BorderSide(color: Colors.red, width: 1)
          : null,
      onChanged: (checked) {
        if (checked ?? true) {
          _showPopup(context, theme);
        } else {
          onAgree(val: false);
        }
      },
    );
  }
}
