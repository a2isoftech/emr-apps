import 'dart:async';

import 'package:async/async.dart';

/// A class which wraps a debounced and cancellable operation.
class Debounceable<T> {
  Debounceable({
    this.debounceDuration = const Duration(milliseconds: 500),
  });

  final Duration debounceDuration;

  Timer? _debounce;

  CancelableOperation<T>? _operation;

  // We use a [Completer] so anything awaiting the [call] function can await a
  // successful callback to complete.
  Completer<T?> _completer = Completer<T?>();

  void dispose() {
    _operation?.cancel();
    _operation = null;

    _debounce?.cancel();
    _debounce = null;
  }

  /// Starts a [Timer] which, when the [debounceDuration] expires, calls the
  /// [callback] in a [CancelableOperation]. If a subsequent call is made to
  /// this function while there is an active [Timer] or [CancelableOperation],
  /// then the previous call will be cancelled.
  /// The return value of this function will either be an [Object], or null when
  /// it has been cancelled.
  Future<T?> call(
    Future<T> Function() callback, {
    void Function()? onDebounced,
    void Function(T)? then,
  }) {
    // If there's a [Completer] from the last call that's not complete,
    // we complete it with null to indicate that it wasn't successful...
    if (!_completer.isCompleted) {
      _completer.complete(null);
    }

    // ... then we create a new one.
    _completer = Completer<T?>();

    // When an incomplete operation is in progress, we want to cancel it and let
    // the Timer callback below start a new one.
    if ((_operation?.isCompleted ?? true) == false) {
      _operation!.cancel();
      _operation = null;
    }

    // Similarly, when the Timer below is already active, we want to cancel it
    // so a new one can be started.
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();

      onDebounced?.call();
    }

    // Start a new debouncing Timer. When the timeout expires, a new
    // CancelableOperation is created for the callback. Both the Timer and the
    // CancelableOperation can be cancelled if a new call is made to this
    // function.
    // When the CancelableOperation completes, the values are passed to the
    // `Completer`.
    _debounce = Timer(debounceDuration, () {
      final future = callback();

      _operation = CancelableOperation<T>.fromFuture(future);

      _operation!.then<T>(
        (values) {
          then?.call(values);

          _completer.complete(values);

          return values;
        },
      );
    });

    return _completer.future;
  }
}
