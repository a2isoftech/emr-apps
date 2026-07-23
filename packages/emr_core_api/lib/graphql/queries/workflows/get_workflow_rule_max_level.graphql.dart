import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetWorkflowRulesMaxLevel {
  factory Variables$Query$GetWorkflowRulesMaxLevel({
    required Enum$WorkflowType workflowType,
  }) => Variables$Query$GetWorkflowRulesMaxLevel._({
    r'workflowType': workflowType,
  });

  Variables$Query$GetWorkflowRulesMaxLevel._(this._$data);

  factory Variables$Query$GetWorkflowRulesMaxLevel.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$workflowType = data['workflowType'];
    result$data['workflowType'] = fromJson$Enum$WorkflowType(
      (l$workflowType as String),
    );
    return Variables$Query$GetWorkflowRulesMaxLevel._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$WorkflowType get workflowType =>
      (_$data['workflowType'] as Enum$WorkflowType);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$workflowType = workflowType;
    result$data['workflowType'] = toJson$Enum$WorkflowType(l$workflowType);
    return result$data;
  }

  CopyWith$Variables$Query$GetWorkflowRulesMaxLevel<
    Variables$Query$GetWorkflowRulesMaxLevel
  >
  get copyWith =>
      CopyWith$Variables$Query$GetWorkflowRulesMaxLevel(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetWorkflowRulesMaxLevel ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workflowType = workflowType;
    final lOther$workflowType = other.workflowType;
    if (l$workflowType != lOther$workflowType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$workflowType = workflowType;
    return Object.hashAll([l$workflowType]);
  }
}

abstract class CopyWith$Variables$Query$GetWorkflowRulesMaxLevel<TRes> {
  factory CopyWith$Variables$Query$GetWorkflowRulesMaxLevel(
    Variables$Query$GetWorkflowRulesMaxLevel instance,
    TRes Function(Variables$Query$GetWorkflowRulesMaxLevel) then,
  ) = _CopyWithImpl$Variables$Query$GetWorkflowRulesMaxLevel;

  factory CopyWith$Variables$Query$GetWorkflowRulesMaxLevel.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetWorkflowRulesMaxLevel;

  TRes call({Enum$WorkflowType? workflowType});
}

class _CopyWithImpl$Variables$Query$GetWorkflowRulesMaxLevel<TRes>
    implements CopyWith$Variables$Query$GetWorkflowRulesMaxLevel<TRes> {
  _CopyWithImpl$Variables$Query$GetWorkflowRulesMaxLevel(
    this._instance,
    this._then,
  );

  final Variables$Query$GetWorkflowRulesMaxLevel _instance;

  final TRes Function(Variables$Query$GetWorkflowRulesMaxLevel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? workflowType = _undefined}) => _then(
    Variables$Query$GetWorkflowRulesMaxLevel._({
      ..._instance._$data,
      if (workflowType != _undefined && workflowType != null)
        'workflowType': (workflowType as Enum$WorkflowType),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetWorkflowRulesMaxLevel<TRes>
    implements CopyWith$Variables$Query$GetWorkflowRulesMaxLevel<TRes> {
  _CopyWithStubImpl$Variables$Query$GetWorkflowRulesMaxLevel(this._res);

  TRes _res;

  call({Enum$WorkflowType? workflowType}) => _res;
}

class Query$GetWorkflowRulesMaxLevel {
  Query$GetWorkflowRulesMaxLevel({
    required this.workflowRulesMaxLevel,
    this.$__typename = 'Query',
  });

  factory Query$GetWorkflowRulesMaxLevel.fromJson(Map<String, dynamic> json) {
    final l$workflowRulesMaxLevel = json['workflowRulesMaxLevel'];
    final l$$__typename = json['__typename'];
    return Query$GetWorkflowRulesMaxLevel(
      workflowRulesMaxLevel:
          Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel.fromJson(
            (l$workflowRulesMaxLevel as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel
  workflowRulesMaxLevel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workflowRulesMaxLevel = workflowRulesMaxLevel;
    _resultData['workflowRulesMaxLevel'] = l$workflowRulesMaxLevel.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workflowRulesMaxLevel = workflowRulesMaxLevel;
    final l$$__typename = $__typename;
    return Object.hashAll([l$workflowRulesMaxLevel, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWorkflowRulesMaxLevel ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workflowRulesMaxLevel = workflowRulesMaxLevel;
    final lOther$workflowRulesMaxLevel = other.workflowRulesMaxLevel;
    if (l$workflowRulesMaxLevel != lOther$workflowRulesMaxLevel) {
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

extension UtilityExtension$Query$GetWorkflowRulesMaxLevel
    on Query$GetWorkflowRulesMaxLevel {
  CopyWith$Query$GetWorkflowRulesMaxLevel<Query$GetWorkflowRulesMaxLevel>
  get copyWith => CopyWith$Query$GetWorkflowRulesMaxLevel(this, (i) => i);
}

abstract class CopyWith$Query$GetWorkflowRulesMaxLevel<TRes> {
  factory CopyWith$Query$GetWorkflowRulesMaxLevel(
    Query$GetWorkflowRulesMaxLevel instance,
    TRes Function(Query$GetWorkflowRulesMaxLevel) then,
  ) = _CopyWithImpl$Query$GetWorkflowRulesMaxLevel;

  factory CopyWith$Query$GetWorkflowRulesMaxLevel.stub(TRes res) =
      _CopyWithStubImpl$Query$GetWorkflowRulesMaxLevel;

  TRes call({
    Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel? workflowRulesMaxLevel,
    String? $__typename,
  });
  CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel<TRes>
  get workflowRulesMaxLevel;
}

class _CopyWithImpl$Query$GetWorkflowRulesMaxLevel<TRes>
    implements CopyWith$Query$GetWorkflowRulesMaxLevel<TRes> {
  _CopyWithImpl$Query$GetWorkflowRulesMaxLevel(this._instance, this._then);

  final Query$GetWorkflowRulesMaxLevel _instance;

  final TRes Function(Query$GetWorkflowRulesMaxLevel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workflowRulesMaxLevel = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWorkflowRulesMaxLevel(
      workflowRulesMaxLevel:
          workflowRulesMaxLevel == _undefined || workflowRulesMaxLevel == null
          ? _instance.workflowRulesMaxLevel
          : (workflowRulesMaxLevel
                as Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel<TRes>
  get workflowRulesMaxLevel {
    final local$workflowRulesMaxLevel = _instance.workflowRulesMaxLevel;
    return CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel(
      local$workflowRulesMaxLevel,
      (e) => call(workflowRulesMaxLevel: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetWorkflowRulesMaxLevel<TRes>
    implements CopyWith$Query$GetWorkflowRulesMaxLevel<TRes> {
  _CopyWithStubImpl$Query$GetWorkflowRulesMaxLevel(this._res);

  TRes _res;

  call({
    Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel? workflowRulesMaxLevel,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel<TRes>
  get workflowRulesMaxLevel =>
      CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel.stub(_res);
}

const documentNodeQueryGetWorkflowRulesMaxLevel = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetWorkflowRulesMaxLevel'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'workflowType')),
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
            name: NameNode(value: 'workflowRulesMaxLevel'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'workflowType'),
                value: VariableNode(name: NameNode(value: 'workflowType')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'workflowType'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'maxLevel'),
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

class Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel {
  Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel({
    required this.workflowType,
    required this.maxLevel,
    this.$__typename = 'WorkflowRuleMaxLevelResult',
  });

  factory Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$workflowType = json['workflowType'];
    final l$maxLevel = json['maxLevel'];
    final l$$__typename = json['__typename'];
    return Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel(
      workflowType: fromJson$Enum$WorkflowType((l$workflowType as String)),
      maxLevel: (l$maxLevel as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$WorkflowType workflowType;

  final int maxLevel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workflowType = workflowType;
    _resultData['workflowType'] = toJson$Enum$WorkflowType(l$workflowType);
    final l$maxLevel = maxLevel;
    _resultData['maxLevel'] = l$maxLevel;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workflowType = workflowType;
    final l$maxLevel = maxLevel;
    final l$$__typename = $__typename;
    return Object.hashAll([l$workflowType, l$maxLevel, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workflowType = workflowType;
    final lOther$workflowType = other.workflowType;
    if (l$workflowType != lOther$workflowType) {
      return false;
    }
    final l$maxLevel = maxLevel;
    final lOther$maxLevel = other.maxLevel;
    if (l$maxLevel != lOther$maxLevel) {
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

extension UtilityExtension$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel
    on Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel {
  CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel<
    Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel
  >
  get copyWith => CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel<
  TRes
> {
  factory CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel(
    Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel instance,
    TRes Function(Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel) then,
  ) = _CopyWithImpl$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel;

  factory CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel;

  TRes call({
    Enum$WorkflowType? workflowType,
    int? maxLevel,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel<TRes>
    implements
        CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel<TRes> {
  _CopyWithImpl$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel(
    this._instance,
    this._then,
  );

  final Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel _instance;

  final TRes Function(Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workflowType = _undefined,
    Object? maxLevel = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel(
      workflowType: workflowType == _undefined || workflowType == null
          ? _instance.workflowType
          : (workflowType as Enum$WorkflowType),
      maxLevel: maxLevel == _undefined || maxLevel == null
          ? _instance.maxLevel
          : (maxLevel as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel<
  TRes
>
    implements
        CopyWith$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel<TRes> {
  _CopyWithStubImpl$Query$GetWorkflowRulesMaxLevel$workflowRulesMaxLevel(
    this._res,
  );

  TRes _res;

  call({Enum$WorkflowType? workflowType, int? maxLevel, String? $__typename}) =>
      _res;
}
