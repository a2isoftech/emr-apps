class ApiResponse<T> {
  ApiResponse.error(this.message) : status = Status.error;

  ApiResponse.completed(this.data) : status = Status.completed;

  ApiResponse.loading(this.message) : status = Status.loading;
  Status status;

  late T data;

  late String message;

  @override
  String toString() {
    return 'Status : $status \n Message : $message \n Data : $data';
  }
}

enum Status { loading, completed, error }
