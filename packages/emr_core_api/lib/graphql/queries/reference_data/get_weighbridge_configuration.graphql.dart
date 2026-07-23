import '../../fragments/weighbridge_configuration_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetWeighbridgeConfiguration {
  factory Variables$Query$GetWeighbridgeConfiguration({required String id}) =>
      Variables$Query$GetWeighbridgeConfiguration._({r'id': id});

  Variables$Query$GetWeighbridgeConfiguration._(this._$data);

  factory Variables$Query$GetWeighbridgeConfiguration.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetWeighbridgeConfiguration._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetWeighbridgeConfiguration<
    Variables$Query$GetWeighbridgeConfiguration
  >
  get copyWith =>
      CopyWith$Variables$Query$GetWeighbridgeConfiguration(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetWeighbridgeConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetWeighbridgeConfiguration<TRes> {
  factory CopyWith$Variables$Query$GetWeighbridgeConfiguration(
    Variables$Query$GetWeighbridgeConfiguration instance,
    TRes Function(Variables$Query$GetWeighbridgeConfiguration) then,
  ) = _CopyWithImpl$Variables$Query$GetWeighbridgeConfiguration;

  factory CopyWith$Variables$Query$GetWeighbridgeConfiguration.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetWeighbridgeConfiguration;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetWeighbridgeConfiguration<TRes>
    implements CopyWith$Variables$Query$GetWeighbridgeConfiguration<TRes> {
  _CopyWithImpl$Variables$Query$GetWeighbridgeConfiguration(
    this._instance,
    this._then,
  );

  final Variables$Query$GetWeighbridgeConfiguration _instance;

  final TRes Function(Variables$Query$GetWeighbridgeConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetWeighbridgeConfiguration._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetWeighbridgeConfiguration<TRes>
    implements CopyWith$Variables$Query$GetWeighbridgeConfiguration<TRes> {
  _CopyWithStubImpl$Variables$Query$GetWeighbridgeConfiguration(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetWeighbridgeConfiguration {
  Query$GetWeighbridgeConfiguration({
    required this.weighbridgeConfiguration,
    this.$__typename = 'Query',
  });

  factory Query$GetWeighbridgeConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$weighbridgeConfiguration = json['weighbridgeConfiguration'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeConfiguration(
      weighbridgeConfiguration:
          Query$GetWeighbridgeConfiguration$weighbridgeConfiguration.fromJson(
            (l$weighbridgeConfiguration as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetWeighbridgeConfiguration$weighbridgeConfiguration
  weighbridgeConfiguration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$weighbridgeConfiguration = weighbridgeConfiguration;
    _resultData['weighbridgeConfiguration'] = l$weighbridgeConfiguration
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$weighbridgeConfiguration = weighbridgeConfiguration;
    final l$$__typename = $__typename;
    return Object.hashAll([l$weighbridgeConfiguration, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWeighbridgeConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$weighbridgeConfiguration = weighbridgeConfiguration;
    final lOther$weighbridgeConfiguration = other.weighbridgeConfiguration;
    if (l$weighbridgeConfiguration != lOther$weighbridgeConfiguration) {
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

extension UtilityExtension$Query$GetWeighbridgeConfiguration
    on Query$GetWeighbridgeConfiguration {
  CopyWith$Query$GetWeighbridgeConfiguration<Query$GetWeighbridgeConfiguration>
  get copyWith => CopyWith$Query$GetWeighbridgeConfiguration(this, (i) => i);
}

abstract class CopyWith$Query$GetWeighbridgeConfiguration<TRes> {
  factory CopyWith$Query$GetWeighbridgeConfiguration(
    Query$GetWeighbridgeConfiguration instance,
    TRes Function(Query$GetWeighbridgeConfiguration) then,
  ) = _CopyWithImpl$Query$GetWeighbridgeConfiguration;

  factory CopyWith$Query$GetWeighbridgeConfiguration.stub(TRes res) =
      _CopyWithStubImpl$Query$GetWeighbridgeConfiguration;

  TRes call({
    Query$GetWeighbridgeConfiguration$weighbridgeConfiguration?
    weighbridgeConfiguration,
    String? $__typename,
  });
  CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration<TRes>
  get weighbridgeConfiguration;
}

class _CopyWithImpl$Query$GetWeighbridgeConfiguration<TRes>
    implements CopyWith$Query$GetWeighbridgeConfiguration<TRes> {
  _CopyWithImpl$Query$GetWeighbridgeConfiguration(this._instance, this._then);

  final Query$GetWeighbridgeConfiguration _instance;

  final TRes Function(Query$GetWeighbridgeConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? weighbridgeConfiguration = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeConfiguration(
      weighbridgeConfiguration:
          weighbridgeConfiguration == _undefined ||
              weighbridgeConfiguration == null
          ? _instance.weighbridgeConfiguration
          : (weighbridgeConfiguration
                as Query$GetWeighbridgeConfiguration$weighbridgeConfiguration),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration<TRes>
  get weighbridgeConfiguration {
    final local$weighbridgeConfiguration = _instance.weighbridgeConfiguration;
    return CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration(
      local$weighbridgeConfiguration,
      (e) => call(weighbridgeConfiguration: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetWeighbridgeConfiguration<TRes>
    implements CopyWith$Query$GetWeighbridgeConfiguration<TRes> {
  _CopyWithStubImpl$Query$GetWeighbridgeConfiguration(this._res);

  TRes _res;

  call({
    Query$GetWeighbridgeConfiguration$weighbridgeConfiguration?
    weighbridgeConfiguration,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration<TRes>
  get weighbridgeConfiguration =>
      CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration.stub(
        _res,
      );
}

const documentNodeQueryGetWeighbridgeConfiguration = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetWeighbridgeConfiguration'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'weighbridgeConfiguration'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'changeVector'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'entity'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(
                          value: 'WeighbridgeConfigurationFragment',
                        ),
                        directives: [],
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
    fragmentDefinitionWeighbridgeConfigurationFragment,
  ],
);

class Query$GetWeighbridgeConfiguration$weighbridgeConfiguration {
  Query$GetWeighbridgeConfiguration$weighbridgeConfiguration({
    required this.changeVector,
    required this.entity,
    this.$__typename = 'DocumentOfWeighbridgeConfiguration',
  });

  factory Query$GetWeighbridgeConfiguration$weighbridgeConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$entity = json['entity'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeConfiguration$weighbridgeConfiguration(
      changeVector: (l$changeVector as String),
      entity: Fragment$WeighbridgeConfigurationFragment.fromJson(
        (l$entity as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Fragment$WeighbridgeConfigurationFragment entity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeVector = changeVector;
    _resultData['changeVector'] = l$changeVector;
    final l$entity = entity;
    _resultData['entity'] = l$entity.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeVector = changeVector;
    final l$entity = entity;
    final l$$__typename = $__typename;
    return Object.hashAll([l$changeVector, l$entity, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWeighbridgeConfiguration$weighbridgeConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeVector = changeVector;
    final lOther$changeVector = other.changeVector;
    if (l$changeVector != lOther$changeVector) {
      return false;
    }
    final l$entity = entity;
    final lOther$entity = other.entity;
    if (l$entity != lOther$entity) {
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

extension UtilityExtension$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration
    on Query$GetWeighbridgeConfiguration$weighbridgeConfiguration {
  CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration<
    Query$GetWeighbridgeConfiguration$weighbridgeConfiguration
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration(
    Query$GetWeighbridgeConfiguration$weighbridgeConfiguration instance,
    TRes Function(Query$GetWeighbridgeConfiguration$weighbridgeConfiguration)
    then,
  ) = _CopyWithImpl$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration;

  factory CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration;

  TRes call({
    String? changeVector,
    Fragment$WeighbridgeConfigurationFragment? entity,
    String? $__typename,
  });
  CopyWith$Fragment$WeighbridgeConfigurationFragment<TRes> get entity;
}

class _CopyWithImpl$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration<
          TRes
        > {
  _CopyWithImpl$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeConfiguration$weighbridgeConfiguration _instance;

  final TRes Function(
    Query$GetWeighbridgeConfiguration$weighbridgeConfiguration,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? entity = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeConfiguration$weighbridgeConfiguration(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      entity: entity == _undefined || entity == null
          ? _instance.entity
          : (entity as Fragment$WeighbridgeConfigurationFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$WeighbridgeConfigurationFragment<TRes> get entity {
    final local$entity = _instance.entity;
    return CopyWith$Fragment$WeighbridgeConfigurationFragment(
      local$entity,
      (e) => call(entity: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWeighbridgeConfiguration$weighbridgeConfiguration(
    this._res,
  );

  TRes _res;

  call({
    String? changeVector,
    Fragment$WeighbridgeConfigurationFragment? entity,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$WeighbridgeConfigurationFragment<TRes> get entity =>
      CopyWith$Fragment$WeighbridgeConfigurationFragment.stub(_res);
}
