import 'package:flutter/material.dart';
import 'package:psnop/models/headers/header_titles.dart';
import 'package:psnop/models/headers/main_header_model.dart';

class SectionVisibilityCheckboxRow extends StatefulWidget {
  const SectionVisibilityCheckboxRow({
    required this.mainHeader,
    super.key,
    this.movementsHeader,
    this.directSalesHeader,
    this.instructionsToMoveHeader,
    this.routeToMarketHeader,
    this.directSalesNotifier,
    this.instructionsToMoveNotifier,
    this.routeToMarketNotifier,
    this.movementsNotifier,
  });

  final MainHeaderModel mainHeader;
  final MainHeaderModel? movementsHeader;
  final MainHeaderModel? directSalesHeader;
  final MainHeaderModel? instructionsToMoveHeader;
  final MainHeaderModel? routeToMarketHeader;

  final ValueNotifier<bool>? directSalesNotifier;
  final ValueNotifier<bool>? instructionsToMoveNotifier;
  final ValueNotifier<bool>? routeToMarketNotifier;
  final ValueNotifier<bool>? movementsNotifier;

  @override
  State<SectionVisibilityCheckboxRow> createState() =>
      _SectionVisibilityCheckboxRowState();
}

class _SectionVisibilityCheckboxRowState
    extends State<SectionVisibilityCheckboxRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: _getCheckBox(),
        ),
      ],
    );
  }

  Widget _getCheckBox() {
    //direct sales
    if (widget.mainHeader.headerTitles == HeaderTitles.directSales) {
      return ValueListenableBuilder(
        valueListenable: widget.directSalesNotifier!,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState(() {
                widget.mainHeader.isVisible = value!;
                widget.directSalesNotifier!.value = value;

                widget.movementsNotifier!.value = false;
                widget.movementsHeader!.isVisible = false;
              });
            },
            title: Text(
              widget.mainHeader.title ?? '',
            ),
            value: widget.directSalesNotifier!.value,
          );
        },
      );
    }
    //instructions to move
    else if (widget.mainHeader.headerTitles ==
        HeaderTitles.instructionsToMove) {
      return ValueListenableBuilder(
        valueListenable: widget.instructionsToMoveNotifier!,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState(() {
                widget.mainHeader.isVisible = value!;
                widget.instructionsToMoveNotifier!.value = value;

                widget.movementsNotifier!.value = false;
                widget.movementsHeader!.isVisible = false;
              });
            },
            title: Text(
              widget.mainHeader.title ?? '',
            ),
            value: widget.instructionsToMoveNotifier!.value,
          );
        },
      );
    }
    //route to market
    else if (widget.mainHeader.headerTitles == HeaderTitles.routeToMarket) {
      return ValueListenableBuilder(
        valueListenable: widget.routeToMarketNotifier!,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState(() {
                widget.mainHeader.isVisible = value!;
                widget.routeToMarketNotifier!.value = value;

                widget.movementsNotifier!.value = false;
                widget.movementsHeader!.isVisible = false;
              });
            },
            title: Text(
              widget.mainHeader.title ?? '',
            ),
            value: widget.routeToMarketNotifier!.value,
          );
        },
      );
    }
    //movements
    else if (widget.mainHeader.headerTitles == HeaderTitles.movements) {
      return ValueListenableBuilder(
        valueListenable: widget.movementsNotifier!,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState(() {
                widget.mainHeader.isVisible = value!;
                widget.movementsNotifier!.value = value;

                widget.directSalesNotifier!.value = false;
                widget.directSalesHeader!.isVisible = false;

                widget.instructionsToMoveNotifier!.value = false;
                widget.instructionsToMoveHeader!.isVisible = false;

                widget.routeToMarketNotifier!.value = false;
                widget.routeToMarketHeader!.isVisible = false;
              });
            },
            title: Text(
              widget.mainHeader.title ?? '',
            ),
            value: widget.movementsNotifier!.value,
          );
        },
      );
    } else {
      return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (value) {
          setState(() {
            widget.mainHeader.isVisible = value!;
          });
        },
        title: Text(
          widget.mainHeader.title ?? '',
        ),
        value: widget.mainHeader.isVisible,
      );
    }
  }
}
