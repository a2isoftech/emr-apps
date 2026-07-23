import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_core/models/collection_operator.dart';
import 'package:emr_one_elv_quotes/common/change_collection_operator.dart';
import 'package:emr_one_elv_quotes/common/collection_date_time.dart';
import 'package:emr_one_elv_quotes/common/quick_quote_input_field.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/flyouts/account_search/widgets/widgets.dart';
import 'package:provider/provider.dart';

class AddCollectionOperatorDetails extends StatefulWidget {
  const AddCollectionOperatorDetails({super.key});

  @override
  State<AddCollectionOperatorDetails> createState() =>
      _AddCollectionOperatorDetailsState();
}

class _AddCollectionOperatorDetailsState
    extends State<AddCollectionOperatorDetails> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<QuickQuoteController>(context);
    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter * 2),
        child: Wrap(
          runSpacing: Insets.gutter,
          children: [
            ChangeCollectionOperator(
              onTap: (collectionOperator) {
                controller.model.collectionOperator = collectionOperator;
                controller.reCalculateHaulageOnSelectedQuote(
                  collectionOperator?.haulageRate ?? 0.0,
                );
              },
              accountName: controller.model.collectionOperator?.accountName,
              accountNumber: controller.model.collectionOperator?.accountNumber,
              collectionOperatorList: _getCollectionOperatorList(
                controller,
                context,
              ),
              collectionOperatorSearchController:
                  controller.collectionOperatorSearchController,
            ),
            CollectionDateTime(
              onChanged: (date) {
                controller.model.collectionDateTime = date;
              },
              collectionDateTime: controller.model.collectionDateTime,
            ),
            SizedBox(
              width: 320,
              child: QuickQuoteInputField(
                label: context.l10n.collectionAddress,
                textController: controller.collectionAddressController,
                readOnly: true,
                onTap: () {
                  elvStandardFlyout(
                    context: context,
                    body: CollectionSearchFlyout(
                      account: controller.baseState.temporaryAccountStore!,
                      activeTerritory: controller.activeTerritory,
                      accountService: controller.accountService,
                      addressService: controller.addressService,
                      yardService: controller.yardService,
                      selectedLocationCode:
                          controller.baseState.temporaryAccountLocation?.code,
                      locationChanged: (selectedLocation) async {
                        unawaited(
                          EmrDialog.busy(
                            context,
                            titleText: context.l10n.refreshingQuotePrice,
                          ),
                        );
                        await controller.changeLocationCodeAndReQuote(
                          location: selectedLocation,
                        );
                        if (context.mounted) {
                          context.pop();
                        }
                      },
                    ),
                    heading: context.l10n.pleaseSelectLocation,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List<CollectionOperator>> Function() _getCollectionOperatorList(
    QuickQuoteController controller,
    BuildContext context,
  ) {
    return () async {
      final yardCode =
          controller.baseState.batchQuote!.yard?.yardCode ??
          controller.baseState.batchQuote!.yardCode!;

      final collectionOperators = controller.baseState.collectionOperators;

      if (collectionOperators.isNotEmpty &&
          collectionOperators[yardCode] != null) {
        return collectionOperators[yardCode]!;
      }

      unawaited(EmrDialog.busy(context, titleText: context.l10n.loading));

      await controller.getCollectionOperatorsByHaulagePriceMatrices();

      if (context.mounted) {
        context.pop();
      }

      return controller.baseState.collectionOperators[yardCode]!;
    };
  }
}
