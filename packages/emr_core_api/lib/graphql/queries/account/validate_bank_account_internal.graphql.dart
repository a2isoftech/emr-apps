import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$ValidateBankAccountInternal {
  factory Variables$Query$ValidateBankAccountInternal({
    required String sortCode,
    required String accountNumber,
    required Enum$CountryId country,
  }) => Variables$Query$ValidateBankAccountInternal._({
    r'sortCode': sortCode,
    r'accountNumber': accountNumber,
    r'country': country,
  });

  Variables$Query$ValidateBankAccountInternal._(this._$data);

  factory Variables$Query$ValidateBankAccountInternal.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sortCode = data['sortCode'];
    result$data['sortCode'] = (l$sortCode as String);
    final l$accountNumber = data['accountNumber'];
    result$data['accountNumber'] = (l$accountNumber as String);
    final l$country = data['country'];
    result$data['country'] = fromJson$Enum$CountryId((l$country as String));
    return Variables$Query$ValidateBankAccountInternal._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sortCode => (_$data['sortCode'] as String);

  String get accountNumber => (_$data['accountNumber'] as String);

  Enum$CountryId get country => (_$data['country'] as Enum$CountryId);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sortCode = sortCode;
    result$data['sortCode'] = l$sortCode;
    final l$accountNumber = accountNumber;
    result$data['accountNumber'] = l$accountNumber;
    final l$country = country;
    result$data['country'] = toJson$Enum$CountryId(l$country);
    return result$data;
  }

  CopyWith$Variables$Query$ValidateBankAccountInternal<
    Variables$Query$ValidateBankAccountInternal
  >
  get copyWith =>
      CopyWith$Variables$Query$ValidateBankAccountInternal(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ValidateBankAccountInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sortCode = sortCode;
    final lOther$sortCode = other.sortCode;
    if (l$sortCode != lOther$sortCode) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$sortCode = sortCode;
    final l$accountNumber = accountNumber;
    final l$country = country;
    return Object.hashAll([l$sortCode, l$accountNumber, l$country]);
  }
}

abstract class CopyWith$Variables$Query$ValidateBankAccountInternal<TRes> {
  factory CopyWith$Variables$Query$ValidateBankAccountInternal(
    Variables$Query$ValidateBankAccountInternal instance,
    TRes Function(Variables$Query$ValidateBankAccountInternal) then,
  ) = _CopyWithImpl$Variables$Query$ValidateBankAccountInternal;

  factory CopyWith$Variables$Query$ValidateBankAccountInternal.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ValidateBankAccountInternal;

  TRes call({String? sortCode, String? accountNumber, Enum$CountryId? country});
}

class _CopyWithImpl$Variables$Query$ValidateBankAccountInternal<TRes>
    implements CopyWith$Variables$Query$ValidateBankAccountInternal<TRes> {
  _CopyWithImpl$Variables$Query$ValidateBankAccountInternal(
    this._instance,
    this._then,
  );

  final Variables$Query$ValidateBankAccountInternal _instance;

  final TRes Function(Variables$Query$ValidateBankAccountInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sortCode = _undefined,
    Object? accountNumber = _undefined,
    Object? country = _undefined,
  }) => _then(
    Variables$Query$ValidateBankAccountInternal._({
      ..._instance._$data,
      if (sortCode != _undefined && sortCode != null)
        'sortCode': (sortCode as String),
      if (accountNumber != _undefined && accountNumber != null)
        'accountNumber': (accountNumber as String),
      if (country != _undefined && country != null)
        'country': (country as Enum$CountryId),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ValidateBankAccountInternal<TRes>
    implements CopyWith$Variables$Query$ValidateBankAccountInternal<TRes> {
  _CopyWithStubImpl$Variables$Query$ValidateBankAccountInternal(this._res);

  TRes _res;

  call({String? sortCode, String? accountNumber, Enum$CountryId? country}) =>
      _res;
}

class Query$ValidateBankAccountInternal {
  Query$ValidateBankAccountInternal({
    this.validatedBankAccountInternal,
    this.$__typename = 'Query',
  });

  factory Query$ValidateBankAccountInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$validatedBankAccountInternal = json['validatedBankAccountInternal'];
    final l$$__typename = json['__typename'];
    return Query$ValidateBankAccountInternal(
      validatedBankAccountInternal: l$validatedBankAccountInternal == null
          ? null
          : Query$ValidateBankAccountInternal$validatedBankAccountInternal.fromJson(
              (l$validatedBankAccountInternal as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ValidateBankAccountInternal$validatedBankAccountInternal?
  validatedBankAccountInternal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validatedBankAccountInternal = validatedBankAccountInternal;
    _resultData['validatedBankAccountInternal'] = l$validatedBankAccountInternal
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validatedBankAccountInternal = validatedBankAccountInternal;
    final l$$__typename = $__typename;
    return Object.hashAll([l$validatedBankAccountInternal, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ValidateBankAccountInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validatedBankAccountInternal = validatedBankAccountInternal;
    final lOther$validatedBankAccountInternal =
        other.validatedBankAccountInternal;
    if (l$validatedBankAccountInternal != lOther$validatedBankAccountInternal) {
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

extension UtilityExtension$Query$ValidateBankAccountInternal
    on Query$ValidateBankAccountInternal {
  CopyWith$Query$ValidateBankAccountInternal<Query$ValidateBankAccountInternal>
  get copyWith => CopyWith$Query$ValidateBankAccountInternal(this, (i) => i);
}

abstract class CopyWith$Query$ValidateBankAccountInternal<TRes> {
  factory CopyWith$Query$ValidateBankAccountInternal(
    Query$ValidateBankAccountInternal instance,
    TRes Function(Query$ValidateBankAccountInternal) then,
  ) = _CopyWithImpl$Query$ValidateBankAccountInternal;

  factory CopyWith$Query$ValidateBankAccountInternal.stub(TRes res) =
      _CopyWithStubImpl$Query$ValidateBankAccountInternal;

  TRes call({
    Query$ValidateBankAccountInternal$validatedBankAccountInternal?
    validatedBankAccountInternal,
    String? $__typename,
  });
  CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal<TRes>
  get validatedBankAccountInternal;
}

class _CopyWithImpl$Query$ValidateBankAccountInternal<TRes>
    implements CopyWith$Query$ValidateBankAccountInternal<TRes> {
  _CopyWithImpl$Query$ValidateBankAccountInternal(this._instance, this._then);

  final Query$ValidateBankAccountInternal _instance;

  final TRes Function(Query$ValidateBankAccountInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validatedBankAccountInternal = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ValidateBankAccountInternal(
      validatedBankAccountInternal: validatedBankAccountInternal == _undefined
          ? _instance.validatedBankAccountInternal
          : (validatedBankAccountInternal
                as Query$ValidateBankAccountInternal$validatedBankAccountInternal?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal<TRes>
  get validatedBankAccountInternal {
    final local$validatedBankAccountInternal =
        _instance.validatedBankAccountInternal;
    return local$validatedBankAccountInternal == null
        ? CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal.stub(
            _then(_instance),
          )
        : CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal(
            local$validatedBankAccountInternal,
            (e) => call(validatedBankAccountInternal: e),
          );
  }
}

class _CopyWithStubImpl$Query$ValidateBankAccountInternal<TRes>
    implements CopyWith$Query$ValidateBankAccountInternal<TRes> {
  _CopyWithStubImpl$Query$ValidateBankAccountInternal(this._res);

  TRes _res;

  call({
    Query$ValidateBankAccountInternal$validatedBankAccountInternal?
    validatedBankAccountInternal,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal<TRes>
  get validatedBankAccountInternal =>
      CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal.stub(
        _res,
      );
}

const documentNodeQueryValidateBankAccountInternal = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ValidateBankAccountInternal'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sortCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accountNumber')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'country')),
          type: NamedTypeNode(
            name: NameNode(value: 'CountryId'),
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
            name: NameNode(value: 'validatedBankAccountInternal'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sortCode'),
                value: VariableNode(name: NameNode(value: 'sortCode')),
              ),
              ArgumentNode(
                name: NameNode(value: 'accountNumber'),
                value: VariableNode(name: NameNode(value: 'accountNumber')),
              ),
              ArgumentNode(
                name: NameNode(value: 'country'),
                value: VariableNode(name: NameNode(value: 'country')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'isCorrect'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'bank'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'contactAddressLine1'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'contactAddressLine2'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'contactPostTown'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'contactPostcode'),
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

class Query$ValidateBankAccountInternal$validatedBankAccountInternal {
  Query$ValidateBankAccountInternal$validatedBankAccountInternal({
    required this.isCorrect,
    this.bank,
    this.contactAddressLine1,
    this.contactAddressLine2,
    this.contactPostTown,
    this.contactPostcode,
    this.$__typename = 'ValidatedBankAccount',
  });

  factory Query$ValidateBankAccountInternal$validatedBankAccountInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isCorrect = json['isCorrect'];
    final l$bank = json['bank'];
    final l$contactAddressLine1 = json['contactAddressLine1'];
    final l$contactAddressLine2 = json['contactAddressLine2'];
    final l$contactPostTown = json['contactPostTown'];
    final l$contactPostcode = json['contactPostcode'];
    final l$$__typename = json['__typename'];
    return Query$ValidateBankAccountInternal$validatedBankAccountInternal(
      isCorrect: (l$isCorrect as bool),
      bank: (l$bank as String?),
      contactAddressLine1: (l$contactAddressLine1 as String?),
      contactAddressLine2: (l$contactAddressLine2 as String?),
      contactPostTown: (l$contactPostTown as String?),
      contactPostcode: (l$contactPostcode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isCorrect;

  final String? bank;

  final String? contactAddressLine1;

  final String? contactAddressLine2;

  final String? contactPostTown;

  final String? contactPostcode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isCorrect = isCorrect;
    _resultData['isCorrect'] = l$isCorrect;
    final l$bank = bank;
    _resultData['bank'] = l$bank;
    final l$contactAddressLine1 = contactAddressLine1;
    _resultData['contactAddressLine1'] = l$contactAddressLine1;
    final l$contactAddressLine2 = contactAddressLine2;
    _resultData['contactAddressLine2'] = l$contactAddressLine2;
    final l$contactPostTown = contactPostTown;
    _resultData['contactPostTown'] = l$contactPostTown;
    final l$contactPostcode = contactPostcode;
    _resultData['contactPostcode'] = l$contactPostcode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isCorrect = isCorrect;
    final l$bank = bank;
    final l$contactAddressLine1 = contactAddressLine1;
    final l$contactAddressLine2 = contactAddressLine2;
    final l$contactPostTown = contactPostTown;
    final l$contactPostcode = contactPostcode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isCorrect,
      l$bank,
      l$contactAddressLine1,
      l$contactAddressLine2,
      l$contactPostTown,
      l$contactPostcode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ValidateBankAccountInternal$validatedBankAccountInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isCorrect = isCorrect;
    final lOther$isCorrect = other.isCorrect;
    if (l$isCorrect != lOther$isCorrect) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (l$bank != lOther$bank) {
      return false;
    }
    final l$contactAddressLine1 = contactAddressLine1;
    final lOther$contactAddressLine1 = other.contactAddressLine1;
    if (l$contactAddressLine1 != lOther$contactAddressLine1) {
      return false;
    }
    final l$contactAddressLine2 = contactAddressLine2;
    final lOther$contactAddressLine2 = other.contactAddressLine2;
    if (l$contactAddressLine2 != lOther$contactAddressLine2) {
      return false;
    }
    final l$contactPostTown = contactPostTown;
    final lOther$contactPostTown = other.contactPostTown;
    if (l$contactPostTown != lOther$contactPostTown) {
      return false;
    }
    final l$contactPostcode = contactPostcode;
    final lOther$contactPostcode = other.contactPostcode;
    if (l$contactPostcode != lOther$contactPostcode) {
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

extension UtilityExtension$Query$ValidateBankAccountInternal$validatedBankAccountInternal
    on Query$ValidateBankAccountInternal$validatedBankAccountInternal {
  CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal<
    Query$ValidateBankAccountInternal$validatedBankAccountInternal
  >
  get copyWith =>
      CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal<
  TRes
> {
  factory CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal(
    Query$ValidateBankAccountInternal$validatedBankAccountInternal instance,
    TRes Function(
      Query$ValidateBankAccountInternal$validatedBankAccountInternal,
    )
    then,
  ) = _CopyWithImpl$Query$ValidateBankAccountInternal$validatedBankAccountInternal;

  factory CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ValidateBankAccountInternal$validatedBankAccountInternal;

  TRes call({
    bool? isCorrect,
    String? bank,
    String? contactAddressLine1,
    String? contactAddressLine2,
    String? contactPostTown,
    String? contactPostcode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ValidateBankAccountInternal$validatedBankAccountInternal<
  TRes
>
    implements
        CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal<
          TRes
        > {
  _CopyWithImpl$Query$ValidateBankAccountInternal$validatedBankAccountInternal(
    this._instance,
    this._then,
  );

  final Query$ValidateBankAccountInternal$validatedBankAccountInternal
  _instance;

  final TRes Function(
    Query$ValidateBankAccountInternal$validatedBankAccountInternal,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isCorrect = _undefined,
    Object? bank = _undefined,
    Object? contactAddressLine1 = _undefined,
    Object? contactAddressLine2 = _undefined,
    Object? contactPostTown = _undefined,
    Object? contactPostcode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ValidateBankAccountInternal$validatedBankAccountInternal(
      isCorrect: isCorrect == _undefined || isCorrect == null
          ? _instance.isCorrect
          : (isCorrect as bool),
      bank: bank == _undefined ? _instance.bank : (bank as String?),
      contactAddressLine1: contactAddressLine1 == _undefined
          ? _instance.contactAddressLine1
          : (contactAddressLine1 as String?),
      contactAddressLine2: contactAddressLine2 == _undefined
          ? _instance.contactAddressLine2
          : (contactAddressLine2 as String?),
      contactPostTown: contactPostTown == _undefined
          ? _instance.contactPostTown
          : (contactPostTown as String?),
      contactPostcode: contactPostcode == _undefined
          ? _instance.contactPostcode
          : (contactPostcode as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ValidateBankAccountInternal$validatedBankAccountInternal<
  TRes
>
    implements
        CopyWith$Query$ValidateBankAccountInternal$validatedBankAccountInternal<
          TRes
        > {
  _CopyWithStubImpl$Query$ValidateBankAccountInternal$validatedBankAccountInternal(
    this._res,
  );

  TRes _res;

  call({
    bool? isCorrect,
    String? bank,
    String? contactAddressLine1,
    String? contactAddressLine2,
    String? contactPostTown,
    String? contactPostcode,
    String? $__typename,
  }) => _res;
}
