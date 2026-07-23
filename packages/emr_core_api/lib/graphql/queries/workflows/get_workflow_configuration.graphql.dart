import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetWorkflowConfiguration {
  factory Variables$Query$GetWorkflowConfiguration({
    required Enum$WorkflowType WorkflowType,
  }) => Variables$Query$GetWorkflowConfiguration._({
    r'WorkflowType': WorkflowType,
  });

  Variables$Query$GetWorkflowConfiguration._(this._$data);

  factory Variables$Query$GetWorkflowConfiguration.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$WorkflowType = data['WorkflowType'];
    result$data['WorkflowType'] = fromJson$Enum$WorkflowType(
      (l$WorkflowType as String),
    );
    return Variables$Query$GetWorkflowConfiguration._(result$data);
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

  CopyWith$Variables$Query$GetWorkflowConfiguration<
    Variables$Query$GetWorkflowConfiguration
  >
  get copyWith =>
      CopyWith$Variables$Query$GetWorkflowConfiguration(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetWorkflowConfiguration ||
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

abstract class CopyWith$Variables$Query$GetWorkflowConfiguration<TRes> {
  factory CopyWith$Variables$Query$GetWorkflowConfiguration(
    Variables$Query$GetWorkflowConfiguration instance,
    TRes Function(Variables$Query$GetWorkflowConfiguration) then,
  ) = _CopyWithImpl$Variables$Query$GetWorkflowConfiguration;

  factory CopyWith$Variables$Query$GetWorkflowConfiguration.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetWorkflowConfiguration;

  TRes call({Enum$WorkflowType? WorkflowType});
}

class _CopyWithImpl$Variables$Query$GetWorkflowConfiguration<TRes>
    implements CopyWith$Variables$Query$GetWorkflowConfiguration<TRes> {
  _CopyWithImpl$Variables$Query$GetWorkflowConfiguration(
    this._instance,
    this._then,
  );

  final Variables$Query$GetWorkflowConfiguration _instance;

  final TRes Function(Variables$Query$GetWorkflowConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? WorkflowType = _undefined}) => _then(
    Variables$Query$GetWorkflowConfiguration._({
      ..._instance._$data,
      if (WorkflowType != _undefined && WorkflowType != null)
        'WorkflowType': (WorkflowType as Enum$WorkflowType),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetWorkflowConfiguration<TRes>
    implements CopyWith$Variables$Query$GetWorkflowConfiguration<TRes> {
  _CopyWithStubImpl$Variables$Query$GetWorkflowConfiguration(this._res);

  TRes _res;

  call({Enum$WorkflowType? WorkflowType}) => _res;
}

class Query$GetWorkflowConfiguration {
  Query$GetWorkflowConfiguration({
    this.workflowConfiguration,
    this.$__typename = 'Query',
  });

  factory Query$GetWorkflowConfiguration.fromJson(Map<String, dynamic> json) {
    final l$workflowConfiguration = json['workflowConfiguration'];
    final l$$__typename = json['__typename'];
    return Query$GetWorkflowConfiguration(
      workflowConfiguration: l$workflowConfiguration == null
          ? null
          : Query$GetWorkflowConfiguration$workflowConfiguration.fromJson(
              (l$workflowConfiguration as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetWorkflowConfiguration$workflowConfiguration?
  workflowConfiguration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workflowConfiguration = workflowConfiguration;
    _resultData['workflowConfiguration'] = l$workflowConfiguration?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workflowConfiguration = workflowConfiguration;
    final l$$__typename = $__typename;
    return Object.hashAll([l$workflowConfiguration, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWorkflowConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workflowConfiguration = workflowConfiguration;
    final lOther$workflowConfiguration = other.workflowConfiguration;
    if (l$workflowConfiguration != lOther$workflowConfiguration) {
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

extension UtilityExtension$Query$GetWorkflowConfiguration
    on Query$GetWorkflowConfiguration {
  CopyWith$Query$GetWorkflowConfiguration<Query$GetWorkflowConfiguration>
  get copyWith => CopyWith$Query$GetWorkflowConfiguration(this, (i) => i);
}

abstract class CopyWith$Query$GetWorkflowConfiguration<TRes> {
  factory CopyWith$Query$GetWorkflowConfiguration(
    Query$GetWorkflowConfiguration instance,
    TRes Function(Query$GetWorkflowConfiguration) then,
  ) = _CopyWithImpl$Query$GetWorkflowConfiguration;

  factory CopyWith$Query$GetWorkflowConfiguration.stub(TRes res) =
      _CopyWithStubImpl$Query$GetWorkflowConfiguration;

  TRes call({
    Query$GetWorkflowConfiguration$workflowConfiguration? workflowConfiguration,
    String? $__typename,
  });
  CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration<TRes>
  get workflowConfiguration;
}

class _CopyWithImpl$Query$GetWorkflowConfiguration<TRes>
    implements CopyWith$Query$GetWorkflowConfiguration<TRes> {
  _CopyWithImpl$Query$GetWorkflowConfiguration(this._instance, this._then);

  final Query$GetWorkflowConfiguration _instance;

  final TRes Function(Query$GetWorkflowConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workflowConfiguration = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWorkflowConfiguration(
      workflowConfiguration: workflowConfiguration == _undefined
          ? _instance.workflowConfiguration
          : (workflowConfiguration
                as Query$GetWorkflowConfiguration$workflowConfiguration?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration<TRes>
  get workflowConfiguration {
    final local$workflowConfiguration = _instance.workflowConfiguration;
    return local$workflowConfiguration == null
        ? CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration(
            local$workflowConfiguration,
            (e) => call(workflowConfiguration: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetWorkflowConfiguration<TRes>
    implements CopyWith$Query$GetWorkflowConfiguration<TRes> {
  _CopyWithStubImpl$Query$GetWorkflowConfiguration(this._res);

  TRes _res;

  call({
    Query$GetWorkflowConfiguration$workflowConfiguration? workflowConfiguration,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration<TRes>
  get workflowConfiguration =>
      CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration.stub(_res);
}

const documentNodeQueryGetWorkflowConfiguration = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetWorkflowConfiguration'),
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
            name: NameNode(value: 'workflowConfiguration'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'workflowType'),
                value: VariableNode(name: NameNode(value: 'WorkflowType')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'levelTitle'),
                  alias: null,
                  arguments: [],
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

class Query$GetWorkflowConfiguration$workflowConfiguration {
  Query$GetWorkflowConfiguration$workflowConfiguration({
    required this.id,
    required this.levelTitle,
    this.$__typename = 'WorkflowConfiguration',
  });

  factory Query$GetWorkflowConfiguration$workflowConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$levelTitle = json['levelTitle'];
    final l$$__typename = json['__typename'];
    return Query$GetWorkflowConfiguration$workflowConfiguration(
      id: (l$id as String),
      levelTitle: (l$levelTitle as List<dynamic>)
          .map(
            (e) =>
                Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle>
  levelTitle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$levelTitle = levelTitle;
    _resultData['levelTitle'] = l$levelTitle.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$levelTitle = levelTitle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$levelTitle.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWorkflowConfiguration$workflowConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$levelTitle = levelTitle;
    final lOther$levelTitle = other.levelTitle;
    if (l$levelTitle.length != lOther$levelTitle.length) {
      return false;
    }
    for (int i = 0; i < l$levelTitle.length; i++) {
      final l$levelTitle$entry = l$levelTitle[i];
      final lOther$levelTitle$entry = lOther$levelTitle[i];
      if (l$levelTitle$entry != lOther$levelTitle$entry) {
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

extension UtilityExtension$Query$GetWorkflowConfiguration$workflowConfiguration
    on Query$GetWorkflowConfiguration$workflowConfiguration {
  CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration<
    Query$GetWorkflowConfiguration$workflowConfiguration
  >
  get copyWith => CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration<
  TRes
> {
  factory CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration(
    Query$GetWorkflowConfiguration$workflowConfiguration instance,
    TRes Function(Query$GetWorkflowConfiguration$workflowConfiguration) then,
  ) = _CopyWithImpl$Query$GetWorkflowConfiguration$workflowConfiguration;

  factory CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWorkflowConfiguration$workflowConfiguration;

  TRes call({
    String? id,
    List<Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle>?
    levelTitle,
    String? $__typename,
  });
  TRes levelTitle(
    Iterable<Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle>
    Function(
      Iterable<
        CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle<
          Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetWorkflowConfiguration$workflowConfiguration<TRes>
    implements
        CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration<TRes> {
  _CopyWithImpl$Query$GetWorkflowConfiguration$workflowConfiguration(
    this._instance,
    this._then,
  );

  final Query$GetWorkflowConfiguration$workflowConfiguration _instance;

  final TRes Function(Query$GetWorkflowConfiguration$workflowConfiguration)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? levelTitle = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWorkflowConfiguration$workflowConfiguration(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      levelTitle: levelTitle == _undefined || levelTitle == null
          ? _instance.levelTitle
          : (levelTitle
                as List<
                  Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes levelTitle(
    Iterable<Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle>
    Function(
      Iterable<
        CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle<
          Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle
        >
      >,
    )
    _fn,
  ) => call(
    levelTitle: _fn(
      _instance.levelTitle.map(
        (e) =>
            CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetWorkflowConfiguration$workflowConfiguration<
  TRes
>
    implements
        CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration<TRes> {
  _CopyWithStubImpl$Query$GetWorkflowConfiguration$workflowConfiguration(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    List<Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle>?
    levelTitle,
    String? $__typename,
  }) => _res;

  levelTitle(_fn) => _res;
}

class Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle {
  Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfInt32AndString',
  });

  factory Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle(
      key: (l$key as int),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int key;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle ||
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
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle
    on Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle {
  CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle<
    Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle
  >
  get copyWith =>
      CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle<
  TRes
> {
  factory CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle(
    Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle instance,
    TRes Function(
      Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle,
    )
    then,
  ) = _CopyWithImpl$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle;

  factory CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle;

  TRes call({int? key, String? value, String? $__typename});
}

class _CopyWithImpl$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle<
  TRes
>
    implements
        CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle<
          TRes
        > {
  _CopyWithImpl$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle(
    this._instance,
    this._then,
  );

  final Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle
  _instance;

  final TRes Function(
    Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle(
      key: key == _undefined || key == null ? _instance.key : (key as int),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle<
  TRes
>
    implements
        CopyWith$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWorkflowConfiguration$workflowConfiguration$levelTitle(
    this._res,
  );

  TRes _res;

  call({int? key, String? value, String? $__typename}) => _res;
}
