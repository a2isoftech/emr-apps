import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/helpers/lot_helpers.dart';
import 'package:emr_one_yard_logistics/models/lot_composition_acronym.dart';
import 'package:emr_one_yard_logistics/models/pallet.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/lot_summary_details.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:emr_one_yard_logistics/widgets/wrapper_error.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class ExistingBag extends StatelessWidget {
  ExistingBag({required this.bag, super.key});

  final Pallet bag;
  final Signal<bool> closingBag = signal<bool>(false);

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<YardLogisticsService>(context, listen: false);

    return FutureBuilder(
      future: service.fetchLotCompositionAcronymsFromCache(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 64,
                  height: 64,
                  child: CircularProgressIndicator(),
                ),
                const SizedBox(height: Insets.gutter),
                Text(context.l10n.loading),
              ],
            ),
          );
        }

        if (snapshot.hasError) {
          return WrapperError(message: snapshot.error.toString());
        }

        if (snapshot.data == null || snapshot.data!.isEmpty) {
          return const WrapperError(
            message: 'No Lot Acronyms found',
          );
        }

        return _showExistingBag(
          context,
          service,
          snapshot.data!,
        );
      },
    );
  }

  Widget _showExistingBag(
    BuildContext context,
    YardLogisticsService service,
    List<LotCompositionAcronym> compositionAcronyms,
  ) {
    var messagePrompt = '';

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: ColoredBox(
                color: Colors.black,
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(Insets.gutter),
                          bottomRight: Radius.circular(Insets.gutter),
                        ),
                        child: ColoredBox(
                          color: Theme.of(context).colorScheme.surface,
                          child: Padding(
                            padding: const EdgeInsets.all(Insets.gutter),
                            child: Column(
                              children: [
                                FormHeadingRow(
                                  headings: [
                                    'Code',
                                    '${bag.code}/${bag.yardId}',
                                  ],
                                ),
                                FormRow(
                                  padding: const EdgeInsets.only(
                                    bottom: Insets.gutter / 8,
                                  ),
                                  children: [
                                    Text(
                                      'Gross Weight',
                                      style:
                                          EmrOneConstants.kTinyHeadingTextStyle,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            bag.grossWeightUom
                                                .convertWeight(
                                                  service.uomForView,
                                                )
                                                .toWeightString(),
                                            style: EmrOneConstants
                                                .kTinyHeadingTextStyle
                                                .copyWith(
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                FormRow(
                                  padding: const EdgeInsets.only(
                                    bottom: Insets.gutter / 8,
                                  ),
                                  children: [
                                    Text(
                                      'Tare Weight',
                                      style:
                                          EmrOneConstants.kTinyHeadingTextStyle,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            bag.tareWeightUom
                                                .convertWeight(
                                                  service.uomForView,
                                                )
                                                .toWeightString(),
                                            style: EmrOneConstants
                                                .kTinyHeadingTextStyle
                                                .copyWith(
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                FormRow(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  children: [
                                    Text(
                                      'Net Weight',
                                      style:
                                          EmrOneConstants.kTinyHeadingTextStyle,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            LotHelpers.calculateNetWeight(
                                              bag.grossWeightUom,
                                              bag.tareWeightUom,
                                              service.uomForView,
                                            ),
                                            style: EmrOneConstants
                                                .kTinyHeadingTextStyle
                                                .copyWith(
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const FormHeadingRow(
                                  headings: [
                                    'Contents',
                                  ],
                                ),
                                Provider<List<LotCompositionAcronym>>.value(
                                  value: compositionAcronyms,
                                  builder: (context, child) => SizedBox(
                                    height: 370,
                                    child: ListView.builder(
                                      itemCount: bag.lotDetails.length,
                                      itemBuilder: (context, index) {
                                        final lot = bag.lotDetails[index];
                                        return LotSummaryDetails(
                                          lot: lot,
                                          navigateToLot: false,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Insets.gutter / 2,
                      child: Container(color: Colors.black),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(Insets.gutter),
                          topRight: Radius.circular(Insets.gutter),
                        ),
                        child: ColoredBox(
                          color: Theme.of(context).colorScheme.surface,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (bag.state == PalletState.inProgress)
                                SizedBox(
                                  height: 130,
                                  child: YlActionPanel(
                                    actions: [
                                      (
                                        'Mark as Closed',
                                        Icons.check_circle_rounded,
                                        bag.lotIds.isNotEmpty
                                            ? () async {
                                                closingBag.value = true;

                                                final response = await service
                                                    .closePalletBag(
                                                  bag.id,
                                                );

                                                if (response.success) {
                                                  bag.state =
                                                      PalletState.packed;
                                                  messagePrompt =
                                                      'Bag has been Closed';
                                                } else {
                                                  messagePrompt =
                                                      response.message;
                                                }

                                                if (context.mounted) {
                                                  await EmrDialog.ok(
                                                    context,
                                                    titleText: messagePrompt,
                                                  );

                                                  closingBag.value = false;
                                                }
                                              }
                                            : null,
                                        null,
                                        null
                                      ),
                                    ],
                                  ),
                                )
                              else
                                SizedBox(
                                  width: 390,
                                  child: Text(
                                    'This Bag has been Closed.',
                                    style: EmrOneConstants
                                        .kSmallestHeadingTextStyle
                                        .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        if (closingBag.watch(context)) ...[
          const Opacity(
            opacity: 0.8,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.black,
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color: Colors.white,
                ),
                SizedBox(height: Insets.gutter),
                Text(
                  'Completing ...',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
