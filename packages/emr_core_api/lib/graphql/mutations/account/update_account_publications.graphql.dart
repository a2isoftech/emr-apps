import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountPublications {
  factory Variables$Mutation$UpdateAccountPublications({
    required Input$AccountPriceMappingInput input,
  }) => Variables$Mutation$UpdateAccountPublications._({r'input': input});

  Variables$Mutation$UpdateAccountPublications._(this._$data);

  factory Variables$Mutation$UpdateAccountPublications.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AccountPriceMappingInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateAccountPublications._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AccountPriceMappingInput get input =>
      (_$data['input'] as Input$AccountPriceMappingInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccountPublications<
    Variables$Mutation$UpdateAccountPublications
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateAccountPublications(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountPublications ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateAccountPublications<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccountPublications(
    Variables$Mutation$UpdateAccountPublications instance,
    TRes Function(Variables$Mutation$UpdateAccountPublications) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountPublications;

  factory CopyWith$Variables$Mutation$UpdateAccountPublications.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccountPublications;

  TRes call({Input$AccountPriceMappingInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountPublications<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountPublications<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountPublications(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountPublications _instance;

  final TRes Function(Variables$Mutation$UpdateAccountPublications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateAccountPublications._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AccountPriceMappingInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountPublications<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountPublications<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountPublications(this._res);

  TRes _res;

  call({Input$AccountPriceMappingInput? input}) => _res;
}

class Mutation$UpdateAccountPublications {
  Mutation$UpdateAccountPublications({
    this.linkAccountsToPublications,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountPublications.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$linkAccountsToPublications = json['linkAccountsToPublications'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountPublications(
      linkAccountsToPublications: l$linkAccountsToPublications == null
          ? null
          : Mutation$UpdateAccountPublications$linkAccountsToPublications.fromJson(
              (l$linkAccountsToPublications as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountPublications$linkAccountsToPublications?
  linkAccountsToPublications;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$linkAccountsToPublications = linkAccountsToPublications;
    _resultData['linkAccountsToPublications'] = l$linkAccountsToPublications
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$linkAccountsToPublications = linkAccountsToPublications;
    final l$$__typename = $__typename;
    return Object.hashAll([l$linkAccountsToPublications, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountPublications ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$linkAccountsToPublications = linkAccountsToPublications;
    final lOther$linkAccountsToPublications = other.linkAccountsToPublications;
    if (l$linkAccountsToPublications != lOther$linkAccountsToPublications) {
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

extension UtilityExtension$Mutation$UpdateAccountPublications
    on Mutation$UpdateAccountPublications {
  CopyWith$Mutation$UpdateAccountPublications<
    Mutation$UpdateAccountPublications
  >
  get copyWith => CopyWith$Mutation$UpdateAccountPublications(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccountPublications<TRes> {
  factory CopyWith$Mutation$UpdateAccountPublications(
    Mutation$UpdateAccountPublications instance,
    TRes Function(Mutation$UpdateAccountPublications) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountPublications;

  factory CopyWith$Mutation$UpdateAccountPublications.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountPublications;

  TRes call({
    Mutation$UpdateAccountPublications$linkAccountsToPublications?
    linkAccountsToPublications,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications<TRes>
  get linkAccountsToPublications;
}

class _CopyWithImpl$Mutation$UpdateAccountPublications<TRes>
    implements CopyWith$Mutation$UpdateAccountPublications<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountPublications(this._instance, this._then);

  final Mutation$UpdateAccountPublications _instance;

  final TRes Function(Mutation$UpdateAccountPublications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? linkAccountsToPublications = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountPublications(
      linkAccountsToPublications: linkAccountsToPublications == _undefined
          ? _instance.linkAccountsToPublications
          : (linkAccountsToPublications
                as Mutation$UpdateAccountPublications$linkAccountsToPublications?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications<TRes>
  get linkAccountsToPublications {
    final local$linkAccountsToPublications =
        _instance.linkAccountsToPublications;
    return local$linkAccountsToPublications == null
        ? CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications(
            local$linkAccountsToPublications,
            (e) => call(linkAccountsToPublications: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountPublications<TRes>
    implements CopyWith$Mutation$UpdateAccountPublications<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountPublications(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccountPublications$linkAccountsToPublications?
    linkAccountsToPublications,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications<TRes>
  get linkAccountsToPublications =>
      CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications.stub(
        _res,
      );
}

const documentNodeMutationUpdateAccountPublications = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccountPublications'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AccountPriceMappingInput'),
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
            name: NameNode(value: 'linkAccountsToPublications'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
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
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'scopes'),
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

class Mutation$UpdateAccountPublications$linkAccountsToPublications {
  Mutation$UpdateAccountPublications$linkAccountsToPublications({
    required this.changeVector,
    required this.entity,
    this.$__typename = 'DocumentOfAccountPriceMapping',
  });

  factory Mutation$UpdateAccountPublications$linkAccountsToPublications.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$entity = json['entity'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountPublications$linkAccountsToPublications(
      changeVector: (l$changeVector as String),
      entity:
          Mutation$UpdateAccountPublications$linkAccountsToPublications$entity.fromJson(
            (l$entity as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Mutation$UpdateAccountPublications$linkAccountsToPublications$entity
  entity;

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
    if (other
            is! Mutation$UpdateAccountPublications$linkAccountsToPublications ||
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

extension UtilityExtension$Mutation$UpdateAccountPublications$linkAccountsToPublications
    on Mutation$UpdateAccountPublications$linkAccountsToPublications {
  CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications<
    Mutation$UpdateAccountPublications$linkAccountsToPublications
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications(
    Mutation$UpdateAccountPublications$linkAccountsToPublications instance,
    TRes Function(Mutation$UpdateAccountPublications$linkAccountsToPublications)
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications;

  factory CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications;

  TRes call({
    String? changeVector,
    Mutation$UpdateAccountPublications$linkAccountsToPublications$entity?
    entity,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity<
    TRes
  >
  get entity;
}

class _CopyWithImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountPublications$linkAccountsToPublications _instance;

  final TRes Function(
    Mutation$UpdateAccountPublications$linkAccountsToPublications,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? entity = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountPublications$linkAccountsToPublications(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      entity: entity == _undefined || entity == null
          ? _instance.entity
          : (entity
                as Mutation$UpdateAccountPublications$linkAccountsToPublications$entity),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity<
    TRes
  >
  get entity {
    final local$entity = _instance.entity;
    return CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity(
      local$entity,
      (e) => call(entity: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications(
    this._res,
  );

  TRes _res;

  call({
    String? changeVector,
    Mutation$UpdateAccountPublications$linkAccountsToPublications$entity?
    entity,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity<
    TRes
  >
  get entity =>
      CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity.stub(
        _res,
      );
}

class Mutation$UpdateAccountPublications$linkAccountsToPublications$entity {
  Mutation$UpdateAccountPublications$linkAccountsToPublications$entity({
    required this.id,
    required this.accountId,
    required this.accountCode,
    required this.scopes,
    this.$__typename = 'AccountPriceMapping',
  });

  factory Mutation$UpdateAccountPublications$linkAccountsToPublications$entity.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$accountId = json['accountId'];
    final l$accountCode = json['accountCode'];
    final l$scopes = json['scopes'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountPublications$linkAccountsToPublications$entity(
      id: (l$id as String),
      accountId: (l$accountId as String),
      accountCode: (l$accountCode as String),
      scopes: (l$scopes as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String accountId;

  final String accountCode;

  final List<String> scopes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$accountCode = accountCode;
    _resultData['accountCode'] = l$accountCode;
    final l$scopes = scopes;
    _resultData['scopes'] = l$scopes.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$accountId = accountId;
    final l$accountCode = accountCode;
    final l$scopes = scopes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$accountId,
      l$accountCode,
      Object.hashAll(l$scopes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateAccountPublications$linkAccountsToPublications$entity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$accountCode = accountCode;
    final lOther$accountCode = other.accountCode;
    if (l$accountCode != lOther$accountCode) {
      return false;
    }
    final l$scopes = scopes;
    final lOther$scopes = other.scopes;
    if (l$scopes.length != lOther$scopes.length) {
      return false;
    }
    for (int i = 0; i < l$scopes.length; i++) {
      final l$scopes$entry = l$scopes[i];
      final lOther$scopes$entry = lOther$scopes[i];
      if (l$scopes$entry != lOther$scopes$entry) {
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

extension UtilityExtension$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity
    on Mutation$UpdateAccountPublications$linkAccountsToPublications$entity {
  CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity<
    Mutation$UpdateAccountPublications$linkAccountsToPublications$entity
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity(
    Mutation$UpdateAccountPublications$linkAccountsToPublications$entity
    instance,
    TRes Function(
      Mutation$UpdateAccountPublications$linkAccountsToPublications$entity,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity;

  factory CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity;

  TRes call({
    String? id,
    String? accountId,
    String? accountCode,
    List<String>? scopes,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountPublications$linkAccountsToPublications$entity
  _instance;

  final TRes Function(
    Mutation$UpdateAccountPublications$linkAccountsToPublications$entity,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? accountId = _undefined,
    Object? accountCode = _undefined,
    Object? scopes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountPublications$linkAccountsToPublications$entity(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      accountCode: accountCode == _undefined || accountCode == null
          ? _instance.accountCode
          : (accountCode as String),
      scopes: scopes == _undefined || scopes == null
          ? _instance.scopes
          : (scopes as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountPublications$linkAccountsToPublications$entity(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? accountId,
    String? accountCode,
    List<String>? scopes,
    String? $__typename,
  }) => _res;
}
