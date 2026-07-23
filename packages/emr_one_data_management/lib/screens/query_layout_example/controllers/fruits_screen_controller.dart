import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_data_management/screens/query_layout_example/actions/actions.dart';
import 'package:emr_one_data_management/screens/query_layout_example/models/fruit_model.dart';
import 'package:flutter/widgets.dart';

class FruitsScreenController extends EmrQueryLayoutController<Fruit> {
  FruitsScreenController({
    required super.dataSource,
    required this.actionsEnabled,
    super.viewMode,
    super.supportedViewModes,
    super.filterController,
  }) {
    /// Create our example actions

    /// We store the actions in a map for convenience, this allows the map
    /// to be passed to the `EmrQueryLayoutHybrid` widget which requires a map
    /// of actions.

    /// Each action is created with a reference to this controller, so that
    /// it can call methods on the controller when the action is invoked.
    /// Each action also defines a `createIntent` function which is used
    /// to create the intent that will be passed to the action when it is
    /// invoked.
    actions[SimplePrimaryActionIntent] = SimplePrimaryAction(
      controller: this,
      createIntent: (context) => SimplePrimaryActionIntent(context: context),
      enabled: actionsEnabled[SimplePrimaryActionIntent]!.value,
    );

    actions[SimpleSecondaryActionIntent] = SimpleSecondaryAction(
      controller: this,
      createIntent: (context) => SimpleSecondaryActionIntent(context: context),
      enabled: actionsEnabled[SimpleSecondaryActionIntent]!.value,
    );

    actions[ContextualActionSetPriorityIntent] = ContextualActionSetPriority(
      controller: this,
      createIntent: (context) =>
          ContextualActionSetPriorityIntent(context: context),
      enabled: actionsEnabled[ContextualActionSetPriorityIntent]!.value,
    );

    actions[ContextualActionEmailIntent] = ContextualActionEmail(
      controller: this,
      createIntent: (context) => ContextualActionEmailIntent(context: context),
      enabled: actionsEnabled[ContextualActionEmailIntent]!.value,
    );

    /// Listen to changes in action enabled state (from the explorer UI)
    actionsEnabled.forEach((type, notifier) {
      notifier.addListener(() {
        _toggleActionEnabled(type, enabled: notifier.value);
      });
    });
  }

  @override
  void dispose() {
    actionsEnabled.forEach((type, notifier) {
      notifier.removeListener(() {
        _toggleActionEnabled(type, enabled: notifier.value);
      });
    });
    super.dispose();
  }

  /// Our actions map, populated in the constructor.
  final Map<Type, EmrAction<Intent>> actions = {};

  /// Action enabled states are passed in by our "explorer" - so that it can
  /// easily control the enabled states from the UI, normally you would
  /// probably manage your action enabled states directly in the controller.
  final Map<Type, ValueNotifier<bool>> actionsEnabled;

  /// Return a list of columns which will be passed to `EmrQueryLayoutHybrid`
  /// widget. These columns define how the data will be displayed in the
  /// Grid view mode.
  List<EmrGridColumn<Fruit>> get columns {
    return [
      _columnBuilder(
        headerText: 'Name',
        cellText: (fruit) => fruit.name,
      ),
      _columnBuilder(
        headerText: 'Color',
        cellText: (fruit) => fruit.color,
      ),
      _columnBuilder(
        headerText: 'Calories',
        cellText: (fruit) => fruit.calories.toString(),
      ),
      _columnBuilder(
        headerText: 'Sugar Content',
        cellText: (fruit) => '${fruit.sugarContent} g',
      ),
    ];
  }

  /// A simple stub method to demonstrate exectuing an action. This method
  /// is provided simply to show how you might run code in response to an
  /// action being invoked. This specific method just shows a message box a
  /// and the message is not related to the action itself.
  void doAction(BuildContext context, String titleText, String actionText) {
    EmrDialog.ok(
      context,
      titleText: titleText,
      contentText: actionText,
    );
  }

  EmrGridColumn<Fruit> _columnBuilder({
    required String headerText,
    required String Function(Fruit) cellText,
    void Function()? onSortTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 100,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => MouseRegion(
        cursor:
            onSortTap != null ? SystemMouseCursors.click : MouseCursor.defer,
        child: GestureDetector(
          onTap: onSortTap,
          child: Row(
            children: [
              Flexible(
                child: Text(
                  headerText,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder: (Fruit rowItem) => Text(
        cellText.call(rowItem),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  void _toggleActionEnabled(
    Type actionType, {
    bool enabled = true,
  }) {
    final action = actions[actionType];
    if (action != null) {
      action.actionEnabled.value = enabled;
    }
  }
}
