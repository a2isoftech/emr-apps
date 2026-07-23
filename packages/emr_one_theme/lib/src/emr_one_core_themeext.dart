import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

/// A theme Extension example with a single custom brand color property.
class EOBrandTheme extends ThemeExtension<EOBrandTheme> {
  const EOBrandTheme({
    this.brandColour,
    this.ctaColour,
    this.onBrandColour,
    this.onCtaColour,
    this.appBarBackgroundColour,
    this.appBarForegroundColour,
    this.onPsnopTableDepotTotalColour,
    this.onPsnopTableHeaderColour,
    this.onPsnopTableInstructionToMoveEvenColour,
    this.onPsnopTableInstructionToMoveOddColour,
    this.onPsnopTablePlannedMovementEvenColour,
    this.onPsnopTablePlannedMovementOddColour,
    this.onPsnopTableSubHeaderColour,
    this.onPsnopTableTicketSummaryEvenColour,
    this.onPsnopTableTicketSummaryOddColour,
    this.psnopHyperlinkColour,
    this.psnopPlannedMovementSelectedRowColour,
    this.psnopTableDepotTotalColour,
    this.psnopTableHeaderColour,
    this.psnopTableInstructionToMoveEvenColour,
    this.psnopTableInstructionToMoveOddColour,
    this.psnopTablePlannedMovementEvenColour,
    this.psnopTablePlannedMovementOddColour,
    this.psnopTableSubHeaderColour,
    this.psnopTableTicketSummaryEvenColour,
    this.psnopTableTicketSummaryOddColour,
    this.psnopTableTicketSummarySelectedRowColour,
    this.separatorColour,
    this.psnopWarningTextStyle,
    this.psnopExpandableSymbolColour,
    this.psnopExpandableSymbolAltColour,
    this.psnopGrandTotalBoxDecoration,
    this.psnopGrandTotalTextStyle,
    this.psnopRegionTotalBoxDecoration,
    this.psnopRegionTotalTextStyle,
    this.psnopDepotTotalBoxContainerDecoration,
    this.psnopDepotTotalTextStyle,
    this.psnopGradeGroupTotalBoxContainerDecoration,
    this.psnopGradeGroupTotalTextStyle,
    this.psnopGradeTextStyle,
    this.psnopSalesGradeBoxContainerDecoration,
    this.psnopGradeBoxContainerDecoration,
    this.psnopHeapBoxContainerDecoration,
    this.heapEmptyBoxContainerDecoration,
    this.yardLiveLoadsCardFilterSelectedDecoration,
    this.yardLiveLoadsCardFilterUnSelectedDecoration,
    this.yardLiveLoadsCardFilterHeaderTextStyle,
    this.yardLiveLoadsCardFilterBodyTextStyle,
    this.yardLiveLoadsCardFilterBtnSelectedTextStyle,
    this.yardLiveLoadsCardFilterBtnUnSelectedTextStyle,
    this.yardLiveLoadsCardFilterBtnStyle,
    this.yardLiveLoadsBtnFilterSelectedBtnStyle,
    this.yardLiveLoadsBtnFilterUnSelectedBtnStyle,
  });
  final Color? brandColour;
  final Color? ctaColour;
  final Color? onBrandColour;
  final Color? onCtaColour;
  final Color? onPsnopTableDepotTotalColour;
  final Color? onPsnopTableHeaderColour;
  final Color? onPsnopTableInstructionToMoveEvenColour;
  final Color? onPsnopTableInstructionToMoveOddColour;
  final Color? onPsnopTablePlannedMovementEvenColour;
  final Color? onPsnopTablePlannedMovementOddColour;
  final Color? onPsnopTableSubHeaderColour;
  final Color? onPsnopTableTicketSummaryEvenColour;
  final Color? onPsnopTableTicketSummaryOddColour;
  final Color? psnopHyperlinkColour;
  final Color? psnopPlannedMovementSelectedRowColour;
  final Color? psnopTableDepotTotalColour;
  final Color? psnopTableHeaderColour;
  final Color? psnopTableInstructionToMoveEvenColour;
  final Color? psnopTableInstructionToMoveOddColour;
  final Color? psnopTablePlannedMovementEvenColour;
  final Color? psnopTablePlannedMovementOddColour;
  final Color? psnopTableSubHeaderColour;
  final Color? psnopTableTicketSummaryEvenColour;
  final Color? psnopTableTicketSummaryOddColour;
  final Color? psnopTableTicketSummarySelectedRowColour;
  final Color? separatorColour;
  final Color? appBarBackgroundColour;
  final Color? appBarForegroundColour;

  final TextStyle? psnopWarningTextStyle;

  final Color? psnopExpandableSymbolColour;
  final Color? psnopExpandableSymbolAltColour;

  final BoxDecoration? psnopGrandTotalBoxDecoration;
  final TextStyle? psnopGrandTotalTextStyle;

  final BoxDecoration? psnopRegionTotalBoxDecoration;
  final TextStyle? psnopRegionTotalTextStyle;

  final BoxDecoration? psnopDepotTotalBoxContainerDecoration;
  final TextStyle? psnopDepotTotalTextStyle;

  final BoxDecoration? psnopGradeGroupTotalBoxContainerDecoration;
  final TextStyle? psnopGradeGroupTotalTextStyle;

  final TextStyle? psnopGradeTextStyle;

  final BoxDecoration? psnopSalesGradeBoxContainerDecoration;

  final BoxDecoration? psnopGradeBoxContainerDecoration;

  final BoxDecoration? psnopHeapBoxContainerDecoration;

  final BoxDecoration? heapEmptyBoxContainerDecoration;

  final BoxDecoration? yardLiveLoadsCardFilterSelectedDecoration;

  final BoxDecoration? yardLiveLoadsCardFilterUnSelectedDecoration;

  final TextStyle? yardLiveLoadsCardFilterHeaderTextStyle;

  final TextStyle? yardLiveLoadsCardFilterBodyTextStyle;

  final TextStyle? yardLiveLoadsCardFilterBtnSelectedTextStyle;

  final TextStyle? yardLiveLoadsCardFilterBtnUnSelectedTextStyle;

  final ButtonStyle? yardLiveLoadsCardFilterBtnStyle;
  final ButtonStyle? yardLiveLoadsBtnFilterSelectedBtnStyle;
  final ButtonStyle? yardLiveLoadsBtnFilterUnSelectedBtnStyle;

  // You must override the copyWith method.
  @override
  EOBrandTheme copyWith({
    Color? brandColour,
    Color? ctaColour,
    Color? onBrandColour,
    Color? onCtaColour,
    Color? appBarBackgroundColour,
    Color? appBarForegroundColour,
    Color? onPsnopTableDepotTotalColour,
    Color? onPsnopTableHeaderColour,
    Color? onPsnopTableInstructionToMoveEvenColour,
    Color? onPsnopTableInstructionToMoveOddColour,
    Color? onPsnopTablePlannedMovementEvenColour,
    Color? onPsnopTablePlannedMovementOddColour,
    Color? onPsnopTableSubHeaderColour,
    Color? onPsnopTableTicketSummaryEvenColour,
    Color? onPsnopTableTicketSummaryOddColour,
    Color? psnopHyperlinkColour,
    Color? psnopPlannedMovementSelectedRowColour,
    Color? psnopTableDepotTotalColour,
    Color? psnopTableHeaderColour,
    Color? psnopTableInstructionToMoveEvenColour,
    Color? psnopTableInstructionToMoveOddColour,
    Color? psnopTablePlannedMovementEvenColour,
    Color? psnopTablePlannedMovementOddColour,
    Color? psnopTableSubHeaderColour,
    Color? psnopTableTicketSummaryEvenColour,
    Color? psnopTableTicketSummaryOddColour,
    Color? psnopTableTicketSummarySelectedRowColour,
    Color? separatorColour,
    UnderlineInputBorder? enabledUnderlineBorder,
    TextStyle? psnopWarningTextStyle,
    Color? psnopExpandableSymbolColour,
    Color? psnopExpandableSymbolAltColour,
    BoxDecoration? psnopTotalsBoxDecoration,
    TextStyle? psnopTableTotalTextStyle,
    BoxDecoration? psnopRegionsTotalsBoxDecoration,
    TextStyle? psnopRegionsTableTotalTextStyle,
    BoxDecoration? psnopDepotTableTotalBoxContainerDecoration,
    TextStyle? psnopDepotTableTotalTextStyle,
    BoxDecoration? psnopGradeGroupTableTotalBoxContainerDecoration,
    TextStyle? psnopGradeGroupTableTotalTextStyle,
    TextStyle? psnopGradeTableTextStyle,
    BoxDecoration? psnopSalesGradeTableTotalBoxContainerDecoration,
    BoxDecoration? psnopGradeTableTotalBoxContainerDecoration,
    BoxDecoration? psnopHeapTableBoxContainerDecoration,
    BoxDecoration? viewCardFilterSelectedDecoration,
    BoxDecoration? viewCardFilterUnSelectedDecoration,
    TextStyle? viewCardHeaderTextStyle,
    TextStyle? viewCardBodyTextStyle,
    TextStyle? viewCardBtnSelectedTextStyle,
    TextStyle? viewCardBtnUnSelectedTextStyle,
    ButtonStyle? viewCardBtnStyle,
    ButtonStyle? btnCardSelectedBtnStyle,
    ButtonStyle? btnCardUnSelectedBtnStyle,
  }) =>
      EOBrandTheme(
        brandColour: brandColour ?? this.brandColour,
        ctaColour: ctaColour ?? this.ctaColour,
        appBarBackgroundColour:
            appBarBackgroundColour ?? this.appBarBackgroundColour,
        appBarForegroundColour:
            appBarForegroundColour ?? this.appBarForegroundColour,
        onBrandColour: onBrandColour ?? this.onBrandColour,
        onCtaColour: onCtaColour ?? this.onCtaColour,
        onPsnopTableDepotTotalColour:
            onPsnopTableDepotTotalColour ?? this.onPsnopTableDepotTotalColour,
        onPsnopTableHeaderColour:
            onPsnopTableHeaderColour ?? this.onPsnopTableHeaderColour,
        onPsnopTableInstructionToMoveEvenColour:
            onPsnopTableInstructionToMoveEvenColour ??
                this.onPsnopTableInstructionToMoveEvenColour,
        onPsnopTableInstructionToMoveOddColour:
            onPsnopTableInstructionToMoveOddColour ??
                this.onPsnopTableInstructionToMoveOddColour,
        onPsnopTablePlannedMovementEvenColour:
            onPsnopTablePlannedMovementEvenColour ??
                this.onPsnopTablePlannedMovementEvenColour,
        onPsnopTablePlannedMovementOddColour:
            onPsnopTablePlannedMovementOddColour ??
                this.onPsnopTablePlannedMovementOddColour,
        onPsnopTableSubHeaderColour:
            onPsnopTableSubHeaderColour ?? this.onPsnopTableSubHeaderColour,
        onPsnopTableTicketSummaryEvenColour:
            onPsnopTableTicketSummaryEvenColour ??
                this.onPsnopTableTicketSummaryEvenColour,
        onPsnopTableTicketSummaryOddColour:
            onPsnopTableTicketSummaryOddColour ??
                this.onPsnopTableTicketSummaryOddColour,
        psnopHyperlinkColour: psnopHyperlinkColour ?? this.psnopHyperlinkColour,
        psnopPlannedMovementSelectedRowColour:
            psnopPlannedMovementSelectedRowColour ??
                this.psnopPlannedMovementSelectedRowColour,
        psnopTableDepotTotalColour:
            psnopTableDepotTotalColour ?? this.psnopTableDepotTotalColour,
        psnopTableHeaderColour:
            psnopTableHeaderColour ?? this.psnopTableHeaderColour,
        psnopTableInstructionToMoveEvenColour:
            psnopTableInstructionToMoveEvenColour ??
                this.psnopTableInstructionToMoveEvenColour,
        psnopTableInstructionToMoveOddColour:
            psnopTableInstructionToMoveOddColour ??
                this.psnopTableInstructionToMoveOddColour,
        psnopTablePlannedMovementEvenColour:
            psnopTablePlannedMovementEvenColour ??
                this.psnopTablePlannedMovementEvenColour,
        psnopTablePlannedMovementOddColour:
            psnopTablePlannedMovementOddColour ??
                this.psnopTablePlannedMovementOddColour,
        psnopTableSubHeaderColour:
            psnopTableSubHeaderColour ?? this.psnopTableSubHeaderColour,
        psnopTableTicketSummaryEvenColour: psnopTableTicketSummaryEvenColour ??
            this.psnopTableTicketSummaryEvenColour,
        psnopTableTicketSummaryOddColour: psnopTableTicketSummaryOddColour ??
            this.psnopTableTicketSummaryOddColour,
        psnopTableTicketSummarySelectedRowColour:
            psnopTableTicketSummarySelectedRowColour ??
                this.psnopTableTicketSummarySelectedRowColour,
        separatorColour: separatorColour ?? this.separatorColour,
        psnopWarningTextStyle:
            psnopWarningTextStyle ?? this.psnopWarningTextStyle,
        psnopExpandableSymbolColour:
            psnopExpandableSymbolColour ?? this.psnopExpandableSymbolColour,
        psnopExpandableSymbolAltColour: psnopExpandableSymbolAltColour ??
            this.psnopExpandableSymbolAltColour,
        psnopGrandTotalBoxDecoration:
            psnopTotalsBoxDecoration ?? psnopGrandTotalBoxDecoration,
        psnopGrandTotalTextStyle:
            psnopTableTotalTextStyle ?? psnopGrandTotalTextStyle,
        psnopRegionTotalBoxDecoration:
            psnopRegionsTotalsBoxDecoration ?? psnopRegionTotalBoxDecoration,
        psnopRegionTotalTextStyle:
            psnopRegionsTableTotalTextStyle ?? psnopRegionTotalTextStyle,
        psnopDepotTotalBoxContainerDecoration:
            psnopDepotTableTotalBoxContainerDecoration ??
                psnopDepotTotalBoxContainerDecoration,
        psnopDepotTotalTextStyle:
            psnopDepotTableTotalTextStyle ?? psnopDepotTotalTextStyle,
        psnopGradeGroupTotalBoxContainerDecoration:
            psnopGradeGroupTableTotalBoxContainerDecoration ??
                psnopGradeGroupTotalBoxContainerDecoration,
        psnopGradeGroupTotalTextStyle:
            psnopGradeGroupTableTotalTextStyle ?? psnopGradeGroupTotalTextStyle,
        psnopGradeTextStyle: psnopGradeTableTextStyle ?? psnopGradeTextStyle,
        psnopSalesGradeBoxContainerDecoration:
            psnopSalesGradeTableTotalBoxContainerDecoration ??
                psnopSalesGradeBoxContainerDecoration,
        psnopGradeBoxContainerDecoration: psnopGradeBoxContainerDecoration ??
            psnopGradeBoxContainerDecoration,
        psnopHeapBoxContainerDecoration: psnopHeapTableBoxContainerDecoration ??
            psnopHeapBoxContainerDecoration,
        heapEmptyBoxContainerDecoration:
            heapEmptyBoxContainerDecoration ?? heapEmptyBoxContainerDecoration,
        yardLiveLoadsCardFilterSelectedDecoration:
            viewCardFilterSelectedDecoration ??
                yardLiveLoadsCardFilterSelectedDecoration,
        yardLiveLoadsCardFilterUnSelectedDecoration:
            viewCardFilterUnSelectedDecoration ??
                yardLiveLoadsCardFilterUnSelectedDecoration,
        yardLiveLoadsCardFilterHeaderTextStyle:
            viewCardHeaderTextStyle ?? yardLiveLoadsCardFilterHeaderTextStyle,
        yardLiveLoadsCardFilterBodyTextStyle:
            viewCardBodyTextStyle ?? yardLiveLoadsCardFilterBodyTextStyle,
        yardLiveLoadsCardFilterBtnSelectedTextStyle:
            viewCardBtnSelectedTextStyle ??
                yardLiveLoadsCardFilterBtnSelectedTextStyle,
        yardLiveLoadsCardFilterBtnUnSelectedTextStyle:
            viewCardBtnUnSelectedTextStyle ??
                yardLiveLoadsCardFilterBtnUnSelectedTextStyle,
        yardLiveLoadsCardFilterBtnStyle:
            viewCardBtnStyle ?? yardLiveLoadsCardFilterBtnStyle,
        yardLiveLoadsBtnFilterSelectedBtnStyle:
            btnCardSelectedBtnStyle ?? yardLiveLoadsBtnFilterSelectedBtnStyle,
        yardLiveLoadsBtnFilterUnSelectedBtnStyle: btnCardUnSelectedBtnStyle ??
            yardLiveLoadsBtnFilterUnSelectedBtnStyle,
      );

  // You must override the lerp method.
  @override
  EOBrandTheme lerp(
    ThemeExtension<EOBrandTheme>? other,
    double t,
  ) {
    if (other is! EOBrandTheme) {
      return this;
    }
    return EOBrandTheme(
      brandColour: Color.lerp(
        brandColour,
        other.brandColour,
        t,
      ),
      ctaColour: Color.lerp(
        ctaColour,
        other.ctaColour,
        t,
      ),
      appBarBackgroundColour: Color.lerp(
        appBarBackgroundColour,
        other.appBarBackgroundColour,
        t,
      ),
      appBarForegroundColour: Color.lerp(
        appBarForegroundColour,
        other.appBarForegroundColour,
        t,
      ),
      onBrandColour: Color.lerp(
        onBrandColour,
        other.onBrandColour,
        t,
      ),
      onCtaColour: Color.lerp(
        onCtaColour,
        other.onCtaColour,
        t,
      ),
      onPsnopTableDepotTotalColour: Color.lerp(
        onPsnopTableDepotTotalColour,
        other.onPsnopTableDepotTotalColour,
        t,
      ),
      onPsnopTableHeaderColour: Color.lerp(
        onPsnopTableHeaderColour,
        other.onPsnopTableHeaderColour,
        t,
      ),
      onPsnopTableInstructionToMoveEvenColour: Color.lerp(
        onPsnopTableInstructionToMoveEvenColour,
        other.onPsnopTableInstructionToMoveEvenColour,
        t,
      ),
      onPsnopTableInstructionToMoveOddColour: Color.lerp(
        onPsnopTableInstructionToMoveOddColour,
        other.onPsnopTableInstructionToMoveOddColour,
        t,
      ),
      onPsnopTablePlannedMovementEvenColour: Color.lerp(
        onPsnopTablePlannedMovementEvenColour,
        other.onPsnopTablePlannedMovementEvenColour,
        t,
      ),
      onPsnopTablePlannedMovementOddColour: Color.lerp(
        onPsnopTablePlannedMovementOddColour,
        other.onPsnopTablePlannedMovementOddColour,
        t,
      ),
      onPsnopTableSubHeaderColour: Color.lerp(
        onPsnopTableSubHeaderColour,
        other.onPsnopTableSubHeaderColour,
        t,
      ),
      onPsnopTableTicketSummaryEvenColour: Color.lerp(
        onPsnopTableTicketSummaryEvenColour,
        other.onPsnopTableTicketSummaryEvenColour,
        t,
      ),
      onPsnopTableTicketSummaryOddColour: Color.lerp(
        onPsnopTableTicketSummaryOddColour,
        other.onPsnopTableTicketSummaryOddColour,
        t,
      ),
      psnopHyperlinkColour: Color.lerp(
        psnopHyperlinkColour,
        other.psnopHyperlinkColour,
        t,
      ),
      psnopPlannedMovementSelectedRowColour: Color.lerp(
        psnopPlannedMovementSelectedRowColour,
        other.psnopPlannedMovementSelectedRowColour,
        t,
      ),
      psnopTableDepotTotalColour: Color.lerp(
        psnopTableDepotTotalColour,
        other.psnopTableDepotTotalColour,
        t,
      ),
      psnopTableHeaderColour: Color.lerp(
        psnopTableHeaderColour,
        other.psnopTableHeaderColour,
        t,
      ),
      psnopTableInstructionToMoveEvenColour: Color.lerp(
        psnopTableInstructionToMoveEvenColour,
        other.psnopTableInstructionToMoveEvenColour,
        t,
      ),
      psnopTableInstructionToMoveOddColour: Color.lerp(
        psnopTableInstructionToMoveOddColour,
        other.psnopTableInstructionToMoveOddColour,
        t,
      ),
      psnopTablePlannedMovementEvenColour: Color.lerp(
        psnopTablePlannedMovementEvenColour,
        other.psnopTablePlannedMovementEvenColour,
        t,
      ),
      psnopTablePlannedMovementOddColour: Color.lerp(
        psnopTablePlannedMovementOddColour,
        other.psnopTablePlannedMovementOddColour,
        t,
      ),
      psnopTableSubHeaderColour: Color.lerp(
        psnopTableSubHeaderColour,
        other.psnopTableSubHeaderColour,
        t,
      ),
      psnopTableTicketSummaryEvenColour: Color.lerp(
        psnopTableTicketSummaryEvenColour,
        other.psnopTableTicketSummaryEvenColour,
        t,
      ),
      psnopTableTicketSummaryOddColour: Color.lerp(
        psnopTableTicketSummaryOddColour,
        other.psnopTableTicketSummaryOddColour,
        t,
      ),
      psnopTableTicketSummarySelectedRowColour: Color.lerp(
        psnopTableTicketSummarySelectedRowColour,
        other.psnopTableTicketSummarySelectedRowColour,
        t,
      ),
      separatorColour: Color.lerp(
        separatorColour,
        other.separatorColour,
        t,
      ),
      psnopWarningTextStyle: other.psnopWarningTextStyle,
      psnopExpandableSymbolColour: Color.lerp(
        psnopExpandableSymbolColour,
        other.psnopExpandableSymbolColour,
        t,
      ),
      psnopExpandableSymbolAltColour: Color.lerp(
        psnopExpandableSymbolAltColour,
        other.psnopExpandableSymbolAltColour,
        t,
      ),
      psnopGrandTotalBoxDecoration: other.psnopGrandTotalBoxDecoration,
      psnopGrandTotalTextStyle: other.psnopGrandTotalTextStyle,
      psnopRegionTotalBoxDecoration: other.psnopRegionTotalBoxDecoration,
      psnopRegionTotalTextStyle: other.psnopRegionTotalTextStyle,
      psnopDepotTotalBoxContainerDecoration:
          other.psnopDepotTotalBoxContainerDecoration,
      psnopDepotTotalTextStyle: other.psnopDepotTotalTextStyle,
      psnopGradeGroupTotalBoxContainerDecoration:
          other.psnopGradeGroupTotalBoxContainerDecoration,
      psnopGradeGroupTotalTextStyle: other.psnopGradeGroupTotalTextStyle,
      psnopGradeTextStyle: other.psnopGradeTextStyle,
      psnopSalesGradeBoxContainerDecoration:
          other.psnopSalesGradeBoxContainerDecoration,
      psnopGradeBoxContainerDecoration: other.psnopGradeBoxContainerDecoration,
      psnopHeapBoxContainerDecoration: other.psnopHeapBoxContainerDecoration,
      heapEmptyBoxContainerDecoration: other.heapEmptyBoxContainerDecoration,
      yardLiveLoadsCardFilterSelectedDecoration:
          other.yardLiveLoadsCardFilterSelectedDecoration,
      yardLiveLoadsCardFilterUnSelectedDecoration:
          other.yardLiveLoadsCardFilterUnSelectedDecoration,
      yardLiveLoadsCardFilterHeaderTextStyle:
          other.yardLiveLoadsCardFilterHeaderTextStyle,
      yardLiveLoadsCardFilterBodyTextStyle:
          other.yardLiveLoadsCardFilterBodyTextStyle,
      yardLiveLoadsCardFilterBtnSelectedTextStyle:
          other.yardLiveLoadsCardFilterBtnSelectedTextStyle,
      yardLiveLoadsCardFilterBtnUnSelectedTextStyle:
          other.yardLiveLoadsCardFilterBtnUnSelectedTextStyle,
      yardLiveLoadsCardFilterBtnStyle: other.yardLiveLoadsCardFilterBtnStyle,
      yardLiveLoadsBtnFilterSelectedBtnStyle:
          other.yardLiveLoadsBtnFilterSelectedBtnStyle,
      yardLiveLoadsBtnFilterUnSelectedBtnStyle:
          other.yardLiveLoadsBtnFilterUnSelectedBtnStyle,
    );
  }
}

// Custom const theme with our brand color in light mode.
const EOBrandTheme defaultLightBrandTheme = EOBrandTheme(
  brandColour: Color(0xFF125489),
  ctaColour: Color(0xFF5DAF0F),
  onBrandColour: Colors.white,
  onCtaColour: Colors.white,
  appBarBackgroundColour: Color(0xFF333236),
  appBarForegroundColour: Colors.white,
  onPsnopTableDepotTotalColour: Colors.black,
  onPsnopTableHeaderColour: Colors.white,
  onPsnopTableInstructionToMoveEvenColour: Colors.black,
  onPsnopTableInstructionToMoveOddColour: Colors.black,
  onPsnopTablePlannedMovementEvenColour: Colors.black,
  onPsnopTablePlannedMovementOddColour: Colors.black,
  onPsnopTableSubHeaderColour: Colors.white,
  onPsnopTableTicketSummaryEvenColour: Colors.black,
  onPsnopTableTicketSummaryOddColour: Colors.black,
  psnopHyperlinkColour: Colors.blue,
  psnopPlannedMovementSelectedRowColour: Color.fromARGB(255, 253, 229, 215),
  psnopTableDepotTotalColour: EmrColours.primaryGreen,
  psnopTableHeaderColour: Color.fromARGB(255, 127, 156, 183),
  psnopTableInstructionToMoveEvenColour: Color.fromARGB(255, 255, 255, 255),
  psnopTableInstructionToMoveOddColour: Color.fromARGB(255, 245, 245, 245),
  psnopTablePlannedMovementEvenColour: Color.fromARGB(255, 255, 255, 255),
  psnopTablePlannedMovementOddColour: Color.fromARGB(255, 245, 245, 245),
  psnopTableSubHeaderColour: EmrColours.primaryBlue,
  psnopTableTicketSummaryEvenColour: Color.fromARGB(255, 255, 255, 255),
  psnopTableTicketSummaryOddColour: Color.fromARGB(255, 245, 245, 245),
  psnopTableTicketSummarySelectedRowColour: Color.fromARGB(255, 253, 229, 215),
  separatorColour: Color.fromARGB(255, 233, 233, 233),
  psnopWarningTextStyle: TextStyle(
    color: Colors.red,
  ),
  psnopExpandableSymbolColour: Color.fromARGB(255, 255, 255, 255),
  psnopExpandableSymbolAltColour: Color.fromARGB(255, 0, 0, 0),
  psnopGrandTotalBoxDecoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 255, 255, 255),
        width: 2,
      ),
    ),
    color: Color.fromARGB(255, 31, 128, 87),
  ),
  psnopGrandTotalTextStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  psnopRegionTotalBoxDecoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 255, 255, 255),
        width: 2,
      ),
    ),
    color: Color.fromARGB(255, 51, 50, 54),
  ),
  psnopRegionTotalTextStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  psnopDepotTotalBoxContainerDecoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 39, 157, 212),
        width: 2,
      ),
    ),
    color: Color.fromARGB(255, 200, 225, 240),
  ),
  psnopDepotTotalTextStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 0, 0),
  ),
  psnopGradeGroupTotalBoxContainerDecoration: BoxDecoration(
    color: Color.fromARGB(255, 250, 240, 200),
  ),
  psnopGradeGroupTotalTextStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 0, 0),
  ),
  psnopGradeTextStyle: TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
  ),
  psnopSalesGradeBoxContainerDecoration: BoxDecoration(
    color: Color.fromARGB(255, 185, 210, 235),
  ),
  psnopGradeBoxContainerDecoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 240, 205, 45),
        width: 2,
      ),
    ),
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  psnopHeapBoxContainerDecoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 255, 255, 255),
        width: 2,
      ),
    ),
    color: Color.fromARGB(255, 240, 240, 240),
  ),
  heapEmptyBoxContainerDecoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  yardLiveLoadsCardFilterSelectedDecoration: BoxDecoration(
    border: Border(
      top: BorderSide(),
      bottom: BorderSide(),
      left: BorderSide(),
      right: BorderSide(),
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
    color: Color(0xFFEDCE2C),
  ),
  yardLiveLoadsCardFilterUnSelectedDecoration: BoxDecoration(
    border: Border(
      top: BorderSide(),
      bottom: BorderSide(),
      left: BorderSide(),
      right: BorderSide(),
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  yardLiveLoadsCardFilterHeaderTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Color(0xFF003A70),
  ),
  yardLiveLoadsCardFilterBodyTextStyle: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w900,
    color: Color(0xFF003A70),
  ),
  yardLiveLoadsCardFilterBtnSelectedTextStyle: TextStyle(
    fontSize: 13,
    color: Color(0xFFEDCE2C),
  ),
  yardLiveLoadsCardFilterBtnUnSelectedTextStyle: TextStyle(
    fontSize: 13,
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  yardLiveLoadsCardFilterBtnStyle: ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Color(0xFF003A70)),
    shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
    minimumSize: WidgetStatePropertyAll(Size.fromHeight(35)),
  ),
  yardLiveLoadsBtnFilterSelectedBtnStyle: ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Color(0xEE9BDE01)),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
      ),
    ),
    minimumSize: WidgetStatePropertyAll(
      Size(100, 50),
    ),
  ),
  yardLiveLoadsBtnFilterUnSelectedBtnStyle: ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
      ),
    ),
    side: WidgetStatePropertyAll(
      BorderSide(width: 2),
    ),
    minimumSize: WidgetStatePropertyAll(
      Size(100, 50),
    ),
  ),
);

// Custom const theme with our brand color in dark mode.
const EOBrandTheme defaultDarkBrandTheme = EOBrandTheme(
  brandColour: Color(0xFF125489),
  ctaColour: Color(0xFF5DAF0F),
  onBrandColour: Colors.white,
  onCtaColour: Colors.white,
  appBarBackgroundColour: Color(0xFF333236),
  appBarForegroundColour: Colors.white,
  onPsnopTableDepotTotalColour: Colors.black,
  onPsnopTableHeaderColour: Colors.white,
  onPsnopTableInstructionToMoveEvenColour: Colors.black,
  onPsnopTableInstructionToMoveOddColour: Colors.black,
  onPsnopTablePlannedMovementEvenColour: Colors.black,
  onPsnopTablePlannedMovementOddColour: Colors.black,
  onPsnopTableSubHeaderColour: Colors.white,
  onPsnopTableTicketSummaryEvenColour: Colors.black,
  onPsnopTableTicketSummaryOddColour: Colors.black,
  psnopHyperlinkColour: Colors.blue,
  psnopPlannedMovementSelectedRowColour: Color.fromARGB(255, 253, 229, 215),
  psnopTableDepotTotalColour: EmrColours.primaryGreen,
  psnopTableHeaderColour: Color.fromARGB(255, 127, 156, 183),
  psnopTableInstructionToMoveEvenColour: Color.fromARGB(255, 255, 255, 255),
  psnopTableInstructionToMoveOddColour: Color.fromARGB(255, 245, 245, 245),
  psnopTablePlannedMovementEvenColour: Color.fromARGB(255, 255, 255, 255),
  psnopTablePlannedMovementOddColour: Color.fromARGB(255, 245, 245, 245),
  psnopTableSubHeaderColour: EmrColours.primaryBlue,
  psnopTableTicketSummaryEvenColour: Color.fromARGB(255, 255, 255, 255),
  psnopTableTicketSummaryOddColour: Color.fromARGB(255, 245, 245, 245),
  psnopTableTicketSummarySelectedRowColour: Color.fromARGB(255, 253, 229, 215),
  separatorColour: Color.fromARGB(255, 233, 233, 233),
  psnopWarningTextStyle: TextStyle(
    color: Colors.red,
  ),
  psnopExpandableSymbolColour: Color.fromARGB(255, 255, 255, 255),
  psnopExpandableSymbolAltColour: Color.fromARGB(255, 0, 0, 0),
  psnopGrandTotalBoxDecoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 255, 255, 255),
        width: 2,
      ),
    ),
    color: Color.fromARGB(255, 31, 128, 87),
  ),
  psnopGrandTotalTextStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  psnopRegionTotalBoxDecoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 255, 255, 255),
        width: 2,
      ),
    ),
    color: Color.fromARGB(255, 51, 50, 54),
  ),
  psnopRegionTotalTextStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  psnopDepotTotalBoxContainerDecoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 39, 157, 212),
        width: 2,
      ),
    ),
    color: Color.fromARGB(255, 200, 225, 240),
  ),
  psnopDepotTotalTextStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 0, 0),
  ),
  psnopGradeGroupTotalBoxContainerDecoration: BoxDecoration(
    color: Color.fromARGB(255, 250, 240, 200),
  ),
  psnopGradeGroupTotalTextStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 0, 0),
  ),
  psnopGradeTextStyle: TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
  ),
  psnopSalesGradeBoxContainerDecoration: BoxDecoration(
    color: Color.fromARGB(255, 185, 210, 235),
  ),
  psnopGradeBoxContainerDecoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 240, 205, 45),
        width: 2,
      ),
    ),
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  psnopHeapBoxContainerDecoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(255, 255, 255, 255),
        width: 2,
      ),
    ),
    color: Color.fromARGB(255, 240, 240, 240),
  ),
  heapEmptyBoxContainerDecoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  yardLiveLoadsCardFilterSelectedDecoration: BoxDecoration(
    border: Border(
      top: BorderSide(),
      bottom: BorderSide(),
      left: BorderSide(),
      right: BorderSide(),
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
    color: Color(0xFFEDCE2C),
  ),
  yardLiveLoadsCardFilterUnSelectedDecoration: BoxDecoration(
    border: Border(
      top: BorderSide(),
      bottom: BorderSide(),
      left: BorderSide(),
      right: BorderSide(),
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  yardLiveLoadsCardFilterHeaderTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Color(0xFF003A70),
  ),
  yardLiveLoadsCardFilterBodyTextStyle: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w900,
    color: Color(0xFF003A70),
  ),
  yardLiveLoadsCardFilterBtnSelectedTextStyle: TextStyle(
    fontSize: 13,
    color: Color(0xFFEDCE2C),
  ),
  yardLiveLoadsCardFilterBtnUnSelectedTextStyle: TextStyle(
    fontSize: 13,
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  yardLiveLoadsCardFilterBtnStyle: ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Color(0xFF003A70)),
    shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
    minimumSize: WidgetStatePropertyAll(Size.fromHeight(35)),
  ),
  yardLiveLoadsBtnFilterSelectedBtnStyle: ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Color(0xEE9BDE01)),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
      ),
    ),
    minimumSize: WidgetStatePropertyAll(
      Size(100, 50),
    ),
  ),
  yardLiveLoadsBtnFilterUnSelectedBtnStyle: ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Color(0xFF003A70)),
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
      ),
    ),
    side: WidgetStatePropertyAll(
      BorderSide(width: 2),
    ),
    minimumSize: WidgetStatePropertyAll(
      Size(100, 50),
    ),
  ),
);
