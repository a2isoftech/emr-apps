class NotificationEvent {
  NotificationEvent({
    required this.title,
    required this.message,
    required this.messageType,
    required this.messageSeverity,
    required this.created,
  });
  final String title;
  final String message;
  final String messageType;
  final String messageSeverity;
  final DateTime created;

  bool get isSuccess => messageSeverity == 'SUCCESS';
  bool get isError => messageSeverity == 'ERROR';
  bool get isWarning => messageSeverity == 'WARNING';
  bool get isInformation => messageSeverity == 'INFORMATION';
}
