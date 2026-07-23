import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/widgets/dialog/elv_selection_dialog.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/material.dart';

class DismantlingSearchHeader extends StatefulWidget {
  const DismantlingSearchHeader({
    required this.yardList,
    required this.onYardTap,
    required this.searchVehicles,
    super.key,
  });

  final List<Yard> yardList;
  final void Function(Yard) onYardTap;
  final void Function() searchVehicles;

  @override
  State<DismantlingSearchHeader> createState() =>
      _DismantlingSearchHeaderState();
}

class _DismantlingSearchHeaderState extends State<DismantlingSearchHeader> {
  @override
  Widget build(BuildContext context) {
    final yardSearchController = TextEditingController();
    return Row(
      children: [
        Expanded(
          child: Text(
            context.l10n.dismantle,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        IconButton(
          onPressed: () => showElvSelectionDialog<Yard>(
            context: context,
            items: widget.yardList,
            displayString: (yard) => '${yard.name} (${yard.yardCode})',
            onTap: (e) {
              widget.onYardTap(e);
              widget.searchVehicles();
              context.pop();
            },
            searchController: yardSearchController,
            title: context.l10n.changeYard,
            label: context.l10n.yardCode,
          ),
          icon: const Icon(
            Icons.edit_location_alt_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
