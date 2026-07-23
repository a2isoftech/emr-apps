import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:signals/signals_flutter.dart';

class SelectTicketDialog extends StatefulWidget {
  const SelectTicketDialog({
    required this.service,
    super.key,
    void Function(BuildContext context, TicketInfo ticket)? onPressed,
  }) : onPressed = onPressed ?? _defaultOnPressed;

  static void _defaultOnPressed(BuildContext context, TicketInfo ticket) {
    Navigator.of(context).pop(ticket);
  }

  final void Function(BuildContext context, TicketInfo ticket) onPressed;
  final YardLogisticsService service;

  @override
  State<SelectTicketDialog> createState() => _SelectTicketDialogState();
}

class _SelectTicketDialogState extends State<SelectTicketDialog> {
  final delay = signal(200);
  late final _futureSignal = futureSignal(_future);
  late TextEditingController searchController;
  String search = '';

  Future<List<TicketInfo>> _future() async {
    await Future<void>.delayed(Duration(milliseconds: delay.value));

    final data = await widget.service.fetchTicketsByYardCode(
      widget.service.defaultYardCode,
      search.isNotEmpty ? search : null,
    );

    return data.data!;
  }

  @override
  void initState() {
    super.initState();

    searchController = TextEditingController();
    searchController.addListener(() {
      if (searchController.text != search) {
        search = searchController.text;
        _futureSignal.refresh();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: context.l10n.search,
              prefixIcon: const Icon(Icons.search),
            ),
          ),
        ),
        const SizedBox(height: Insets.gutter),
        Expanded(
          child: Watch((context) {
            return _futureSignal.value.map(
              data: (value) {
                return SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      final ticket = value[index];
                      return ListTile(
                        isThreeLine: true,
                        title: Text(ticket.ticketNumber.toString()),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${ticket.partyName} '
                              '(${ticket.partyAccountNo})',
                            ),
                            Text(
                              _getDate(context, ticket.ticketDate),
                              style: EmrOneConstants.kOpenSans12TextStyle,
                            ),
                          ],
                        ),
                        onTap: () => widget.onPressed(context, ticket),
                      );
                    },
                  ),
                );
              },
              error: (dynamic error) {
                return Center(
                  child: Text(
                    'error:$error',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              },
              loading: () {
                return Center(
                  child: Text(
                    'loading',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              },
              reloading: () {
                return Center(
                  child: Text(
                    'reloading',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              },
              refreshing: () {
                return Center(
                  child: Text(
                    'looking...',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              },
            );
          }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: Text(context.l10n.cancel),
              ),
            ),
          ],
        ),
      ],
    );
  }

  String _getDate(BuildContext context, DateTime? date) {
    final activeLocale = Localizations.localeOf(context);
    final formattedDate = date != null
        ? DateFormat.yMEd(activeLocale.toString())
            .add_jms()
            .format(date.toLocal())
        : '--';
    return formattedDate;
  }
}
