class ApiResponse<T> {
  ApiResponse(
    this.response, {
    this.status = ResponseStatus.ok,
    this.isOk = true,
    this.errorMessage = '',
  });

  factory ApiResponse.serverFault() {
    return ApiResponse<T>(
      null,
      status: ResponseStatus.serverFault,
      errorMessage: 'Internal Server Error',
      isOk: false,
    );
  }

  factory ApiResponse.unauthorized() {
    return ApiResponse<T>(
      null,
      status: ResponseStatus.unauthorized,
      errorMessage: 'User not authorized',
      isOk: false,
    );
  }

  factory ApiResponse.badRequest() {
    return ApiResponse<T>(
      null,
      status: ResponseStatus.badRequest,
      errorMessage: 'Bad Request',
      isOk: false,
    );
  }

  final T? response;
  final bool isOk;
  final ResponseStatus status;
  String errorMessage;
}

enum ResponseStatus {
  ok,
  serverFault,
  badRequest,
  unauthorized,
}

extension HttpStatusExtension on int {
  bool get isSuccessful => this >= 200 && this <= 299;
  bool get isUnauthorized => this == 401;
  bool get isServerFault => this == 500;
}

ApiResponse<T>? checkRepsonse<T>(int statusCode) {
  if (statusCode.isSuccessful) {
    return null;
  } else if (statusCode.isUnauthorized) {
    return ApiResponse.unauthorized();
  } else if (statusCode.isServerFault) {
    return ApiResponse.serverFault();
  } else {
    return ApiResponse.badRequest();
  }
}
