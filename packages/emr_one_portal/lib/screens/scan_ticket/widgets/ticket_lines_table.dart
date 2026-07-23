import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class TicketLinesTable extends StatelessWidget {
  const TicketLinesTable({
    required this.ticket,
    super.key,
  });

  final TicketViewModel ticket;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    final (isPhone, _) = context.getScreenFacts();

    return Column(
      children: [
        Table(
          border: TableBorder.symmetric(
            outside: BorderSide(
              width: 0.5,
              color: theme.highlightColor,
            ),
          ),
          children: [
            TableRow(
              decoration: BoxDecoration(
                color: theme.highlightColor,
              ),
              children: [
                _headerTableCell(
                  'Metal',
                  theme,
                  isPhone: isPhone,
                ),
                if (ticket.showEwcCode()) ...{
                  _headerTableCell(
                    'EWC Code',
                    theme,
                    isPhone: isPhone,
                  ),
                },
                _headerTableCell(
                  'Weight (${ticket.uomFromProvTonnes()})',
                  theme,
                  isPhone: isPhone,
                ),
                _headerTableCell(
                  'Rate / ${ticket.uomFromProvRate()}',
                  theme,
                  isPhone: isPhone,
                ),
                _headerTableCell(
                  'Amount',
                  theme,
                  isPhone: isPhone,
                ),
              ],
            ),
            ...ticket.ticketLines.map(
              (line) => TableRow(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                children: [
                  _tableCell(
                    theme,
                    line.gradeShortName.toString(),
                    leftPadding: 2,
                    isPhone: isPhone,
                  ),
                  if (ticket.showEwcCode()) ...{
                    _tableCell(
                      theme,
                      line.ewcCode.toString(),
                      isPhone: isPhone,
                    ),
                  },
                  _tableCell(
                    theme,
                    line.provTonnes.toString(),
                    isPhone: isPhone,
                  ),
                  _tableCell(
                    theme,
                    line.provRate.toString(),
                    isPhone: isPhone,
                  ),
                  _tableCell(
                    theme,
                    ticket.getCurrencySymbol() + line.provCommValue.toString(),
                    rightPadding: 2,
                    isPhone: isPhone,
                  ),
                ],
              ),
            ),
          ],
        ),
        Table(
          border: TableBorder.symmetric(
            outside: BorderSide(
              width: 0.5,
              color: brandColours.onBrandColour!,
            ),
          ),
          children: [
            TableRow(
              decoration: BoxDecoration(
                color: brandColours.onBrandColour,
              ),
              children: [
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.only(
                      bottom: Insets.gutter / 2,
                      top: Insets.gutter / 2,
                      left: Insets.gutter / 2,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'TOTAL PAYABLE',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.only(
                      bottom: Insets.gutter / 2,
                      top: Insets.gutter / 2,
                      right: Insets.gutter / 2,
                    ),
                    alignment: Alignment.centerRight,
                    child: Text(
                      ticket.getCurrencySymbol() + ticket.totalPayable(),
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  static Widget _headerTableCell(
    String content,
    ThemeData theme, {
    bool isPhone = false,
  }) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.only(
          bottom: Insets.gutter / 2,
          top: Insets.gutter / 2,
        ),
        alignment: Alignment.center,
        child: Text(
          content.toUpperCase(),
          textAlign: TextAlign.justify,
          style: (isPhone
                  ? theme.textTheme.labelSmall
                  : theme.textTheme.labelLarge)!
              .copyWith(
            color: theme.primaryColorLight,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  static Widget _tableCell(
    ThemeData theme,
    String content, {
    double leftPadding = 0,
    double topPadding = Insets.gutter / 2,
    double rightPadding = 0,
    double bottomPadding = Insets.gutter / 2,
    bool isPhone = false,
  }) {
    return TableCell(
      child: Container(
        padding: EdgeInsets.only(
          bottom: bottomPadding,
          top: topPadding,
          left: leftPadding,
          right: rightPadding,
        ),
        alignment: Alignment.center,
        child: Text(
          content.toUpperCase(),
          textAlign: TextAlign.justify,
          style: (isPhone
                  ? theme.textTheme.labelSmall
                  : theme.textTheme.labelLarge)!
              .copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
