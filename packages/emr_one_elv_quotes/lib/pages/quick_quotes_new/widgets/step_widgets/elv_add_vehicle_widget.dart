import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes_new/quick_quotes_new.dart';

class ElvAddVehicle extends EmrTabBarVerticalViewCard {
  const ElvAddVehicle({required super.title, required super.height, super.key})
    : super(child: const ElvAddVehicleWidget());
}

class ElvAddVehicleWidget extends StatefulWidget {
  const ElvAddVehicleWidget({super.key});

  @override
  State<ElvAddVehicleWidget> createState() => _ElvAddVehicleWidgetState();
}

class _ElvAddVehicleWidgetState extends State<ElvAddVehicleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 300),
          child: const ElvVehicleDetailWidget(),
        ),
        Row(
          spacing: Insets.gutter / 2,
          children: [
            SizedBox(
              width: 150,
              child: FilledButton(
                onPressed: () async {
                  await EmrDialog.modal<void>(
                    context,
                    dialogMode: DialogMode.compact,
                    titleText: context.l10n.addVehicles,
                    builder: (context) {
                      return const ElvAddVehicleDialog();
                    },
                    acceptLabel: context.l10n.addSelectedVehicles,
                  );
                },
                child: Text(context.l10n.addVehicles),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                EmrDialog.modal<void>(
                  context,
                  titleText: context.l10n.bulkPriceAdjustment,
                  builder: (context) {
                    return const ElvBulkPriceAdjustmentWidget();
                  },
                );
              },
              child: Text(context.l10n.bulkPriceAdjustment),
            ),
          ],
        ),
      ],
    );
  }
}
