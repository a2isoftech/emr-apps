import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/scheduler/services/scheduler_service.dart';
import 'package:emr_one_inform/services/select_yard_service.dart';
import 'package:emr_one_inform/widgets/inform_assign_multiple.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InformMultipleYardDepotSelector extends StatefulWidget {
  const InformMultipleYardDepotSelector({
    this.initialState,
    this.onStateChanged,
    super.key,
  });

  final SelectedYardsAndDepots? initialState;
  final void Function(SelectedYardsAndDepots)? onStateChanged;

  @override
  State<InformMultipleYardDepotSelector> createState() =>
      _InformMultipleYardDepotSelectorState();
}

class _InformMultipleYardDepotSelectorState
    extends State<InformMultipleYardDepotSelector> {
  List<Yard> yards = List.empty(growable: true);
  List<Depot> depotsByYard = List.empty(growable: true);
  List<Yard> selectedYards = List.empty(growable: true);
  List<Depot> selectedDepots = List.empty(growable: true);

  @override
  void initState() {
        initialize();
        super.initState();
  }

  Future<void> initialize() async {
       if(!mounted)
       {
          return;
       }
    await getYards();
    if (widget.initialState != null && widget.initialState!.yards.isNotEmpty) {
      final selectedYards = yards
          .where(
            (e) =>
                widget.initialState!.yards.any((x) => x.yardCode == e.yardCode),
          )
          .toList();
      for (final selectedYard in selectedYards) {
        await addYard(selectedYard);
      }
    }

    if (widget.initialState != null && widget.initialState!.depots.isNotEmpty) {
      final selectedDepots = depotsByYard
          .where(
            (e) =>
                widget.initialState!.depots.any((x) => x.depotNo == e.depotNo),
          )
          .toList();
      for (final selectedDepot in selectedDepots) {
        await addDepot(selectedDepot);
      }
    }

    stateChanged();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AssignMultipleEntity<Yard>(
          key: UniqueKey(),
          suggestionsCallback: (searchText) => yards.isNotEmpty
              ? yards
                  .where(
                    (e) =>
                        e.yardCode!
                            .toLowerCase()
                            .contains(searchText.toLowerCase()) ||
                        e.name!
                            .toLowerCase()
                            .contains(searchText.toLowerCase()),
                  )
                  .toList()
              : const Iterable<Yard>.empty(),
          valueSelector: (e) => e.yardCode!,
          hint: context.l10n.yardHint,
          label: context.l10n.yardLabel,
          onSuggestionSelected: addYard,
          validatorCallback: (value) =>
              (selectedYards.isEmpty) ? 'Atleast 1 yard is required' : null,
          onItemDeleted: removeYard,
          defaultSelectedItems: selectedYards,
          itemBuilder: (context, Yard? availableYards) {
            final yard = availableYards!;
            return ListTile(
              title: Text(yard.yardCode ?? ''),
              subtitle: Text(yard.name ?? ''),
            );
          },
        ),
        const SizedBox(height: 10),
        AssignMultipleEntity<Depot>(
          key: UniqueKey(),
          suggestionsCallback: (searchText) => depotsByYard.isNotEmpty
              ? depotsByYard
                  .where(
                    (e) => e.depotNo!
                        .toLowerCase()
                        .contains(searchText.toLowerCase()),
                  )
                  .toList()
              : const Iterable<Depot>.empty(),
          itemBuilder: (context, Depot? availableYards) {
            final depot = availableYards!;
            return ListTile(
              title: Text(depot.depotNo ?? ''),
              subtitle: Text(depot.name ?? ''),
            );
          },
          valueSelector: (e) => e.depotNo!,
          hint: context.l10n.depotHint,
          label: context.l10n.depotLabel,
          onSuggestionSelected: addDepot,
          onItemDeleted: removeDepot,
          defaultSelectedItems: selectedDepots,
        ),
      ],
    );
  }

  Future<void> getYards() async {
    final userPreferencesRepository =
        Provider.of<IUserPreferencesRepository>(context, listen: false);
    final selectYardService =
        Provider.of<SelectYardService>(context, listen: false);
    final territory = await userPreferencesRepository.getTerritory();
    final yards =
        await selectYardService.getYardsByTerritoryCode(code: territory);
    this.yards = yards;
  }

  Future<void> addYard(Yard yard) async {
    if(mounted)
    {
      final service = Provider.of<SchedulerService>(context, listen: false);

          if (!selectedYards.any((e) => e.yardCode == yard.yardCode)) {
            selectedYards.add(yard);
              setState(() {});
            depotsByYard = selectedYards.isEmpty
                ? []
                : await service.getDepotsByYard(
                    DepotQueryFilter(
                      yardCodes: selectedYards.map((e) => e.yardCode!).toList(),
                    ),
                  );
            stateChanged();
        }
    }
  }

  Future<void> removeYard(Yard yard) async {
    final service = Provider.of<SchedulerService>(context, listen: false);
    if (selectedYards.any((e) => e.yardCode == yard.yardCode)) {
      selectedYards.removeWhere((e) => e.yardCode == yard.yardCode);
      setState(() {});
      depotsByYard = selectedYards.isEmpty
          ? []
          : await service.getDepotsByYard(
              DepotQueryFilter(
                yardCodes: selectedYards.map((e) => e.yardCode!).toList(),
              ),
            );

      final missing = selectedDepots
          .where((e) => !depotsByYard.any((x) => x.depotNo == e.depotNo))
          .toList();
      selectedDepots
          .removeWhere((e) => missing.any((x) => x.depotNo == e.depotNo));

      stateChanged();
    }
  }

  Future<void> addDepot(Depot depot) async {
    if (!selectedDepots.any((e) => e.depotNo == depot.depotNo)) {
      selectedDepots.add(depot);
      stateChanged();
    }
  }

  Future<void> removeDepot(Depot depot) async {
    selectedDepots.removeWhere((e) => e.depotNo == depot.depotNo);
    stateChanged();
  }

  void stateChanged() {
    if (widget.onStateChanged != null) {
      widget.onStateChanged!.call(
        SelectedYardsAndDepots(yards: selectedYards, depots: selectedDepots),
      );
    }
    if(mounted)
      {
        setState(() {});
      }
  }
}

class SelectedYardsAndDepots {
  SelectedYardsAndDepots({required this.yards, required this.depots});

  final List<Yard> yards;
  final List<Depot> depots;
}
