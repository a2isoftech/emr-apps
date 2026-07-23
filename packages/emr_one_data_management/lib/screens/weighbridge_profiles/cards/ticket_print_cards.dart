import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/screens.dart';
import 'package:flutter/material.dart';

class WeighbridgeTicketPrintCards extends EmrTabBarVerticalViewCard {
  WeighbridgeTicketPrintCards({
    required super.title,
    required ValueNotifier<List<WeighbridgeProfileTicketPrintData>>
        ticketPrints,
    required ValueNotifier<List<String>> ticketPrintTemplates,
    required void Function() addTicketPrint,
    required void Function(WeighbridgeProfileTicketPrintData) deleteTicketPrint,
    super.key,
  }) : super(
          child: _WeighbridgeTicketPrintCardStateful(
            ticketPrints: ticketPrints,
            ticketPrintTemplates: ticketPrintTemplates,
            addTicketPrint: addTicketPrint,
            deleteTicketPrint: deleteTicketPrint,
            key: key,
          ),
        );
}

class _WeighbridgeTicketPrintCardStateful extends StatefulWidget {
  const _WeighbridgeTicketPrintCardStateful({
    required this.ticketPrints,
    required this.ticketPrintTemplates,
    required this.addTicketPrint,
    required this.deleteTicketPrint,
    super.key,
  });

  final ValueNotifier<List<WeighbridgeProfileTicketPrintData>> ticketPrints;
  final ValueNotifier<List<String>> ticketPrintTemplates;
  final void Function() addTicketPrint;
  final void Function(WeighbridgeProfileTicketPrintData) deleteTicketPrint;

  @override
  State<_WeighbridgeTicketPrintCardStateful> createState() =>
      _WeighbridgeTicketPrintCardState();
}

class _WeighbridgeTicketPrintCardState
    extends State<_WeighbridgeTicketPrintCardStateful>
    with TickerProviderStateMixin {
  late TabController _tabController;

  void _updateTabController(List<WeighbridgeProfileTicketPrintData> prints) {
    _tabController = TabController(length: prints.length + 1, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    _updateTabController(widget.ticketPrints.value);
    widget.ticketPrints.addListener(() {
      setState(() {
        _updateTabController(widget.ticketPrints.value);
        _tabController.animateTo(widget.ticketPrints.value.length - 1);
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<WeighbridgeProfileTicketPrintData>>(
      valueListenable: widget.ticketPrints,
      builder: (context, prints, _) {
        const height = 530.0;

        return Column(
          children: [
            TabBar(
              onTap: (value) {
                if (_tabController.length > 1 &&
                    value == _tabController.length - 1) {
                  _tabController.animateTo(_tabController.previousIndex);
                }
              },
              controller: _tabController,
              isScrollable: true,
              tabs: [
                for (var i = 0; i < prints.length; i++)
                  ValueListenableBuilder<String>(
                    valueListenable: prints[i].name,
                    builder: (context, name, _) {
                      return Tab(
                        text: name.isEmpty
                            ? '${context.l10n.print} ${i + 1}'
                            : name,
                      );
                    },
                  ),
                OutlinedButton.icon(
                  onPressed: widget.addTicketPrint,
                  label: Text(context.l10n.addATicketPrint),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(
              height: height,
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (final print in prints)
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: IntrinsicHeight(
                        child: WeighbridgeTicketPrintCard(
                          context: context,
                          title: print.name.value,
                          model: print,
                          ticketPrintTemplates: widget.ticketPrintTemplates,
                          deleteTicketPrint: widget.deleteTicketPrint,
                        ),
                      ),
                    ),
                  const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
