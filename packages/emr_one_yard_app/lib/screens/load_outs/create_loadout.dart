import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/controllers/load_out_controller.dart';
import 'package:emr_one_yard_app/models/ticket/load_out_ticket.dart';
import 'package:flutter/material.dart';

class CreateLoadOut extends StatelessWidget {
  CreateLoadOut({required this.controller, super.key});
  final LoadOutController controller;

  final containerSizeTitles = {
    Enum$ContainerSize.TWENTY_FOOT: '20 Foot',
    Enum$ContainerSize.FORTY_FOOT: '40 Foot',
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: Insets.gutter / 2),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EmrPickerFormField<LoadOutTicket>(
                items: (pattern) async {
                  final tickets = await controller.loadTickets(pattern);
                  return tickets
                      .map(
                        (s) => LoadOutTicket(
                          ticketId: s.id,
                          accountName: s.account.name,
                          accountNumber: s.account.accountNumber,
                          ticketNumber: s.ticketNumber,
                          containerNumber: s.containerNumber,
                        ),
                      )
                      .toList();
                },
                itemTitleText: (item) =>
                    '${item.ticketNumber} - ${item.accountNumber} ',
                itemSubtitleText: (item) => item.accountName,
                binding: controller.selectedTicket,
                labelText: context.l10n.ticket,
                validator: Validators.required,
                enabled: controller.enableTicketSearch,
              ),
              const SizedBox(height: Insets.gutter),
              EmrTextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                binding: controller.containerNumber,
                labelText: context.l10n.containerNumber,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.l10n.required;
                  }
                  if (value.length != 11) {
                    return context.l10n.invalidNumber;
                  }
                  return null;
                },
                hintText: 'e.g. AABB1234567',
                enabled: controller.keepEnable,
              ),
              const SizedBox(height: Insets.gutter),
              EmrPickerFormField<Enum$ContainerSize>(
                validator: Validators.required,
                items: (p0) => Future.value(containerSizeTitles.keys.toList()),
                itemTitleText: (p0) => containerSizeTitles[p0]!,
                binding: controller.containerSize,
                labelText: context.l10n.containerSize,
                enabled: controller.keepEnable,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
