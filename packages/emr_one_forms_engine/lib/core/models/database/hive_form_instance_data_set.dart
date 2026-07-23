import 'package:emr_one_forms_engine/core/models/database/hive_audit_history.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_form_instance.dart';

class HiveFormInstanceDataSet {
  HiveFormInstance instance;
  List<HiveAuditHistory> history;

  HiveFormInstanceDataSet(this.instance, this.history);
}
