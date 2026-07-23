enum ContractResultCode { ok, exception, gatewayError }

class ContractResult {
  ContractResult(
    this.code, {
    this.contractRef,
    this.message = '',
  });
  final String? contractRef;
  final ContractResultCode code;
  final String message;
}
