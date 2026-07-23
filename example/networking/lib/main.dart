// ignore_for_file: avoid_print

// Change these to be the IP address and port of the test_socket_server
// instances running on the same network as your device. Or via ngrok.
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const primaryServerAddressAndPort = 'localhost:4000';
const secondaryServerAddressAndPort = 'localhost:5000';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          Provider<ResilientWebSocketChannel>(
            create: (context) => ResilientWebSocketChannel.withPolicy(
              RoundRobinPolicy([
                'ws://$primaryServerAddressAndPort',
                'ws://$secondaryServerAddressAndPort',
              ])
                ..retryDelay = const Duration(milliseconds: 250),
            ),
          ),
          Provider<ResilientHttpClient>(
            create: (context) => ResilientHttpClient.withPolicy(
              RoundRobinPolicy([
                'http://$primaryServerAddressAndPort',
                'http://$secondaryServerAddressAndPort',
              ])
                ..retryDelay = const Duration(milliseconds: 250)
                ..shouldRetry = (retryContext) {
                  return Future.value(true);
                },
            ),
          ),
        ],
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _getData() async {
    print('_getData: Starting get');

    try {
      final httpClient =
          Provider.of<ResilientHttpClient>(context, listen: false);

      final uri = Uri.parse('/hello');
      final response = await httpClient.get(uri);
      print('_getData: Response status code = ${response.statusCode}');

      if (response.statusCode == 200) {
        print('_getData: Response body = ${response.body}');

        setState(() {
          _httpBody = '${response.body}\n(via ${httpClient.policy.uri})';
        });

        return;
      }
    } catch (ex) {
      print(ex);
    }

    setState(() {
      _httpBody = 'Failed to get HTTP response';
    });
  }

  String _httpBody = '\n';

  bool webSocketStarted = false;

  @override
  Widget build(BuildContext context) {
    final channel = Provider.of<ResilientWebSocketChannel>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: SizedBox(
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const Text(
                        'Websocket',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Switch(
                        value: webSocketStarted,
                        onChanged: (_) async {
                          setState(() {
                            webSocketStarted = !webSocketStarted;
                          });

                          if (webSocketStarted) {
                            await channel.start();
                          } else {
                            await channel.stop();
                          }
                        },
                      ),
                      StreamBuilder(
                        stream: channel.stream,
                        builder: (buildContext, snapshot) {
                          return (snapshot.hasData)
                              ? Text(
                                  '${snapshot.data}\n(via '
                                  '${channel.policy.uri})',
                                  textAlign: TextAlign.center,
                                )
                              : const Text('\n');
                        },
                      ),
                      const Divider(),
                      StreamBuilder(
                        stream: channel.connectionStatusChanged,
                        builder: (
                          buildContext,
                          AsyncSnapshot<ConnectionStatus> snapshot,
                        ) {
                          switch (snapshot.data) {
                            case ConnectionStatus.disconnected:
                              return const Text(
                                'Disconnected',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.grey),
                              );
                            case ConnectionStatus.connecting:
                              return const Text(
                                'Connecting',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.orange),
                              );
                            case ConnectionStatus.connected:
                              return const Text(
                                'Connected',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.green),
                              );
                            case null:
                              return const Text(
                                '---',
                                textAlign: TextAlign.center,
                              );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: SizedBox(
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const Text(
                        'HTTP',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: OutlinedButton(
                          onPressed: () async {
                            await _getData();
                          },
                          child: const Text('GET'),
                        ),
                      ),
                      Text(
                        _httpBody,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
