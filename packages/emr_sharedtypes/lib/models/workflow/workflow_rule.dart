class WorkflowRule {
  WorkflowRule({
    required this.id,
    required this.yardCode,
    required this.levelUserEmails,
  });

  final String id;
  final String yardCode;
  Map<int, List<String>> levelUserEmails = {};
}
