class InvoicingOptions {
  InvoicingOptions({
    this.bulkPod,
    this.multiLoad,
    this.multiDepot,
    this.multiGrade,
    this.multiTicketDate,
    this.multiLocation,
    this.useDeliveryAddress,
    this.suppressInvoice,
    this.suppressStatement,
  });
  bool? bulkPod;
  bool? multiLoad;
  bool? multiDepot;
  bool? multiGrade;
  bool? multiTicketDate;
  bool? multiLocation;
  bool? useDeliveryAddress;
  bool? suppressInvoice;
  bool? suppressStatement;
}
