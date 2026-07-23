import 'package:emr_one_elv_quotes/format.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

class ElvDeliveryMethod extends EmrTabBarVerticalViewCard {
  const ElvDeliveryMethod({
    required super.title,
    required super.height,
    super.key,
  }) : super(child: const ElvDeliveryMethodWidget());
}

class ElvDeliveryMethodWidget extends StatelessWidget {
  const ElvDeliveryMethodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: Value will change
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      spacing: Insets.gutter,
      children: [
        Wrap(
          spacing: Insets.gutter / 2,
          runSpacing: Insets.gutter / 2,
          children: [
            _vehicleDeliveryMethodCard(
              context,
              yardCode: 'YSAL',
              yardName: 'SALFORD',
              bestPrice: true,
            ),
            _vehicleDeliveryMethodCard(
              context,
              yardCode: 'YSAL',
              yardName: 'SALFORD',
            ),
            _vehicleDeliveryMethodCard(
              context,
              yardCode: 'YSAL',
              yardName: 'SALFORD',
            ),
            _vehicleDeliveryMethodCard(
              context,
              yardCode: 'YSAL',
              yardName: 'SALFORD',
              deliveryMode: DeliveryMethod.collected,
              bestPrice: true,
              selected: true,
            ),
            _vehicleDeliveryMethodCard(
              context,
              yardCode: 'YSAL',
              deliveryMode: DeliveryMethod.collected,
              yardName: 'SALFORD',
            ),
            _vehicleDeliveryMethodCard(
              context,
              yardCode: 'YSAL',
              deliveryMode: DeliveryMethod.collected,
              yardName: 'SALFORD',
            ),
            _vehicleDeliveryMethodCard(
              context,
              yardCode: 'YSAL',
              deliveryMode: DeliveryMethod.collected,
              yardName: 'SALFORD',
            ),
            _vehicleDeliveryMethodCard(
              context,
              yardCode: 'YSAL',
              deliveryMode: DeliveryMethod.collected,
              yardName: 'SALFORD',
            ),
            _vehicleDeliveryMethodCard(
              context,
              yardCode: 'YSAL',
              yardName: 'SALFORD',
              deliveryMode: DeliveryMethod.collected,
              bestPrice: true,
            ),
          ],
        ),
        Wrap(
          spacing: Insets.gutter,
          runSpacing: Insets.gutter,
          children: [
            SizedBox(
              width: 300,
              child: EmrDateFormField(
                binding: ValueNotifier(null),
                firstDate: DateTime.now(),
                labelText: context.l10n.collectionDate,
                hintText: context.l10n.collectionDate,
              ),
            ),
            SizedBox(
              width: 300,
              child: EmrTextFormField(
                binding: ValueNotifier(''),
                labelText: context.l10n.bankAccountNumber,
                hintText: context.l10n.bankAccountNumber,
              ),
            ),
            SizedBox(
              width: 300,
              child: EmrTextFormField(
                binding: ValueNotifier(''),
                labelText: context.l10n.bankSortCode,
                hintText: context.l10n.bankSortCode,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _vehicleDeliveryMethodCard(
    BuildContext context, {
    required String yardCode,
    required String yardName,
    DeliveryMethod deliveryMode = DeliveryMethod.delivered,
    bool bestPrice = false,
    bool selected = false,
  }) {
    return SizedBox(
      width: 250,
      child: EmrCard(
        isSelected: selected,
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    deliveryMode == DeliveryMethod.delivered
                        ? context.l10n.delivery
                        : context.l10n.collected,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (bestPrice) ...{
                  EmrStatusChip(text: context.l10n.bestDelivery),
                },
              ],
            ),
            const SizedBox(height: Insets.gutter / 2),
            //TODO: Value will change
            Text(
              Format.money(734.44),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              '$yardCode - $yardName',
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
