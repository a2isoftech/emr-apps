class CloneTaskParameter {
  CloneTaskParameter({
    required this.templateId,
    required this.templateName,
    required this.templateReferenceId,
    required this.depotNo,
    required this.yardCode,
    required this.description,
    required this.assetCode,
    required this.isDigitalSignatureRequiredByTemplate,
    required this.isDigitalSignatureRequiredByTask,
    required this.jobPriority,
    this.assignedTo,
    this.workOrderId,
    this.notes,
    this.jobTrade,
  });
  String templateId;
  String templateName;
  String templateReferenceId;
  String depotNo;
  String yardCode;
  String description;
  String? assetCode;
  bool isDigitalSignatureRequiredByTemplate;
  bool isDigitalSignatureRequiredByTask;
  String? workOrderId;
  String? assignedTo;
  int jobPriority;
  String? notes;
  String? jobTrade;
}
