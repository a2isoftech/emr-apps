import '../../fragments/commodity_source_types/commodity_source_types.graphql.dart';
import '../../fragments/ewc_control_fragment.graphql.dart';
import '../../fragments/inventory/location_fragment.graphql.dart';
import '../../fragments/inventory/product_response_fragment.graphql.dart';
import '../../fragments/weighbridge_profile_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetWeighbridgeProfile {
  factory Variables$Query$GetWeighbridgeProfile({required String id}) =>
      Variables$Query$GetWeighbridgeProfile._({r'id': id});

  Variables$Query$GetWeighbridgeProfile._(this._$data);

  factory Variables$Query$GetWeighbridgeProfile.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetWeighbridgeProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetWeighbridgeProfile<
    Variables$Query$GetWeighbridgeProfile
  >
  get copyWith =>
      CopyWith$Variables$Query$GetWeighbridgeProfile(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetWeighbridgeProfile ||
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

abstract class CopyWith$Variables$Query$GetWeighbridgeProfile<TRes> {
  factory CopyWith$Variables$Query$GetWeighbridgeProfile(
    Variables$Query$GetWeighbridgeProfile instance,
    TRes Function(Variables$Query$GetWeighbridgeProfile) then,
  ) = _CopyWithImpl$Variables$Query$GetWeighbridgeProfile;

  factory CopyWith$Variables$Query$GetWeighbridgeProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetWeighbridgeProfile;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetWeighbridgeProfile<TRes>
    implements CopyWith$Variables$Query$GetWeighbridgeProfile<TRes> {
  _CopyWithImpl$Variables$Query$GetWeighbridgeProfile(
    this._instance,
    this._then,
  );

  final Variables$Query$GetWeighbridgeProfile _instance;

  final TRes Function(Variables$Query$GetWeighbridgeProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetWeighbridgeProfile._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetWeighbridgeProfile<TRes>
    implements CopyWith$Variables$Query$GetWeighbridgeProfile<TRes> {
  _CopyWithStubImpl$Variables$Query$GetWeighbridgeProfile(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetWeighbridgeProfile {
  Query$GetWeighbridgeProfile({
    required this.weighbridgeProfile,
    this.$__typename = 'Query',
  });

  factory Query$GetWeighbridgeProfile.fromJson(Map<String, dynamic> json) {
    final l$weighbridgeProfile = json['weighbridgeProfile'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile(
      weighbridgeProfile:
          Query$GetWeighbridgeProfile$weighbridgeProfile.fromJson(
            (l$weighbridgeProfile as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetWeighbridgeProfile$weighbridgeProfile weighbridgeProfile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$weighbridgeProfile = weighbridgeProfile;
    _resultData['weighbridgeProfile'] = l$weighbridgeProfile.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$weighbridgeProfile = weighbridgeProfile;
    final l$$__typename = $__typename;
    return Object.hashAll([l$weighbridgeProfile, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWeighbridgeProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$weighbridgeProfile = weighbridgeProfile;
    final lOther$weighbridgeProfile = other.weighbridgeProfile;
    if (l$weighbridgeProfile != lOther$weighbridgeProfile) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile
    on Query$GetWeighbridgeProfile {
  CopyWith$Query$GetWeighbridgeProfile<Query$GetWeighbridgeProfile>
  get copyWith => CopyWith$Query$GetWeighbridgeProfile(this, (i) => i);
}

abstract class CopyWith$Query$GetWeighbridgeProfile<TRes> {
  factory CopyWith$Query$GetWeighbridgeProfile(
    Query$GetWeighbridgeProfile instance,
    TRes Function(Query$GetWeighbridgeProfile) then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile;

  factory CopyWith$Query$GetWeighbridgeProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$GetWeighbridgeProfile;

  TRes call({
    Query$GetWeighbridgeProfile$weighbridgeProfile? weighbridgeProfile,
    String? $__typename,
  });
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes>
  get weighbridgeProfile;
}

class _CopyWithImpl$Query$GetWeighbridgeProfile<TRes>
    implements CopyWith$Query$GetWeighbridgeProfile<TRes> {
  _CopyWithImpl$Query$GetWeighbridgeProfile(this._instance, this._then);

  final Query$GetWeighbridgeProfile _instance;

  final TRes Function(Query$GetWeighbridgeProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? weighbridgeProfile = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile(
      weighbridgeProfile:
          weighbridgeProfile == _undefined || weighbridgeProfile == null
          ? _instance.weighbridgeProfile
          : (weighbridgeProfile
                as Query$GetWeighbridgeProfile$weighbridgeProfile),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes>
  get weighbridgeProfile {
    final local$weighbridgeProfile = _instance.weighbridgeProfile;
    return CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile(
      local$weighbridgeProfile,
      (e) => call(weighbridgeProfile: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile<TRes>
    implements CopyWith$Query$GetWeighbridgeProfile<TRes> {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile(this._res);

  TRes _res;

  call({
    Query$GetWeighbridgeProfile$weighbridgeProfile? weighbridgeProfile,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes>
  get weighbridgeProfile =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile.stub(_res);
}

const documentNodeQueryGetWeighbridgeProfile = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetWeighbridgeProfile'),
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
            name: NameNode(value: 'weighbridgeProfile'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'id')),
                    ),
                  ],
                ),
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
                        name: NameNode(value: 'WeighbridgeProfileFragment'),
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
    fragmentDefinitionWeighbridgeProfileFragment,
    fragmentDefinitionProductFragment,
    fragmentDefinitionLocationFragment,
    fragmentDefinitionEwcControlFragment,
    fragmentDefinitionCommoditySourceTypesFragment,
  ],
);

class Query$GetWeighbridgeProfile$weighbridgeProfile {
  Query$GetWeighbridgeProfile$weighbridgeProfile({
    required this.changeVector,
    required this.entity,
    this.$__typename = 'DocumentOfWeighbridgeProfile',
  });

  factory Query$GetWeighbridgeProfile$weighbridgeProfile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$entity = json['entity'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile$weighbridgeProfile(
      changeVector: (l$changeVector as String),
      entity: Fragment$WeighbridgeProfileFragment.fromJson(
        (l$entity as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Fragment$WeighbridgeProfileFragment entity;

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
    if (other is! Query$GetWeighbridgeProfile$weighbridgeProfile ||
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

extension UtilityExtension$Query$GetWeighbridgeProfile$weighbridgeProfile
    on Query$GetWeighbridgeProfile$weighbridgeProfile {
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<
    Query$GetWeighbridgeProfile$weighbridgeProfile
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile(this, (i) => i);
}

abstract class CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes> {
  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile(
    Query$GetWeighbridgeProfile$weighbridgeProfile instance,
    TRes Function(Query$GetWeighbridgeProfile$weighbridgeProfile) then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile;

  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile;

  TRes call({
    String? changeVector,
    Fragment$WeighbridgeProfileFragment? entity,
    String? $__typename,
  });
  CopyWith$Fragment$WeighbridgeProfileFragment<TRes> get entity;
}

class _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes>
    implements CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes> {
  _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfile$weighbridgeProfile _instance;

  final TRes Function(Query$GetWeighbridgeProfile$weighbridgeProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? entity = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile$weighbridgeProfile(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      entity: entity == _undefined || entity == null
          ? _instance.entity
          : (entity as Fragment$WeighbridgeProfileFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$WeighbridgeProfileFragment<TRes> get entity {
    final local$entity = _instance.entity;
    return CopyWith$Fragment$WeighbridgeProfileFragment(
      local$entity,
      (e) => call(entity: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes>
    implements CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes> {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile(this._res);

  TRes _res;

  call({
    String? changeVector,
    Fragment$WeighbridgeProfileFragment? entity,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$WeighbridgeProfileFragment<TRes> get entity =>
      CopyWith$Fragment$WeighbridgeProfileFragment.stub(_res);
}
