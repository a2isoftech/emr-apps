class YlApiResponse<T> {
  YlApiResponse({
    this.data,
    this.success = true,
    this.message = '',
  });
  final T? data;
  final bool success;
  final String message;
}
