import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/controllers/ticket_details_controller.dart';
import 'package:emr_one_yard_app/extensions/ticket_extensions.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:emr_one_yard_app/models/ticket/comment_model.dart';
import 'package:emr_one_yard_app/services/yard_ticket_service.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class DiscrepantDetailsController {
  DiscrepantDetailsController({
    required this.service,
    required this.ticket,
    required this.defaultYard,
    required this.lineNumber,
    required this.ticketDetailsController,
    required this.userName,
  }) {
    line = ticket.activeLines.firstWhere((s) => s.lineNumber == lineNumber);
    comments = line.inspectionDetails?.comments
            .map((c) => c.mapCommentModel())
            .toList() ??
        [];
  }
  final YardTicketService service;
  final String userName;
  final TicketDetailsController ticketDetailsController;
  final Query$GetTicketDetails$ticket ticket;
  final int lineNumber;
  late Query$GetTicketDetails$ticket$lines line;
  late final List<CommentModel> comments;
  final String defaultYard;
  Future<List<Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes>>
      loadTicketDiscrepantTypes() {
    return service.getTicketDiscrepantTypes();
  }

  final showLoader = signal(false);

  final commentInput = ValueNotifier<String?>(null);

  Future<
      (
        String localDir,
        String token,
        List<Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes>
      )> getInitialData() async {
    return (
      await MediaHelper.getLocalFolder(ticket.getTicketDirName()),
      await FirebaseLogin.getToken(),
      await service.getTicketDiscrepantTypes()
    );
  }
}
