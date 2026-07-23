import 'package:emr_one_transport/data/controllers/scheduler/scheduler_data_controller.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_filter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduler_state.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
@JsonSerializable()
class SchedulerState {
  /// Pure `const` constructor—everything must be provided.
  const SchedulerState({
    required this.filter,
    required this.showUnScheduledJobs,
    required this.selectedDate,
    required this.createdDate,
    required this.is24HrFormat,
    this.unscheduledJobSearchTerm = '',
    this.unscheduledJobSortAscending = true,
    this.collapsedYards = const [],
  });

  /// “Brand new” state for a fresh screen load (or new day reset)
  factory SchedulerState.defaults(
    SchedulerDataController dataController, {
    required List<String> collapsedYards,
    required bool is24HourFormat,
    DateTime? today,
  }) {
    final createdDate = today ?? DateTime.now();
    return SchedulerState(
      filter: SchedulerFilter.defaults(dataController),
      showUnScheduledJobs: false,
      selectedDate: createdDate,
      createdDate: createdDate,
      collapsedYards: collapsedYards,
      is24HrFormat: is24HourFormat,
    );
  }

  factory SchedulerState.fromJson(Map<String, dynamic> json) =>
      _$SchedulerStateFromJson(json);

  /// The active filter
  final SchedulerFilter filter;

  /// Whether to show unscheduled jobs
  final bool showUnScheduledJobs;

  /// The date the scheduler is currently viewing
  final DateTime selectedDate;

  /// Text search in unscheduled jobs
  final String unscheduledJobSearchTerm;

  /// Sort direction for unscheduled jobs
  final bool unscheduledJobSortAscending;

  /// when this state object was created/loaded
  final DateTime createdDate;

  /// When yards are collapsed on UI
  final List<String> collapsedYards;

  final bool is24HrFormat;

  /// Immutable copyWith for fine-grained state updates
  SchedulerState copyWith({
    SchedulerFilter? filter,
    bool? showUnScheduledJobs,
    DateTime? selectedDate,
    String? unscheduledJobSearchTerm,
    bool? unscheduledJobSortAscending,
    Map<String, List<String>>? yardTruckDisplayOrder,
    DateTime? createdDate,
    List<String>? collapsedYards,
    bool? is24HrFormat,
  }) {
    return SchedulerState(
      filter: filter ?? this.filter,
      showUnScheduledJobs: showUnScheduledJobs ?? this.showUnScheduledJobs,
      selectedDate: selectedDate ?? this.selectedDate,
      unscheduledJobSearchTerm:
          unscheduledJobSearchTerm ?? this.unscheduledJobSearchTerm,
      unscheduledJobSortAscending:
          unscheduledJobSortAscending ?? this.unscheduledJobSortAscending,
      createdDate: createdDate ?? this.createdDate,
      collapsedYards: collapsedYards ?? this.collapsedYards,
      is24HrFormat: is24HrFormat ?? this.is24HrFormat,
    );
  }

  Map<String, dynamic> toJson() => _$SchedulerStateToJson(this);
}
