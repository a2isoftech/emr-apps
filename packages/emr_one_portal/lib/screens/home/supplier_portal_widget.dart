import 'dart:collection';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/extenstions/currency_extension.dart';
import 'package:emr_one_portal/screens/home/supplier_portal_controller.dart';
import 'package:emr_one_portal/shared/models/scheduled_payment_model.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class SupplierPortalWidget extends StatelessWidget with FullExtent {
  SupplierPortalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final minDateTime = DateTime.fromMicrosecondsSinceEpoch(0);
    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    return FutureBuilder(
      future: Provider.of<SupplierPortalController>(
        context,
      ).getNextScheduledPayments(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: processingIndicator(),
          );
        }
        final groupedPayments = _groupPaymentsByDate(snapshot.data!);
        if (groupedPayments.isEmpty) {
          groupedPayments[minDateTime] = 0.0;
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: groupedPayments.length,
          itemBuilder: (context, index) {
            final date = groupedPayments.keys.elementAt(index);
            final amount = groupedPayments[date]!;
            final currencySymbol =
                snapshot.data!.firstOrNull?.currency.getCurrencySymbol();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Container(
                    height: 90,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(Insets.gutter),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(Insets.gutter),
                              backgroundColor: brandColours.brandColour,
                              foregroundColor: brandColours.onBrandColour,
                            ),
                            child: const Icon(
                              Icons.credit_card,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(Insets.gutter),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: context.l10n.nextScheduledBACSPayment,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                ),
                              ),
                              Text(
                                _getLocalDate(context, date),
                                style: TextStyle(
                                  color: theme.colorScheme.onPrimaryContainer,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(flex: 150),
                        Padding(
                          padding: const EdgeInsets.all(Insets.gutter),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${currencySymbol ?? ''}'
                                '${amount.toStringAsFixed(2)}',
                                style: theme.primaryTextTheme.headlineLarge!
                                    .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  String _getLocalDate(BuildContext context, DateTime? date) {
    if (date == null || date == DateTime.fromMicrosecondsSinceEpoch(0)) {
      return context.l10n.noScheduledPayments;
    }
    final locale = Localizations.localeOf(context);
    return DateFormat.yMd(locale.toString()).format(date);
  }

  Map<DateTime, double> _groupPaymentsByDate(List<ScheduledPayment> payments) {
    final groupedPayments = SplayTreeMap<DateTime, double>();
    for (final payment in payments) {
      final date = DateTime(
        payment.releaseDate!.year,
        payment.releaseDate!.month,
        payment.releaseDate!.day,
      );
      if (groupedPayments.containsKey(date)) {
        groupedPayments[date] = groupedPayments[date]! + payment.amount;
      } else {
        groupedPayments[date] = payment.amount;
      }
    }
    return groupedPayments;
  }
}
