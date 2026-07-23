import 'dart:convert';
import 'dart:math';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:signals/signals_flutter.dart';

class GraphQLSubscriptionListener<T> {
  GraphQLSubscriptionListener({
    required this.baseUrl,
    required this.getToken,
    required this.node,
    required this.fromJson,
    required this.onDataReceived,
    this.variables,
  }) {
    var url = baseUrl.replaceFirst('http', 'ws');
    if (!url.toLowerCase().contains('/graphql')) {
      url = '$url${url.endsWith('/') ? 'graphql' : '/graphql'}';
    }
    url = '$url?token=${getToken()}';

    final policy = SimplePolicy(url)
      ..timeout = const Duration(days: 5)
      ..connectionMessage = '{"type":"connection_init","payload":{}}';
    _channel = ResilientWebSocketChannel.withPolicy(policy);
    _channel.connectionStatusChanged.listen(_onConnectionStatusChanged);
    _channel.start();
    _channel.stream.listen(_onStreamReceived);
  }

  final String baseUrl;
  final String Function() getToken;
  final DocumentNode node;
  final dynamic variables;
  final T Function(Map<String, dynamic> item) fromJson;
  final void Function(GraphQLResponse<T> item) onDataReceived;
  final isConnected = signal<bool>(false);
  final rand = Random();

  late ResilientWebSocketChannel _channel;

  void _onConnectionStatusChanged(ConnectionStatus event) {
    if (event == ConnectionStatus.connected) {
      _sendQuery();
      isConnected.value = true;
    }

    if (event == ConnectionStatus.disconnected) {
      isConnected.value = false;
    }
  }

  void _sendQuery() {
    final operationNode = node.definitions.firstWhere(
      (element) => element.runtimeType == OperationDefinitionNode,
    ) as OperationDefinitionNode;

    var query = printNode(node);
    query = query.replaceAll('__typename', '');

    final body = jsonEncode({
      'id': rand.nextInt(10000).toString(),
      'type': 'start',
      'payload': {
        'operationName': operationNode.name?.value ?? '',
        'query': query,
        'variables': variables,
      },
    });

    _channel.send(body);
  }

  void _onStreamReceived(String message) {
    try {
      final response = jsonDecode(message) as Map<String, dynamic>;

      if (response['type'] != 'data') return;
      final payload = response['payload'] as Map<String, dynamic>?;
      if (payload == null) return;

      final item =
          GraphQLResponseParser.parseResponse(jsonEncode(payload), fromJson);
      onDataReceived(item);
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  void dispose() {
    _channel.stop();
  }
}
