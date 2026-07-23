import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:flutter/foundation.dart';

class DirectQueryInstance {
  DirectQueryInstance({
    required this.queryDefinitionId,
    this.rql = '',
    this.id,
    DirectQueryKind? kind,
    String? title,
    String? subTitle,
    String? facetLabel,
    String? facetRangeId,
    List<DirectQueryParameterDefinition>? parameters,
    List<DirectQueryParameterValue>? parameterValues,
  }) {
    this.title = ValueNotifier(title ?? '');
    this.subTitle = ValueNotifier(subTitle ?? '');
    this.facetLabel = ValueNotifier(facetLabel ?? '');
    this.facetRangeId = ValueNotifier(facetRangeId ?? '');
    this.parameterValues = ValueNotifier(parameterValues ?? []);
    this.parameters = ValueNotifier(parameters ?? []);
    this.kind = ValueNotifier(kind ?? DirectQueryKind.singleFacetValue);
  }

  factory DirectQueryInstance.fromJson(Map<String, dynamic> json) {
    return DirectQueryInstance(
      id: json['id'] as String?,
      queryDefinitionId: json['queryDefinitionId'] as String,
      rql: json['rql'] as String? ?? '',
      title: json['title'] as String? ?? '',
      subTitle: json['subTitle'] as String? ?? '',
      facetLabel: json['facetLabel'] as String? ?? '',
      facetRangeId: json['facetRangeId'] as String? ?? '',
      parameters: (json['parameters'] as List<dynamic>?)
              ?.map(
                (e) => DirectQueryParameterDefinition(
                  name: ValueNotifier<String>(
                    (e as Map<String, dynamic>)['name'] as String,
                  ),
                  type: ValueNotifier<DirectQueryParameterType>(
                    DirectQueryParameterType.values.firstWhere(
                      (type) => type.name == e['type'],
                    ),
                  ),
                  defaultValue: e['defaultValue'] as String?,
                ),
              )
              .toList() ??
          [],
      parameterValues: (json['parameterValues'] as List<dynamic>?)
              ?.map(
                (e) => DirectQueryParameterValue(
                  name: ValueNotifier<String>(
                    (e as Map<String, dynamic>)['name'] as String,
                  ),
                  value: ValueNotifier<String>(e['value'] as String),
                ),
              )
              .toList() ??
          [],
      kind: DirectQueryKind.values.firstWhere(
        (kind) => kind.name == (json['kind'] as String? ?? 'singleFacetValue'),
        orElse: () => DirectQueryKind.singleFacetValue,
      ),
    );
  }

  // clone factory method
  factory DirectQueryInstance.clone(DirectQueryInstance other) {
    return DirectQueryInstance(
      id: other.id,
      queryDefinitionId: other.queryDefinitionId,
      title: other.title.value,
      rql: other.rql,
      subTitle: other.subTitle.value,
      facetLabel: other.facetLabel.value,
      parameters: other.parameters.value
          .map(DirectQueryParameterDefinition.clone)
          .toList(),
      parameterValues: other.parameterValues.value
          .map(DirectQueryParameterValue.clone)
          .toList(),
      facetRangeId: other.facetRangeId.value,
      kind: other.kind.value,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'queryDefinitionId': queryDefinitionId,
      'rql': rql,
      'title': title.value,
      'subTitle': subTitle.value,
      'facetLabel': facetLabel.value,
      'facetRangeId': facetRangeId.value,
      'parameters': parameters.value.map((e) => e.toJson()).toList(),
      'parameterValues': parameterValues.value.map((e) => e.toJson()).toList(),
      'kind': kind.value.name,
    };
  }

  void applyFrom(DirectQueryInstance other) {
    title.value = other.title.value;
    subTitle.value = other.subTitle.value;
    facetLabel.value = other.facetLabel.value;
    facetRangeId.value = other.facetRangeId.value;
    parameters.value = other.parameters.value
        .map(DirectQueryParameterDefinition.clone)
        .toList();
    parameterValues.value = other.parameterValues.value
        .map(DirectQueryParameterValue.clone)
        .toList();
    kind.value = other.kind.value;
  }

  final String? id;

  final String queryDefinitionId;

  final String rql;

  late final ValueNotifier<List<DirectQueryParameterValue>> parameterValues;

  late final ValueNotifier<List<DirectQueryParameterDefinition>> parameters;

  late final ValueNotifier<String> title;

  late final ValueNotifier<String> subTitle;

  late final ValueNotifier<String> facetLabel;

  late final ValueNotifier<DirectQueryKind> kind;

  late final ValueNotifier<String> facetRangeId;
}
