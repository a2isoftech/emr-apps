import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/query_layout_example/actions/actions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// This controller is used to manage the state of the `QueryLayoutExplorer`.
/// It allows toggling view modes, selection modes, and search functionality.
class ExplorerController extends ChangeNotifier {
  ExplorerController({
    Set<EmrQueryLayoutViewMode> viewModes = const {
      EmrQueryLayoutViewMode.card,
      EmrQueryLayoutViewMode.grid,
    },
    this.selectionMode = RowSelectionMode.multiple,
    this.searchEnabled = true,
    this.filtersEnabled = true,
  }) {
    this.viewModes = Set.from(viewModes);
  }

  late Set<EmrQueryLayoutViewMode> viewModes;
  late RowSelectionMode selectionMode;
  late bool searchEnabled;
  late bool filtersEnabled;
  late bool panelVisible = false;

  /// A map to control the enabled state of the demo actions.
  /// The actual actions types are only referenced here for convenience in
  /// order to wire them up to a switch in the UI.
  final Map<Type, ValueNotifier<bool>> actionsEnabled = {
    ContextualActionEmailIntent: ValueNotifier<bool>(true),
    ContextualActionSetPriorityIntent: ValueNotifier<bool>(true),
    SimplePrimaryActionIntent: ValueNotifier<bool>(true),
    SimpleSecondaryActionIntent: ValueNotifier<bool>(true),
  };

  final Map<Type, String> actionLabels = {
    SimplePrimaryActionIntent: 'New Fruit (primary action)',
    SimpleSecondaryActionIntent: 'Export fruits (secondary action)',
    ContextualActionSetPriorityIntent: 'Set Priority (context action)',
    ContextualActionEmailIntent: 'Send Email (context action)',
  };

  void toggleViewMode(EmrQueryLayoutViewMode mode) {
    if (viewModes.contains(mode)) {
      viewModes.remove(mode);
    } else {
      viewModes.add(mode);
    }
    notifyListeners();
  }

  void toggleSelectionMode(RowSelectionMode mode) {
    selectionMode = mode;
    notifyListeners();
  }

  void toggleSearchEnabled() {
    searchEnabled = !searchEnabled;
    notifyListeners();
  }

  void toggleFiltersEnabled() {
    filtersEnabled = !filtersEnabled;
    notifyListeners();
  }

  void togglePanelVisbility() {
    panelVisible = !panelVisible;
    notifyListeners();
  }

  void reset() {
    viewModes = {EmrQueryLayoutViewMode.grid, EmrQueryLayoutViewMode.card};
    selectionMode = RowSelectionMode.none;
    actionsEnabled.forEach((_, notifier) {
      notifier.value = true;
    });
    searchEnabled = true;
    notifyListeners();
  }
}
