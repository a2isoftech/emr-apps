class PaymentApprovalNotPending implements Exception {
  PaymentApprovalNotPending(this.id);
  final String id;

  @override
  String toString() {
    return 'PaymentApproval with id $id not in a pending state to be approved';
  }
}
