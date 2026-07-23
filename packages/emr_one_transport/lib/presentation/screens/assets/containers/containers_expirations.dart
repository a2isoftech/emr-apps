import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/containers/container.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ContainersExpirations extends StatefulWidget {
  const ContainersExpirations({required this.containersToExpire, super.key});
  final List<Containers> containersToExpire;

  @override
  State<ContainersExpirations> createState() => _ContainersExpirationsState();
}

class _ContainersExpirationsState extends State<ContainersExpirations> {
  late final EmrGridController<dynamic> controller;

  @override
  void initState() {
    super.initState();

    controller = EmrGridController<dynamic>(
      data: ValueNotifier(widget.containersToExpire),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: Insets.gutter / 2),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: EmrGrid(
                alternateBackgroundRowColour: true,
                pinnedRowCount: 1,
                controller: controller,
                columns: [
                  EmrGridColumn(
                    headerBuilder: () => Text(
                      context.l10n.validTill,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    cellBuilder: (container) {
                      final data = container! as Containers;
                      final validUpTo = data.validUpTo;
                      return Text(
                        validUpTo != null
                            ? DateFormat(
                                StringConstants.ymdTimeFormat,
                              ).format(validUpTo)
                            : '-',
                      );
                    },
                  ),
                  EmrGridColumn(
                    headerBuilder: () => Text(
                      context.l10n.assetCode,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    cellBuilder: (container) {
                      final data = container! as Containers;
                      return Text(data.assetNumber);
                    },
                    width: 60,
                  ),
                  EmrGridColumn(
                    headerBuilder: () => Text(
                      context.l10n.assetType,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    cellBuilder: (container) {
                      final data = container! as Containers;
                      return Text(data.containerType ?? '-');
                    },
                  ),
                  EmrGridColumn(
                    headerBuilder: () => Text(
                      context.l10n.description,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    cellBuilder: (container) {
                      final data = container! as Containers;
                      return Text(data.description ?? '-');
                    },
                    width: 140,
                  ),
                  EmrGridColumn(
                    headerBuilder: () => Text(
                      context.l10n.yard,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    cellBuilder: (container) {
                      final data = container! as Containers;
                      return Text(data.yardCode ?? '-');
                    },
                    width: 50,
                  ),
                  EmrGridColumn(
                    headerBuilder: () => Text(
                      context.l10n.serialNumber,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    cellBuilder: (container) {
                      final data = container! as Containers;
                      return Text(data.serialNumber ?? '-');
                    },
                  ),
                  EmrGridColumn(
                    headerBuilder: () => Text(
                      context.l10n.cost,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    cellBuilder: (container) {
                      final data = container! as Containers;
                      return Text(data.cost?.toString() ?? '-');
                    },
                    width: 60,
                  ),
                  EmrGridColumn(
                    headerBuilder: () => Text(
                      context.l10n.weight,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    cellBuilder: (container) {
                      final data = container! as Containers;
                      return Text(data.weight?.toString() ?? '-');
                    },
                    width: 60,
                  ),
                  EmrGridColumn(
                    headerBuilder: () => Text(
                      context.l10n.length,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    cellBuilder: (container) {
                      final data = container! as Containers;
                      return Text(data.length?.toString() ?? '-');
                    },
                    width: 60,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
