import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/controllers/lot_stick_assessment_controller.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class LotStickAssessmentDlg extends StatefulWidget {
  const LotStickAssessmentDlg({
    required this.lot,
    required this.lotProductCompositionMapList,
    super.key,
  });

  final Lot lot;
  final List<LotProductCompositionMap> lotProductCompositionMapList;

  @override
  State<LotStickAssessmentDlg> createState() => _LotStickAssessmentDlgState();
}

class _LotStickAssessmentDlgState extends State<LotStickAssessmentDlg> {
  late LotStickAssessmentController _controller;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _controller = LotStickAssessmentController(
      widget.lot,
      widget.lotProductCompositionMapList,
    );

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        children: [
          Expanded(
            child: StickAssessmentPages(
              controller: _controller,
              pageController: _pageController,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: Text(context.l10n.cancel),
              ),
              Text(
                'Step ${_controller.currentPageIndex.watch(context) + 1} of '
                '${_controller.totalPages.watch(context)}',
              ),
              ElevatedButton(
                onPressed: _controller.isComplete.watch(context)
                    ? () async {
                        if (_controller.showWarningForPercentages) {
                          await EmrDialog.noYes(
                            context,
                            titleText:
                                'Percentages added are equal/more than 95% '
                                'Are you sure you want to continue? ',
                            onYes: _returnNavigation,
                          );
                        } else {
                          _returnNavigation();
                        }
                      }
                    : _controller.currentPageIndex.watch(context) + 1 <
                            _controller.totalPages.value
                        ? () {
                            _controller.currentPageIndex.value++;
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        : null,
                child: Text(
                  _controller.isComplete.watch(context)
                      ? context.l10n.ok
                      : _controller.currentPageIndex.watch(context) + 1 <
                              _controller.totalPages.watch(context)
                          ? context.l10n.next
                          : context.l10n.ok,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _returnNavigation() {
    widget.lot.sourceInventoryLocationInfo = InventoryLocationInfo(
      id: '',
      trade2Key: 0,
      description: '',
      productId: _controller.lotProductInfo.value!.id,
    );

    Navigator.of(context, rootNavigator: true).pop({
      YlConstants.epLotOuterCasing: _controller.outerCasing.value,
      YlConstants.epLotInnerComposition: _controller.innerCasing.value,
      YlConstants.epLotCircumference: _controller.circumference.value,
      YlConstants.epLotDryCopperPercentage:
          _controller.dryCopperPercentage.value,
      YlConstants.epLotLeadPercentage: _controller.leadPercentage.value,
      YlConstants.epLotGreasyCopperPercentage:
          _controller.greasyCopperPercentage.value,
      YlConstants.epLotAluminiumPercentage:
          _controller.aluminiumPercentage.value,
    });
  }
}
