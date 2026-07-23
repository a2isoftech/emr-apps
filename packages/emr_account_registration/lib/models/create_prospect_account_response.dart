class CreateProspectAccountResponse {
  CreateProspectAccountResponse({
    required this.accountNumber,
    this.userId,
    this.showErrorToUser,
    this.errorCode,
    this.errorMessage,
    this.hasDuplicateAccountCode = false,
  });

  final String? accountNumber;
  final String? userId;
  final bool? showErrorToUser;
  final String? errorCode;
  final String? errorMessage;
  final bool hasDuplicateAccountCode;
}
