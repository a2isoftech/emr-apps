class ScheduleFilter {
  ScheduleFilter({
    this.createdDateEnd,
    this.createdDateStart,
    this.isActive,
    this.description,
  });

  final DateTime? createdDateStart;
  final DateTime? createdDateEnd;
  final bool? isActive;
  final String? description;
}
