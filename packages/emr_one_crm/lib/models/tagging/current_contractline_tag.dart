import 'package:emr_one_crm/models/tagging/models.dart';

class CurrentContractLineTag {
  CurrentContractLineTag(
    this.contractLineId,
    this.currentTag,
  );
  final int contractLineId;
  final CurrentTag currentTag;
}
