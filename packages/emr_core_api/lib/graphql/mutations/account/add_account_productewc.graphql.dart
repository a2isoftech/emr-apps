import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateAccountProductEwc {
  factory Variables$Mutation$CreateAccountProductEwc({
    required Input$CreateOrUpdateAccountProductEwcInput input,
  }) => Variables$Mutation$CreateAccountProductEwc._({r'input': input});

  Variables$Mutation$CreateAccountProductEwc._(this._$data);

  factory Variables$Mutation$CreateAccountProductEwc.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateOrUpdateAccountProductEwcInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateAccountProductEwc._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrUpdateAccountProductEwcInput get input =>
      (_$data['input'] as Input$CreateOrUpdateAccountProductEwcInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateAccountProductEwc<
    Variables$Mutation$CreateAccountProductEwc
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateAccountProductEwc(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateAccountProductEwc ||
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

abstract class CopyWith$Variables$Mutation$CreateAccountProductEwc<TRes> {
  factory CopyWith$Variables$Mutation$CreateAccountProductEwc(
    Variables$Mutation$CreateAccountProductEwc instance,
    TRes Function(Variables$Mutation$CreateAccountProductEwc) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateAccountProductEwc;

  factory CopyWith$Variables$Mutation$CreateAccountProductEwc.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateAccountProductEwc;

  TRes call({Input$CreateOrUpdateAccountProductEwcInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateAccountProductEwc<TRes>
    implements CopyWith$Variables$Mutation$CreateAccountProductEwc<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateAccountProductEwc(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateAccountProductEwc _instance;

  final TRes Function(Variables$Mutation$CreateAccountProductEwc) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateAccountProductEwc._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateOrUpdateAccountProductEwcInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateAccountProductEwc<TRes>
    implements CopyWith$Variables$Mutation$CreateAccountProductEwc<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateAccountProductEwc(this._res);

  TRes _res;

  call({Input$CreateOrUpdateAccountProductEwcInput? input}) => _res;
}

class Mutation$CreateAccountProductEwc {
  Mutation$CreateAccountProductEwc({
    this.createAccountProductEwc,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateAccountProductEwc.fromJson(Map<String, dynamic> json) {
    final l$createAccountProductEwc = json['createAccountProductEwc'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAccountProductEwc(
      createAccountProductEwc: l$createAccountProductEwc == null
          ? null
          : Mutation$CreateAccountProductEwc$createAccountProductEwc.fromJson(
              (l$createAccountProductEwc as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateAccountProductEwc$createAccountProductEwc?
  createAccountProductEwc;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createAccountProductEwc = createAccountProductEwc;
    _resultData['createAccountProductEwc'] = l$createAccountProductEwc
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createAccountProductEwc = createAccountProductEwc;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createAccountProductEwc, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateAccountProductEwc ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createAccountProductEwc = createAccountProductEwc;
    final lOther$createAccountProductEwc = other.createAccountProductEwc;
    if (l$createAccountProductEwc != lOther$createAccountProductEwc) {
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

extension UtilityExtension$Mutation$CreateAccountProductEwc
    on Mutation$CreateAccountProductEwc {
  CopyWith$Mutation$CreateAccountProductEwc<Mutation$CreateAccountProductEwc>
  get copyWith => CopyWith$Mutation$CreateAccountProductEwc(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateAccountProductEwc<TRes> {
  factory CopyWith$Mutation$CreateAccountProductEwc(
    Mutation$CreateAccountProductEwc instance,
    TRes Function(Mutation$CreateAccountProductEwc) then,
  ) = _CopyWithImpl$Mutation$CreateAccountProductEwc;

  factory CopyWith$Mutation$CreateAccountProductEwc.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateAccountProductEwc;

  TRes call({
    Mutation$CreateAccountProductEwc$createAccountProductEwc?
    createAccountProductEwc,
    String? $__typename,
  });
  CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc<TRes>
  get createAccountProductEwc;
}

class _CopyWithImpl$Mutation$CreateAccountProductEwc<TRes>
    implements CopyWith$Mutation$CreateAccountProductEwc<TRes> {
  _CopyWithImpl$Mutation$CreateAccountProductEwc(this._instance, this._then);

  final Mutation$CreateAccountProductEwc _instance;

  final TRes Function(Mutation$CreateAccountProductEwc) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createAccountProductEwc = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateAccountProductEwc(
      createAccountProductEwc: createAccountProductEwc == _undefined
          ? _instance.createAccountProductEwc
          : (createAccountProductEwc
                as Mutation$CreateAccountProductEwc$createAccountProductEwc?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc<TRes>
  get createAccountProductEwc {
    final local$createAccountProductEwc = _instance.createAccountProductEwc;
    return local$createAccountProductEwc == null
        ? CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc(
            local$createAccountProductEwc,
            (e) => call(createAccountProductEwc: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateAccountProductEwc<TRes>
    implements CopyWith$Mutation$CreateAccountProductEwc<TRes> {
  _CopyWithStubImpl$Mutation$CreateAccountProductEwc(this._res);

  TRes _res;

  call({
    Mutation$CreateAccountProductEwc$createAccountProductEwc?
    createAccountProductEwc,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc<TRes>
  get createAccountProductEwc =>
      CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc.stub(
        _res,
      );
}

const documentNodeMutationCreateAccountProductEwc = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateAccountProductEwc'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateOrUpdateAccountProductEwcInput'),
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
            name: NameNode(value: 'createAccountProductEwc'),
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

class Mutation$CreateAccountProductEwc$createAccountProductEwc {
  Mutation$CreateAccountProductEwc$createAccountProductEwc({
    required this.$__typename,
  });

  factory Mutation$CreateAccountProductEwc$createAccountProductEwc.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account.fromJson(
          json,
        );

      case "AccountProductEwcError":
        return Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$CreateAccountProductEwc$createAccountProductEwc(
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
    if (other is! Mutation$CreateAccountProductEwc$createAccountProductEwc ||
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

extension UtilityExtension$Mutation$CreateAccountProductEwc$createAccountProductEwc
    on Mutation$CreateAccountProductEwc$createAccountProductEwc {
  CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc<
    Mutation$CreateAccountProductEwc$createAccountProductEwc
  >
  get copyWith =>
      CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account,
    )
    account,
    required _T Function(
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError,
    )
    accountProductEwcError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this
              as Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account,
        );

      case "AccountProductEwcError":
        return accountProductEwcError(
          this
              as Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account,
    )?
    account,
    _T Function(
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError,
    )?
    accountProductEwcError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountProductEwcError":
        if (accountProductEwcError != null) {
          return accountProductEwcError(
            this
                as Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc<
  TRes
> {
  factory CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc(
    Mutation$CreateAccountProductEwc$createAccountProductEwc instance,
    TRes Function(Mutation$CreateAccountProductEwc$createAccountProductEwc)
    then,
  ) = _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc;

  factory CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc(
    this._instance,
    this._then,
  );

  final Mutation$CreateAccountProductEwc$createAccountProductEwc _instance;

  final TRes Function(Mutation$CreateAccountProductEwc$createAccountProductEwc)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$CreateAccountProductEwc$createAccountProductEwc(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account
    implements Mutation$CreateAccountProductEwc$createAccountProductEwc {
  Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account({
    required this.id,
    required this.productEWCCodes,
    this.$__typename = 'Account',
  });

  factory Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$productEWCCodes = json['productEWCCodes'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account(
      id: (l$id as String),
      productEWCCodes: (l$productEWCCodes as List<dynamic>)
          .map(
            (e) =>
                Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
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
            is! Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account ||
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

extension UtilityExtension$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account
    on Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account {
  CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account<
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account
  >
  get copyWith =>
      CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account<
  TRes
> {
  factory CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account(
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account instance,
    TRes Function(
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account;

  factory CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account;

  TRes call({
    String? id,
    List<
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
    >?
    productEWCCodes,
    String? $__typename,
  });
  TRes productEWCCodes(
    Iterable<
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
    >
    Function(
      Iterable<
        CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes<
          Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account(
    this._instance,
    this._then,
  );

  final Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account
  _instance;

  final TRes Function(
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? productEWCCodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      productEWCCodes: productEWCCodes == _undefined || productEWCCodes == null
          ? _instance.productEWCCodes
          : (productEWCCodes
                as List<
                  Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes productEWCCodes(
    Iterable<
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
    >
    Function(
      Iterable<
        CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes<
          Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
        >
      >,
    )
    _fn,
  ) => call(
    productEWCCodes: _fn(
      _instance.productEWCCodes.map(
        (e) =>
            CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    List<
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
    >?
    productEWCCodes,
    String? $__typename,
  }) => _res;

  productEWCCodes(_fn) => _res;
}

class Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes {
  Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes(
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
            is! Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes ||
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

extension UtilityExtension$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
    on
        Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes {
  CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes<
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
  >
  get copyWith =>
      CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes<
  TRes
> {
  factory CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes(
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
    instance,
    TRes Function(
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes;

  factory CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes(
    this._instance,
    this._then,
  );

  final Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes
  _instance;

  final TRes Function(
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes(
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

class _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$Account$productEWCCodes(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError
    implements Mutation$CreateAccountProductEwc$createAccountProductEwc {
  Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError({
    required this.message,
    this.$__typename = 'AccountProductEwcError',
  });

  factory Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError(
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
            is! Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError ||
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

extension UtilityExtension$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError
    on
        Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError {
  CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError<
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError
  >
  get copyWith =>
      CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError<
  TRes
> {
  factory CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError(
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError
    instance,
    TRes Function(
      Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError;

  factory CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError(
    this._instance,
    this._then,
  );

  final Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError
  _instance;

  final TRes Function(
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateAccountProductEwc$createAccountProductEwc$$AccountProductEwcError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
