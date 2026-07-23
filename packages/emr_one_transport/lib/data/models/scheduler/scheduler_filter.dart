import 'package:emr_one_transport/data/controllers/scheduler/scheduler_data_controller.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduler_filter.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SchedulerFilter {
  /// Non-const constructor so we can default to DateTime.now()
  SchedulerFilter({
    this.yardCodes = const [],
    this.managedThirdPartyHaulierCodes = const [],
    this.thirdPartyHaulierCodes = const [],
    this.containerTypes = const [],
    this.truckTypes = const [],
    this.jobTypes = const [],
    this.productFamilies = const [],
  });

  factory SchedulerFilter.fromJson(Map<String, dynamic> json) =>
      _$SchedulerFilterFromJson(json);

  /// Builds a brand-new filter seeded with *all* datacontroller lists + today
  factory SchedulerFilter.defaults(
    SchedulerDataController dataConrtoller,
  ) {
    return SchedulerFilter(
      yardCodes: dataConrtoller.allYards.map((y) => y.yardCode ?? '').toList(),
      managedThirdPartyHaulierCodes:
          dataConrtoller.myManagedHauliers.map((h) => h.code).toList(),
      thirdPartyHaulierCodes:
          dataConrtoller.myThirdPartyHauliers.map((h) => h.code).toList(),
    );
  }

  /// Core immutable fields
  final List<String> yardCodes;
  final List<String> managedThirdPartyHaulierCodes;
  final List<String> thirdPartyHaulierCodes;
  final List<ListDetails> containerTypes;
  final List<ListDetails> truckTypes;
  final List<ListDetails> jobTypes;
  final List<ListDetails> productFamilies;

  Map<String, dynamic> toJson() => _$SchedulerFilterToJson(this);

  /// Prune out anything the user no longer has access to—and if any list
  /// winds up empty, reseed it from your data controller.
  SchedulerFilter updateForUserAccess(SchedulerDataController dataController) {
    // yardCodes
    final validYards =
        dataController.allYards.map((y) => y.yardCode ?? '').toSet();
    var newYards = yardCodes.where(validYards.contains).toList();
    if (newYards.isEmpty) newYards = validYards.toList();

    // managedHaulierCodes
    final validHauliers =
        dataController.myManagedHauliers.map((h) => h.code).toSet();
    var newManagedThirdPartyHauliers =
        managedThirdPartyHaulierCodes.where(validHauliers.contains).toList();
    if (newManagedThirdPartyHauliers.isEmpty) {
      newManagedThirdPartyHauliers = validHauliers.toList();
    }

    // thirdPartyhaulierCodes
    final validThirdPartyHauliers =
        dataController.myThirdPartyHauliers.map((h) => h.code).toSet();
    var newThirdPartyHauliers =
        thirdPartyHaulierCodes.where(validThirdPartyHauliers.contains).toList();
    if (newThirdPartyHauliers.isEmpty) {
      newThirdPartyHauliers = validThirdPartyHauliers.toList();
    }

    // containerTypes
    final validContainers = dataController.allContainerTypes.toSet();
    var newContainers = containerTypes.where(validContainers.contains).toList();
    if (newContainers.isEmpty) {
      newContainers = dataController.allContainerTypes.toList();
    }

    // truckTypes
    final validTrucks = dataController.allTruckTypes.toSet();
    var newTrucks = truckTypes.where(validTrucks.contains).toList();
    if (newTrucks.isEmpty) newTrucks = dataController.allTruckTypes.toList();

    // jobTypes
    final validJobs = dataController.allJobTypes.toSet();
    var newJobs = jobTypes.where(validJobs.contains).toList();
    if (newJobs.isEmpty) newJobs = dataController.allJobTypes.toList();

    // productFamilies
    final validProducts = dataController.allProductFamilies.toSet();
    var newProducts = productFamilies.where(validProducts.contains).toList();
    if (newProducts.isEmpty) {
      newProducts = dataController.allProductFamilies.toList();
    }

    return copyWith(
      yardCodes: newYards,
      managedThirdPartyHaulierCodes: newManagedThirdPartyHauliers,
      thirdPartyHaulierCodes: newThirdPartyHauliers,
      containerTypes: containerTypes.isEmpty ? [] : newContainers,
      truckTypes: truckTypes.isEmpty ? [] : newTrucks,
      jobTypes: jobTypes.isEmpty ? [] : newJobs,
      productFamilies: productFamilies.isEmpty ? [] : newProducts,
    );
  }

  /// Usual copyWith for fine-grained updates
  SchedulerFilter copyWith({
    List<String>? yardCodes,
    List<String>? managedThirdPartyHaulierCodes,
    List<String>? thirdPartyHaulierCodes,
    List<ListDetails>? containerTypes,
    List<ListDetails>? truckTypes,
    List<ListDetails>? jobTypes,
    List<ListDetails>? productFamilies,
  }) {
    return SchedulerFilter(
      yardCodes: yardCodes ?? this.yardCodes,
      managedThirdPartyHaulierCodes:
          managedThirdPartyHaulierCodes ?? this.managedThirdPartyHaulierCodes,
      thirdPartyHaulierCodes:
          thirdPartyHaulierCodes ?? this.thirdPartyHaulierCodes,
      containerTypes: containerTypes ?? this.containerTypes,
      truckTypes: truckTypes ?? this.truckTypes,
      jobTypes: jobTypes ?? this.jobTypes,
      productFamilies: productFamilies ?? this.productFamilies,
    );
  }
}
