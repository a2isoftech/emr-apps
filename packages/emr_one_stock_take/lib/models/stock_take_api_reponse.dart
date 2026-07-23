class StockTakeApiResponse<T> {
  StockTakeApiResponse({
    required this.success,
    this.data,
    this.errorCode = '',
    this.message = '',
  });

  StockTakeApiResponse.success({
    required T data,
    String message = '',
  }) : this(
          success: true,
          data: data,
          message: message,
        );

  StockTakeApiResponse.failed({
    required String message,
    String errorCode = '',
  }) : this(
          success: false,
          errorCode: errorCode,
          message: message,
        );

  StockTakeApiResponse.exception({
    required String message,
  }) : this(
          success: false,
          errorCode: 'EXCEPTION',
          message: message,
        );

  final T? data;
  final bool success;
  final String errorCode;
  final String message;
}
