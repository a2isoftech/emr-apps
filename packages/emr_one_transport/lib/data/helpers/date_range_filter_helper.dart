import 'package:emr_one_transport/core/constants/string_constants.dart';

class DateRangeFilterHelper {
  DateRangeFilterHelper._();

  static List<DateTime> getDateRangeForFilter(String value) {
    const one = 1;
    const three = 3;
    const six = 6;
    const eight = 8;
    const twelve = 12;
    const fifteen = 15;
    const eighteen = 18;
    final currentDate = DateTime.now();
    final currentWeekday = currentDate.weekday;
    final threeMonthsAgo = DateTime(
      currentDate.year,
      currentDate.month - three,
      currentDate.day,
    );

    switch (value) {
      case StringConstants.yesterdayjobs:
      case StringConstants.yesterdaysPlan:
        return <DateTime>[
          currentDate.subtract(const Duration(days: one)),
          currentDate.subtract(const Duration(days: one)),
        ];

      case StringConstants.todayJobs:
      case StringConstants.todaysPlan:
        return <DateTime>[currentDate, currentDate];

      case StringConstants.tomorrowsJobs:
      case StringConstants.tomorrowsPlan:
        return <DateTime>[
          currentDate.add(const Duration(days: one)),
          currentDate.add(const Duration(days: one)),
        ];

      case StringConstants.previousweekJobs:
      case StringConstants.previousWeekPlans:
        final previousWeekStart = currentDate.subtract(
          Duration(days: currentWeekday + six),
        );
        final previousWeekEnd = previousWeekStart.add(
          const Duration(days: six),
        );
        return <DateTime>[previousWeekStart, previousWeekEnd];

      case StringConstants.thisweekJobs:
      case StringConstants.thisWeekPlans:
        final currentWeekStart = currentDate.subtract(
          Duration(days: currentWeekday - one),
        );
        final currentWeekEnd = currentWeekStart.add(const Duration(days: six));
        return <DateTime>[currentWeekStart, currentWeekEnd];

      case StringConstants.nextweekJobs:
      case StringConstants.nextWeekPlans:
        final nextWeekStart = currentDate.add(
          Duration(days: eight - currentWeekday),
        );
        final nextWeekEnd = nextWeekStart.add(const Duration(days: six));
        return <DateTime>[nextWeekStart, nextWeekEnd];

      case StringConstants.lastOneMonthJobs:
        final oneMonthAgo = DateTime(
          currentDate.year,
          currentDate.month - 1,
          currentDate.day,
        );
        return <DateTime>[
          oneMonthAgo,
          currentDate.add(const Duration(days: fifteen)),
        ];

      case StringConstants.lastthreeMonthJobs:
      case StringConstants.lastThreeMonthPlans:
        return <DateTime>[
          threeMonthsAgo,
          currentDate.add(const Duration(days: fifteen)),
        ];

      case StringConstants.lastsixMonthJobs:
      case StringConstants.lastSixMonthPlans:
        final sixMonthsAgo = DateTime(
          currentDate.year,
          currentDate.month - six,
          currentDate.day,
        );
        return <DateTime>[
          sixMonthsAgo,
          currentDate.add(const Duration(days: fifteen)),
        ];

      case StringConstants.lasttwelweMonthJobs:
      case StringConstants.lastTwelveMonthPlans:
        final twelveMonthsAgo = DateTime(
          currentDate.year,
          currentDate.month - twelve,
          currentDate.day,
        );
        return <DateTime>[
          twelveMonthsAgo,
          currentDate.add(const Duration(days: fifteen)),
        ];

      case StringConstants.lasteighteenMonthJobs:
      case StringConstants.lastEighteenMonthPlans:
        final eighteenMonthsAgo = DateTime(
          currentDate.year,
          currentDate.month - eighteen,
          currentDate.day,
        );
        return <DateTime>[
          eighteenMonthsAgo,
          currentDate.add(const Duration(days: fifteen)),
        ];

      default:
        return <DateTime>[
          threeMonthsAgo,
          currentDate.add(const Duration(days: fifteen)),
        ];
    }
  }
}
