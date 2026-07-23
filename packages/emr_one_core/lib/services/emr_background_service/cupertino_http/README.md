# A fork of cupertino_http

The [cupertino_http](https://pub.dev/packages/cupertino_http) package is developed by the Dart team, but was missing `NSURLSessionUploadTask` and `URLSessionTask upload(URLRequest request, Uri file)`, so the necessary files have been copied here and modified.

## cupertino_api.dart
Copied from https://github.com/dart-lang/http/blob/master/pkgs/cupertino_http/lib/src/cupertino_api.dart
- Added URLSessionTask upload
- Added URLSessionUploadTask
- Added onDidSendBodyData handling

## native_cupertino_bindings.dart
Generated using ffigen. See ffigen.yaml in the root.

## utils.dart
Copied from https://github.com/dart-lang/http/blob/master/pkgs/cupertino_http/lib/src/utils.dart
