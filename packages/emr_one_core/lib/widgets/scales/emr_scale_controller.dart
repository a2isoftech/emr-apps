import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/scales/scales.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class EmrScaleController {
  EmrScaleController({
    required this.scale,
    this.preferredUom,
    this.manualWeightMode = false,
    bool enabled = false,
  }) {
    _enabledNotifier.value = enabled;
  }

  final Uom? preferredUom;
  final Scale scale;
  final isConnected = signal<bool>(false);
  final weightTaken = signal<WeightTaken?>(null);
  final bool manualWeightMode;
  late String _subscriptionId;
  late String _archivedWeightId;
  ResilientWebSocketChannel? _channel;

  final ValueNotifier<bool> _enabledNotifier = ValueNotifier(false);
  ValueNotifier<bool> get enabledNotifier => _enabledNotifier;
  bool get enabled => enabledNotifier.value;
  set enabled(bool value) => enabledNotifier.value = value;

  late Computed<bool> isSteady;

  late Completer<WeightTaken> _weightTakenCompleter;

  void initialise() {
    if (manualWeightMode) {
      isConnected.value = true;
      isSteady = computed(() => true);
      return;
    }

    final policy = SimplePolicy(scale.url.replaceFirst('http', 'ws'))
      ..connectionMessage = '{"type":"connection_init","payload":{}}';

    _channel = ResilientWebSocketChannel.withPolicy(policy);
    _channel!.connectionStatusChanged.listen(_onConnectionStatusChanged);
    _channel!.start();
    _channel!.stream.listen(_onStreamReceived);

    isSteady = computed(
      () => isConnected.value && (weightTaken.value?.isSteady ?? false),
    );

    //graphql subscriptions and other operations over the websocket require a
    //unique id, or it kills the subscription
    final rand = Random();
    _subscriptionId = rand.nextInt(10000).toString();

    do {
      _archivedWeightId = rand.nextInt(10000).toString();
    } while (_subscriptionId == _archivedWeightId);
  }

  void dispose() {
    _channel?.stop();
  }

  void _onConnectionStatusChanged(ConnectionStatus event) {
    if (event == ConnectionStatus.connected) {
      _sendQuery();
      isConnected.value = true;
      weightTaken.value = null;
    }

    if (event == ConnectionStatus.disconnected) {
      isConnected.value = false;
      weightTaken.value = null;
    }
  }

  void _onStreamReceived(String message) {
    try {
      final response = ScaleResponse.fromJson(
        jsonDecode(message) as Map<String, dynamic>,
      );

      if (response.type != 'data') return;

      if (response.id == _archivedWeightId) {
        _weightTakenCompleter.complete(
          convertWeightTo(
            response.payload?.data?.archivedWeight,
            preferredUom,
          ),
        );
        return;
      }

      weightTaken.value =
          convertWeightTo(response.payload?.data?.weightTaken, preferredUom);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  WeightTaken? convertWeightTo(WeightTaken? weightTaken, Uom? toUom) {
    if (weightTaken == null) return null;
    if (toUom == null) return weightTaken;

    final sourceUom = Uom.fromCode(weightTaken.uomCode ?? '');
    final convertedWeight = convertWeight(sourceUom, toUom, weightTaken.value!);
    final uomId = toUom.uomId;

    weightTaken.value = convertedWeight;
    weightTaken.uomCode = toUom.name;
    weightTaken.uomId = uomId;

    return weightTaken;
  }

  void _sendQuery() {
    var query = r'''
      {
        "id": "{_subscriptionId}",
        "type": "start",
        "payload": {
          "query": "subscription test { weightTaken(scaleAssetCode: \"{assetCode}\") { scaleIdentifier value uomCode uomId errMsg isSteady isArchivedWeight serialNo isPersistentError hasSeenZero consecutiveWeighingNumber }}",
          "operationName": "test"
        }
      }
      ''';

    query = query
        .replaceFirst('{_subscriptionId}', _subscriptionId)
        .replaceFirst('{assetCode}', scale.assetCode);
    _channel!.send(query);
  }

  void _sendArchivedWeight() {
    var query = r'''
      {
          "id": "{_archivedWeightId}",
          "type": "start",
          "payload": {
              "query": "query {  archivedWeight(scaleAssetCode: \"{assetCode}\") { scaleIdentifier value uomCode uomId errMsg isSteady isArchivedWeight serialNo isPersistentError hasSeenZero consecutiveWeighingNumber }}"
          }
      }
      ''';

    query = query
        .replaceFirst('{_archivedWeightId}', _archivedWeightId)
        .replaceFirst('{assetCode}', scale.assetCode);

    _channel!.send(query);
  }

  Future<WeightTaken?> takeWeight() {
    _weightTakenCompleter = Completer<WeightTaken>();
    _sendArchivedWeight();
    return _weightTakenCompleter.future;
  }
}
