class ApiResponse<T> {
  ApiResponse({
    this.data,
    this.success = true,
    this.message = '',
  });

  final T? data;

  final bool success;

  final String message;
}
