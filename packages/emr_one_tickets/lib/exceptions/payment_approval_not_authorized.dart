class PaymentApprovalNotAuthorized implements Exception {
  PaymentApprovalNotAuthorized(this.id);
  final String id;

  @override
  String toString() {
    return 'PaymentApproval with id $id cannot be viewed';
  }
}
