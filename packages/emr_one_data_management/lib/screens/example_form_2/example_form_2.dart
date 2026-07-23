import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExampleForm2 extends StatefulWidget {
  const ExampleForm2({super.key});

  @override
  State<ExampleForm2> createState() => _ExampleForm2State();
}

class _ExampleForm2State extends State<ExampleForm2> {
  @override
  Widget build(BuildContext context) {
    return EmrTabBarVerticalView(
      columns: context.read<AppConfig>().isWeb
          ? [1, 1, 2, 2, 2, 2, 2, 1]
          : [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
      children: [
        const EmrTabBarVerticalViewCard(
          height: 270,
          title: 'Locked',
          allowedPermissions: ['permissionThatDoesntExist'],
        ),
        EmrTabBarVerticalViewResponsiveColumnsCard(
          title: 'Responsive Fields',
          actions: {
            CardAddActionIntent: CardAddAction(
              context,
              createIntent: (context) => CardAddActionIntent(context: context),
              onAction: () => EmrModal.showMessageBar(context, 'Add action'),
            ),
          },
          children: [
            EmrTextFormField(
              labelText: 'Field 1',
              readOnly: ValueNotifier(true),
              binding: ValueNotifier('Field 1'),
            ),
            EmrTextFormField(
              labelText: 'Field 2',
              readOnly: ValueNotifier(true),
              binding: ValueNotifier('Field 2'),
            ),
            EmrTextFormField(
              labelText: 'Field 3',
              readOnly: ValueNotifier(true),
              binding: ValueNotifier('Field 3'),
            ),
            EmrTextFormField(
              labelText: 'Field 4',
              readOnly: ValueNotifier(true),
              binding: ValueNotifier('Field 4'),
            ),
          ],
        ),
        const EmrTabBarVerticalViewCard(height: 270, title: 'Contacts'),
        const EmrTabBarVerticalViewCard(height: 270, title: 'Locations'),
        const EmrTabBarVerticalViewCard(height: 270, title: 'Main Details'),
        const EmrTabBarVerticalViewCard(height: 270, title: 'Publications'),
        const EmrTabBarVerticalViewCard(height: 270, title: 'Head Office'),
        const EmrTabBarVerticalViewCard(height: 270, title: 'Responsibilities'),
        const EmrTabBarVerticalViewCard(height: 270, title: 'Identification'),
        const EmrTabBarVerticalViewCard(
          height: 270,
          title: 'Customer Loyalty Cards',
        ),
        const EmrTabBarVerticalViewCard(height: 270, title: 'Prepay Cards'),
        const EmrTabBarVerticalViewCard(height: 270, title: 'Territories'),
        const EmrTabBarVerticalViewCard(height: 135, title: 'Bank Details'),
      ],
    );
  }
}
