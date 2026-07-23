export 'package:emr_one_tickets/screens/screens.dart';

class TicketsConstants {
  static const String kTicketsTelemetryGalleryZipOk = 'ticketsGalleryZipOk';
  static const String kTicketsTelemetryGalleryZipError =
      'ticketsGalleryZipError';
  static const String kTicketsTelemetryGalleryZipException =
      'ticketsGalleryZipException';
  static const String kTicketsTelemetryPublicUrlCreated =
      'ticketsPublicUrlCreated';
  static const String kTicketsTelemetryPublicUrlError = 'ticketsPublicUrlError';
}

class PaymentApprovalErrorCodes {
  static const String kPaymentApprovalNotFound = 'PAYMENT_APPROVAL_NOT_FOUND';
  static const String kPaymentApprovalNotPending =
      'PAYMENT_APPROVAL_NOT_PENDING';
  static const String kPaymentApprovalNotAuthorized = 'UNAUTHORIZED';
}
