import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteAccountProductEwc {
  factory Variables$Mutation$DeleteAccountProductEwc({
    required Input$DeleteAccountProductEwcInput input,
  }) => Variables$Mutation$DeleteAccountProductEwc._({r'input': input});

  Variables$Mutation$DeleteAccountProductEwc._(this._$data);

  factory Variables$Mutation$DeleteAccountProductEwc.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$DeleteAccountProductEwcInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$DeleteAccountProductEwc._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteAccountProductEwcInput get input =>
      (_$data['input'] as Input$DeleteAccountProductEwcInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteAccountProductEwc<
    Variables$Mutation$DeleteAccountProductEwc
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeleteAccountProductEwc(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteAccountProductEwc ||
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

abstract class CopyWith$Variables$Mutation$DeleteAccountProductEwc<TRes> {
  factory CopyWith$Variables$Mutation$DeleteAccountProductEwc(
    Variables$Mutation$DeleteAccountProductEwc instance,
    TRes Function(Variables$Mutation$DeleteAccountProductEwc) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteAccountProductEwc;

  factory CopyWith$Variables$Mutation$DeleteAccountProductEwc.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteAccountProductEwc;

  TRes call({Input$DeleteAccountProductEwcInput? input});
}

class _CopyWithImpl$Variables$Mutation$DeleteAccountProductEwc<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccountProductEwc<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteAccountProductEwc(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteAccountProductEwc _instance;

  final TRes Function(Variables$Mutation$DeleteAccountProductEwc) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$DeleteAccountProductEwc._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$DeleteAccountProductEwcInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteAccountProductEwc<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccountProductEwc<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteAccountProductEwc(this._res);

  TRes _res;

  call({Input$DeleteAccountProductEwcInput? input}) => _res;
}

class Mutation$DeleteAccountProductEwc {
  Mutation$DeleteAccountProductEwc({
    this.deleteAccountProductEwc,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAccountProductEwc.fromJson(Map<String, dynamic> json) {
    final l$deleteAccountProductEwc = json['deleteAccountProductEwc'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountProductEwc(
      deleteAccountProductEwc: l$deleteAccountProductEwc == null
          ? null
          : Mutation$DeleteAccountProductEwc$deleteAccountProductEwc.fromJson(
              (l$deleteAccountProductEwc as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteAccountProductEwc$deleteAccountProductEwc?
  deleteAccountProductEwc;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAccountProductEwc = deleteAccountProductEwc;
    _resultData['deleteAccountProductEwc'] = l$deleteAccountProductEwc
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAccountProductEwc = deleteAccountProductEwc;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteAccountProductEwc, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteAccountProductEwc ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAccountProductEwc = deleteAccountProductEwc;
    final lOther$deleteAccountProductEwc = other.deleteAccountProductEwc;
    if (l$deleteAccountProductEwc != lOther$deleteAccountProductEwc) {
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

extension UtilityExtension$Mutation$DeleteAccountProductEwc
    on Mutation$DeleteAccountProductEwc {
  CopyWith$Mutation$DeleteAccountProductEwc<Mutation$DeleteAccountProductEwc>
  get copyWith => CopyWith$Mutation$DeleteAccountProductEwc(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteAccountProductEwc<TRes> {
  factory CopyWith$Mutation$DeleteAccountProductEwc(
    Mutation$DeleteAccountProductEwc instance,
    TRes Function(Mutation$DeleteAccountProductEwc) then,
  ) = _CopyWithImpl$Mutation$DeleteAccountProductEwc;

  factory CopyWith$Mutation$DeleteAccountProductEwc.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccountProductEwc;

  TRes call({
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc?
    deleteAccountProductEwc,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc<TRes>
  get deleteAccountProductEwc;
}

class _CopyWithImpl$Mutation$DeleteAccountProductEwc<TRes>
    implements CopyWith$Mutation$DeleteAccountProductEwc<TRes> {
  _CopyWithImpl$Mutation$DeleteAccountProductEwc(this._instance, this._then);

  final Mutation$DeleteAccountProductEwc _instance;

  final TRes Function(Mutation$DeleteAccountProductEwc) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAccountProductEwc = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountProductEwc(
      deleteAccountProductEwc: deleteAccountProductEwc == _undefined
          ? _instance.deleteAccountProductEwc
          : (deleteAccountProductEwc
                as Mutation$DeleteAccountProductEwc$deleteAccountProductEwc?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc<TRes>
  get deleteAccountProductEwc {
    final local$deleteAccountProductEwc = _instance.deleteAccountProductEwc;
    return local$deleteAccountProductEwc == null
        ? CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc(
            local$deleteAccountProductEwc,
            (e) => call(deleteAccountProductEwc: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeleteAccountProductEwc<TRes>
    implements CopyWith$Mutation$DeleteAccountProductEwc<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccountProductEwc(this._res);

  TRes _res;

  call({
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc?
    deleteAccountProductEwc,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc<TRes>
  get deleteAccountProductEwc =>
      CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc.stub(
        _res,
      );
}

const documentNodeMutationDeleteAccountProductEwc = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteAccountProductEwc'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'DeleteAccountProductEwcInput'),
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
            name: NameNode(value: 'deleteAccountProductEwc'),
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'Account'),
                      isNonNull: false,
                    ),
                  ),
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
                        name: NameNode(value: 'productEWCCodes'),
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'AccountProductEwcError'),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'message'),
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

class Mutation$DeleteAccountProductEwc$deleteAccountProductEwc {
  Mutation$DeleteAccountProductEwc$deleteAccountProductEwc({
    required this.$__typename,
  });

  factory Mutation$DeleteAccountProductEwc$deleteAccountProductEwc.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account.fromJson(
          json,
        );

      case "AccountProductEwcError":
        return Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$DeleteAccountProductEwc$deleteAccountProductEwc(
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteAccountProductEwc$deleteAccountProductEwc ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc
    on Mutation$DeleteAccountProductEwc$deleteAccountProductEwc {
  CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc<
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account,
    )
    account,
    required _T Function(
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError,
    )
    accountProductEwcError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this
              as Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account,
        );

      case "AccountProductEwcError":
        return accountProductEwcError(
          this
              as Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account,
    )?
    account,
    _T Function(
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError,
    )?
    accountProductEwcError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountProductEwcError":
        if (accountProductEwcError != null) {
          return accountProductEwcError(
            this
                as Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc instance,
    TRes Function(Mutation$DeleteAccountProductEwc$deleteAccountProductEwc)
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc;

  factory CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountProductEwc$deleteAccountProductEwc _instance;

  final TRes Function(Mutation$DeleteAccountProductEwc$deleteAccountProductEwc)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account
    implements Mutation$DeleteAccountProductEwc$deleteAccountProductEwc {
  Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account({
    required this.id,
    required this.productEWCCodes,
    this.$__typename = 'Account',
  });

  factory Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$productEWCCodes = json['productEWCCodes'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account(
      id: (l$id as String),
      productEWCCodes: (l$productEWCCodes as List<dynamic>)
          .map(
            (e) =>
                Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
  >
  productEWCCodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$productEWCCodes = productEWCCodes;
    _resultData['productEWCCodes'] = l$productEWCCodes
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$productEWCCodes = productEWCCodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$productEWCCodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$productEWCCodes = productEWCCodes;
    final lOther$productEWCCodes = other.productEWCCodes;
    if (l$productEWCCodes.length != lOther$productEWCCodes.length) {
      return false;
    }
    for (int i = 0; i < l$productEWCCodes.length; i++) {
      final l$productEWCCodes$entry = l$productEWCCodes[i];
      final lOther$productEWCCodes$entry = lOther$productEWCCodes[i];
      if (l$productEWCCodes$entry != lOther$productEWCCodes$entry) {
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

extension UtilityExtension$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account
    on Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account {
  CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account<
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account instance,
    TRes Function(
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account;

  factory CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account;

  TRes call({
    String? id,
    List<
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
    >?
    productEWCCodes,
    String? $__typename,
  });
  TRes productEWCCodes(
    Iterable<
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
    >
    Function(
      Iterable<
        CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes<
          Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account
  _instance;

  final TRes Function(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? productEWCCodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      productEWCCodes: productEWCCodes == _undefined || productEWCCodes == null
          ? _instance.productEWCCodes
          : (productEWCCodes
                as List<
                  Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes productEWCCodes(
    Iterable<
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
    >
    Function(
      Iterable<
        CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes<
          Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
        >
      >,
    )
    _fn,
  ) => call(
    productEWCCodes: _fn(
      _instance.productEWCCodes.map(
        (e) =>
            CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    List<
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
    >?
    productEWCCodes,
    String? $__typename,
  }) => _res;

  productEWCCodes(_fn) => _res;
}

class Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes {
  Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes(
      key: (l$key as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

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
            is! Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes ||
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

extension UtilityExtension$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
    on
        Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes {
  CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes<
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
    instance,
    TRes Function(
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes;

  factory CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes
  _instance;

  final TRes Function(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$Account$productEWCCodes(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError
    implements Mutation$DeleteAccountProductEwc$deleteAccountProductEwc {
  Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError({
    required this.message,
    this.$__typename = 'AccountProductEwcError',
  });

  factory Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError
    on
        Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError {
  CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError<
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError
    instance,
    TRes Function(
      Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError;

  factory CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError
  _instance;

  final TRes Function(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountProductEwc$deleteAccountProductEwc$$AccountProductEwcError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
