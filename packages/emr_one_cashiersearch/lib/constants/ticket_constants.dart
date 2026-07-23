class TicketConstants {
  static const String accountsPayableSection = 'AccountsPayable';
  static const String systemAdminSection = 'SystemAdmin';
  static const String commercialAdminSection = 'CommercialAdmin';

  static const String accountsPayablePath = '/accounts-payable';
  static const String consignmentNotePath =
      '/workflows/ticket/createconsignment/:yard/:ticketNo';
  static const String createConsignmentNotePath = 'create-consignment';
  static const String consignmentSignaturePath =
      '/workflows/ticket/consignmentsignature/:yardCode/:ticketNo/:signatureId';
  static const String retailPaymentsPath = 'retailPayments';
  static const String systemAdminPath = '/system-admin';
  static const String commercialAdminPath = '/commercial-admin';
  static const String invoicesPath = '/invoices';
  static const String selfBillPath = '/self-bill';
  static const String registerInvoicePath = '/register-invoice';
  static const String edgeTicketAccountsSearchPath = 'edge-tickets-accounts';
  static const String edgeTicketCommercialSearchPath =
      'edge-tickets-commercial';
  static const String edgeTicketGalleryPath = '/edge-tickets/edge-gallery/:id';
  static const String myTicketGalleriesPath =
      '/edge-tickets/my-ticket-galleries';

  static const String kAdvances = 'Advances';
  static const String kAdvancesPath = 'advances';
  static const String kAdvanceFormPath = 'advance-form';
  static const String kEmptyId = '00000000-0000-0000-0000-000000000000';

  static const String kTelemetryGalleryZipOk = 'GalleryZipOk';
  static const String kTelemetryGalleryZipError = 'GalleryZipError';
  static const String kTelemetryGalleryZipException = 'GalleryZipException';
  static const String readyToPayTicketStatus = 'Payable';
  static const String paymentInitiatedTicketStatus = 'Payment Initiated';

  static const String kTicketsTelemetryPublicUrlCreated =
      'ticketsPublicUrlCreated';
  static const String kTicketsTelemetryPublicUrlError = 'ticketsPublicUrlError';
  static const String kSyncTicketTasks = 'sync-ticket-tasks';
  static const String kDiagnostics = 'Diagnostics';
  static const String kDiagnosticsPath = 'diagnostics';
  static const String kLockedTickets = 'locked-tickets';
  static const String kAuditTickets = 'audit-tickets';
  static const String kTicketDiagnostics = 'ticket-diagnostics';
  static const double kDefaultPaymentPanelWidth = 410;
  static const double kSplitPaymentPopupWidth = 600;
  static const double kSplitPaymentAmountFieldWidth = 200;
  static const double kTicketMediaGalleryPopupMinWidth = 250;
  static const double kTicketMediaGalleryPopupMaxWidth = 900;
  static const double kTicketMediaGalleryCardMaxWidth = 250;
  static const String inwardOverviewText =
      'These are the materials you have received today';
  static const String outwardOverviewText =
      'These are the materials you are sending today';
  static const String emrName = 'European Metal Recycling Limited';
  static const String emrSIC = '38320';
  static const String emrIndustryType = 'Metal Recycling';
  static const List<String> drivingLicenceTypes = [
    'UK_DRIVING_LICENSE',
    'USA_DRIVER_LICENCE',
    'UKEU_DRIVING_LICENSE',
    'EU_DRIVING_LICENSE',
  ];

  static const List<String> utilityBillTypes = [
    'BANK_OR_BUILDING_SOCIETY_STATEMENT',
    'CREDIT_OR_DEBIT_CARD_STATEMENT',
    'COUNCIL_RENT_BOOK',
    'COUNCIL_TAX_DEMAND_LETTER',
    'UTILITY_BILL',
    'HMRC_CORRESPONDANCE',
    'MORTGAGE_STATEMENT',
    'UK_DRIVING_LICENSE',
  ];

  static const List<String> photoIdTypes = [
    'UK_DRIVING_LICENSE',
    'UKEUEEA_PASSPORT',
    'EU_NATIONAL_ID_CARD',
    'USA_DRIVER_LICENCE',
    'UKEU_DRIVING_LICENSE',
    'EU_DRIVING_LICENSE',
    'BIOMETRIC_IMMIGRATION_DOCUMENT',
  ];
}

class RoutingPathName {
  static const String retailPayments = 'Retail_Payments';
  static const String paymentBasket = 'Payment_Basket';
  static const String ticketPayments = 'Ticket_Payments';
  static const String advancePaymentBasket = 'Advance_Payment_Basket';
  static const String accountRegistration = 'upload-id-doc';
  static const String consignmentNote = 'Consignment_Note';
  static const String createConsignmentNote = 'Create_Consignment_Note';
  static const String signature = 'Signature';
  static const String invoices = 'Invoices';
  static const String selfBill = 'Self_Bill';
  static const String registerInvoice = 'Register_Invoice';
}
