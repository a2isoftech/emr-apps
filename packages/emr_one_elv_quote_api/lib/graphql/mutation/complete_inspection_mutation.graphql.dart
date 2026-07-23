import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CompleteInspectionMutation {
  factory Variables$Mutation$CompleteInspectionMutation({
    required int batchQuoteId,
    required int quoteId,
    required String territory,
    required Input$VehicleConfigurationModelInput configuration,
    required double quoteChangedValue,
  }) =>
      Variables$Mutation$CompleteInspectionMutation._({
        r'batchQuoteId': batchQuoteId,
        r'quoteId': quoteId,
        r'territory': territory,
        r'configuration': configuration,
        r'quoteChangedValue': quoteChangedValue,
      });

  Variables$Mutation$CompleteInspectionMutation._(this._$data);

  factory Variables$Mutation$CompleteInspectionMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$batchQuoteId = data['batchQuoteId'];
    result$data['batchQuoteId'] = (l$batchQuoteId as int);
    final l$quoteId = data['quoteId'];
    result$data['quoteId'] = (l$quoteId as int);
    final l$territory = data['territory'];
    result$data['territory'] = (l$territory as String);
    final l$configuration = data['configuration'];
    result$data['configuration'] =
        Input$VehicleConfigurationModelInput.fromJson(
            (l$configuration as Map<String, dynamic>));
    final l$quoteChangedValue = data['quoteChangedValue'];
    result$data['quoteChangedValue'] = (l$quoteChangedValue as num).toDouble();
    return Variables$Mutation$CompleteInspectionMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  int get batchQuoteId => (_$data['batchQuoteId'] as int);

  int get quoteId => (_$data['quoteId'] as int);

  String get territory => (_$data['territory'] as String);

  Input$VehicleConfigurationModelInput get configuration =>
      (_$data['configuration'] as Input$VehicleConfigurationModelInput);

  double get quoteChangedValue => (_$data['quoteChangedValue'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$batchQuoteId = batchQuoteId;
    result$data['batchQuoteId'] = l$batchQuoteId;
    final l$quoteId = quoteId;
    result$data['quoteId'] = l$quoteId;
    final l$territory = territory;
    result$data['territory'] = l$territory;
    final l$configuration = configuration;
    result$data['configuration'] = l$configuration.toJson();
    final l$quoteChangedValue = quoteChangedValue;
    result$data['quoteChangedValue'] = l$quoteChangedValue;
    return result$data;
  }

  CopyWith$Variables$Mutation$CompleteInspectionMutation<
          Variables$Mutation$CompleteInspectionMutation>
      get copyWith => CopyWith$Variables$Mutation$CompleteInspectionMutation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CompleteInspectionMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$batchQuoteId = batchQuoteId;
    final lOther$batchQuoteId = other.batchQuoteId;
    if (l$batchQuoteId != lOther$batchQuoteId) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
      return false;
    }
    final l$configuration = configuration;
    final lOther$configuration = other.configuration;
    if (l$configuration != lOther$configuration) {
      return false;
    }
    final l$quoteChangedValue = quoteChangedValue;
    final lOther$quoteChangedValue = other.quoteChangedValue;
    if (l$quoteChangedValue != lOther$quoteChangedValue) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$batchQuoteId = batchQuoteId;
    final l$quoteId = quoteId;
    final l$territory = territory;
    final l$configuration = configuration;
    final l$quoteChangedValue = quoteChangedValue;
    return Object.hashAll([
      l$batchQuoteId,
      l$quoteId,
      l$territory,
      l$configuration,
      l$quoteChangedValue,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CompleteInspectionMutation<TRes> {
  factory CopyWith$Variables$Mutation$CompleteInspectionMutation(
    Variables$Mutation$CompleteInspectionMutation instance,
    TRes Function(Variables$Mutation$CompleteInspectionMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$CompleteInspectionMutation;

  factory CopyWith$Variables$Mutation$CompleteInspectionMutation.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CompleteInspectionMutation;

  TRes call({
    int? batchQuoteId,
    int? quoteId,
    String? territory,
    Input$VehicleConfigurationModelInput? configuration,
    double? quoteChangedValue,
  });
}

class _CopyWithImpl$Variables$Mutation$CompleteInspectionMutation<TRes>
    implements CopyWith$Variables$Mutation$CompleteInspectionMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$CompleteInspectionMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CompleteInspectionMutation _instance;

  final TRes Function(Variables$Mutation$CompleteInspectionMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? batchQuoteId = _undefined,
    Object? quoteId = _undefined,
    Object? territory = _undefined,
    Object? configuration = _undefined,
    Object? quoteChangedValue = _undefined,
  }) =>
      _then(Variables$Mutation$CompleteInspectionMutation._({
        ..._instance._$data,
        if (batchQuoteId != _undefined && batchQuoteId != null)
          'batchQuoteId': (batchQuoteId as int),
        if (quoteId != _undefined && quoteId != null)
          'quoteId': (quoteId as int),
        if (territory != _undefined && territory != null)
          'territory': (territory as String),
        if (configuration != _undefined && configuration != null)
          'configuration':
              (configuration as Input$VehicleConfigurationModelInput),
        if (quoteChangedValue != _undefined && quoteChangedValue != null)
          'quoteChangedValue': (quoteChangedValue as double),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CompleteInspectionMutation<TRes>
    implements CopyWith$Variables$Mutation$CompleteInspectionMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CompleteInspectionMutation(this._res);

  TRes _res;

  call({
    int? batchQuoteId,
    int? quoteId,
    String? territory,
    Input$VehicleConfigurationModelInput? configuration,
    double? quoteChangedValue,
  }) =>
      _res;
}

class Mutation$CompleteInspectionMutation {
  Mutation$CompleteInspectionMutation({
    required this.completeInspection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CompleteInspectionMutation.fromJson(
      Map<String, dynamic> json) {
    final l$completeInspection = json['completeInspection'];
    final l$$__typename = json['__typename'];
    return Mutation$CompleteInspectionMutation(
      completeInspection: (l$completeInspection as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String completeInspection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$completeInspection = completeInspection;
    _resultData['completeInspection'] = l$completeInspection;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$completeInspection = completeInspection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$completeInspection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CompleteInspectionMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$completeInspection = completeInspection;
    final lOther$completeInspection = other.completeInspection;
    if (l$completeInspection != lOther$completeInspection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CompleteInspectionMutation
    on Mutation$CompleteInspectionMutation {
  CopyWith$Mutation$CompleteInspectionMutation<
          Mutation$CompleteInspectionMutation>
      get copyWith => CopyWith$Mutation$CompleteInspectionMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CompleteInspectionMutation<TRes> {
  factory CopyWith$Mutation$CompleteInspectionMutation(
    Mutation$CompleteInspectionMutation instance,
    TRes Function(Mutation$CompleteInspectionMutation) then,
  ) = _CopyWithImpl$Mutation$CompleteInspectionMutation;

  factory CopyWith$Mutation$CompleteInspectionMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CompleteInspectionMutation;

  TRes call({
    String? completeInspection,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CompleteInspectionMutation<TRes>
    implements CopyWith$Mutation$CompleteInspectionMutation<TRes> {
  _CopyWithImpl$Mutation$CompleteInspectionMutation(
    this._instance,
    this._then,
  );

  final Mutation$CompleteInspectionMutation _instance;

  final TRes Function(Mutation$CompleteInspectionMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? completeInspection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CompleteInspectionMutation(
        completeInspection:
            completeInspection == _undefined || completeInspection == null
                ? _instance.completeInspection
                : (completeInspection as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CompleteInspectionMutation<TRes>
    implements CopyWith$Mutation$CompleteInspectionMutation<TRes> {
  _CopyWithStubImpl$Mutation$CompleteInspectionMutation(this._res);

  TRes _res;

  call({
    String? completeInspection,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationCompleteInspectionMutation =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CompleteInspectionMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'batchQuoteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'quoteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'territory')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'configuration')),
        type: NamedTypeNode(
          name: NameNode(value: 'VehicleConfigurationModelInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'quoteChangedValue')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'completeInspection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'batchQuoteId'),
            value: VariableNode(name: NameNode(value: 'batchQuoteId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'quoteId'),
            value: VariableNode(name: NameNode(value: 'quoteId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'configuration'),
            value: VariableNode(name: NameNode(value: 'configuration')),
          ),
          ArgumentNode(
            name: NameNode(value: 'territory'),
            value: VariableNode(name: NameNode(value: 'territory')),
          ),
          ArgumentNode(
            name: NameNode(value: 'quoteChangedValue'),
            value: VariableNode(name: NameNode(value: 'quoteChangedValue')),
          ),
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
