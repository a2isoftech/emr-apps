import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({
    required this.controller,
    required this.bankAccountNumber,
    super.key,
  });

  final ScanTicketController controller;
  final String? bankAccountNumber;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    final (_, isNotDesktop) = context.getScreenFacts();

    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpacer(),
          Padding(
            padding: isNotDesktop
                ? const EdgeInsets.all(Insets.gutter)
                : const EdgeInsets.fromLTRB(
                    PortalInsets.gutterTimes10,
                    0,
                    PortalInsets.gutterTimes10,
                    0,
                  ),
            child: Container(
              decoration: BoxDecoration(
                color: brandColours.brandColour,
                border: Border.all(
                  color: brandColours.separatorColour!,
                  width: 4,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    Insets.gutter,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  Insets.gutter / 2,
                  Insets.gutter,
                  Insets.gutter / 2,
                  Insets.gutter / 2,
                ),
                child: Column(
                  children: [
                    _checkoutSummary(
                      controller,
                      theme,
                      brandColours,
                    ),
                    dividerRow(colour: theme.primaryColor),
                    _cellWidget(
                      'How would you like to be paid?',
                      textStyle: _textInBrandColor(
                        theme.textTheme.labelLarge,
                        brandColours,
                      ).bold(),
                      textAlign: TextAlign.center,
                    ),
                    verticalSpacer(),
                    _paymentOption(
                      controller,
                      'Same day payment '
                      '(${controller.tickets.first.getCurrencySymbol()}'
                      '${PortalSettings.feeFasterPay} fee)',
                      PortalSettings.paymentMethodSameDayPayment,
                      theme,
                      brandColours,
                      (int? value) => controller.updatePaymentMethod(value!),
                    ),
                    _paymentOption(
                      controller,
                      'Next day payment (free)',
                      PortalSettings.paymentMethodNextDayPayment,
                      theme,
                      brandColours,
                      (int? value) => controller.updatePaymentMethod(value!),
                    ),
                    verticalSpacer(),
                    _paymentTotal(
                      controller,
                      bankAccountNumber ?? '',
                      theme,
                      brandColours,
                    ),
                    dividerRow(
                      colour: theme.primaryColor,
                    ),
                    _termsAndConditions(
                      controller,
                      theme,
                      brandColours,
                      (bool? value) => controller.updateAgreeToTnC(
                        val: value,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          verticalSpacer(),
          colouredButton(
            text: 'Request Payment(s)',
            textColor: brandColours.onBrandColour,
            color: controller.canSubmit()
                ? theme.primaryColor
                : theme.disabledColor,
            onPressed: controller.canSubmit()
                ? () async {
                    await controller.requestPayments();
                  }
                : null,
          ),
        ],
      ),
    );
  }

  static Widget _checkoutSummary(
    ScanTicketController controller,
    ThemeData theme,
    EOBrandTheme eoTheme,
  ) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: Image.asset(
                'assets/images/back.png',
                package: 'emr_one_portal',
                color: eoTheme.onBrandColour,
                height: 15,
              ),
              onPressed: controller.goToScanTicket,
            ),
            const Spacer(),
            Text(
              'Total :  ${controller.tickets.first.getCurrencySymbol()}'
              '${controller.getTotalAsString()}',
              textAlign: TextAlign.start,
              style: _textInBrandColor(theme.textTheme.titleLarge, eoTheme),
            ),
            const Spacer(),
            Text(
              'sample',
              style: TextStyle(color: eoTheme.brandColour),
            ),
          ],
        ),
        Text(
          ' X ${controller.tickets.length} ticket(s)',
          textAlign: TextAlign.start,
          style: _textInBrandColor(
            theme.textTheme.bodyMedium,
            eoTheme,
          ),
        ),
        ...controller.tickets.map(
          (e) => Text(
            '  - ${e.ticketNo} ${e.depot}',
            textAlign: TextAlign.start,
            style: _textInBrandColor(
              theme.textTheme.bodyMedium,
              eoTheme,
            ),
          ),
        ),
      ],
    );
  }

  static TextStyle _textInBrandColor(
    TextStyle? style,
    EOBrandTheme eoTheme,
  ) {
    return style!.copyWith(color: eoTheme.onBrandColour);
  }

  static Widget _cellWidget(
    String content, {
    TextAlign? textAlign = TextAlign.left,
    TextStyle? textStyle,
  }) {
    return Text(content, textAlign: textAlign, style: textStyle);
  }

  static Widget _paymentOption(
    ScanTicketController controller,
    String text,
    int value,
    ThemeData theme,
    EOBrandTheme eoTheme,
    void Function(int?)? onChged,
  ) {
    return Theme(
      data: ThemeData(
        unselectedWidgetColor: theme.primaryColorLight,
      ),
      child: RadioGroup(
        groupValue: controller.selectedPaymentMethod,
        onChanged: onChged!,
        child: RadioListTile(
          fillColor: WidgetStateProperty.all(
            eoTheme.onBrandColour,
          ),
          title: Text(
            text,
            style: TextStyle(
              color: controller.selectedPaymentMethod == value
                  ? Colors.white
                  : theme.primaryColorLight,
            ),
          ),
          value: value,
        ),
      ),
    );
  }

  static Widget _paymentTotal(
    ScanTicketController controller,
    String bankAccountNumber,
    ThemeData theme,
    EOBrandTheme eoTheme,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Insets.gutter,
        right: Insets.gutter,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.announcement,
            color: Colors.white,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: Insets.gutter),
              child: _cellWidget(
                'You will be paid '
                '${controller.tickets.first.getCurrencySymbol()}'
                '${controller.totalPayableMinusFee()} in to your bank '
                'account ending $bankAccountNumber',
                textStyle: _textInBrandColor(
                  theme.textTheme.bodyMedium,
                  eoTheme,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _termsAndConditions(
    ScanTicketController controller,
    ThemeData theme,
    EOBrandTheme eoTheme,
    ValueChanged<bool?>? onChngd,
  ) {
    return Column(
      children: [
        _cellWidget(
          'Terms & Conditions',
          textStyle: _textInBrandColor(
            theme.textTheme.bodyMedium,
            eoTheme,
          ),
        ),
        verticalSpacer(),
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
          ),
          child: _cellWidget(
            'Material is loose unless otherwise specified. I confirm '
            'that I have fulfilled my duty to apply the waste hierarchy as '
            'required by Regulation 12 of the Waste (England and Wales) '
            'Regulation 2011. '
            'I certify that the material above is my own property or '
            'that I have full authority to sell it to you.',
            textAlign: TextAlign.justify,
            textStyle: _textInBrandColor(
              theme.textTheme.bodyMedium,
              eoTheme,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
          ),
          child: _cellWidget(
            'EMR Business hours are 7am - 4pm Monday to Friday and '
            '8am - 11am on Saturday. Payments requested outside '
            'of these hours'
            ' will be processed as per your request the '
            'following business day.',
            textAlign: TextAlign.justify,
            textStyle: _textInBrandColor(
              theme.textTheme.bodyMedium,
              eoTheme,
            ),
          ),
        ),
        verticalSpacer(
          height: Insets.gutter * 2,
        ),
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: CheckboxListTile(
            fillColor: WidgetStateProperty.all(
              eoTheme.onBrandColour,
            ),
            checkColor: eoTheme.brandColour,
            title: const Text(
              ' I accept the terms and conditions',
              style: TextStyle(color: Colors.white),
            ),
            value: controller.agreeToPaymentTerms,
            onChanged: onChngd,
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
      ],
    );
  }
}
