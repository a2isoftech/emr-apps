abstract class IAsyncDisposable {
  Future<void> dispose();
}

abstract class IDisposable {
  void dispose();
}
