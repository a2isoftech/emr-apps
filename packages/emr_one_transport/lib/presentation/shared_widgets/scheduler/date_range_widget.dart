import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateRangeWidget extends StatelessWidget {
  const DateRangeWidget({
    required this.selectedDateNotifier,
    super.key,
    this.daysBefore = 3,
    this.daysAfter = 3,
  });
  final ValueNotifier<DateTime> selectedDateNotifier;
  final int daysBefore;
  final int daysAfter;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTime>(
      valueListenable: selectedDateNotifier,
      builder: (context, selectedDate, child) {
        // Dynamically generate dates based on the selected date
        final dates = List<DateTime>.generate(
          daysBefore + daysAfter + 1,
          (index) => selectedDate.subtract(Duration(days: daysBefore - index)),
        );

        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2010),
                      lastDate: DateTime(2040),
                      initialDate: selectedDateNotifier.value,
                    );
                    if (pickedDate != null) {
                      selectedDateNotifier.value = pickedDate;
                    }
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: TransportAppColors.selectedDateColor,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            context.l10n.weekOf,
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      TransportAppColors.selectedDateTextColor,
                                ),
                          ),
                          Text(
                            Constants.dateFormat.format(
                              selectedDateNotifier.value,
                            ),
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      TransportAppColors.selectedDateTextColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: Insets.gutter / 8),
                  height: 45,
                  child: const VerticalDivider(thickness: 1),
                ),
                ...dates.map((date) {
                  final isSelected = date == selectedDate;

                  return GestureDetector(
                    onTap: () {
                      selectedDateNotifier.value =
                          date; // Update the selected date
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: Insets.gutter / 8,
                      ),
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: isSelected
                            ? TransportAppColors.selectedDateColor
                            : TransportAppColors.greyCardBg,
                        border: isSelected
                            ? Border.all(
                                color:
                                    TransportAppColors.selectedDateBorderColor,
                              )
                            : null,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            DateFormat.E().format(date), // Day name
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: isSelected
                                      ? TransportAppColors.selectedDateTextColor
                                      : TransportAppColors.greyTextColor,
                                ),
                          ),
                          Text(
                            DateFormat('dd MMM').format(date), // Date
                            style: Theme.of(context).textTheme.labelMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: isSelected
                                      ? TransportAppColors.selectedDateTextColor
                                      : TransportAppColors.greyTextColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                GestureDetector(
                  onTap: () {
                    selectedDateNotifier.value = DateTime.now();
                  },
                  child: Container(
                    width: 30,
                    height: 40,
                    margin: const EdgeInsets.only(left: Insets.gutter / 8),
                    decoration: BoxDecoration(
                      color: TransportAppColors.darkBg,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Tooltip(
                      message: 'Reset date to today',
                      child: Icon(
                        Icons.refresh,
                        color: Colors.white,
                        size: Constants.iconSizeM,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
