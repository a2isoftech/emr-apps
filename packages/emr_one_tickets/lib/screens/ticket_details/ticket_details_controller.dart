import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/widgets.dart';

class TicketDetailsController {
  TicketDetailsController(this.coreApi);

  final CoreApiService coreApi;

  final formKey = GlobalKey<FormState>();

  TicketDetailsFormData? model;

  Future<GraphQLResponse<TicketDetailsFormData>> loadTicketDetails(
    String id,
  ) async => documentNodeQueryGetTicketDetailsById
      .execute(
        coreApi.httpClient,
        Query$GetTicketDetailsById.fromJson,
        variables: Variables$Query$GetTicketDetailsById(id: id),
      )
      .then((response) {
        if (response.hasErrors() ||
            response.data == null ||
            response.data?.ticket == null) {
          EmrLogger.error(
            response.errors!.map((err) => '$err').join('\n'),
            source: 'emr_one_tickets.TicketDetailsController.loadTicketDetails',
            params: {'ticketId': id},
          );

          return GraphQLResponse<TicketDetailsFormData>(
            errors: response.errors,
          );
        }

        model = TicketDetailsFormData.fromData(response.data!.ticket);

        return GraphQLResponse<TicketDetailsFormData>(data: model);
      });

  /// A handler for when the location field changes, to update the account
  /// details in the header widget.
  void locationChanged() {
    if (model == null ||
        model!.location.value == null ||
        model!.location.value!.metadata.containsKey(
              PickerItemMetadataKeys.accountCode,
            ) ==
            false ||
        model!.location.value!.metadata.containsKey(
              PickerItemMetadataKeys.accountName,
            ) ==
            false) {
      EmrLogger.error(
        'Location picker item metadata is missing account code or name.',
        source: 'emr_one_tickets.TicketDetailsController.locationChanged',
      );

      return;
    }

    model!.account.value = PickerItem(
      model!.location.value!.metadata[PickerItemMetadataKeys.accountCode]!
          as String,
      model!.location.value!.metadata[PickerItemMetadataKeys.accountName]!
          as String,
    );
  }
}
