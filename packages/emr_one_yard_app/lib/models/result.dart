/// Represents the result of an operation and enables the return of error
/// messages which may not warrant an exception.
class UntypedResult {
  factory UntypedResult.failure(List<String> errors) =>
      UntypedResult._internal(false, errors);

  factory UntypedResult.success() => UntypedResult._internal(true, null);

  UntypedResult._internal(this.successful, this.errors);

  List<String>? errors;
  bool successful;

  String get errorsAsString => errors?.join('\r\n') ?? '';
}

/// Represents the result of an operation and enables the return of error
/// messages which may not warrant an exception. Successful results will
/// contain a Data property of type T, failure results will contain no data.
class TypedResult<T> extends UntypedResult {
  factory TypedResult.failure(List<String> errors) {
    return TypedResult<T>._internal(null, false, errors);
  }

  factory TypedResult.success(T instance) {
    return TypedResult<T>._internal(instance, true, null);
  }

  TypedResult._internal(this.data, bool successful, List<String>? errors)
      : super._internal(successful, errors);

  T? data;
}
