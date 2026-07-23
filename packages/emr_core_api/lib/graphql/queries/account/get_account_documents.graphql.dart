import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAccountDocuments {
  factory Variables$Query$GetAccountDocuments({required String accountId}) =>
      Variables$Query$GetAccountDocuments._({r'accountId': accountId});

  Variables$Query$GetAccountDocuments._(this._$data);

  factory Variables$Query$GetAccountDocuments.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accountId = data['accountId'];
    result$data['accountId'] = (l$accountId as String);
    return Variables$Query$GetAccountDocuments._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountId => (_$data['accountId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountId = accountId;
    result$data['accountId'] = l$accountId;
    return result$data;
  }

  CopyWith$Variables$Query$GetAccountDocuments<
    Variables$Query$GetAccountDocuments
  >
  get copyWith => CopyWith$Variables$Query$GetAccountDocuments(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccountDocuments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    return Object.hashAll([l$accountId]);
  }
}

abstract class CopyWith$Variables$Query$GetAccountDocuments<TRes> {
  factory CopyWith$Variables$Query$GetAccountDocuments(
    Variables$Query$GetAccountDocuments instance,
    TRes Function(Variables$Query$GetAccountDocuments) then,
  ) = _CopyWithImpl$Variables$Query$GetAccountDocuments;

  factory CopyWith$Variables$Query$GetAccountDocuments.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccountDocuments;

  TRes call({String? accountId});
}

class _CopyWithImpl$Variables$Query$GetAccountDocuments<TRes>
    implements CopyWith$Variables$Query$GetAccountDocuments<TRes> {
  _CopyWithImpl$Variables$Query$GetAccountDocuments(this._instance, this._then);

  final Variables$Query$GetAccountDocuments _instance;

  final TRes Function(Variables$Query$GetAccountDocuments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountId = _undefined}) => _then(
    Variables$Query$GetAccountDocuments._({
      ..._instance._$data,
      if (accountId != _undefined && accountId != null)
        'accountId': (accountId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAccountDocuments<TRes>
    implements CopyWith$Variables$Query$GetAccountDocuments<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccountDocuments(this._res);

  TRes _res;

  call({String? accountId}) => _res;
}

class Query$GetAccountDocuments {
  Query$GetAccountDocuments({
    required this.accountById,
    this.$__typename = 'Query',
  });

  factory Query$GetAccountDocuments.fromJson(Map<String, dynamic> json) {
    final l$accountById = json['accountById'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDocuments(
      accountById: Query$GetAccountDocuments$accountById.fromJson(
        (l$accountById as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  @Deprecated(
    'This usage is obsolete. Consumers must send AccountId instead of AccountCode.',
  )
  final Query$GetAccountDocuments$accountById accountById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountById = accountById;
    _resultData['accountById'] = l$accountById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountById = accountById;
    final l$$__typename = $__typename;
    return Object.hashAll([l$accountById, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountDocuments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountById = accountById;
    final lOther$accountById = other.accountById;
    if (l$accountById != lOther$accountById) {
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

extension UtilityExtension$Query$GetAccountDocuments
    on Query$GetAccountDocuments {
  CopyWith$Query$GetAccountDocuments<Query$GetAccountDocuments> get copyWith =>
      CopyWith$Query$GetAccountDocuments(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountDocuments<TRes> {
  factory CopyWith$Query$GetAccountDocuments(
    Query$GetAccountDocuments instance,
    TRes Function(Query$GetAccountDocuments) then,
  ) = _CopyWithImpl$Query$GetAccountDocuments;

  factory CopyWith$Query$GetAccountDocuments.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountDocuments;

  TRes call({
    Query$GetAccountDocuments$accountById? accountById,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDocuments$accountById<TRes> get accountById;
}

class _CopyWithImpl$Query$GetAccountDocuments<TRes>
    implements CopyWith$Query$GetAccountDocuments<TRes> {
  _CopyWithImpl$Query$GetAccountDocuments(this._instance, this._then);

  final Query$GetAccountDocuments _instance;

  final TRes Function(Query$GetAccountDocuments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountById = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountDocuments(
      accountById: accountById == _undefined || accountById == null
          ? _instance.accountById
          : (accountById as Query$GetAccountDocuments$accountById),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountDocuments$accountById<TRes> get accountById {
    final local$accountById = _instance.accountById;
    return CopyWith$Query$GetAccountDocuments$accountById(
      local$accountById,
      (e) => call(accountById: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountDocuments<TRes>
    implements CopyWith$Query$GetAccountDocuments<TRes> {
  _CopyWithStubImpl$Query$GetAccountDocuments(this._res);

  TRes _res;

  call({
    Query$GetAccountDocuments$accountById? accountById,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountDocuments$accountById<TRes> get accountById =>
      CopyWith$Query$GetAccountDocuments$accountById.stub(_res);
}

const documentNodeQueryGetAccountDocuments = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAccountDocuments'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accountId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'accountById'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accountId'),
                value: VariableNode(name: NameNode(value: 'accountId')),
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
                  name: NameNode(value: 'accountContacts'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'proofOfAddress'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'validFrom'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'validTo'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'type'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'subType'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'fileId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'filePath'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'tradeDocumentId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sasUrl'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'media'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'url'),
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
                              name: NameNode(value: 'proofOfIdentification'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'validFrom'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'validTo'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'type'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'subType'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'fileId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'filePath'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'tradeDocumentId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sasUrl'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'media'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'url'),
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

class Query$GetAccountDocuments$accountById {
  Query$GetAccountDocuments$accountById({
    required this.id,
    this.accountContacts,
    this.$__typename = 'Account',
  });

  factory Query$GetAccountDocuments$accountById.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$accountContacts = json['accountContacts'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDocuments$accountById(
      id: (l$id as String),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAccountDocuments$accountById$accountContacts.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Query$GetAccountDocuments$accountById$accountContacts?>?
  accountContacts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] = l$accountContacts
        ?.map((e) => e?.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$accountContacts = accountContacts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountDocuments$accountById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$accountContacts = accountContacts;
    final lOther$accountContacts = other.accountContacts;
    if (l$accountContacts != null && lOther$accountContacts != null) {
      if (l$accountContacts.length != lOther$accountContacts.length) {
        return false;
      }
      for (int i = 0; i < l$accountContacts.length; i++) {
        final l$accountContacts$entry = l$accountContacts[i];
        final lOther$accountContacts$entry = lOther$accountContacts[i];
        if (l$accountContacts$entry != lOther$accountContacts$entry) {
          return false;
        }
      }
    } else if (l$accountContacts != lOther$accountContacts) {
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

extension UtilityExtension$Query$GetAccountDocuments$accountById
    on Query$GetAccountDocuments$accountById {
  CopyWith$Query$GetAccountDocuments$accountById<
    Query$GetAccountDocuments$accountById
  >
  get copyWith =>
      CopyWith$Query$GetAccountDocuments$accountById(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountDocuments$accountById<TRes> {
  factory CopyWith$Query$GetAccountDocuments$accountById(
    Query$GetAccountDocuments$accountById instance,
    TRes Function(Query$GetAccountDocuments$accountById) then,
  ) = _CopyWithImpl$Query$GetAccountDocuments$accountById;

  factory CopyWith$Query$GetAccountDocuments$accountById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountDocuments$accountById;

  TRes call({
    String? id,
    List<Query$GetAccountDocuments$accountById$accountContacts?>?
    accountContacts,
    String? $__typename,
  });
  TRes accountContacts(
    Iterable<Query$GetAccountDocuments$accountById$accountContacts?>? Function(
      Iterable<
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts<
          Query$GetAccountDocuments$accountById$accountContacts
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccountDocuments$accountById<TRes>
    implements CopyWith$Query$GetAccountDocuments$accountById<TRes> {
  _CopyWithImpl$Query$GetAccountDocuments$accountById(
    this._instance,
    this._then,
  );

  final Query$GetAccountDocuments$accountById _instance;

  final TRes Function(Query$GetAccountDocuments$accountById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? accountContacts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountDocuments$accountById(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      accountContacts: accountContacts == _undefined
          ? _instance.accountContacts
          : (accountContacts
                as List<
                  Query$GetAccountDocuments$accountById$accountContacts?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accountContacts(
    Iterable<Query$GetAccountDocuments$accountById$accountContacts?>? Function(
      Iterable<
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts<
          Query$GetAccountDocuments$accountById$accountContacts
        >?
      >?,
    )
    _fn,
  ) => call(
    accountContacts: _fn(
      _instance.accountContacts?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAccountDocuments$accountById$accountContacts(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccountDocuments$accountById<TRes>
    implements CopyWith$Query$GetAccountDocuments$accountById<TRes> {
  _CopyWithStubImpl$Query$GetAccountDocuments$accountById(this._res);

  TRes _res;

  call({
    String? id,
    List<Query$GetAccountDocuments$accountById$accountContacts?>?
    accountContacts,
    String? $__typename,
  }) => _res;

  accountContacts(_fn) => _res;
}

class Query$GetAccountDocuments$accountById$accountContacts {
  Query$GetAccountDocuments$accountById$accountContacts({
    required this.value,
    this.$__typename = 'ContactWithKey',
  });

  factory Query$GetAccountDocuments$accountById$accountContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDocuments$accountById$accountContacts(
      value:
          Query$GetAccountDocuments$accountById$accountContacts$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountDocuments$accountById$accountContacts$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountDocuments$accountById$accountContacts ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAccountDocuments$accountById$accountContacts
    on Query$GetAccountDocuments$accountById$accountContacts {
  CopyWith$Query$GetAccountDocuments$accountById$accountContacts<
    Query$GetAccountDocuments$accountById$accountContacts
  >
  get copyWith =>
      CopyWith$Query$GetAccountDocuments$accountById$accountContacts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountDocuments$accountById$accountContacts<
  TRes
> {
  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts(
    Query$GetAccountDocuments$accountById$accountContacts instance,
    TRes Function(Query$GetAccountDocuments$accountById$accountContacts) then,
  ) = _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts;

  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts;

  TRes call({
    Query$GetAccountDocuments$accountById$accountContacts$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value<TRes>
  get value;
}

class _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts<TRes>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts<TRes> {
  _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts(
    this._instance,
    this._then,
  );

  final Query$GetAccountDocuments$accountById$accountContacts _instance;

  final TRes Function(Query$GetAccountDocuments$accountById$accountContacts)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountDocuments$accountById$accountContacts(
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetAccountDocuments$accountById$accountContacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts<TRes> {
  _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts(
    this._res,
  );

  TRes _res;

  call({
    Query$GetAccountDocuments$accountById$accountContacts$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value<TRes>
  get value =>
      CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value.stub(
        _res,
      );
}

class Query$GetAccountDocuments$accountById$accountContacts$value {
  Query$GetAccountDocuments$accountById$accountContacts$value({
    required this.proofOfAddress,
    required this.proofOfIdentification,
    this.$__typename = 'Contact',
  });

  factory Query$GetAccountDocuments$accountById$accountContacts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$proofOfAddress = json['proofOfAddress'];
    final l$proofOfIdentification = json['proofOfIdentification'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDocuments$accountById$accountContacts$value(
      proofOfAddress: (l$proofOfAddress as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      proofOfIdentification: (l$proofOfIdentification as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
  >
  proofOfAddress;

  final List<
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
  >
  proofOfIdentification;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$proofOfAddress = proofOfAddress;
    _resultData['proofOfAddress'] = l$proofOfAddress
        .map((e) => e.toJson())
        .toList();
    final l$proofOfIdentification = proofOfIdentification;
    _resultData['proofOfIdentification'] = l$proofOfIdentification
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proofOfAddress = proofOfAddress;
    final l$proofOfIdentification = proofOfIdentification;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$proofOfAddress.map((v) => v)),
      Object.hashAll(l$proofOfIdentification.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountDocuments$accountById$accountContacts$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proofOfAddress = proofOfAddress;
    final lOther$proofOfAddress = other.proofOfAddress;
    if (l$proofOfAddress.length != lOther$proofOfAddress.length) {
      return false;
    }
    for (int i = 0; i < l$proofOfAddress.length; i++) {
      final l$proofOfAddress$entry = l$proofOfAddress[i];
      final lOther$proofOfAddress$entry = lOther$proofOfAddress[i];
      if (l$proofOfAddress$entry != lOther$proofOfAddress$entry) {
        return false;
      }
    }
    final l$proofOfIdentification = proofOfIdentification;
    final lOther$proofOfIdentification = other.proofOfIdentification;
    if (l$proofOfIdentification.length != lOther$proofOfIdentification.length) {
      return false;
    }
    for (int i = 0; i < l$proofOfIdentification.length; i++) {
      final l$proofOfIdentification$entry = l$proofOfIdentification[i];
      final lOther$proofOfIdentification$entry =
          lOther$proofOfIdentification[i];
      if (l$proofOfIdentification$entry != lOther$proofOfIdentification$entry) {
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

extension UtilityExtension$Query$GetAccountDocuments$accountById$accountContacts$value
    on Query$GetAccountDocuments$accountById$accountContacts$value {
  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value<
    Query$GetAccountDocuments$accountById$accountContacts$value
  >
  get copyWith =>
      CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value<
  TRes
> {
  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value(
    Query$GetAccountDocuments$accountById$accountContacts$value instance,
    TRes Function(Query$GetAccountDocuments$accountById$accountContacts$value)
    then,
  ) = _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value;

  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value;

  TRes call({
    List<
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    String? $__typename,
  });
  TRes proofOfAddress(
    Iterable<
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress<
          Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  );
  TRes proofOfIdentification(
    Iterable<
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification<
          Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value(
    this._instance,
    this._then,
  );

  final Query$GetAccountDocuments$accountById$accountContacts$value _instance;

  final TRes Function(
    Query$GetAccountDocuments$accountById$accountContacts$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proofOfAddress = _undefined,
    Object? proofOfIdentification = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountDocuments$accountById$accountContacts$value(
      proofOfAddress: proofOfAddress == _undefined || proofOfAddress == null
          ? _instance.proofOfAddress
          : (proofOfAddress
                as List<
                  Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
                >),
      proofOfIdentification:
          proofOfIdentification == _undefined || proofOfIdentification == null
          ? _instance.proofOfIdentification
          : (proofOfIdentification
                as List<
                  Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes proofOfAddress(
    Iterable<
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress<
          Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  ) => call(
    proofOfAddress: _fn(
      _instance.proofOfAddress.map(
        (e) =>
            CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes proofOfIdentification(
    Iterable<
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification<
          Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  ) => call(
    proofOfIdentification: _fn(
      _instance.proofOfIdentification.map(
        (e) =>
            CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    String? $__typename,
  }) => _res;

  proofOfAddress(_fn) => _res;

  proofOfIdentification(_fn) => _res;
}

class Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress {
  Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress({
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.fileId,
    this.filePath,
    this.tradeDocumentId,
    this.sasUrl,
    required this.media,
    this.$__typename = 'Identification',
  });

  factory Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$fileId = json['fileId'];
    final l$filePath = json['filePath'];
    final l$tradeDocumentId = json['tradeDocumentId'];
    final l$sasUrl = json['sasUrl'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress(
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      fileId: (l$fileId as String?),
      filePath: (l$filePath as String?),
      tradeDocumentId: (l$tradeDocumentId as int?),
      sasUrl: (l$sasUrl as String?),
      media:
          Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime validFrom;

  final DateTime validTo;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final String? fileId;

  final String? filePath;

  final int? tradeDocumentId;

  final String? sasUrl;

  final Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media
  media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$fileId = fileId;
    _resultData['fileId'] = l$fileId;
    final l$filePath = filePath;
    _resultData['filePath'] = l$filePath;
    final l$tradeDocumentId = tradeDocumentId;
    _resultData['tradeDocumentId'] = l$tradeDocumentId;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$type = type;
    final l$subType = subType;
    final l$fileId = fileId;
    final l$filePath = filePath;
    final l$tradeDocumentId = tradeDocumentId;
    final l$sasUrl = sasUrl;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validFrom,
      l$validTo,
      l$type,
      l$subType,
      l$fileId,
      l$filePath,
      l$tradeDocumentId,
      l$sasUrl,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validFrom = validFrom;
    final lOther$validFrom = other.validFrom;
    if (l$validFrom != lOther$validFrom) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$subType = subType;
    final lOther$subType = other.subType;
    if (l$subType != lOther$subType) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (l$fileId != lOther$fileId) {
      return false;
    }
    final l$filePath = filePath;
    final lOther$filePath = other.filePath;
    if (l$filePath != lOther$filePath) {
      return false;
    }
    final l$tradeDocumentId = tradeDocumentId;
    final lOther$tradeDocumentId = other.tradeDocumentId;
    if (l$tradeDocumentId != lOther$tradeDocumentId) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
    on Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress {
  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress<
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
  >
  get copyWith =>
      CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress<
  TRes
> {
  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
    instance,
    TRes Function(
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress;

  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress;

  TRes call({
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? fileId,
    String? filePath,
    int? tradeDocumentId,
    String? sasUrl,
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media?
    media,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress(
    this._instance,
    this._then,
  );

  final Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress
  _instance;

  final TRes Function(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? fileId = _undefined,
    Object? filePath = _undefined,
    Object? tradeDocumentId = _undefined,
    Object? sasUrl = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress(
      validFrom: validFrom == _undefined || validFrom == null
          ? _instance.validFrom
          : (validFrom as DateTime),
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$IdentificationType),
      subType: subType == _undefined || subType == null
          ? _instance.subType
          : (subType as Enum$IdentificationSubType),
      fileId: fileId == _undefined ? _instance.fileId : (fileId as String?),
      filePath: filePath == _undefined
          ? _instance.filePath
          : (filePath as String?),
      tradeDocumentId: tradeDocumentId == _undefined
          ? _instance.tradeDocumentId
          : (tradeDocumentId as int?),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress(
    this._res,
  );

  TRes _res;

  call({
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? fileId,
    String? filePath,
    int? tradeDocumentId,
    String? sasUrl,
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media?
    media,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media.stub(
        _res,
      );
}

class Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media {
  Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media
    on
        Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media {
  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media<
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media
  >
  get copyWith =>
      CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media<
  TRes
> {
  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media
    instance,
    TRes Function(
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media;

  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media(
    this._instance,
    this._then,
  );

  final Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media
  _instance;

  final TRes Function(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfAddress$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification {
  Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification({
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.fileId,
    this.filePath,
    this.tradeDocumentId,
    this.sasUrl,
    required this.media,
    this.$__typename = 'Identification',
  });

  factory Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$fileId = json['fileId'];
    final l$filePath = json['filePath'];
    final l$tradeDocumentId = json['tradeDocumentId'];
    final l$sasUrl = json['sasUrl'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification(
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      fileId: (l$fileId as String?),
      filePath: (l$filePath as String?),
      tradeDocumentId: (l$tradeDocumentId as int?),
      sasUrl: (l$sasUrl as String?),
      media:
          Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime validFrom;

  final DateTime validTo;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final String? fileId;

  final String? filePath;

  final int? tradeDocumentId;

  final String? sasUrl;

  final Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media
  media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$fileId = fileId;
    _resultData['fileId'] = l$fileId;
    final l$filePath = filePath;
    _resultData['filePath'] = l$filePath;
    final l$tradeDocumentId = tradeDocumentId;
    _resultData['tradeDocumentId'] = l$tradeDocumentId;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$type = type;
    final l$subType = subType;
    final l$fileId = fileId;
    final l$filePath = filePath;
    final l$tradeDocumentId = tradeDocumentId;
    final l$sasUrl = sasUrl;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validFrom,
      l$validTo,
      l$type,
      l$subType,
      l$fileId,
      l$filePath,
      l$tradeDocumentId,
      l$sasUrl,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validFrom = validFrom;
    final lOther$validFrom = other.validFrom;
    if (l$validFrom != lOther$validFrom) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$subType = subType;
    final lOther$subType = other.subType;
    if (l$subType != lOther$subType) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (l$fileId != lOther$fileId) {
      return false;
    }
    final l$filePath = filePath;
    final lOther$filePath = other.filePath;
    if (l$filePath != lOther$filePath) {
      return false;
    }
    final l$tradeDocumentId = tradeDocumentId;
    final lOther$tradeDocumentId = other.tradeDocumentId;
    if (l$tradeDocumentId != lOther$tradeDocumentId) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
    on
        Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification {
  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification<
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
  >
  get copyWith =>
      CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification<
  TRes
> {
  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
    instance,
    TRes Function(
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification;

  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification;

  TRes call({
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? fileId,
    String? filePath,
    int? tradeDocumentId,
    String? sasUrl,
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media?
    media,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification(
    this._instance,
    this._then,
  );

  final Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification
  _instance;

  final TRes Function(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? fileId = _undefined,
    Object? filePath = _undefined,
    Object? tradeDocumentId = _undefined,
    Object? sasUrl = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification(
      validFrom: validFrom == _undefined || validFrom == null
          ? _instance.validFrom
          : (validFrom as DateTime),
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$IdentificationType),
      subType: subType == _undefined || subType == null
          ? _instance.subType
          : (subType as Enum$IdentificationSubType),
      fileId: fileId == _undefined ? _instance.fileId : (fileId as String?),
      filePath: filePath == _undefined
          ? _instance.filePath
          : (filePath as String?),
      tradeDocumentId: tradeDocumentId == _undefined
          ? _instance.tradeDocumentId
          : (tradeDocumentId as int?),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification(
    this._res,
  );

  TRes _res;

  call({
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? fileId,
    String? filePath,
    int? tradeDocumentId,
    String? sasUrl,
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media?
    media,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media.stub(
        _res,
      );
}

class Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media {
  Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media
    on
        Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media {
  CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media<
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media
  >
  get copyWith =>
      CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media<
  TRes
> {
  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media
    instance,
    TRes Function(
      Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media;

  factory CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media(
    this._instance,
    this._then,
  );

  final Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media
  _instance;

  final TRes Function(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountDocuments$accountById$accountContacts$value$proofOfIdentification$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}
