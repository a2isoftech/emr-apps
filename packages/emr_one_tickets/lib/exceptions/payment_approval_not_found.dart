class PaymentApprovalNotFound implements Exception {
  PaymentApprovalNotFound(this.id);
  final String id;

  @override
  String toString() {
    return 'PaymentApproval with id $id not found';
  }
}
