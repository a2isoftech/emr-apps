import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveInspectionMutation {
  factory Variables$Mutation$SaveInspectionMutation({
    required int batchQuoteId,
    required int quoteId,
    required String territory,
    required Input$VehicleConfigurationModelInput configuration,
    required double quoteChangedValue,
  }) =>
      Variables$Mutation$SaveInspectionMutation._({
        r'batchQuoteId': batchQuoteId,
        r'quoteId': quoteId,
        r'territory': territory,
        r'configuration': configuration,
        r'quoteChangedValue': quoteChangedValue,
      });

  Variables$Mutation$SaveInspectionMutation._(this._$data);

  factory Variables$Mutation$SaveInspectionMutation.fromJson(
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
    return Variables$Mutation$SaveInspectionMutation._(result$data);
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

  CopyWith$Variables$Mutation$SaveInspectionMutation<
          Variables$Mutation$SaveInspectionMutation>
      get copyWith => CopyWith$Variables$Mutation$SaveInspectionMutation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveInspectionMutation ||
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

abstract class CopyWith$Variables$Mutation$SaveInspectionMutation<TRes> {
  factory CopyWith$Variables$Mutation$SaveInspectionMutation(
    Variables$Mutation$SaveInspectionMutation instance,
    TRes Function(Variables$Mutation$SaveInspectionMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveInspectionMutation;

  factory CopyWith$Variables$Mutation$SaveInspectionMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveInspectionMutation;

  TRes call({
    int? batchQuoteId,
    int? quoteId,
    String? territory,
    Input$VehicleConfigurationModelInput? configuration,
    double? quoteChangedValue,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveInspectionMutation<TRes>
    implements CopyWith$Variables$Mutation$SaveInspectionMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveInspectionMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveInspectionMutation _instance;

  final TRes Function(Variables$Mutation$SaveInspectionMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? batchQuoteId = _undefined,
    Object? quoteId = _undefined,
    Object? territory = _undefined,
    Object? configuration = _undefined,
    Object? quoteChangedValue = _undefined,
  }) =>
      _then(Variables$Mutation$SaveInspectionMutation._({
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

class _CopyWithStubImpl$Variables$Mutation$SaveInspectionMutation<TRes>
    implements CopyWith$Variables$Mutation$SaveInspectionMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveInspectionMutation(this._res);

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

class Mutation$SaveInspectionMutation {
  Mutation$SaveInspectionMutation({
    required this.saveInspection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveInspectionMutation.fromJson(Map<String, dynamic> json) {
    final l$saveInspection = json['saveInspection'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveInspectionMutation(
      saveInspection: (l$saveInspection as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String saveInspection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveInspection = saveInspection;
    _resultData['saveInspection'] = l$saveInspection;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveInspection = saveInspection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$saveInspection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveInspectionMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveInspection = saveInspection;
    final lOther$saveInspection = other.saveInspection;
    if (l$saveInspection != lOther$saveInspection) {
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

extension UtilityExtension$Mutation$SaveInspectionMutation
    on Mutation$SaveInspectionMutation {
  CopyWith$Mutation$SaveInspectionMutation<Mutation$SaveInspectionMutation>
      get copyWith => CopyWith$Mutation$SaveInspectionMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveInspectionMutation<TRes> {
  factory CopyWith$Mutation$SaveInspectionMutation(
    Mutation$SaveInspectionMutation instance,
    TRes Function(Mutation$SaveInspectionMutation) then,
  ) = _CopyWithImpl$Mutation$SaveInspectionMutation;

  factory CopyWith$Mutation$SaveInspectionMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveInspectionMutation;

  TRes call({
    String? saveInspection,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveInspectionMutation<TRes>
    implements CopyWith$Mutation$SaveInspectionMutation<TRes> {
  _CopyWithImpl$Mutation$SaveInspectionMutation(
    this._instance,
    this._then,
  );

  final Mutation$SaveInspectionMutation _instance;

  final TRes Function(Mutation$SaveInspectionMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveInspection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveInspectionMutation(
        saveInspection: saveInspection == _undefined || saveInspection == null
            ? _instance.saveInspection
            : (saveInspection as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SaveInspectionMutation<TRes>
    implements CopyWith$Mutation$SaveInspectionMutation<TRes> {
  _CopyWithStubImpl$Mutation$SaveInspectionMutation(this._res);

  TRes _res;

  call({
    String? saveInspection,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSaveInspectionMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveInspectionMutation'),
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
        name: NameNode(value: 'saveInspection'),
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
