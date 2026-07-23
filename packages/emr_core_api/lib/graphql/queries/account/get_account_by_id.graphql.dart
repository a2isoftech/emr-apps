import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAccountById {
  factory Variables$Query$GetAccountById({required String accountId}) =>
      Variables$Query$GetAccountById._({r'accountId': accountId});

  Variables$Query$GetAccountById._(this._$data);

  factory Variables$Query$GetAccountById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accountId = data['accountId'];
    result$data['accountId'] = (l$accountId as String);
    return Variables$Query$GetAccountById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountId => (_$data['accountId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountId = accountId;
    result$data['accountId'] = l$accountId;
    return result$data;
  }

  CopyWith$Variables$Query$GetAccountById<Variables$Query$GetAccountById>
  get copyWith => CopyWith$Variables$Query$GetAccountById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccountById ||
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

abstract class CopyWith$Variables$Query$GetAccountById<TRes> {
  factory CopyWith$Variables$Query$GetAccountById(
    Variables$Query$GetAccountById instance,
    TRes Function(Variables$Query$GetAccountById) then,
  ) = _CopyWithImpl$Variables$Query$GetAccountById;

  factory CopyWith$Variables$Query$GetAccountById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccountById;

  TRes call({String? accountId});
}

class _CopyWithImpl$Variables$Query$GetAccountById<TRes>
    implements CopyWith$Variables$Query$GetAccountById<TRes> {
  _CopyWithImpl$Variables$Query$GetAccountById(this._instance, this._then);

  final Variables$Query$GetAccountById _instance;

  final TRes Function(Variables$Query$GetAccountById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountId = _undefined}) => _then(
    Variables$Query$GetAccountById._({
      ..._instance._$data,
      if (accountId != _undefined && accountId != null)
        'accountId': (accountId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAccountById<TRes>
    implements CopyWith$Variables$Query$GetAccountById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccountById(this._res);

  TRes _res;

  call({String? accountId}) => _res;
}

class Query$GetAccountById {
  Query$GetAccountById({required this.accountById, this.$__typename = 'Query'});

  factory Query$GetAccountById.fromJson(Map<String, dynamic> json) {
    final l$accountById = json['accountById'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountById(
      accountById: Query$GetAccountById$accountById.fromJson(
        (l$accountById as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  @Deprecated(
    'This usage is obsolete. Consumers must send AccountId instead of AccountCode.',
  )
  final Query$GetAccountById$accountById accountById;

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
    if (other is! Query$GetAccountById || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAccountById on Query$GetAccountById {
  CopyWith$Query$GetAccountById<Query$GetAccountById> get copyWith =>
      CopyWith$Query$GetAccountById(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountById<TRes> {
  factory CopyWith$Query$GetAccountById(
    Query$GetAccountById instance,
    TRes Function(Query$GetAccountById) then,
  ) = _CopyWithImpl$Query$GetAccountById;

  factory CopyWith$Query$GetAccountById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountById;

  TRes call({
    Query$GetAccountById$accountById? accountById,
    String? $__typename,
  });
  CopyWith$Query$GetAccountById$accountById<TRes> get accountById;
}

class _CopyWithImpl$Query$GetAccountById<TRes>
    implements CopyWith$Query$GetAccountById<TRes> {
  _CopyWithImpl$Query$GetAccountById(this._instance, this._then);

  final Query$GetAccountById _instance;

  final TRes Function(Query$GetAccountById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountById = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountById(
      accountById: accountById == _undefined || accountById == null
          ? _instance.accountById
          : (accountById as Query$GetAccountById$accountById),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountById$accountById<TRes> get accountById {
    final local$accountById = _instance.accountById;
    return CopyWith$Query$GetAccountById$accountById(
      local$accountById,
      (e) => call(accountById: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountById<TRes>
    implements CopyWith$Query$GetAccountById<TRes> {
  _CopyWithStubImpl$Query$GetAccountById(this._res);

  TRes _res;

  call({Query$GetAccountById$accountById? accountById, String? $__typename}) =>
      _res;

  CopyWith$Query$GetAccountById$accountById<TRes> get accountById =>
      CopyWith$Query$GetAccountById$accountById.stub(_res);
}

const documentNodeQueryGetAccountById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAccountById'),
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
                  name: NameNode(value: 'code'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'name'),
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
                  name: NameNode(value: 'businessDetail'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'paymentTerm'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'financialPaymentMethod'),
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
  ],
);

class Query$GetAccountById$accountById {
  Query$GetAccountById$accountById({
    required this.id,
    required this.code,
    required this.name,
    required this.type,
    this.businessDetail,
    this.$__typename = 'Account',
  });

  factory Query$GetAccountById$accountById.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$businessDetail = json['businessDetail'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountById$accountById(
      id: (l$id as String),
      code: (l$code as String),
      name: (l$name as String),
      type: fromJson$Enum$AccountType((l$type as String)),
      businessDetail: l$businessDetail == null
          ? null
          : Query$GetAccountById$accountById$businessDetail.fromJson(
              (l$businessDetail as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String name;

  final Enum$AccountType type;

  final Query$GetAccountById$accountById$businessDetail? businessDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = toJson$Enum$AccountType(l$type);
    final l$businessDetail = businessDetail;
    _resultData['businessDetail'] = l$businessDetail?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$name = name;
    final l$type = type;
    final l$businessDetail = businessDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$name,
      l$type,
      l$businessDetail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountById$accountById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$businessDetail = businessDetail;
    final lOther$businessDetail = other.businessDetail;
    if (l$businessDetail != lOther$businessDetail) {
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

extension UtilityExtension$Query$GetAccountById$accountById
    on Query$GetAccountById$accountById {
  CopyWith$Query$GetAccountById$accountById<Query$GetAccountById$accountById>
  get copyWith => CopyWith$Query$GetAccountById$accountById(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountById$accountById<TRes> {
  factory CopyWith$Query$GetAccountById$accountById(
    Query$GetAccountById$accountById instance,
    TRes Function(Query$GetAccountById$accountById) then,
  ) = _CopyWithImpl$Query$GetAccountById$accountById;

  factory CopyWith$Query$GetAccountById$accountById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountById$accountById;

  TRes call({
    String? id,
    String? code,
    String? name,
    Enum$AccountType? type,
    Query$GetAccountById$accountById$businessDetail? businessDetail,
    String? $__typename,
  });
  CopyWith$Query$GetAccountById$accountById$businessDetail<TRes>
  get businessDetail;
}

class _CopyWithImpl$Query$GetAccountById$accountById<TRes>
    implements CopyWith$Query$GetAccountById$accountById<TRes> {
  _CopyWithImpl$Query$GetAccountById$accountById(this._instance, this._then);

  final Query$GetAccountById$accountById _instance;

  final TRes Function(Query$GetAccountById$accountById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? businessDetail = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountById$accountById(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$AccountType),
      businessDetail: businessDetail == _undefined
          ? _instance.businessDetail
          : (businessDetail
                as Query$GetAccountById$accountById$businessDetail?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountById$accountById$businessDetail<TRes>
  get businessDetail {
    final local$businessDetail = _instance.businessDetail;
    return local$businessDetail == null
        ? CopyWith$Query$GetAccountById$accountById$businessDetail.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountById$accountById$businessDetail(
            local$businessDetail,
            (e) => call(businessDetail: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccountById$accountById<TRes>
    implements CopyWith$Query$GetAccountById$accountById<TRes> {
  _CopyWithStubImpl$Query$GetAccountById$accountById(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? name,
    Enum$AccountType? type,
    Query$GetAccountById$accountById$businessDetail? businessDetail,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountById$accountById$businessDetail<TRes>
  get businessDetail =>
      CopyWith$Query$GetAccountById$accountById$businessDetail.stub(_res);
}

class Query$GetAccountById$accountById$businessDetail {
  Query$GetAccountById$accountById$businessDetail({
    this.paymentTerm,
    this.$__typename = 'BusinessDetail',
  });

  factory Query$GetAccountById$accountById$businessDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentTerm = json['paymentTerm'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountById$accountById$businessDetail(
      paymentTerm: l$paymentTerm == null
          ? null
          : Query$GetAccountById$accountById$businessDetail$paymentTerm.fromJson(
              (l$paymentTerm as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountById$accountById$businessDetail$paymentTerm?
  paymentTerm;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentTerm = paymentTerm;
    _resultData['paymentTerm'] = l$paymentTerm?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentTerm = paymentTerm;
    final l$$__typename = $__typename;
    return Object.hashAll([l$paymentTerm, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountById$accountById$businessDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentTerm = paymentTerm;
    final lOther$paymentTerm = other.paymentTerm;
    if (l$paymentTerm != lOther$paymentTerm) {
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

extension UtilityExtension$Query$GetAccountById$accountById$businessDetail
    on Query$GetAccountById$accountById$businessDetail {
  CopyWith$Query$GetAccountById$accountById$businessDetail<
    Query$GetAccountById$accountById$businessDetail
  >
  get copyWith =>
      CopyWith$Query$GetAccountById$accountById$businessDetail(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountById$accountById$businessDetail<TRes> {
  factory CopyWith$Query$GetAccountById$accountById$businessDetail(
    Query$GetAccountById$accountById$businessDetail instance,
    TRes Function(Query$GetAccountById$accountById$businessDetail) then,
  ) = _CopyWithImpl$Query$GetAccountById$accountById$businessDetail;

  factory CopyWith$Query$GetAccountById$accountById$businessDetail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountById$accountById$businessDetail;

  TRes call({
    Query$GetAccountById$accountById$businessDetail$paymentTerm? paymentTerm,
    String? $__typename,
  });
  CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm<TRes>
  get paymentTerm;
}

class _CopyWithImpl$Query$GetAccountById$accountById$businessDetail<TRes>
    implements CopyWith$Query$GetAccountById$accountById$businessDetail<TRes> {
  _CopyWithImpl$Query$GetAccountById$accountById$businessDetail(
    this._instance,
    this._then,
  );

  final Query$GetAccountById$accountById$businessDetail _instance;

  final TRes Function(Query$GetAccountById$accountById$businessDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentTerm = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountById$accountById$businessDetail(
      paymentTerm: paymentTerm == _undefined
          ? _instance.paymentTerm
          : (paymentTerm
                as Query$GetAccountById$accountById$businessDetail$paymentTerm?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm<TRes>
  get paymentTerm {
    final local$paymentTerm = _instance.paymentTerm;
    return local$paymentTerm == null
        ? CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm(
            local$paymentTerm,
            (e) => call(paymentTerm: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccountById$accountById$businessDetail<TRes>
    implements CopyWith$Query$GetAccountById$accountById$businessDetail<TRes> {
  _CopyWithStubImpl$Query$GetAccountById$accountById$businessDetail(this._res);

  TRes _res;

  call({
    Query$GetAccountById$accountById$businessDetail$paymentTerm? paymentTerm,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm<TRes>
  get paymentTerm =>
      CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm.stub(
        _res,
      );
}

class Query$GetAccountById$accountById$businessDetail$paymentTerm {
  Query$GetAccountById$accountById$businessDetail$paymentTerm({
    required this.financialPaymentMethod,
    this.$__typename = 'PaymentTerm',
  });

  factory Query$GetAccountById$accountById$businessDetail$paymentTerm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$financialPaymentMethod = json['financialPaymentMethod'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountById$accountById$businessDetail$paymentTerm(
      financialPaymentMethod: (l$financialPaymentMethod as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String financialPaymentMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$financialPaymentMethod = financialPaymentMethod;
    _resultData['financialPaymentMethod'] = l$financialPaymentMethod;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$financialPaymentMethod = financialPaymentMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$financialPaymentMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountById$accountById$businessDetail$paymentTerm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$financialPaymentMethod = financialPaymentMethod;
    final lOther$financialPaymentMethod = other.financialPaymentMethod;
    if (l$financialPaymentMethod != lOther$financialPaymentMethod) {
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

extension UtilityExtension$Query$GetAccountById$accountById$businessDetail$paymentTerm
    on Query$GetAccountById$accountById$businessDetail$paymentTerm {
  CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm<
    Query$GetAccountById$accountById$businessDetail$paymentTerm
  >
  get copyWith =>
      CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm<
  TRes
> {
  factory CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm(
    Query$GetAccountById$accountById$businessDetail$paymentTerm instance,
    TRes Function(Query$GetAccountById$accountById$businessDetail$paymentTerm)
    then,
  ) = _CopyWithImpl$Query$GetAccountById$accountById$businessDetail$paymentTerm;

  factory CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountById$accountById$businessDetail$paymentTerm;

  TRes call({String? financialPaymentMethod, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountById$accountById$businessDetail$paymentTerm<
  TRes
>
    implements
        CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountById$accountById$businessDetail$paymentTerm(
    this._instance,
    this._then,
  );

  final Query$GetAccountById$accountById$businessDetail$paymentTerm _instance;

  final TRes Function(
    Query$GetAccountById$accountById$businessDetail$paymentTerm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? financialPaymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountById$accountById$businessDetail$paymentTerm(
      financialPaymentMethod:
          financialPaymentMethod == _undefined || financialPaymentMethod == null
          ? _instance.financialPaymentMethod
          : (financialPaymentMethod as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountById$accountById$businessDetail$paymentTerm<
  TRes
>
    implements
        CopyWith$Query$GetAccountById$accountById$businessDetail$paymentTerm<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountById$accountById$businessDetail$paymentTerm(
    this._res,
  );

  TRes _res;

  call({String? financialPaymentMethod, String? $__typename}) => _res;
}
