import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/material.dart';

class TicketDetailsScreen extends StatefulWidget {
  const TicketDetailsScreen({required this.ticketId, super.key});

  final String ticketId;

  @override
  State<TicketDetailsScreen> createState() => _TicketDetailsScreenState();
}

class _TicketDetailsScreenState extends State<TicketDetailsScreen> {
  late final TicketDetailsController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TicketDetailsController(context.coreApi);

    ticketFuture = _controller.loadTicketDetails(widget.ticketId).then((
      result,
    ) {
      _controller.model?.location.addListener(_controller.locationChanged);

      return result;
    });
  }

  @override
  void dispose() {
    _controller.model?.location.removeListener(_controller.locationChanged);

    super.dispose();
  }

  late Future<GraphQLResponse<TicketDetailsFormData>> ticketFuture;

  @override
  Widget build(
    BuildContext context,
  ) => FutureBuilder<GraphQLResponse<TicketDetailsFormData>>(
    future: ticketFuture,
    builder: (context, asyncSnapshot) {
      if (asyncSnapshot.connectionState != ConnectionState.done) {
        return const Center(child: CircularProgressIndicator());
      }

      if (asyncSnapshot.data == null || asyncSnapshot.data!.hasErrors()) {
        return Center(child: Text(context.l10n.errSomethingWentWrong));
      }

      final model = asyncSnapshot.data!.data!;

      return Column(
        children: [
          Row(
            children: [Expanded(child: TicketDetailsHeader(model: model))],
          ),
          Expanded(
            child: Form(
              key: _controller.formKey,
              child: EmrTabBarVerticalView(
                onCancel: Navigator.of(context).pop,
                onSave: model.canEdit.value ? _save : null,
                children: [
                  DetailsCard(
                    context,
                    title: context.l10n.details,
                    model: model,
                  ),
                  HaulageCard(
                    context,
                    title: context.l10n.haulage,
                    model: model,
                  ),
                  ImportExportCard(
                    context,
                    title:
                        '${context.l10n.import} / '
                        '${context.l10n.export} / '
                        '${context.l10n.other}',
                    model: model,
                  ),
                  CommentsCard(
                    context,
                    title: context.l10n.comments,
                    model: model,
                  ),
                  DeductionsCard(
                    context,
                    title: 'Deductions',
                    deductions: model.deductions,
                  ),
                  LinesCard(context, title: context.l10n.lines, model: model),
                  MediaCard(context, title: context.l10n.media, model: model),
                  HistoryCard(
                    context,
                    title: context.l10n.history,
                    model: model,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    },
  );

  Future<void> _save() async {
    if (_controller.formKey.currentState?.validate() == false) {
      await EmrModal.showMessageBar(
        context,
        context.l10n.correctTheValidationErrors,
        messageType: MessageBarTypes.error,
      );

      return;
    }

    await EmrModal.showMessageBar(context, 'The form is valid.');
  }
}
