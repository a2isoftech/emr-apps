import 'package:flutter/services.dart';

void ensureBinaryMessengerInitialized(Object token) =>
    BackgroundIsolateBinaryMessenger.ensureInitialized(
      token as RootIsolateToken,
    );
