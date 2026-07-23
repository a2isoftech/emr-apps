import 'package:async/async.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/routing/named_routes.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_core/widgets/shapes/waterfall_notched_rectangle.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/models/gpl_display_grades.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_one_crm/widgets/party/add_fab.dart';
import 'package:emr_one_crm/widgets/party/bottom_nav_button.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PriceListDetailsScreen extends StatefulWidget {
  const PriceListDetailsScreen({
    required this.client,
    required this.partyAccountNo,
    required this.contractID,
    required this.gradeType,
    required this.contractsProvider,
    super.key,
  });
  final BaseClient client;
  final String partyAccountNo;
  final String contractID;
  final String gradeType;
  final ContractsProvider contractsProvider;

  @override
  State<PriceListDetailsScreen> createState() => _PriceListDetailsScreenState();
}

class _PriceListDetailsScreenState extends State<PriceListDetailsScreen> {
  late List<GplDisplayGrades> _items;
  late bool isFerrous;
  late bool _loading;
  late String _query;
  CancelableOperation<List<GplDisplayGrades>>? _operation;

  @override
  void initState() {
    isFerrous = widget.gradeType == 'FERROUS';
    _items = [];
    _query = '';
    _loading = true;
    fetchData(_query);
    super.initState();
  }

  @override
  void dispose() {
    if (_operation != null) {
      _operation!.cancel();
      _operation = null;
    }
    super.dispose();
  }

  void fetchData(String query) {
    setState(() {
      _loading = true;
    });
    try {
      final future = widget.contractsProvider.getGplPublicationData(
        int.parse(widget.contractID),
        isFerrous: isFerrous,
        query: query.toUpperCase(),
      );

      if (_operation != null) {
        _operation!.cancel();
        _operation = null;
      }

      _operation = CancelableOperation.fromFuture(future);
      _operation!.then((value) {
        if (mounted) {
          setState(() {
            _items = value;
            _loading = false;
          });
        }
      });
    } catch (e) {
      if (kDebugMode) {
        print('error --> $e');
      }
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final busy = ValueNotifier<bool>(true);
    final data = ValueNotifier<List<GplDisplayGrades>>(_items);
    final gridController = EmrGroupedGridController<GplDisplayGrades, String>(
      data: data,
      grouping: (e) => e.yardCode,
    );
    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 8),
        child: AddFab(
          onPressed: () {
            context.goNamed(
              NamedRoutes.traderPartyPricesNewPricelist,
              params: {
                'partyAccountNo': widget.partyAccountNo,
              },
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: brandColours.brandColour,
        shape: const WaterfallNotchedRectangle(),
        notchMargin: 6,
        child: Container(
          height: 76,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavButton(
                  label: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: Insets.gutter),
                    child: Text(
                      context.l10n.ferrous,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isFerrous = true;
                      _loading = true;
                      _items = [];
                      fetchData(_query);
                    });
                  },
                  colour: Colors.transparent,
                ),
                BottomNavButton(
                  label: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: Insets.gutter),
                    child: Text(
                      context.l10n.nonFerrous,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isFerrous = false;
                      _loading = true;
                      _items = [];
                      fetchData(_query);
                    });
                  },
                  colour: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: Insets.gutter,
              right: Insets.gutter,
              left: Insets.gutter,
            ),
            child: TextField(
              autofocus: kIsWeb,
              decoration: FormStyles.textFieldDecoration(context)
                  .copyWith(labelText: context.l10n.search),
              onChanged: (q) {
                if (mounted) {
                  setState(() {
                    _query = q;
                    fetchData(q);
                  });
                }
              },
            ),
          ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: busy, //widget.controller.busy,
              builder: (BuildContext context, value, Widget? child) {
                return ValueListenableBuilder(
                  valueListenable:
                      busy, // widget.controller.gridController.data,
                  builder: (BuildContext context2, value2, Widget? child2) {
                    return Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: buildBody(gridController),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBody(
    EmrGroupedGridController<GplDisplayGrades, String> gridController,
  ) {
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      if (_items.isEmpty) {
        return Center(
          child: Text(context.l10n.noResults),
        );
      } else {
        final theme = Theme.of(context);
        final dividerColour = theme.brightness == Brightness.dark
            ? Colors.grey.shade800
            : Colors.grey.shade300;

        return EmrGroupedGrid<GplDisplayGrades, String>(
          controller: gridController,
          groupedHeaderBuilder:
              (groupedGrid, groupedGridController, groupIndex, groupItem) {
            return ColoredBox(
              color: dividerColour,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: Insets.gutter,
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'Yard: '.toUpperCase(),
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: groupItem,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          columns: [
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.grade.toUpperCase(),
                textAlign: TextAlign.left,
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
              cellBuilder: (contract) => Text(
                contract.grade,
                textAlign: TextAlign.left,
              ),
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.delPrice.toUpperCase(),
                textAlign: TextAlign.end,
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
              cellBuilder: (contract) {
                return contract.delPrice == 0
                    ? Text(
                        '-',
                        textAlign: TextAlign.end,
                        style: EmrOneConstants.kSmallSubtleTextStyle,
                      )
                    : Text(
                        '${contract.delPrice} / '
                        '${contract.uom.uomCode}',
                        textAlign: TextAlign.end,
                      );
              },
            ),
            EmrGridColumn(
              headerBuilder: () => Text(
                context.l10n.colPrice.toUpperCase(),
                textAlign: TextAlign.end,
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
              cellBuilder: (contract) {
                return contract.colPrice == 0
                    ? Text(
                        '-',
                        textAlign: TextAlign.end,
                        style: EmrOneConstants.kSmallSubtleTextStyle,
                      )
                    : Text(
                        '${contract.colPrice} / '
                        '${contract.uom.uomCode}',
                        textAlign: TextAlign.end,
                      );
              },
            ),
          ],
        );
      }
    }
  }
}
