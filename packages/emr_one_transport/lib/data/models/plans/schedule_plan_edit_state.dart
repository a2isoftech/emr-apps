import 'package:emr_one_transport/data/models/common/list_details.dart';

class HaulierEditState {
  int? newLoads;
  bool deleteAll = false;
  ListDetails? deleteAllReason;
  String? deleteAllComment;

  // jobNumber -> per-job edit
  final Map<int, JobEditState> jobs = {};
}

class JobEditState {
  ListDetails? deleteReason;
  String? deleteComment;
}
