import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

/// Much of the code in this file is lifted from the Flutter SDK's
/// `showDatePicker` function. The main difference is that this version
/// allows the user to select a date range.
///
/// Because a lot of the code is from the SDK it does not strictly
/// follow the same coding guidelines we apply elsewhere in EMRApps.
/// However the choice to lift the code in this was was made in the interests
/// of time and compatibility. Much of the code below is concerned with
/// ensuring the dialog is displayed correctly in different orientations etc

const Size _calendarPortraitDialogSizeM3 = Size(328, 512);
const Size _calendarLandscapeDialogSize = Size(496, 346);
const double _kMaxTextScaleFactor = 1.3;

/// Shows a dialog containing a Material Design date range picker.
///
/// The returned [Future] resolves to the dates selected by the user when the
/// user confirms the dialog. If the user cancels the dialog, null is returned.
Future<(DateTime, DateTime)?> showEmrDateRangePicker({
  required BuildContext context,
  required DateTime firstDate,
  required DateTime lastDate,
  DateTime? currentDate,
  DateTime? dateRangeStart,
  DateTime? dateRangeEnd,
  String? cancelText,
  String? confirmText,
  bool barrierDismissible = true,
  Color? barrierColor,
  String? barrierLabel,
  bool useRootNavigator = true,
}) async {
  final firstDateOnly = DateUtils.dateOnly(firstDate);
  final lastDateOnly = DateUtils.dateOnly(lastDate);

  assert(
    !lastDateOnly.isBefore(firstDateOnly),
    'lastDate $lastDateOnly must be on or after firstDate $firstDateOnly.',
  );

  return showDialog<(DateTime, DateTime)?>(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
    barrierLabel: barrierLabel,
    useRootNavigator: useRootNavigator,
    builder: (context) {
      return EmrDateRangePickerDialog(
        firstDate: firstDateOnly,
        lastDate: lastDateOnly,
        currentDate: currentDate,
        cancelText: cancelText,
        confirmText: confirmText,
        dateRangeStart: dateRangeStart,
        dateRangeEnd: dateRangeEnd,
      );
    },
  );
}

class EmrDateRangePickerDialog extends StatefulWidget {
  EmrDateRangePickerDialog({
    required DateTime firstDate,
    required DateTime lastDate,
    DateTime? currentDate,
    super.key,
    this.cancelText,
    this.confirmText,
    this.helpText,
    this.dateRangeStart,
    this.dateRangeEnd,
  }) : currentDate = currentDate ?? DateTime.now(),
       firstDate = DateUtils.dateOnly(firstDate),
       lastDate = DateUtils.dateOnly(lastDate);

  /// The earliest allowable [DateTime] that the user can select.
  final DateTime firstDate;

  /// The latest allowable [DateTime] that the user can select.
  final DateTime lastDate;

  /// The start date of the currently selected date range.
  final DateTime? dateRangeStart;

  /// The end date of the currently selected date range.
  final DateTime? dateRangeEnd;

  /// The [DateTime] representing today. It will be highlighted in the day grid.
  final DateTime currentDate;

  /// The text that is displayed on the cancel button.
  final String? cancelText;

  /// The text that is displayed on the confirm button.
  final String? confirmText;

  final String? helpText;

  @override
  State<EmrDateRangePickerDialog> createState() =>
      _EmrDateRangePickerDialogState();
}

class _EmrDateRangePickerDialogState extends State<EmrDateRangePickerDialog> {
  late DateTime? _selectedDateRangeStart;
  late DateTime? _selectedDateRangeEnd;

  Size _dialogSize(BuildContext context) {
    final orientation = MediaQuery.orientationOf(context);

    return switch (orientation) {
      Orientation.portrait => _calendarPortraitDialogSizeM3,
      Orientation.landscape => _calendarLandscapeDialogSize,
    };
  }

  /// Returns a locale-appropriate string to describe the start of a date range.
  ///
  /// If `startDate` is null, then it defaults to 'Start Date', otherwise if it
  /// is in the same year as the `endDate` then it will use the short month
  /// day format (i.e. 'Jan 21'). Otherwise it will return the short date format
  /// (i.e. 'Jan 21, 2020').
  String _formatRangeStartDate(
    MaterialLocalizations localizations,
    DateTime? startDate,
    DateTime? endDate,
  ) {
    return startDate == null
        ? localizations.dateRangeStartLabel
        : (endDate == null || startDate.year == endDate.year)
        ? localizations.formatShortMonthDay(startDate)
        : localizations.formatShortDate(startDate);
  }

  /// Returns an locale-appropriate string to describe the end of a date range.
  ///
  /// If `endDate` is null, then it defaults to 'End Date', otherwise if it
  /// is in the same year as the `startDate` and the `currentDate` then it will
  /// just use the short month day format (i.e. 'Jan 21'), otherwise it will
  /// include the year (i.e. 'Jan 21, 2020').
  String _formatRangeEndDate(
    MaterialLocalizations localizations,
    DateTime? startDate,
    DateTime? endDate,
    DateTime currentDate,
  ) {
    return endDate == null
        ? localizations.dateRangeEndLabel
        : (startDate != null &&
              startDate.year == endDate.year &&
              startDate.year == currentDate.year)
        ? localizations.formatShortMonthDay(endDate)
        : localizations.formatShortDate(endDate);
  }

  String _formatDateRange(
    BuildContext context,
    DateTime? start,
    DateTime? end,
    DateTime now,
  ) {
    final localizations = MaterialLocalizations.of(context);
    final startText = _formatRangeStartDate(localizations, start, end);
    final endText = _formatRangeEndDate(localizations, start, end, now);
    if (start == null || end == null) {
      return localizations.unspecifiedDateRange;
    }
    if (Directionality.of(context) == TextDirection.ltr) {
      return '$startText – $endText';
    } else {
      return '$endText – $startText';
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedDateRangeStart = widget.dateRangeStart;
    _selectedDateRangeEnd = widget.dateRangeEnd;
  }

  @override
  Widget build(BuildContext context) {
    final datePickerTheme = DatePickerTheme.of(context);
    final defaults = DatePickerTheme.defaults(context);
    final localizations = MaterialLocalizations.of(context);
    final orientation = MediaQuery.orientationOf(context);
    final headlineStyle =
        datePickerTheme.rangePickerHeaderHeadlineStyle ??
        defaults.rangePickerHeaderHeadlineStyle;

    final Widget actions = Container(
      alignment: AlignmentDirectional.centerEnd,
      constraints: const BoxConstraints(minHeight: 52),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: OverflowBar(
        spacing: 8,
        children: <Widget>[
          TextButton(
            style:
                datePickerTheme.cancelButtonStyle ?? defaults.cancelButtonStyle,
            onPressed: _handleCancel,
            child: Text(
              widget.cancelText ??
                  (localizations.cancelButtonLabel.toUpperCase()),
            ),
          ),
          TextButton(
            style:
                datePickerTheme.confirmButtonStyle ??
                defaults.confirmButtonStyle,
            onPressed:
                _selectedDateRangeStart != null && _selectedDateRangeEnd != null
                ? _handleOk
                : null,
            child: Text(widget.confirmText ?? localizations.okButtonLabel),
          ),
        ],
      ),
    );

    final rangeDatePicker = EmrDatePicker.range(
      firstDate: widget.firstDate,
      lastDate: widget.lastDate,
      onDateRangeChanged: _handleDateRangeChanged,
    );

    final dateText =
        _selectedDateRangeStart != null && _selectedDateRangeEnd != null
        ? _formatDateRange(
            context,
            _selectedDateRangeStart,
            _selectedDateRangeEnd,
            widget.currentDate,
          )
        : context.l10n.noDatesSelected;

    final semanticDateText =
        _selectedDateRangeStart != null && _selectedDateRangeEnd != null
        ? '${localizations.formatMediumDate(_selectedDateRangeStart!)} '
              '– ${localizations.formatMediumDate(_selectedDateRangeEnd!)}'
        : context.l10n.noDatesSelected;

    final Widget header = _EmrDateRangePickerHeader(
      helpText:
          widget.helpText ??
          (localizations.dateRangePickerHelpText.toUpperCase()),
      titleText: dateText,
      titleSemanticsLabel: semanticDateText,
      titleStyle: headlineStyle,
      orientation: orientation,
      isShort: orientation == Orientation.landscape,
    );

    const fontSizeToScale = 14.0;
    final textScaleFactor =
        MediaQuery.textScalerOf(
          context,
        ).clamp(maxScaleFactor: _kMaxTextScaleFactor).scale(fontSizeToScale) /
        fontSizeToScale;
    final dialogSize = _dialogSize(context) * textScaleFactor;

    return Dialog(
      child: AnimatedContainer(
        width: dialogSize.width,
        height: dialogSize.height,
        duration: kThemeChangeDuration,
        curve: Curves.easeIn,
        child: MediaQuery.withClampedTextScaling(
          maxScaleFactor: _kMaxTextScaleFactor,
          child: LayoutBuilder(
            builder: (context, constraints) {
              switch (orientation) {
                case Orientation.portrait:
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      header,
                      Divider(height: 0, color: datePickerTheme.dividerColor),
                      Expanded(child: rangeDatePicker),
                      actions,
                    ],
                  );
                case Orientation.landscape:
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      header,
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(child: rangeDatePicker),
                            actions,
                          ],
                        ),
                      ),
                      const SizedBox(width: Insets.gutter * 2),
                    ],
                  );
              }
            },
          ),
        ),
      ),
    );
  }

  void _handleOk() {
    Navigator.pop(context, (_selectedDateRangeStart, _selectedDateRangeEnd));
  }

  void _handleCancel() {
    Navigator.pop(context);
  }

  void _handleDateRangeChanged((DateTime?, DateTime?) dateRange) {
    setState(() {
      _selectedDateRangeStart = dateRange.$1;
      _selectedDateRangeEnd = dateRange.$2;
    });
  }
}

class _EmrDateRangePickerHeader extends StatelessWidget {
  /// Creates a header for use in a date picker dialog.
  const _EmrDateRangePickerHeader({
    required this.helpText,
    required this.titleText,
    required this.titleStyle,
    required this.orientation,
    this.titleSemanticsLabel,
    this.isShort = false,
  });

  static const double _datePickerHeaderLandscapeWidth = 152;
  static const double _datePickerHeaderPortraitHeight = 120;
  static const double _headerPaddingLandscape = 16;

  /// The text that is displayed at the top of the header.
  ///
  /// This is used to indicate to the user what they are selecting a date for.
  final String helpText;

  /// The text that is displayed at the center of the header.
  final String titleText;

  /// The semantic label associated with the [titleText].
  final String? titleSemanticsLabel;

  /// The [TextStyle] that the title text is displayed with.
  final TextStyle? titleStyle;

  /// The orientation is used to decide how to layout its children.
  final Orientation orientation;

  /// Indicates the header is being displayed in a shorter/narrower context.
  ///
  /// This will be used to tighten up the space between the help text and date
  /// text if `true`. Additionally, it will use a smaller typography style if
  /// `true`.
  ///
  /// This is necessary for displaying the manual input mode in
  /// landscape orientation, in order to account for the keyboard height.
  final bool isShort;

  @override
  Widget build(BuildContext context) {
    final themeData = DatePickerTheme.of(context);
    final defaults = DatePickerTheme.defaults(context);
    final backgroundColor =
        themeData.headerBackgroundColor ?? defaults.headerBackgroundColor;
    final foregroundColor =
        themeData.headerForegroundColor ?? defaults.headerForegroundColor;
    final helpStyle = (themeData.headerHelpStyle ?? defaults.headerHelpStyle)
        ?.copyWith(color: foregroundColor);

    final help = Text(
      helpText,
      style: helpStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
    final title = Text(
      titleText,
      semanticsLabel: titleSemanticsLabel ?? titleText,
      style: titleStyle,
      maxLines: orientation == Orientation.portrait ? 1 : 3,
      overflow: TextOverflow.ellipsis,
    );

    switch (orientation) {
      case Orientation.portrait:
        return Semantics(
          container: true,
          child: SizedBox(
            height: _datePickerHeaderPortraitHeight,
            child: Material(
              color: backgroundColor,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 24,
                  end: 12,
                  bottom: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 16),
                    help,
                    const Flexible(child: SizedBox(height: 38)),
                    Row(children: <Widget>[Expanded(child: title)]),
                  ],
                ),
              ),
            ),
          ),
        );
      case Orientation.landscape:
        return Semantics(
          container: true,
          child: SizedBox(
            width: _datePickerHeaderLandscapeWidth,
            child: Material(
              color: backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: _headerPaddingLandscape,
                    ),
                    child: help,
                  ),
                  SizedBox(height: isShort ? 16 : 56),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: _headerPaddingLandscape,
                      ),
                      child: title,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }
}
