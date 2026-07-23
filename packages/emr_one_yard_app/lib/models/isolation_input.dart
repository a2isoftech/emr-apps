import 'dart:ui';

class Isolationinput<T> {
  Isolationinput({required this.data, required this.token});

  final T data;
  final RootIsolateToken token;
}
