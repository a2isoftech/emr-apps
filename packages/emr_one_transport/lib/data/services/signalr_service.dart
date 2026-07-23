import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:signalr_netcore/http_connection_options.dart';
import 'package:signalr_netcore/hub_connection_builder.dart';
import 'package:signalr_netcore/itransport.dart';

typedef SignalRHandler = void Function(List<Object?>? args);

class SignalrService {
  /// Call this to get your singleton, injecting URL (and optionally options)
  /// The very first call must supply the URL you want. Subsequent calls
  /// ignore new URLs and return the same instance.
  factory SignalrService({
    required AppConfig appConfig,
  }) {
    final options = HttpConnectionOptions(
      transport: HttpTransportType.WebSockets,
      skipNegotiation: true,
      requestTimeout: 20000,
    );
    final hubUrl = '${appConfig.transportBaseUrl}/hubs/job-update';
    //const hubUrl = 'https://localhost:7143/hubs/job-update';
    _instance ??= SignalrService._internal(
      hubUrl: hubUrl,
      options: options,
    );
    return _instance!;
  }

  // Private ctor that actually builds the connection
  SignalrService._internal({
    required String hubUrl,
    required HttpConnectionOptions options,
  })  : _hubUrl = hubUrl,
        _options = options;
  // Holds your singleton instance (nullable until first use)
  static SignalrService? _instance;

  // The injected URL & options
  final String _hubUrl;
  final HttpConnectionOptions _options;

  // Internal connection, built once in the constructor
  late final hubConnection = HubConnectionBuilder()
      .withUrl(_hubUrl, options: _options)
      .withAutomaticReconnect()
      .build();

  bool _started = false;

  /// Start the connection (idempotent)
  Future<void> start() async {
    if (_started) return;
    _started = true;
    try {
      await hubConnection.start();
    } on Exception catch (ex, trace) {
      _started = false;
      EmrLogger.error(
        'Unable to connect to signalR hub',
        error: ex,
        stackTrace: trace,
      );
    }
  }

  /// Stop the connection
  Future<void> stop() async {
    if (!_started) return;
    _started = false;
    try {
      await hubConnection.stop();
    } on Exception catch (ex, trace) {
      _started = false;
      EmrLogger.error(
        'Unable to stop connection to signalR hub',
        error: ex,
        stackTrace: trace,
      );
    }
  }

  /// Register an event handler
  void on(String eventName, SignalRHandler handler) {
    hubConnection.on(eventName, handler);
  }
}
