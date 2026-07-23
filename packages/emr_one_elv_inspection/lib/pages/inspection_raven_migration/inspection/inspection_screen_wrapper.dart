import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/enums/quote_status_enum.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/extensions/exception_message_extension.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/responsive/inspection_screen_wrapper_desktop.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/responsive/inspection_screen_wrapper_mobile.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/responsive/inspection_screen_wrapper_tablet.dart';
import 'package:emr_one_elv_inspection/routing/named_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionScreenWrapper extends StatefulWidget {
  const InspectionScreenWrapper({
    required this.quoteNumber,
    required this.vehicleKey,
    super.key,
  });

  final String quoteNumber;
  final String vehicleKey;

  @override
  State<InspectionScreenWrapper> createState() =>
      _InspectionScreenWrapperState();
}

class _InspectionScreenWrapperState extends State<InspectionScreenWrapper> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(
      context,
      listen: false,
    );
    return FutureBuilder(
      future: controller.getVehicleQuote(widget.quoteNumber, widget.vehicleKey),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final error = snapshot.error;
            var errorMessage = context.l10n.errSomethingWentWrong;

            if (error is Exception) {
              final message = error.exceptionMessage;

              final knownStatuses = QuoteStatusEnum.values
                  .map((x) => x.name)
                  .toList();

              if (knownStatuses.contains(message)) {
                final isAlreadyInspected =
                    message == QuoteStatusEnum.inspected.name;

                errorMessage = isAlreadyInspected
                    ? context.l10n.errInspectionAlreadyCompleted
                    : context.l10n.errQuoteNotConfirmed;
              }
            }
            context.goNamed(
              NamedRoutesElv.elvInspectionFailed,
              extra: errorMessage,
            );
          });

          return const SizedBox.shrink();
        }

        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }

        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < InspectionDeviceTypeConstants.mobile) {
              return const InspectionScreenWrapperMobile();
            } else if (constraints.maxWidth <
                InspectionDeviceTypeConstants.tablet) {
              return const InspectionScreenWrapperTablet();
            } else {
              return const InspectionScreenWrapperDesktop();
            }
          },
        );
      },
    );
  }
}
