import 'dart:ui';

class BackgroundWork<T> {
  BackgroundWork({required this.data, required this.token});

  final T data;
  final RootIsolateToken token;
}
