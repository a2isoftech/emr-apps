import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

class EmrCalendarMonthViewCellDateHeader extends StatelessWidget {
  /// A date header for a [EmrCalendarMonthViewCell].
  const EmrCalendarMonthViewCellDateHeader({
    required this.date,
    required this.textPadding,
    super.key,
  });

  final DateTime date;

  final EdgeInsetsGeometry textPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: date.dateOnly == DateTime.now().dateOnly
            ? EmrColours.primaryGreen
            : null,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: textPadding,
        child: Center(child: Text('${date.day}')),
      ),
    );
  }
}
