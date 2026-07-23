import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountProductEwc {
  factory Variables$Mutation$UpdateAccountProductEwc({
    required Input$CreateOrUpdateAccountProductEwcInput input,
  }) => Variables$Mutation$UpdateAccountProductEwc._({r'input': input});

  Variables$Mutation$UpdateAccountProductEwc._(this._$data);

  factory Variables$Mutation$UpdateAccountProductEwc.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateOrUpdateAccountProductEwcInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateAccountProductEwc._(result$data);
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

  CopyWith$Variables$Mutation$UpdateAccountProductEwc<
    Variables$Mutation$UpdateAccountProductEwc
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateAccountProductEwc(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountProductEwc ||
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

abstract class CopyWith$Variables$Mutation$UpdateAccountProductEwc<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccountProductEwc(
    Variables$Mutation$UpdateAccountProductEwc instance,
    TRes Function(Variables$Mutation$UpdateAccountProductEwc) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountProductEwc;

  factory CopyWith$Variables$Mutation$UpdateAccountProductEwc.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccountProductEwc;

  TRes call({Input$CreateOrUpdateAccountProductEwcInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountProductEwc<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountProductEwc<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountProductEwc(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountProductEwc _instance;

  final TRes Function(Variables$Mutation$UpdateAccountProductEwc) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateAccountProductEwc._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateOrUpdateAccountProductEwcInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountProductEwc<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountProductEwc<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountProductEwc(this._res);

  TRes _res;

  call({Input$CreateOrUpdateAccountProductEwcInput? input}) => _res;
}

class Mutation$UpdateAccountProductEwc {
  Mutation$UpdateAccountProductEwc({
    this.updateAccountProductEwc,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountProductEwc.fromJson(Map<String, dynamic> json) {
    final l$updateAccountProductEwc = json['updateAccountProductEwc'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountProductEwc(
      updateAccountProductEwc: l$updateAccountProductEwc == null
          ? null
          : Mutation$UpdateAccountProductEwc$updateAccountProductEwc.fromJson(
              (l$updateAccountProductEwc as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountProductEwc$updateAccountProductEwc?
  updateAccountProductEwc;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountProductEwc = updateAccountProductEwc;
    _resultData['updateAccountProductEwc'] = l$updateAccountProductEwc
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountProductEwc = updateAccountProductEwc;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccountProductEwc, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountProductEwc ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountProductEwc = updateAccountProductEwc;
    final lOther$updateAccountProductEwc = other.updateAccountProductEwc;
    if (l$updateAccountProductEwc != lOther$updateAccountProductEwc) {
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

extension UtilityExtension$Mutation$UpdateAccountProductEwc
    on Mutation$UpdateAccountProductEwc {
  CopyWith$Mutation$UpdateAccountProductEwc<Mutation$UpdateAccountProductEwc>
  get copyWith => CopyWith$Mutation$UpdateAccountProductEwc(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccountProductEwc<TRes> {
  factory CopyWith$Mutation$UpdateAccountProductEwc(
    Mutation$UpdateAccountProductEwc instance,
    TRes Function(Mutation$UpdateAccountProductEwc) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountProductEwc;

  factory CopyWith$Mutation$UpdateAccountProductEwc.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountProductEwc;

  TRes call({
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc?
    updateAccountProductEwc,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc<TRes>
  get updateAccountProductEwc;
}

class _CopyWithImpl$Mutation$UpdateAccountProductEwc<TRes>
    implements CopyWith$Mutation$UpdateAccountProductEwc<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountProductEwc(this._instance, this._then);

  final Mutation$UpdateAccountProductEwc _instance;

  final TRes Function(Mutation$UpdateAccountProductEwc) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountProductEwc = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountProductEwc(
      updateAccountProductEwc: updateAccountProductEwc == _undefined
          ? _instance.updateAccountProductEwc
          : (updateAccountProductEwc
                as Mutation$UpdateAccountProductEwc$updateAccountProductEwc?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc<TRes>
  get updateAccountProductEwc {
    final local$updateAccountProductEwc = _instance.updateAccountProductEwc;
    return local$updateAccountProductEwc == null
        ? CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc(
            local$updateAccountProductEwc,
            (e) => call(updateAccountProductEwc: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountProductEwc<TRes>
    implements CopyWith$Mutation$UpdateAccountProductEwc<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountProductEwc(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc?
    updateAccountProductEwc,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc<TRes>
  get updateAccountProductEwc =>
      CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc.stub(
        _res,
      );
}

const documentNodeMutationUpdateAccountProductEwc = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccountProductEwc'),
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
            name: NameNode(value: 'updateAccountProductEwc'),
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

class Mutation$UpdateAccountProductEwc$updateAccountProductEwc {
  Mutation$UpdateAccountProductEwc$updateAccountProductEwc({
    required this.$__typename,
  });

  factory Mutation$UpdateAccountProductEwc$updateAccountProductEwc.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account.fromJson(
          json,
        );

      case "AccountProductEwcError":
        return Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateAccountProductEwc$updateAccountProductEwc(
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
    if (other is! Mutation$UpdateAccountProductEwc$updateAccountProductEwc ||
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

extension UtilityExtension$Mutation$UpdateAccountProductEwc$updateAccountProductEwc
    on Mutation$UpdateAccountProductEwc$updateAccountProductEwc {
  CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc<
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account,
    )
    account,
    required _T Function(
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError,
    )
    accountProductEwcError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this
              as Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account,
        );

      case "AccountProductEwcError":
        return accountProductEwcError(
          this
              as Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account,
    )?
    account,
    _T Function(
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError,
    )?
    accountProductEwcError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountProductEwcError":
        if (accountProductEwcError != null) {
          return accountProductEwcError(
            this
                as Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc instance,
    TRes Function(Mutation$UpdateAccountProductEwc$updateAccountProductEwc)
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc;

  factory CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountProductEwc$updateAccountProductEwc _instance;

  final TRes Function(Mutation$UpdateAccountProductEwc$updateAccountProductEwc)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account
    implements Mutation$UpdateAccountProductEwc$updateAccountProductEwc {
  Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account({
    required this.id,
    required this.productEWCCodes,
    this.$__typename = 'Account',
  });

  factory Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$productEWCCodes = json['productEWCCodes'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account(
      id: (l$id as String),
      productEWCCodes: (l$productEWCCodes as List<dynamic>)
          .map(
            (e) =>
                Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
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
            is! Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account ||
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

extension UtilityExtension$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account
    on Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account {
  CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account<
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account instance,
    TRes Function(
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account;

  factory CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account;

  TRes call({
    String? id,
    List<
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
    >?
    productEWCCodes,
    String? $__typename,
  });
  TRes productEWCCodes(
    Iterable<
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
    >
    Function(
      Iterable<
        CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes<
          Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account
  _instance;

  final TRes Function(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? productEWCCodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      productEWCCodes: productEWCCodes == _undefined || productEWCCodes == null
          ? _instance.productEWCCodes
          : (productEWCCodes
                as List<
                  Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes productEWCCodes(
    Iterable<
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
    >
    Function(
      Iterable<
        CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes<
          Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
        >
      >,
    )
    _fn,
  ) => call(
    productEWCCodes: _fn(
      _instance.productEWCCodes.map(
        (e) =>
            CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    List<
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
    >?
    productEWCCodes,
    String? $__typename,
  }) => _res;

  productEWCCodes(_fn) => _res;
}

class Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes {
  Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes(
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
            is! Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes ||
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

extension UtilityExtension$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
    on
        Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes {
  CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes<
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
    instance,
    TRes Function(
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes;

  factory CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes
  _instance;

  final TRes Function(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes(
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

class _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$Account$productEWCCodes(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError
    implements Mutation$UpdateAccountProductEwc$updateAccountProductEwc {
  Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError({
    required this.message,
    this.$__typename = 'AccountProductEwcError',
  });

  factory Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError(
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
            is! Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError ||
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

extension UtilityExtension$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError
    on
        Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError {
  CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError<
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError
    instance,
    TRes Function(
      Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError;

  factory CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError
  _instance;

  final TRes Function(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountProductEwc$updateAccountProductEwc$$AccountProductEwcError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
