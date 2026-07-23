import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetWorkflowRuleFilterValues {
  factory Variables$Query$GetWorkflowRuleFilterValues({
    required Enum$WorkflowType WorkflowType,
  }) => Variables$Query$GetWorkflowRuleFilterValues._({
    r'WorkflowType': WorkflowType,
  });

  Variables$Query$GetWorkflowRuleFilterValues._(this._$data);

  factory Variables$Query$GetWorkflowRuleFilterValues.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$WorkflowType = data['WorkflowType'];
    result$data['WorkflowType'] = fromJson$Enum$WorkflowType(
      (l$WorkflowType as String),
    );
    return Variables$Query$GetWorkflowRuleFilterValues._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$WorkflowType get WorkflowType =>
      (_$data['WorkflowType'] as Enum$WorkflowType);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$WorkflowType = WorkflowType;
    result$data['WorkflowType'] = toJson$Enum$WorkflowType(l$WorkflowType);
    return result$data;
  }

  CopyWith$Variables$Query$GetWorkflowRuleFilterValues<
    Variables$Query$GetWorkflowRuleFilterValues
  >
  get copyWith =>
      CopyWith$Variables$Query$GetWorkflowRuleFilterValues(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetWorkflowRuleFilterValues ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$WorkflowType = WorkflowType;
    final lOther$WorkflowType = other.WorkflowType;
    if (l$WorkflowType != lOther$WorkflowType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$WorkflowType = WorkflowType;
    return Object.hashAll([l$WorkflowType]);
  }
}

abstract class CopyWith$Variables$Query$GetWorkflowRuleFilterValues<TRes> {
  factory CopyWith$Variables$Query$GetWorkflowRuleFilterValues(
    Variables$Query$GetWorkflowRuleFilterValues instance,
    TRes Function(Variables$Query$GetWorkflowRuleFilterValues) then,
  ) = _CopyWithImpl$Variables$Query$GetWorkflowRuleFilterValues;

  factory CopyWith$Variables$Query$GetWorkflowRuleFilterValues.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetWorkflowRuleFilterValues;

  TRes call({Enum$WorkflowType? WorkflowType});
}

class _CopyWithImpl$Variables$Query$GetWorkflowRuleFilterValues<TRes>
    implements CopyWith$Variables$Query$GetWorkflowRuleFilterValues<TRes> {
  _CopyWithImpl$Variables$Query$GetWorkflowRuleFilterValues(
    this._instance,
    this._then,
  );

  final Variables$Query$GetWorkflowRuleFilterValues _instance;

  final TRes Function(Variables$Query$GetWorkflowRuleFilterValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? WorkflowType = _undefined}) => _then(
    Variables$Query$GetWorkflowRuleFilterValues._({
      ..._instance._$data,
      if (WorkflowType != _undefined && WorkflowType != null)
        'WorkflowType': (WorkflowType as Enum$WorkflowType),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetWorkflowRuleFilterValues<TRes>
    implements CopyWith$Variables$Query$GetWorkflowRuleFilterValues<TRes> {
  _CopyWithStubImpl$Variables$Query$GetWorkflowRuleFilterValues(this._res);

  TRes _res;

  call({Enum$WorkflowType? WorkflowType}) => _res;
}

class Query$GetWorkflowRuleFilterValues {
  Query$GetWorkflowRuleFilterValues({
    required this.workflowRuleFilterValues,
    this.$__typename = 'Query',
  });

  factory Query$GetWorkflowRuleFilterValues.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$workflowRuleFilterValues = json['workflowRuleFilterValues'];
    final l$$__typename = json['__typename'];
    return Query$GetWorkflowRuleFilterValues(
      workflowRuleFilterValues: (l$workflowRuleFilterValues as List<dynamic>)
          .map(
            (e) =>
                Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues>
  workflowRuleFilterValues;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workflowRuleFilterValues = workflowRuleFilterValues;
    _resultData['workflowRuleFilterValues'] = l$workflowRuleFilterValues
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workflowRuleFilterValues = workflowRuleFilterValues;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$workflowRuleFilterValues.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWorkflowRuleFilterValues ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workflowRuleFilterValues = workflowRuleFilterValues;
    final lOther$workflowRuleFilterValues = other.workflowRuleFilterValues;
    if (l$workflowRuleFilterValues.length !=
        lOther$workflowRuleFilterValues.length) {
      return false;
    }
    for (int i = 0; i < l$workflowRuleFilterValues.length; i++) {
      final l$workflowRuleFilterValues$entry = l$workflowRuleFilterValues[i];
      final lOther$workflowRuleFilterValues$entry =
          lOther$workflowRuleFilterValues[i];
      if (l$workflowRuleFilterValues$entry !=
          lOther$workflowRuleFilterValues$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetWorkflowRuleFilterValues
    on Query$GetWorkflowRuleFilterValues {
  CopyWith$Query$GetWorkflowRuleFilterValues<Query$GetWorkflowRuleFilterValues>
  get copyWith => CopyWith$Query$GetWorkflowRuleFilterValues(this, (i) => i);
}

abstract class CopyWith$Query$GetWorkflowRuleFilterValues<TRes> {
  factory CopyWith$Query$GetWorkflowRuleFilterValues(
    Query$GetWorkflowRuleFilterValues instance,
    TRes Function(Query$GetWorkflowRuleFilterValues) then,
  ) = _CopyWithImpl$Query$GetWorkflowRuleFilterValues;

  factory CopyWith$Query$GetWorkflowRuleFilterValues.stub(TRes res) =
      _CopyWithStubImpl$Query$GetWorkflowRuleFilterValues;

  TRes call({
    List<Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues>?
    workflowRuleFilterValues,
    String? $__typename,
  });
  TRes workflowRuleFilterValues(
    Iterable<Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues>
    Function(
      Iterable<
        CopyWith$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues<
          Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetWorkflowRuleFilterValues<TRes>
    implements CopyWith$Query$GetWorkflowRuleFilterValues<TRes> {
  _CopyWithImpl$Query$GetWorkflowRuleFilterValues(this._instance, this._then);

  final Query$GetWorkflowRuleFilterValues _instance;

  final TRes Function(Query$GetWorkflowRuleFilterValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workflowRuleFilterValues = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWorkflowRuleFilterValues(
      workflowRuleFilterValues:
          workflowRuleFilterValues == _undefined ||
              workflowRuleFilterValues == null
          ? _instance.workflowRuleFilterValues
          : (workflowRuleFilterValues
                as List<
                  Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes workflowRuleFilterValues(
    Iterable<Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues>
    Function(
      Iterable<
        CopyWith$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues<
          Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues
        >
      >,
    )
    _fn,
  ) => call(
    workflowRuleFilterValues: _fn(
      _instance.workflowRuleFilterValues.map(
        (e) =>
            CopyWith$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetWorkflowRuleFilterValues<TRes>
    implements CopyWith$Query$GetWorkflowRuleFilterValues<TRes> {
  _CopyWithStubImpl$Query$GetWorkflowRuleFilterValues(this._res);

  TRes _res;

  call({
    List<Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues>?
    workflowRuleFilterValues,
    String? $__typename,
  }) => _res;

  workflowRuleFilterValues(_fn) => _res;
}

const documentNodeQueryGetWorkflowRuleFilterValues = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetWorkflowRuleFilterValues'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'WorkflowType')),
          type: NamedTypeNode(
            name: NameNode(value: 'WorkflowType'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'workflowRuleFilterValues'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'workflowTypeName'),
                value: VariableNode(name: NameNode(value: 'WorkflowType')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'value'),
                  alias: null,
                  arguments: [],
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
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues {
  Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndIEnumerableOfString',
  });

  factory Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues(
      key: (l$key as String),
      value: (l$value as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final List<String> value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      Object.hashAll(l$value.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value.length != lOther$value.length) {
      return false;
    }
    for (int i = 0; i < l$value.length; i++) {
      final l$value$entry = l$value[i];
      final lOther$value$entry = lOther$value[i];
      if (l$value$entry != lOther$value$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues
    on Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues {
  CopyWith$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues<
    Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues
  >
  get copyWith =>
      CopyWith$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues<
  TRes
> {
  factory CopyWith$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues(
    Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues instance,
    TRes Function(Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues)
    then,
  ) = _CopyWithImpl$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues;

  factory CopyWith$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues;

  TRes call({String? key, List<String>? value, String? $__typename});
}

class _CopyWithImpl$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues<
  TRes
>
    implements
        CopyWith$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues<
          TRes
        > {
  _CopyWithImpl$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues(
    this._instance,
    this._then,
  );

  final Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues _instance;

  final TRes Function(
    Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues<
  TRes
>
    implements
        CopyWith$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWorkflowRuleFilterValues$workflowRuleFilterValues(
    this._res,
  );

  TRes _res;

  call({String? key, List<String>? value, String? $__typename}) => _res;
}
