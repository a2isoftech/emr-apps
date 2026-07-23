import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class EmrCardShowcase extends StatefulWidget {
  const EmrCardShowcase({super.key});

  @override
  State<EmrCardShowcase> createState() => _EmrCardShowcaseState();
}

class _EmrCardShowcaseState extends State<EmrCardShowcase> {
  final leadingSelected = ValueNotifier(false);
  final longTitleShowBadge = ValueNotifier(false);
  final toggleController = EmrCardController(selected: true);
  final leadingTrailingSubtitleController = EmrCardController();

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Wrap(
        spacing: Insets.gutter,
        runSpacing: Insets.gutter,
        children: [
          /// --------------------------------------------------------------
          /// Example Card - No header
          /// --------------------------------------------------------------
          SizedBox(
            width: 360,
            child: EmrCard(
              onSelected: _defaultOnSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'No header',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          'This card has no header. '
                          'When there is no title, leading or trailing '
                          'property supplied, the header is not shown.',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// --------------------------------------------------------------
          /// Example Card - Basic
          /// --------------------------------------------------------------
          SizedBox(
            width: 360,
            child: EmrCard(
              title: 'EmrCard',
              onSelected: _defaultOnSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Simple',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          'This is a simple card. '
                          'With some text that should wrap.',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// --------------------------------------------------------------
          /// Example Card - Programmatically selected
          /// --------------------------------------------------------------
          Column(
            children: [
              SizedBox(
                width: 360,
                child: EmrCard(
                  title: 'EmrCard',
                  controller: toggleController,
                  onSelected: ({selected = false}) => debugPrint(
                    'Programmatically selected card is selected: $selected',
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Programmatically selected',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: Insets.gutter),
                      const Row(
                        children: [
                          Flexible(
                            child: Text(
                              'This card uses a controller to manage its '
                              'selection state.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: Insets.gutter,
                      ), // Add some space between cards
                      OutlinedButton(
                        onPressed: () {
                          toggleController.isSelected.value =
                              !toggleController.isSelected.value;
                        },
                        child: const Text('Manually toggle selection'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          /// --------------------------------------------------------------
          /// Example Card - Leading icon widget
          /// --------------------------------------------------------------

          SizedBox(
            width: 360,
            child: EmrCard(
              title: 'EmrCard',
              leading: ValueListenableBuilder<bool>(
                valueListenable: leadingSelected,
                builder: (context, value, child) {
                  return Icon(
                    Icons.star,
                    color: value == true
                        ? Theme.of(context).colorScheme.onTertiary
                        : Colors.green,
                  );
                },
              ),
              onSelected: ({selected = false}) {
                leadingSelected.value = selected;
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Leading',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          'Leading widget example. '
                          "This uses the 'leading' parameter to supply a "
                          'Widget that is shown at the start of the header. '
                          'It also uses a ValueNotifier to manage the colour '
                          'of the leading icon based on whether the card is '
                          'selected or not.',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// --------------------------------------------------------------
          /// Example Card - Trailing widget
          /// --------------------------------------------------------------

          SizedBox(
            width: 360,
            child: EmrCard(
              title: 'EmrCard',
              trailing: Badge(
                label: const Text('Badge'),
                backgroundColor: Theme.of(context).colorScheme.primary,
                padding: const EdgeInsets.symmetric(
                  horizontal: Insets.gutter / 2,
                  vertical: Insets.gutter / 4,
                ),
              ),
              onSelected: _defaultOnSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Trailing',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          'Trailing widget example. '
                          "This uses the 'trailing' parameter to supply a "
                          'Widget that is shown at the end of the header.',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// --------------------------------------------------------------
          /// Example Card - Leading and trailing with subtitle
          /// --------------------------------------------------------------

          SizedBox(
            width: 360,
            child: EmrCard(
              title: 'EmrCard',
              subtitle: 'A card subtitle',
              controller: leadingTrailingSubtitleController,
              leading: ValueListenableBuilder<bool>(
                valueListenable: leadingTrailingSubtitleController.isSelected,
                builder: (context, value, child) {
                  return Icon(
                    Icons.account_circle_rounded,
                    size: 48,
                    color: value == true
                        ? Theme.of(context).colorScheme.onTertiary
                        : Colors.green,
                  );
                },
              ),
              trailing: ValueListenableBuilder<bool>(
                valueListenable: leadingTrailingSubtitleController.isSelected,
                builder: (context, value, child) {
                  return IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                    color: value == true
                        ? Theme.of(context).colorScheme.onTertiary
                        : null,
                  );
                },
              ),
              onSelected: _defaultOnSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Subtitle, Leading & Trailing',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  const Row(
                    children: [
                      Flexible(
                        child: Text('This card has a subtitle, leading and '
                            'trailing widget.'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// --------------------------------------------------------------
          /// Example Card - Trailing widget & softwarp heading
          /// --------------------------------------------------------------

          SizedBox(
            width: 360,
            child: EmrCard(
              title: 'EmrCard\nWith a softwrap title',
              trailing: Badge(
                label: const Text('Badge'),
                backgroundColor: Theme.of(context).colorScheme.primary,
                padding: const EdgeInsets.symmetric(
                  horizontal: Insets.gutter / 2,
                  vertical: Insets.gutter / 4,
                ),
              ),
              onSelected: _defaultOnSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Softwrap title',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          'This card has a title that softwraps. ',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// --------------------------------------------------------------
          /// Example Card - Long title with ellipsis
          /// --------------------------------------------------------------

          SizedBox(
            width: 360,
            child: EmrCard(
              title: 'EmrCard long title show ellipsis as the text is '
                  'too long to fit in 2 lines, which this text is an '
                  'example of.',
              trailing: ValueListenableBuilder<bool>(
                valueListenable: longTitleShowBadge,
                builder: (context, value, child) {
                  return value == false
                      ? const SizedBox.shrink()
                      : Badge(
                          label: const Text('Badge'),
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: Insets.gutter / 2,
                            vertical: Insets.gutter / 4,
                          ),
                        );
                },
              ),
              onSelected: _defaultOnSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Long title',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          'Long title example. '
                          'This uses a longer title which should show ellipsis '
                          'when it can no longer fit in the available space.',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  OutlinedButton(
                    onPressed: () {
                      longTitleShowBadge.value = !longTitleShowBadge.value;
                    },
                    child: const Text('Toggle Badge'),
                  ),
                ],
              ),
            ),
          ),

          /// --------------------------------------------------------------
          /// Example Card - No padding
          /// --------------------------------------------------------------

          SizedBox(
            width: 360,
            child: EmrCard(
              title: 'EmrCard',
              padding: EdgeInsets.zero,
              onSelected: _defaultOnSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Flexible(
                        child: SizedBox(
                          height: 120,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.red,
                                  Colors.amber,
                                ],
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.alarm,
                                size: 64,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Insets.gutter,
                        ),
                        child: Text(
                          'No padding',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  const Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: Insets.gutter),
                          child: Text(
                            'This card uses zero padding. '
                            'By supplying `padding: EdgeInsets.zero` this card '
                            'can use all available space.',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                ],
              ),
            ),
          ),

          /// --------------------------------------------------------------
          /// Example Card - No width
          /// --------------------------------------------------------------

          SizedBox(
            child: EmrCard(
              title: 'EmrCard',
              onSelected: _defaultOnSelected,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'No width',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          'This is a full width card. '
                          'Because the card is not constrained by a width it '
                          'uses all available space.',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _defaultOnSelected({bool selected = false}) {
    debugPrint('Card selected: $selected');
  }
}
