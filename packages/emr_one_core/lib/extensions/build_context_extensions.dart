import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

extension LocalisedBuildContext on BuildContext {
  EmrAppsLocalisations get l10n => EmrAppsLocalisations.of(this);
}

extension EoRouteHelper on BuildContext {
  /// Navigate to a location.
  void go(String location, {Object? extra}) =>
      GoRouter.of(this).go(location, extra: extra);

  /// Pop the top page off the Navigator's page stack by calling
  /// [Navigator.pop].
  void pop<T extends Object?>([T? result]) => GoRouter.of(this).pop(result);

  /// Get a location from route name and parameters.
  String namedLocation(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
  }) =>
      GoRouter.of(this).namedLocation(
        name,
        pathParameters: params,
        queryParameters: queryParams,
      );

  /// Navigate to a named route.
  void goNamed(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      GoRouter.of(this).goNamed(
        name,
        pathParameters: params,
        queryParameters: queryParams,
        extra: extra,
      );

  /// Navigate to a named route onto the page stack.
  Future<T?> pushNamed<T extends Object?>(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      GoRouter.of(this).pushNamed<T>(
        name,
        pathParameters: params,
        queryParameters: queryParams,
        extra: extra,
      );

  void replaceNamed(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      GoRouter.of(this).replaceNamed<void>(name, extra: extra);
}

extension SecurityBuildContext on BuildContext {
  bool userHasPermission(String permission) =>
      read<UserService>().user.hasPermission(permission);
}

extension BuildContextLogger on BuildContext {
  /// Log message at level [EmrLogLevel.event].
  void logEvent(
    String name, {
    Map<String, String>? params,
    String? type,
  }) =>
      EmrLogger.event(
        name,
        params: params,
        type: type,
        source: Uri.decodeFull(
          GoRouter.of(this).routeInformationProvider.value.uri.toString(),
        ),
      );

  /// Log message at level [EmrLogLevel.verbose].
  void logVerbose(
    String message, {
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
  }) =>
      EmrLogger.verbose(
        message,
        stackTrace: stackTrace,
        params: params,
        type: type,
        source: Uri.decodeFull(
          GoRouter.of(this).routeInformationProvider.value.uri.toString(),
        ),
      );

  /// Log message at level [EmrLogLevel.information].
  void logInfo(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
  }) =>
      EmrLogger.info(
        message,
        stackTrace: stackTrace,
        params: params,
        type: type,
        source: Uri.decodeFull(
          GoRouter.of(this).routeInformationProvider.value.uri.toString(),
        ),
      );

  /// Log message at level [EmrLogLevel.warning].
  void logWarning(
    String message, {
    Exception? error,
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
  }) =>
      EmrLogger.warning(
        message,
        error: error,
        stackTrace: stackTrace,
        params: params,
        type: type,
        source: Uri.decodeFull(
          GoRouter.of(this).routeInformationProvider.value.uri.toString(),
        ),
      );

  /// Log message at level [EmrLogLevel.error].
  void logError(
    String message, {
    Exception? error,
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
  }) =>
      EmrLogger.error(
        message,
        error: error,
        stackTrace: stackTrace,
        params: params,
        type: type,
        source: Uri.decodeFull(
          GoRouter.of(this).routeInformationProvider.value.uri.toString(),
        ),
      );

  /// Log message at level [EmrLogLevel.critical].
  void logCritical(
    String message, {
    Exception? error,
    StackTrace? stackTrace,
    Map<String, String>? params,
    String? type,
  }) =>
      EmrLogger.critical(
        message,
        error: error,
        stackTrace: stackTrace,
        params: params,
        type: type,
        source: Uri.decodeFull(
          GoRouter.of(this).routeInformationProvider.value.uri.toString(),
        ),
      );
}
