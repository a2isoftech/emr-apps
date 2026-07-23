import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SetAllowedProducts {
  factory Variables$Mutation$SetAllowedProducts({
    required Input$CreateAllowedProductsInput input,
  }) => Variables$Mutation$SetAllowedProducts._({r'input': input});

  Variables$Mutation$SetAllowedProducts._(this._$data);

  factory Variables$Mutation$SetAllowedProducts.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateAllowedProductsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$SetAllowedProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateAllowedProductsInput get input =>
      (_$data['input'] as Input$CreateAllowedProductsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SetAllowedProducts<
    Variables$Mutation$SetAllowedProducts
  >
  get copyWith =>
      CopyWith$Variables$Mutation$SetAllowedProducts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SetAllowedProducts ||
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

abstract class CopyWith$Variables$Mutation$SetAllowedProducts<TRes> {
  factory CopyWith$Variables$Mutation$SetAllowedProducts(
    Variables$Mutation$SetAllowedProducts instance,
    TRes Function(Variables$Mutation$SetAllowedProducts) then,
  ) = _CopyWithImpl$Variables$Mutation$SetAllowedProducts;

  factory CopyWith$Variables$Mutation$SetAllowedProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetAllowedProducts;

  TRes call({Input$CreateAllowedProductsInput? input});
}

class _CopyWithImpl$Variables$Mutation$SetAllowedProducts<TRes>
    implements CopyWith$Variables$Mutation$SetAllowedProducts<TRes> {
  _CopyWithImpl$Variables$Mutation$SetAllowedProducts(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetAllowedProducts _instance;

  final TRes Function(Variables$Mutation$SetAllowedProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$SetAllowedProducts._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateAllowedProductsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SetAllowedProducts<TRes>
    implements CopyWith$Variables$Mutation$SetAllowedProducts<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetAllowedProducts(this._res);

  TRes _res;

  call({Input$CreateAllowedProductsInput? input}) => _res;
}

class Mutation$SetAllowedProducts {
  Mutation$SetAllowedProducts({
    this.setAllowedProducts,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SetAllowedProducts.fromJson(Map<String, dynamic> json) {
    final l$setAllowedProducts = json['setAllowedProducts'];
    final l$$__typename = json['__typename'];
    return Mutation$SetAllowedProducts(
      setAllowedProducts: l$setAllowedProducts == null
          ? null
          : Mutation$SetAllowedProducts$setAllowedProducts.fromJson(
              (l$setAllowedProducts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SetAllowedProducts$setAllowedProducts? setAllowedProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setAllowedProducts = setAllowedProducts;
    _resultData['setAllowedProducts'] = l$setAllowedProducts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setAllowedProducts = setAllowedProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$setAllowedProducts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SetAllowedProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$setAllowedProducts = setAllowedProducts;
    final lOther$setAllowedProducts = other.setAllowedProducts;
    if (l$setAllowedProducts != lOther$setAllowedProducts) {
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

extension UtilityExtension$Mutation$SetAllowedProducts
    on Mutation$SetAllowedProducts {
  CopyWith$Mutation$SetAllowedProducts<Mutation$SetAllowedProducts>
  get copyWith => CopyWith$Mutation$SetAllowedProducts(this, (i) => i);
}

abstract class CopyWith$Mutation$SetAllowedProducts<TRes> {
  factory CopyWith$Mutation$SetAllowedProducts(
    Mutation$SetAllowedProducts instance,
    TRes Function(Mutation$SetAllowedProducts) then,
  ) = _CopyWithImpl$Mutation$SetAllowedProducts;

  factory CopyWith$Mutation$SetAllowedProducts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetAllowedProducts;

  TRes call({
    Mutation$SetAllowedProducts$setAllowedProducts? setAllowedProducts,
    String? $__typename,
  });
  CopyWith$Mutation$SetAllowedProducts$setAllowedProducts<TRes>
  get setAllowedProducts;
}

class _CopyWithImpl$Mutation$SetAllowedProducts<TRes>
    implements CopyWith$Mutation$SetAllowedProducts<TRes> {
  _CopyWithImpl$Mutation$SetAllowedProducts(this._instance, this._then);

  final Mutation$SetAllowedProducts _instance;

  final TRes Function(Mutation$SetAllowedProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setAllowedProducts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SetAllowedProducts(
      setAllowedProducts: setAllowedProducts == _undefined
          ? _instance.setAllowedProducts
          : (setAllowedProducts
                as Mutation$SetAllowedProducts$setAllowedProducts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SetAllowedProducts$setAllowedProducts<TRes>
  get setAllowedProducts {
    final local$setAllowedProducts = _instance.setAllowedProducts;
    return local$setAllowedProducts == null
        ? CopyWith$Mutation$SetAllowedProducts$setAllowedProducts.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$SetAllowedProducts$setAllowedProducts(
            local$setAllowedProducts,
            (e) => call(setAllowedProducts: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$SetAllowedProducts<TRes>
    implements CopyWith$Mutation$SetAllowedProducts<TRes> {
  _CopyWithStubImpl$Mutation$SetAllowedProducts(this._res);

  TRes _res;

  call({
    Mutation$SetAllowedProducts$setAllowedProducts? setAllowedProducts,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SetAllowedProducts$setAllowedProducts<TRes>
  get setAllowedProducts =>
      CopyWith$Mutation$SetAllowedProducts$setAllowedProducts.stub(_res);
}

const documentNodeMutationSetAllowedProducts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SetAllowedProducts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateAllowedProductsInput'),
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
            name: NameNode(value: 'setAllowedProducts'),
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
                      name: NameNode(value: 'AccountPriceMapping'),
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
                        name: NameNode(value: 'accountCode'),
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'CreateAllowedProductsError'),
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
                        name: NameNode(value: 'errorCode'),
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

class Mutation$SetAllowedProducts$setAllowedProducts {
  Mutation$SetAllowedProducts$setAllowedProducts({required this.$__typename});

  factory Mutation$SetAllowedProducts$setAllowedProducts.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountPriceMapping":
        return Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping.fromJson(
          json,
        );

      case "CreateAllowedProductsError":
        return Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$SetAllowedProducts$setAllowedProducts(
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
    if (other is! Mutation$SetAllowedProducts$setAllowedProducts ||
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

extension UtilityExtension$Mutation$SetAllowedProducts$setAllowedProducts
    on Mutation$SetAllowedProducts$setAllowedProducts {
  CopyWith$Mutation$SetAllowedProducts$setAllowedProducts<
    Mutation$SetAllowedProducts$setAllowedProducts
  >
  get copyWith =>
      CopyWith$Mutation$SetAllowedProducts$setAllowedProducts(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping,
    )
    accountPriceMapping,
    required _T Function(
      Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError,
    )
    createAllowedProductsError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountPriceMapping":
        return accountPriceMapping(
          this
              as Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping,
        );

      case "CreateAllowedProductsError":
        return createAllowedProductsError(
          this
              as Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping,
    )?
    accountPriceMapping,
    _T Function(
      Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError,
    )?
    createAllowedProductsError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountPriceMapping":
        if (accountPriceMapping != null) {
          return accountPriceMapping(
            this
                as Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping,
          );
        } else {
          return orElse();
        }

      case "CreateAllowedProductsError":
        if (createAllowedProductsError != null) {
          return createAllowedProductsError(
            this
                as Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$SetAllowedProducts$setAllowedProducts<TRes> {
  factory CopyWith$Mutation$SetAllowedProducts$setAllowedProducts(
    Mutation$SetAllowedProducts$setAllowedProducts instance,
    TRes Function(Mutation$SetAllowedProducts$setAllowedProducts) then,
  ) = _CopyWithImpl$Mutation$SetAllowedProducts$setAllowedProducts;

  factory CopyWith$Mutation$SetAllowedProducts$setAllowedProducts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SetAllowedProducts$setAllowedProducts;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$SetAllowedProducts$setAllowedProducts<TRes>
    implements CopyWith$Mutation$SetAllowedProducts$setAllowedProducts<TRes> {
  _CopyWithImpl$Mutation$SetAllowedProducts$setAllowedProducts(
    this._instance,
    this._then,
  );

  final Mutation$SetAllowedProducts$setAllowedProducts _instance;

  final TRes Function(Mutation$SetAllowedProducts$setAllowedProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$SetAllowedProducts$setAllowedProducts(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SetAllowedProducts$setAllowedProducts<TRes>
    implements CopyWith$Mutation$SetAllowedProducts$setAllowedProducts<TRes> {
  _CopyWithStubImpl$Mutation$SetAllowedProducts$setAllowedProducts(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping
    implements Mutation$SetAllowedProducts$setAllowedProducts {
  Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping({
    required this.id,
    required this.accountCode,
    this.$__typename = 'AccountPriceMapping',
  });

  factory Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$accountCode = json['accountCode'];
    final l$$__typename = json['__typename'];
    return Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping(
      id: (l$id as String),
      accountCode: (l$accountCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String accountCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$accountCode = accountCode;
    _resultData['accountCode'] = l$accountCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$accountCode = accountCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$accountCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$accountCode = accountCode;
    final lOther$accountCode = other.accountCode;
    if (l$accountCode != lOther$accountCode) {
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

extension UtilityExtension$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping
    on Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping {
  CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping<
    Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping
  >
  get copyWith =>
      CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping<
  TRes
> {
  factory CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping(
    Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping
    instance,
    TRes Function(
      Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping,
    )
    then,
  ) = _CopyWithImpl$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping;

  factory CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping;

  TRes call({String? id, String? accountCode, String? $__typename});
}

class _CopyWithImpl$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping<
  TRes
>
    implements
        CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping<
          TRes
        > {
  _CopyWithImpl$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping(
    this._instance,
    this._then,
  );

  final Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping
  _instance;

  final TRes Function(
    Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? accountCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      accountCode: accountCode == _undefined || accountCode == null
          ? _instance.accountCode
          : (accountCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping<
  TRes
>
    implements
        CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SetAllowedProducts$setAllowedProducts$$AccountPriceMapping(
    this._res,
  );

  TRes _res;

  call({String? id, String? accountCode, String? $__typename}) => _res;
}

class Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError
    implements Mutation$SetAllowedProducts$setAllowedProducts {
  Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError({
    required this.message,
    required this.errorCode,
    this.$__typename = 'CreateAllowedProductsError',
  });

  factory Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$$__typename = json['__typename'];
    return Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError(
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String errorCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$errorCode = errorCode;
    _resultData['errorCode'] = l$errorCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$errorCode = errorCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$errorCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) {
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

extension UtilityExtension$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError
    on Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError {
  CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError<
    Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError
  >
  get copyWith =>
      CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError<
  TRes
> {
  factory CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError(
    Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError
    instance,
    TRes Function(
      Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError,
    )
    then,
  ) = _CopyWithImpl$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError;

  factory CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError;

  TRes call({String? message, String? errorCode, String? $__typename});
}

class _CopyWithImpl$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError<
  TRes
>
    implements
        CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError<
          TRes
        > {
  _CopyWithImpl$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError(
    this._instance,
    this._then,
  );

  final Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError
  _instance;

  final TRes Function(
    Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError<
  TRes
>
    implements
        CopyWith$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SetAllowedProducts$setAllowedProducts$$CreateAllowedProductsError(
    this._res,
  );

  TRes _res;

  call({String? message, String? errorCode, String? $__typename}) => _res;
}
