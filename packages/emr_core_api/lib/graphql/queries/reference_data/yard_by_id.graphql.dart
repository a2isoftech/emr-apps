import '../../fragments/payments/payment_methods.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetYardById {
  factory Variables$Query$GetYardById({required String id}) =>
      Variables$Query$GetYardById._({r'id': id});

  Variables$Query$GetYardById._(this._$data);

  factory Variables$Query$GetYardById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetYardById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetYardById<Variables$Query$GetYardById>
  get copyWith => CopyWith$Variables$Query$GetYardById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetYardById ||
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

abstract class CopyWith$Variables$Query$GetYardById<TRes> {
  factory CopyWith$Variables$Query$GetYardById(
    Variables$Query$GetYardById instance,
    TRes Function(Variables$Query$GetYardById) then,
  ) = _CopyWithImpl$Variables$Query$GetYardById;

  factory CopyWith$Variables$Query$GetYardById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetYardById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetYardById<TRes>
    implements CopyWith$Variables$Query$GetYardById<TRes> {
  _CopyWithImpl$Variables$Query$GetYardById(this._instance, this._then);

  final Variables$Query$GetYardById _instance;

  final TRes Function(Variables$Query$GetYardById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetYardById._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetYardById<TRes>
    implements CopyWith$Variables$Query$GetYardById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetYardById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetYardById {
  Query$GetYardById({required this.yard, this.$__typename = 'Query'});

  factory Query$GetYardById.fromJson(Map<String, dynamic> json) {
    final l$yard = json['yard'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById(
      yard: Query$GetYardById$yard.fromJson((l$yard as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetYardById$yard yard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yard = yard;
    _resultData['yard'] = l$yard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yard = yard;
    final l$$__typename = $__typename;
    return Object.hashAll([l$yard, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (l$yard != lOther$yard) {
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

extension UtilityExtension$Query$GetYardById on Query$GetYardById {
  CopyWith$Query$GetYardById<Query$GetYardById> get copyWith =>
      CopyWith$Query$GetYardById(this, (i) => i);
}

abstract class CopyWith$Query$GetYardById<TRes> {
  factory CopyWith$Query$GetYardById(
    Query$GetYardById instance,
    TRes Function(Query$GetYardById) then,
  ) = _CopyWithImpl$Query$GetYardById;

  factory CopyWith$Query$GetYardById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardById;

  TRes call({Query$GetYardById$yard? yard, String? $__typename});
  CopyWith$Query$GetYardById$yard<TRes> get yard;
}

class _CopyWithImpl$Query$GetYardById<TRes>
    implements CopyWith$Query$GetYardById<TRes> {
  _CopyWithImpl$Query$GetYardById(this._instance, this._then);

  final Query$GetYardById _instance;

  final TRes Function(Query$GetYardById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? yard = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetYardById(
          yard: yard == _undefined || yard == null
              ? _instance.yard
              : (yard as Query$GetYardById$yard),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetYardById$yard<TRes> get yard {
    final local$yard = _instance.yard;
    return CopyWith$Query$GetYardById$yard(local$yard, (e) => call(yard: e));
  }
}

class _CopyWithStubImpl$Query$GetYardById<TRes>
    implements CopyWith$Query$GetYardById<TRes> {
  _CopyWithStubImpl$Query$GetYardById(this._res);

  TRes _res;

  call({Query$GetYardById$yard? yard, String? $__typename}) => _res;

  CopyWith$Query$GetYardById$yard<TRes> get yard =>
      CopyWith$Query$GetYardById$yard.stub(_res);
}

const documentNodeQueryGetYardById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetYardById'),
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
            name: NameNode(value: 'yard'),
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
                  name: NameNode(value: 'id'),
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
                  name: NameNode(value: 'yardCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'defaultPaymentMethod'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'PaymentMethodFields'),
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
    fragmentDefinitionPaymentMethodFields,
  ],
);

class Query$GetYardById$yard implements Fragment$PaymentMethodFields {
  Query$GetYardById$yard({
    required this.id,
    required this.name,
    required this.yardCode,
    required this.defaultPaymentMethod,
    required this.paymentMethods,
    this.$__typename = 'Yard',
  });

  factory Query$GetYardById$yard.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$defaultPaymentMethod = json['defaultPaymentMethod'];
    final l$paymentMethods = json['paymentMethods'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard(
      id: (l$id as String),
      name: (l$name as String),
      yardCode: (l$yardCode as String),
      defaultPaymentMethod: fromJson$Enum$PaymentMethod(
        (l$defaultPaymentMethod as String),
      ),
      paymentMethods: Query$GetYardById$yard$paymentMethods.fromJson(
        (l$paymentMethods as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String yardCode;

  final Enum$PaymentMethod defaultPaymentMethod;

  final Query$GetYardById$yard$paymentMethods paymentMethods;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$defaultPaymentMethod = defaultPaymentMethod;
    _resultData['defaultPaymentMethod'] = toJson$Enum$PaymentMethod(
      l$defaultPaymentMethod,
    );
    final l$paymentMethods = paymentMethods;
    _resultData['paymentMethods'] = l$paymentMethods.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$defaultPaymentMethod = defaultPaymentMethod;
    final l$paymentMethods = paymentMethods;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$yardCode,
      l$defaultPaymentMethod,
      l$paymentMethods,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$defaultPaymentMethod = defaultPaymentMethod;
    final lOther$defaultPaymentMethod = other.defaultPaymentMethod;
    if (l$defaultPaymentMethod != lOther$defaultPaymentMethod) {
      return false;
    }
    final l$paymentMethods = paymentMethods;
    final lOther$paymentMethods = other.paymentMethods;
    if (l$paymentMethods != lOther$paymentMethods) {
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

extension UtilityExtension$Query$GetYardById$yard on Query$GetYardById$yard {
  CopyWith$Query$GetYardById$yard<Query$GetYardById$yard> get copyWith =>
      CopyWith$Query$GetYardById$yard(this, (i) => i);
}

abstract class CopyWith$Query$GetYardById$yard<TRes> {
  factory CopyWith$Query$GetYardById$yard(
    Query$GetYardById$yard instance,
    TRes Function(Query$GetYardById$yard) then,
  ) = _CopyWithImpl$Query$GetYardById$yard;

  factory CopyWith$Query$GetYardById$yard.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardById$yard;

  TRes call({
    String? id,
    String? name,
    String? yardCode,
    Enum$PaymentMethod? defaultPaymentMethod,
    Query$GetYardById$yard$paymentMethods? paymentMethods,
    String? $__typename,
  });
  CopyWith$Query$GetYardById$yard$paymentMethods<TRes> get paymentMethods;
}

class _CopyWithImpl$Query$GetYardById$yard<TRes>
    implements CopyWith$Query$GetYardById$yard<TRes> {
  _CopyWithImpl$Query$GetYardById$yard(this._instance, this._then);

  final Query$GetYardById$yard _instance;

  final TRes Function(Query$GetYardById$yard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? defaultPaymentMethod = _undefined,
    Object? paymentMethods = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      defaultPaymentMethod:
          defaultPaymentMethod == _undefined || defaultPaymentMethod == null
          ? _instance.defaultPaymentMethod
          : (defaultPaymentMethod as Enum$PaymentMethod),
      paymentMethods: paymentMethods == _undefined || paymentMethods == null
          ? _instance.paymentMethods
          : (paymentMethods as Query$GetYardById$yard$paymentMethods),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetYardById$yard$paymentMethods<TRes> get paymentMethods {
    final local$paymentMethods = _instance.paymentMethods;
    return CopyWith$Query$GetYardById$yard$paymentMethods(
      local$paymentMethods,
      (e) => call(paymentMethods: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetYardById$yard<TRes>
    implements CopyWith$Query$GetYardById$yard<TRes> {
  _CopyWithStubImpl$Query$GetYardById$yard(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? yardCode,
    Enum$PaymentMethod? defaultPaymentMethod,
    Query$GetYardById$yard$paymentMethods? paymentMethods,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetYardById$yard$paymentMethods<TRes> get paymentMethods =>
      CopyWith$Query$GetYardById$yard$paymentMethods.stub(_res);
}

class Query$GetYardById$yard$paymentMethods
    implements Fragment$PaymentMethodFields$paymentMethods {
  Query$GetYardById$yard$paymentMethods({
    required this.atm,
    required this.manualCheque,
    required this.autoCheque,
    required this.fasterpay,
    required this.overnightFasterpay,
    required this.cash,
    required this.autoChequeWithEncashmentCash,
    required this.autoChequeWithEncashmentAtm,
    required this.secorePrepaid,
    required this.digitalWalletWithAtm,
    required this.digitalWalletWithCash,
    required this.splitPayment,
    this.$__typename = 'PaymentMethods',
  });

  factory Query$GetYardById$yard$paymentMethods.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$atm = json['atm'];
    final l$manualCheque = json['manualCheque'];
    final l$autoCheque = json['autoCheque'];
    final l$fasterpay = json['fasterpay'];
    final l$overnightFasterpay = json['overnightFasterpay'];
    final l$cash = json['cash'];
    final l$autoChequeWithEncashmentCash = json['autoChequeWithEncashmentCash'];
    final l$autoChequeWithEncashmentAtm = json['autoChequeWithEncashmentAtm'];
    final l$secorePrepaid = json['secorePrepaid'];
    final l$digitalWalletWithAtm = json['digitalWalletWithAtm'];
    final l$digitalWalletWithCash = json['digitalWalletWithCash'];
    final l$splitPayment = json['splitPayment'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods(
      atm: Query$GetYardById$yard$paymentMethods$atm.fromJson(
        (l$atm as Map<String, dynamic>),
      ),
      manualCheque: Query$GetYardById$yard$paymentMethods$manualCheque.fromJson(
        (l$manualCheque as Map<String, dynamic>),
      ),
      autoCheque: Query$GetYardById$yard$paymentMethods$autoCheque.fromJson(
        (l$autoCheque as Map<String, dynamic>),
      ),
      fasterpay: Query$GetYardById$yard$paymentMethods$fasterpay.fromJson(
        (l$fasterpay as Map<String, dynamic>),
      ),
      overnightFasterpay:
          Query$GetYardById$yard$paymentMethods$overnightFasterpay.fromJson(
            (l$overnightFasterpay as Map<String, dynamic>),
          ),
      cash: Query$GetYardById$yard$paymentMethods$cash.fromJson(
        (l$cash as Map<String, dynamic>),
      ),
      autoChequeWithEncashmentCash:
          Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash.fromJson(
            (l$autoChequeWithEncashmentCash as Map<String, dynamic>),
          ),
      autoChequeWithEncashmentAtm:
          Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm.fromJson(
            (l$autoChequeWithEncashmentAtm as Map<String, dynamic>),
          ),
      secorePrepaid:
          Query$GetYardById$yard$paymentMethods$secorePrepaid.fromJson(
            (l$secorePrepaid as Map<String, dynamic>),
          ),
      digitalWalletWithAtm:
          Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm.fromJson(
            (l$digitalWalletWithAtm as Map<String, dynamic>),
          ),
      digitalWalletWithCash:
          Query$GetYardById$yard$paymentMethods$digitalWalletWithCash.fromJson(
            (l$digitalWalletWithCash as Map<String, dynamic>),
          ),
      splitPayment: Query$GetYardById$yard$paymentMethods$splitPayment.fromJson(
        (l$splitPayment as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetYardById$yard$paymentMethods$atm atm;

  final Query$GetYardById$yard$paymentMethods$manualCheque manualCheque;

  final Query$GetYardById$yard$paymentMethods$autoCheque autoCheque;

  final Query$GetYardById$yard$paymentMethods$fasterpay fasterpay;

  final Query$GetYardById$yard$paymentMethods$overnightFasterpay
  overnightFasterpay;

  final Query$GetYardById$yard$paymentMethods$cash cash;

  final Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash
  autoChequeWithEncashmentCash;

  final Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm
  autoChequeWithEncashmentAtm;

  final Query$GetYardById$yard$paymentMethods$secorePrepaid secorePrepaid;

  final Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm
  digitalWalletWithAtm;

  final Query$GetYardById$yard$paymentMethods$digitalWalletWithCash
  digitalWalletWithCash;

  final Query$GetYardById$yard$paymentMethods$splitPayment splitPayment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$atm = atm;
    _resultData['atm'] = l$atm.toJson();
    final l$manualCheque = manualCheque;
    _resultData['manualCheque'] = l$manualCheque.toJson();
    final l$autoCheque = autoCheque;
    _resultData['autoCheque'] = l$autoCheque.toJson();
    final l$fasterpay = fasterpay;
    _resultData['fasterpay'] = l$fasterpay.toJson();
    final l$overnightFasterpay = overnightFasterpay;
    _resultData['overnightFasterpay'] = l$overnightFasterpay.toJson();
    final l$cash = cash;
    _resultData['cash'] = l$cash.toJson();
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    _resultData['autoChequeWithEncashmentCash'] = l$autoChequeWithEncashmentCash
        .toJson();
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    _resultData['autoChequeWithEncashmentAtm'] = l$autoChequeWithEncashmentAtm
        .toJson();
    final l$secorePrepaid = secorePrepaid;
    _resultData['secorePrepaid'] = l$secorePrepaid.toJson();
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    _resultData['digitalWalletWithAtm'] = l$digitalWalletWithAtm.toJson();
    final l$digitalWalletWithCash = digitalWalletWithCash;
    _resultData['digitalWalletWithCash'] = l$digitalWalletWithCash.toJson();
    final l$splitPayment = splitPayment;
    _resultData['splitPayment'] = l$splitPayment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$atm = atm;
    final l$manualCheque = manualCheque;
    final l$autoCheque = autoCheque;
    final l$fasterpay = fasterpay;
    final l$overnightFasterpay = overnightFasterpay;
    final l$cash = cash;
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    final l$secorePrepaid = secorePrepaid;
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    final l$digitalWalletWithCash = digitalWalletWithCash;
    final l$splitPayment = splitPayment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$atm,
      l$manualCheque,
      l$autoCheque,
      l$fasterpay,
      l$overnightFasterpay,
      l$cash,
      l$autoChequeWithEncashmentCash,
      l$autoChequeWithEncashmentAtm,
      l$secorePrepaid,
      l$digitalWalletWithAtm,
      l$digitalWalletWithCash,
      l$splitPayment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$atm = atm;
    final lOther$atm = other.atm;
    if (l$atm != lOther$atm) {
      return false;
    }
    final l$manualCheque = manualCheque;
    final lOther$manualCheque = other.manualCheque;
    if (l$manualCheque != lOther$manualCheque) {
      return false;
    }
    final l$autoCheque = autoCheque;
    final lOther$autoCheque = other.autoCheque;
    if (l$autoCheque != lOther$autoCheque) {
      return false;
    }
    final l$fasterpay = fasterpay;
    final lOther$fasterpay = other.fasterpay;
    if (l$fasterpay != lOther$fasterpay) {
      return false;
    }
    final l$overnightFasterpay = overnightFasterpay;
    final lOther$overnightFasterpay = other.overnightFasterpay;
    if (l$overnightFasterpay != lOther$overnightFasterpay) {
      return false;
    }
    final l$cash = cash;
    final lOther$cash = other.cash;
    if (l$cash != lOther$cash) {
      return false;
    }
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    final lOther$autoChequeWithEncashmentCash =
        other.autoChequeWithEncashmentCash;
    if (l$autoChequeWithEncashmentCash != lOther$autoChequeWithEncashmentCash) {
      return false;
    }
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    final lOther$autoChequeWithEncashmentAtm =
        other.autoChequeWithEncashmentAtm;
    if (l$autoChequeWithEncashmentAtm != lOther$autoChequeWithEncashmentAtm) {
      return false;
    }
    final l$secorePrepaid = secorePrepaid;
    final lOther$secorePrepaid = other.secorePrepaid;
    if (l$secorePrepaid != lOther$secorePrepaid) {
      return false;
    }
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    final lOther$digitalWalletWithAtm = other.digitalWalletWithAtm;
    if (l$digitalWalletWithAtm != lOther$digitalWalletWithAtm) {
      return false;
    }
    final l$digitalWalletWithCash = digitalWalletWithCash;
    final lOther$digitalWalletWithCash = other.digitalWalletWithCash;
    if (l$digitalWalletWithCash != lOther$digitalWalletWithCash) {
      return false;
    }
    final l$splitPayment = splitPayment;
    final lOther$splitPayment = other.splitPayment;
    if (l$splitPayment != lOther$splitPayment) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods
    on Query$GetYardById$yard$paymentMethods {
  CopyWith$Query$GetYardById$yard$paymentMethods<
    Query$GetYardById$yard$paymentMethods
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods(this, (i) => i);
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods<TRes> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods(
    Query$GetYardById$yard$paymentMethods instance,
    TRes Function(Query$GetYardById$yard$paymentMethods) then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods;

  factory CopyWith$Query$GetYardById$yard$paymentMethods.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods;

  TRes call({
    Query$GetYardById$yard$paymentMethods$atm? atm,
    Query$GetYardById$yard$paymentMethods$manualCheque? manualCheque,
    Query$GetYardById$yard$paymentMethods$autoCheque? autoCheque,
    Query$GetYardById$yard$paymentMethods$fasterpay? fasterpay,
    Query$GetYardById$yard$paymentMethods$overnightFasterpay?
    overnightFasterpay,
    Query$GetYardById$yard$paymentMethods$cash? cash,
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash?
    autoChequeWithEncashmentCash,
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm?
    autoChequeWithEncashmentAtm,
    Query$GetYardById$yard$paymentMethods$secorePrepaid? secorePrepaid,
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm?
    digitalWalletWithAtm,
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash?
    digitalWalletWithCash,
    Query$GetYardById$yard$paymentMethods$splitPayment? splitPayment,
    String? $__typename,
  });
  CopyWith$Query$GetYardById$yard$paymentMethods$atm<TRes> get atm;
  CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque<TRes>
  get manualCheque;
  CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque<TRes>
  get autoCheque;
  CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay<TRes> get fasterpay;
  CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay<TRes>
  get overnightFasterpay;
  CopyWith$Query$GetYardById$yard$paymentMethods$cash<TRes> get cash;
  CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash;
  CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm;
  CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid<TRes>
  get secorePrepaid;
  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm<TRes>
  get digitalWalletWithAtm;
  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash<TRes>
  get digitalWalletWithCash;
  CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment<TRes>
  get splitPayment;
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods<TRes>
    implements CopyWith$Query$GetYardById$yard$paymentMethods<TRes> {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods _instance;

  final TRes Function(Query$GetYardById$yard$paymentMethods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? atm = _undefined,
    Object? manualCheque = _undefined,
    Object? autoCheque = _undefined,
    Object? fasterpay = _undefined,
    Object? overnightFasterpay = _undefined,
    Object? cash = _undefined,
    Object? autoChequeWithEncashmentCash = _undefined,
    Object? autoChequeWithEncashmentAtm = _undefined,
    Object? secorePrepaid = _undefined,
    Object? digitalWalletWithAtm = _undefined,
    Object? digitalWalletWithCash = _undefined,
    Object? splitPayment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods(
      atm: atm == _undefined || atm == null
          ? _instance.atm
          : (atm as Query$GetYardById$yard$paymentMethods$atm),
      manualCheque: manualCheque == _undefined || manualCheque == null
          ? _instance.manualCheque
          : (manualCheque
                as Query$GetYardById$yard$paymentMethods$manualCheque),
      autoCheque: autoCheque == _undefined || autoCheque == null
          ? _instance.autoCheque
          : (autoCheque as Query$GetYardById$yard$paymentMethods$autoCheque),
      fasterpay: fasterpay == _undefined || fasterpay == null
          ? _instance.fasterpay
          : (fasterpay as Query$GetYardById$yard$paymentMethods$fasterpay),
      overnightFasterpay:
          overnightFasterpay == _undefined || overnightFasterpay == null
          ? _instance.overnightFasterpay
          : (overnightFasterpay
                as Query$GetYardById$yard$paymentMethods$overnightFasterpay),
      cash: cash == _undefined || cash == null
          ? _instance.cash
          : (cash as Query$GetYardById$yard$paymentMethods$cash),
      autoChequeWithEncashmentCash:
          autoChequeWithEncashmentCash == _undefined ||
              autoChequeWithEncashmentCash == null
          ? _instance.autoChequeWithEncashmentCash
          : (autoChequeWithEncashmentCash
                as Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash),
      autoChequeWithEncashmentAtm:
          autoChequeWithEncashmentAtm == _undefined ||
              autoChequeWithEncashmentAtm == null
          ? _instance.autoChequeWithEncashmentAtm
          : (autoChequeWithEncashmentAtm
                as Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm),
      secorePrepaid: secorePrepaid == _undefined || secorePrepaid == null
          ? _instance.secorePrepaid
          : (secorePrepaid
                as Query$GetYardById$yard$paymentMethods$secorePrepaid),
      digitalWalletWithAtm:
          digitalWalletWithAtm == _undefined || digitalWalletWithAtm == null
          ? _instance.digitalWalletWithAtm
          : (digitalWalletWithAtm
                as Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm),
      digitalWalletWithCash:
          digitalWalletWithCash == _undefined || digitalWalletWithCash == null
          ? _instance.digitalWalletWithCash
          : (digitalWalletWithCash
                as Query$GetYardById$yard$paymentMethods$digitalWalletWithCash),
      splitPayment: splitPayment == _undefined || splitPayment == null
          ? _instance.splitPayment
          : (splitPayment
                as Query$GetYardById$yard$paymentMethods$splitPayment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetYardById$yard$paymentMethods$atm<TRes> get atm {
    final local$atm = _instance.atm;
    return CopyWith$Query$GetYardById$yard$paymentMethods$atm(
      local$atm,
      (e) => call(atm: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque<TRes>
  get manualCheque {
    final local$manualCheque = _instance.manualCheque;
    return CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque(
      local$manualCheque,
      (e) => call(manualCheque: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque<TRes>
  get autoCheque {
    final local$autoCheque = _instance.autoCheque;
    return CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque(
      local$autoCheque,
      (e) => call(autoCheque: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay<TRes> get fasterpay {
    final local$fasterpay = _instance.fasterpay;
    return CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay(
      local$fasterpay,
      (e) => call(fasterpay: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay<TRes>
  get overnightFasterpay {
    final local$overnightFasterpay = _instance.overnightFasterpay;
    return CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay(
      local$overnightFasterpay,
      (e) => call(overnightFasterpay: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$cash<TRes> get cash {
    final local$cash = _instance.cash;
    return CopyWith$Query$GetYardById$yard$paymentMethods$cash(
      local$cash,
      (e) => call(cash: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash {
    final local$autoChequeWithEncashmentCash =
        _instance.autoChequeWithEncashmentCash;
    return CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash(
      local$autoChequeWithEncashmentCash,
      (e) => call(autoChequeWithEncashmentCash: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm {
    final local$autoChequeWithEncashmentAtm =
        _instance.autoChequeWithEncashmentAtm;
    return CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm(
      local$autoChequeWithEncashmentAtm,
      (e) => call(autoChequeWithEncashmentAtm: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid<TRes>
  get secorePrepaid {
    final local$secorePrepaid = _instance.secorePrepaid;
    return CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid(
      local$secorePrepaid,
      (e) => call(secorePrepaid: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm<TRes>
  get digitalWalletWithAtm {
    final local$digitalWalletWithAtm = _instance.digitalWalletWithAtm;
    return CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm(
      local$digitalWalletWithAtm,
      (e) => call(digitalWalletWithAtm: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash<TRes>
  get digitalWalletWithCash {
    final local$digitalWalletWithCash = _instance.digitalWalletWithCash;
    return CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash(
      local$digitalWalletWithCash,
      (e) => call(digitalWalletWithCash: e),
    );
  }

  CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment<TRes>
  get splitPayment {
    final local$splitPayment = _instance.splitPayment;
    return CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment(
      local$splitPayment,
      (e) => call(splitPayment: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods<TRes>
    implements CopyWith$Query$GetYardById$yard$paymentMethods<TRes> {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods(this._res);

  TRes _res;

  call({
    Query$GetYardById$yard$paymentMethods$atm? atm,
    Query$GetYardById$yard$paymentMethods$manualCheque? manualCheque,
    Query$GetYardById$yard$paymentMethods$autoCheque? autoCheque,
    Query$GetYardById$yard$paymentMethods$fasterpay? fasterpay,
    Query$GetYardById$yard$paymentMethods$overnightFasterpay?
    overnightFasterpay,
    Query$GetYardById$yard$paymentMethods$cash? cash,
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash?
    autoChequeWithEncashmentCash,
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm?
    autoChequeWithEncashmentAtm,
    Query$GetYardById$yard$paymentMethods$secorePrepaid? secorePrepaid,
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm?
    digitalWalletWithAtm,
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash?
    digitalWalletWithCash,
    Query$GetYardById$yard$paymentMethods$splitPayment? splitPayment,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetYardById$yard$paymentMethods$atm<TRes> get atm =>
      CopyWith$Query$GetYardById$yard$paymentMethods$atm.stub(_res);

  CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque<TRes>
  get manualCheque =>
      CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque.stub(_res);

  CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque<TRes>
  get autoCheque =>
      CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque.stub(_res);

  CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay<TRes>
  get fasterpay =>
      CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay.stub(_res);

  CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay<TRes>
  get overnightFasterpay =>
      CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay.stub(
        _res,
      );

  CopyWith$Query$GetYardById$yard$paymentMethods$cash<TRes> get cash =>
      CopyWith$Query$GetYardById$yard$paymentMethods$cash.stub(_res);

  CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash =>
      CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash.stub(
        _res,
      );

  CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm =>
      CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm.stub(
        _res,
      );

  CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid<TRes>
  get secorePrepaid =>
      CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid.stub(_res);

  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm<TRes>
  get digitalWalletWithAtm =>
      CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm.stub(
        _res,
      );

  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash<TRes>
  get digitalWalletWithCash =>
      CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash.stub(
        _res,
      );

  CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment<TRes>
  get splitPayment =>
      CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment.stub(_res);
}

class Query$GetYardById$yard$paymentMethods$atm
    implements Fragment$PaymentMethodFields$paymentMethods$atm {
  Query$GetYardById$yard$paymentMethods$atm({
    required this.rounding,
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'AtmPaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$atm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$rounding = json['rounding'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$atm(
      rounding: Query$GetYardById$yard$paymentMethods$atm$rounding.fromJson(
        (l$rounding as Map<String, dynamic>),
      ),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetYardById$yard$paymentMethods$atm$rounding rounding;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rounding = rounding;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rounding,
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$atm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$atm
    on Query$GetYardById$yard$paymentMethods$atm {
  CopyWith$Query$GetYardById$yard$paymentMethods$atm<
    Query$GetYardById$yard$paymentMethods$atm
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$atm(this, (i) => i);
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$atm<TRes> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$atm(
    Query$GetYardById$yard$paymentMethods$atm instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$atm) then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$atm;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$atm.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$atm;

  TRes call({
    Query$GetYardById$yard$paymentMethods$atm$rounding? rounding,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding<TRes>
  get rounding;
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$atm<TRes>
    implements CopyWith$Query$GetYardById$yard$paymentMethods$atm<TRes> {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$atm(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$atm _instance;

  final TRes Function(Query$GetYardById$yard$paymentMethods$atm) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rounding = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$atm(
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding as Query$GetYardById$yard$paymentMethods$atm$rounding),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding<TRes>
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$atm<TRes>
    implements CopyWith$Query$GetYardById$yard$paymentMethods$atm<TRes> {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$atm(this._res);

  TRes _res;

  call({
    Query$GetYardById$yard$paymentMethods$atm$rounding? rounding,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding<TRes>
  get rounding =>
      CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding.stub(_res);
}

class Query$GetYardById$yard$paymentMethods$atm$rounding
    implements Fragment$PaymentMethodFields$paymentMethods$atm$rounding {
  Query$GetYardById$yard$paymentMethods$atm$rounding({
    required this.value,
    required this.roundingType,
    this.$__typename = 'Rounding',
  });

  factory Query$GetYardById$yard$paymentMethods$atm$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$roundingType = json['roundingType'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$atm$rounding(
      value: (l$value as num).toDouble(),
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$RoundingType roundingType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$roundingType = roundingType;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$roundingType, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$atm$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$atm$rounding
    on Query$GetYardById$yard$paymentMethods$atm$rounding {
  CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding<
    Query$GetYardById$yard$paymentMethods$atm$rounding
  >
  get copyWith => CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding(
    Query$GetYardById$yard$paymentMethods$atm$rounding instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$atm$rounding) then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$atm$rounding;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$atm$rounding;

  TRes call({
    double? value,
    Enum$RoundingType? roundingType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$atm$rounding<TRes>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding<TRes> {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$atm$rounding(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$atm$rounding _instance;

  final TRes Function(Query$GetYardById$yard$paymentMethods$atm$rounding) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? roundingType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$atm$rounding(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$atm$rounding<TRes>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$atm$rounding<TRes> {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$atm$rounding(
    this._res,
  );

  TRes _res;

  call({double? value, Enum$RoundingType? roundingType, String? $__typename}) =>
      _res;
}

class Query$GetYardById$yard$paymentMethods$manualCheque
    implements Fragment$PaymentMethodFields$paymentMethods$manualCheque {
  Query$GetYardById$yard$paymentMethods$manualCheque({
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'ManualChequePaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$manualCheque.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$manualCheque(
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$manualCheque ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$manualCheque
    on Query$GetYardById$yard$paymentMethods$manualCheque {
  CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque<
    Query$GetYardById$yard$paymentMethods$manualCheque
  >
  get copyWith => CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque(
    Query$GetYardById$yard$paymentMethods$manualCheque instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$manualCheque) then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$manualCheque;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$manualCheque;

  TRes call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$manualCheque<TRes>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque<TRes> {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$manualCheque(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$manualCheque _instance;

  final TRes Function(Query$GetYardById$yard$paymentMethods$manualCheque) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$manualCheque(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$manualCheque<TRes>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$manualCheque<TRes> {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$manualCheque(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$GetYardById$yard$paymentMethods$autoCheque
    implements Fragment$PaymentMethodFields$paymentMethods$autoCheque {
  Query$GetYardById$yard$paymentMethods$autoCheque({
    required this.enforceIdentification,
    required this.enabled,
    required this.paymentMethod,
    required this.logoPath,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequePaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$autoCheque.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enforceIdentification = json['enforceIdentification'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$logoPath = json['logoPath'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$autoCheque(
      enforceIdentification: (l$enforceIdentification as bool),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      logoPath: (l$logoPath as String),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enforceIdentification;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final String logoPath;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enforceIdentification = enforceIdentification;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$logoPath = logoPath;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enforceIdentification,
      l$enabled,
      l$paymentMethod,
      l$logoPath,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$autoCheque ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$autoCheque
    on Query$GetYardById$yard$paymentMethods$autoCheque {
  CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque<
    Query$GetYardById$yard$paymentMethods$autoCheque
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque(this, (i) => i);
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque<TRes> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque(
    Query$GetYardById$yard$paymentMethods$autoCheque instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$autoCheque) then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$autoCheque;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$autoCheque;

  TRes call({
    bool? enforceIdentification,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    String? logoPath,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$autoCheque<TRes>
    implements CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque<TRes> {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$autoCheque(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$autoCheque _instance;

  final TRes Function(Query$GetYardById$yard$paymentMethods$autoCheque) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enforceIdentification = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? logoPath = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$autoCheque(
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$autoCheque<TRes>
    implements CopyWith$Query$GetYardById$yard$paymentMethods$autoCheque<TRes> {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$autoCheque(this._res);

  TRes _res;

  call({
    bool? enforceIdentification,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    String? logoPath,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$GetYardById$yard$paymentMethods$fasterpay
    implements Fragment$PaymentMethodFields$paymentMethods$fasterpay {
  Query$GetYardById$yard$paymentMethods$fasterpay({
    required this.flatFeeValue,
    required this.paymentMethod,
    required this.enabled,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'FasterpayPaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$fasterpay.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$flatFeeValue = json['flatFeeValue'];
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$fasterpay(
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double flatFeeValue;

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$flatFeeValue = flatFeeValue;
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$flatFeeValue,
      l$paymentMethod,
      l$enabled,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$fasterpay ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$fasterpay
    on Query$GetYardById$yard$paymentMethods$fasterpay {
  CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay<
    Query$GetYardById$yard$paymentMethods$fasterpay
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay(this, (i) => i);
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay<TRes> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay(
    Query$GetYardById$yard$paymentMethods$fasterpay instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$fasterpay) then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$fasterpay;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$fasterpay;

  TRes call({
    double? flatFeeValue,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$fasterpay<TRes>
    implements CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay<TRes> {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$fasterpay(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$fasterpay _instance;

  final TRes Function(Query$GetYardById$yard$paymentMethods$fasterpay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? flatFeeValue = _undefined,
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$fasterpay(
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$fasterpay<TRes>
    implements CopyWith$Query$GetYardById$yard$paymentMethods$fasterpay<TRes> {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$fasterpay(this._res);

  TRes _res;

  call({
    double? flatFeeValue,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$GetYardById$yard$paymentMethods$overnightFasterpay
    implements Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay {
  Query$GetYardById$yard$paymentMethods$overnightFasterpay({
    required this.paymentMethod,
    required this.enabled,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'OvernightFasterpayPaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$overnightFasterpay.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$overnightFasterpay(
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentMethod,
      l$enabled,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$overnightFasterpay ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$overnightFasterpay
    on Query$GetYardById$yard$paymentMethods$overnightFasterpay {
  CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay<
    Query$GetYardById$yard$paymentMethods$overnightFasterpay
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay(
    Query$GetYardById$yard$paymentMethods$overnightFasterpay instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$overnightFasterpay)
    then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$overnightFasterpay;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$overnightFasterpay;

  TRes call({
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$overnightFasterpay<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay<
          TRes
        > {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$overnightFasterpay(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$overnightFasterpay _instance;

  final TRes Function(Query$GetYardById$yard$paymentMethods$overnightFasterpay)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$overnightFasterpay(
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$overnightFasterpay<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$overnightFasterpay<
          TRes
        > {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$overnightFasterpay(
    this._res,
  );

  TRes _res;

  call({
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$GetYardById$yard$paymentMethods$cash
    implements Fragment$PaymentMethodFields$paymentMethods$cash {
  Query$GetYardById$yard$paymentMethods$cash({
    required this.numberOfRemittancesToPrint,
    required this.paymentMethod,
    required this.enabled,
    required this.maxUpperLimit,
    this.$__typename = 'CashPaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$cash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$numberOfRemittancesToPrint = json['numberOfRemittancesToPrint'];
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$cash(
      numberOfRemittancesToPrint: (l$numberOfRemittancesToPrint as int),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int numberOfRemittancesToPrint;

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    _resultData['numberOfRemittancesToPrint'] = l$numberOfRemittancesToPrint;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$numberOfRemittancesToPrint,
      l$paymentMethod,
      l$enabled,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$cash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    final lOther$numberOfRemittancesToPrint = other.numberOfRemittancesToPrint;
    if (l$numberOfRemittancesToPrint != lOther$numberOfRemittancesToPrint) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$cash
    on Query$GetYardById$yard$paymentMethods$cash {
  CopyWith$Query$GetYardById$yard$paymentMethods$cash<
    Query$GetYardById$yard$paymentMethods$cash
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$cash(this, (i) => i);
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$cash<TRes> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$cash(
    Query$GetYardById$yard$paymentMethods$cash instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$cash) then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$cash;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$cash.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$cash;

  TRes call({
    int? numberOfRemittancesToPrint,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$cash<TRes>
    implements CopyWith$Query$GetYardById$yard$paymentMethods$cash<TRes> {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$cash(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$cash _instance;

  final TRes Function(Query$GetYardById$yard$paymentMethods$cash) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? numberOfRemittancesToPrint = _undefined,
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$cash(
      numberOfRemittancesToPrint:
          numberOfRemittancesToPrint == _undefined ||
              numberOfRemittancesToPrint == null
          ? _instance.numberOfRemittancesToPrint
          : (numberOfRemittancesToPrint as int),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$cash<TRes>
    implements CopyWith$Query$GetYardById$yard$paymentMethods$cash<TRes> {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$cash(this._res);

  TRes _res;

  call({
    int? numberOfRemittancesToPrint,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash
    implements
        Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash {
  Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash({
    required this.agent,
    required this.commissionPercent,
    required this.enabled,
    required this.enforceIdentification,
    required this.flatFeeThreshold,
    required this.flatFeeValue,
    required this.logoPath,
    required this.minCommission,
    required this.minDenomination,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequeWithEncashmentCashPaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agent = json['agent'];
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$enforceIdentification = json['enforceIdentification'];
    final l$flatFeeThreshold = json['flatFeeThreshold'];
    final l$flatFeeValue = json['flatFeeValue'];
    final l$logoPath = json['logoPath'];
    final l$minCommission = json['minCommission'];
    final l$minDenomination = json['minDenomination'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash(
      agent: (l$agent as String),
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      enforceIdentification: (l$enforceIdentification as bool),
      flatFeeThreshold: (l$flatFeeThreshold as num).toDouble(),
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      logoPath: (l$logoPath as String),
      minCommission: (l$minCommission as num).toDouble(),
      minDenomination: (l$minDenomination as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String agent;

  final double commissionPercent;

  final bool enabled;

  final bool enforceIdentification;

  final double flatFeeThreshold;

  final double flatFeeValue;

  final String logoPath;

  final double minCommission;

  final double minDenomination;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agent = agent;
    _resultData['agent'] = l$agent;
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    _resultData['flatFeeThreshold'] = l$flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$minCommission = minCommission;
    _resultData['minCommission'] = l$minCommission;
    final l$minDenomination = minDenomination;
    _resultData['minDenomination'] = l$minDenomination;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agent = agent;
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$enforceIdentification = enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    final l$logoPath = logoPath;
    final l$minCommission = minCommission;
    final l$minDenomination = minDenomination;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$agent,
      l$commissionPercent,
      l$enabled,
      l$enforceIdentification,
      l$flatFeeThreshold,
      l$flatFeeValue,
      l$logoPath,
      l$minCommission,
      l$minDenomination,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agent = agent;
    final lOther$agent = other.agent;
    if (l$agent != lOther$agent) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$flatFeeThreshold = flatFeeThreshold;
    final lOther$flatFeeThreshold = other.flatFeeThreshold;
    if (l$flatFeeThreshold != lOther$flatFeeThreshold) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$minCommission = minCommission;
    final lOther$minCommission = other.minCommission;
    if (l$minCommission != lOther$minCommission) {
      return false;
    }
    final l$minDenomination = minDenomination;
    final lOther$minDenomination = other.minDenomination;
    if (l$minDenomination != lOther$minDenomination) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash
    on Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash {
  CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash<
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash(
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash instance,
    TRes Function(
      Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash,
    )
    then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash;

  TRes call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash<
          TRes
        > {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash
  _instance;

  final TRes Function(
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agent = _undefined,
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? enforceIdentification = _undefined,
    Object? flatFeeThreshold = _undefined,
    Object? flatFeeValue = _undefined,
    Object? logoPath = _undefined,
    Object? minCommission = _undefined,
    Object? minDenomination = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash(
      agent: agent == _undefined || agent == null
          ? _instance.agent
          : (agent as String),
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      flatFeeThreshold:
          flatFeeThreshold == _undefined || flatFeeThreshold == null
          ? _instance.flatFeeThreshold
          : (flatFeeThreshold as double),
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      minCommission: minCommission == _undefined || minCommission == null
          ? _instance.minCommission
          : (minCommission as double),
      minDenomination: minDenomination == _undefined || minDenomination == null
          ? _instance.minDenomination
          : (minDenomination as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash<
          TRes
        > {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentCash(
    this._res,
  );

  TRes _res;

  call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm
    implements
        Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm {
  Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm({
    required this.agent,
    required this.commissionPercent,
    required this.enabled,
    required this.enforceIdentification,
    required this.flatFeeThreshold,
    required this.flatFeeValue,
    required this.logoPath,
    required this.minCommission,
    required this.minDenomination,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequeWithEncashmentAtmPaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agent = json['agent'];
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$enforceIdentification = json['enforceIdentification'];
    final l$flatFeeThreshold = json['flatFeeThreshold'];
    final l$flatFeeValue = json['flatFeeValue'];
    final l$logoPath = json['logoPath'];
    final l$minCommission = json['minCommission'];
    final l$minDenomination = json['minDenomination'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm(
      agent: (l$agent as String),
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      enforceIdentification: (l$enforceIdentification as bool),
      flatFeeThreshold: (l$flatFeeThreshold as num).toDouble(),
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      logoPath: (l$logoPath as String),
      minCommission: (l$minCommission as num).toDouble(),
      minDenomination: (l$minDenomination as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String agent;

  final double commissionPercent;

  final bool enabled;

  final bool enforceIdentification;

  final double flatFeeThreshold;

  final double flatFeeValue;

  final String logoPath;

  final double minCommission;

  final double minDenomination;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agent = agent;
    _resultData['agent'] = l$agent;
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    _resultData['flatFeeThreshold'] = l$flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$minCommission = minCommission;
    _resultData['minCommission'] = l$minCommission;
    final l$minDenomination = minDenomination;
    _resultData['minDenomination'] = l$minDenomination;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agent = agent;
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$enforceIdentification = enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    final l$logoPath = logoPath;
    final l$minCommission = minCommission;
    final l$minDenomination = minDenomination;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$agent,
      l$commissionPercent,
      l$enabled,
      l$enforceIdentification,
      l$flatFeeThreshold,
      l$flatFeeValue,
      l$logoPath,
      l$minCommission,
      l$minDenomination,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agent = agent;
    final lOther$agent = other.agent;
    if (l$agent != lOther$agent) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$flatFeeThreshold = flatFeeThreshold;
    final lOther$flatFeeThreshold = other.flatFeeThreshold;
    if (l$flatFeeThreshold != lOther$flatFeeThreshold) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$minCommission = minCommission;
    final lOther$minCommission = other.minCommission;
    if (l$minCommission != lOther$minCommission) {
      return false;
    }
    final l$minDenomination = minDenomination;
    final lOther$minDenomination = other.minDenomination;
    if (l$minDenomination != lOther$minDenomination) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm
    on Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm {
  CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm<
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm(
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm instance,
    TRes Function(
      Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm,
    )
    then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm;

  TRes call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm<
          TRes
        > {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm
  _instance;

  final TRes Function(
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agent = _undefined,
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? enforceIdentification = _undefined,
    Object? flatFeeThreshold = _undefined,
    Object? flatFeeValue = _undefined,
    Object? logoPath = _undefined,
    Object? minCommission = _undefined,
    Object? minDenomination = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm(
      agent: agent == _undefined || agent == null
          ? _instance.agent
          : (agent as String),
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      flatFeeThreshold:
          flatFeeThreshold == _undefined || flatFeeThreshold == null
          ? _instance.flatFeeThreshold
          : (flatFeeThreshold as double),
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      minCommission: minCommission == _undefined || minCommission == null
          ? _instance.minCommission
          : (minCommission as double),
      minDenomination: minDenomination == _undefined || minDenomination == null
          ? _instance.minDenomination
          : (minDenomination as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm<
          TRes
        > {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$autoChequeWithEncashmentAtm(
    this._res,
  );

  TRes _res;

  call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$GetYardById$yard$paymentMethods$secorePrepaid
    implements Fragment$PaymentMethodFields$paymentMethods$secorePrepaid {
  Query$GetYardById$yard$paymentMethods$secorePrepaid({
    required this.commissionPercent,
    required this.paymentMethod,
    required this.enabled,
    required this.maxUpperLimit,
    this.$__typename = 'SecorePrepaidPaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$secorePrepaid.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$secorePrepaid(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$paymentMethod,
      l$enabled,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$secorePrepaid ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$secorePrepaid
    on Query$GetYardById$yard$paymentMethods$secorePrepaid {
  CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid<
    Query$GetYardById$yard$paymentMethods$secorePrepaid
  >
  get copyWith => CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid(
    Query$GetYardById$yard$paymentMethods$secorePrepaid instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$secorePrepaid) then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$secorePrepaid;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$secorePrepaid;

  TRes call({
    double? commissionPercent,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$secorePrepaid<TRes>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid<TRes> {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$secorePrepaid(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$secorePrepaid _instance;

  final TRes Function(Query$GetYardById$yard$paymentMethods$secorePrepaid)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$secorePrepaid(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$secorePrepaid<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$secorePrepaid<TRes> {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$secorePrepaid(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm
    implements
        Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm {
  Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm({
    required this.commissionPercent,
    required this.enabled,
    required this.paymentMethod,
    required this.rounding,
    required this.maxUpperLimit,
    this.$__typename = 'DigitalWalletWithAtmPaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$rounding = json['rounding'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      rounding:
          Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding.fromJson(
            (l$rounding as Map<String, dynamic>),
          ),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding
  rounding;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$rounding = rounding;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$enabled,
      l$paymentMethod,
      l$rounding,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm
    on Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm {
  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm<
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm)
    then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm;

  TRes call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding;
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm<
          TRes
        > {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm _instance;

  final TRes Function(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? rounding = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding
                as Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm<
          TRes
        > {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding =>
      CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding.stub(
        _res,
      );
}

class Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding
    implements
        Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding {
  Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding({
    required this.roundingType,
    required this.value,
    this.$__typename = 'Rounding',
  });

  factory Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$roundingType = json['roundingType'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding(
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$RoundingType roundingType;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roundingType = roundingType;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$roundingType, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding
    on Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding {
  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding<
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding
    instance,
    TRes Function(
      Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding,
    )
    then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding;

  TRes call({
    Enum$RoundingType? roundingType,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding<
          TRes
        > {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding
  _instance;

  final TRes Function(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roundingType = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding(
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding<
          TRes
        > {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithAtm$rounding(
    this._res,
  );

  TRes _res;

  call({Enum$RoundingType? roundingType, double? value, String? $__typename}) =>
      _res;
}

class Query$GetYardById$yard$paymentMethods$digitalWalletWithCash
    implements
        Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash {
  Query$GetYardById$yard$paymentMethods$digitalWalletWithCash({
    required this.commissionPercent,
    required this.enabled,
    required this.paymentMethod,
    required this.rounding,
    required this.maxUpperLimit,
    this.$__typename = 'DigitalWalletWithCashPaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$digitalWalletWithCash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$rounding = json['rounding'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$digitalWalletWithCash(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      rounding:
          Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding.fromJson(
            (l$rounding as Map<String, dynamic>),
          ),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding
  rounding;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$rounding = rounding;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$enabled,
      l$paymentMethod,
      l$rounding,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$digitalWalletWithCash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash
    on Query$GetYardById$yard$paymentMethods$digitalWalletWithCash {
  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash<
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$digitalWalletWithCash)
    then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash;

  TRes call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding;
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash<
          TRes
        > {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$digitalWalletWithCash _instance;

  final TRes Function(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? rounding = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding
                as Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash<
          TRes
        > {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding =>
      CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding.stub(
        _res,
      );
}

class Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding
    implements
        Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding {
  Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding({
    required this.roundingType,
    required this.value,
    this.$__typename = 'Rounding',
  });

  factory Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$roundingType = json['roundingType'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding(
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$RoundingType roundingType;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roundingType = roundingType;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$roundingType, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding
    on Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding {
  CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding<
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding
  >
  get copyWith =>
      CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding
    instance,
    TRes Function(
      Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding,
    )
    then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding;

  TRes call({
    Enum$RoundingType? roundingType,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding<
          TRes
        > {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding
  _instance;

  final TRes Function(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roundingType = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding(
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding<
  TRes
>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding<
          TRes
        > {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$digitalWalletWithCash$rounding(
    this._res,
  );

  TRes _res;

  call({Enum$RoundingType? roundingType, double? value, String? $__typename}) =>
      _res;
}

class Query$GetYardById$yard$paymentMethods$splitPayment
    implements Fragment$PaymentMethodFields$paymentMethods$splitPayment {
  Query$GetYardById$yard$paymentMethods$splitPayment({
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'SplitPaymentMethod',
  });

  factory Query$GetYardById$yard$paymentMethods$splitPayment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById$yard$paymentMethods$splitPayment(
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById$yard$paymentMethods$splitPayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$GetYardById$yard$paymentMethods$splitPayment
    on Query$GetYardById$yard$paymentMethods$splitPayment {
  CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment<
    Query$GetYardById$yard$paymentMethods$splitPayment
  >
  get copyWith => CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment<
  TRes
> {
  factory CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment(
    Query$GetYardById$yard$paymentMethods$splitPayment instance,
    TRes Function(Query$GetYardById$yard$paymentMethods$splitPayment) then,
  ) = _CopyWithImpl$Query$GetYardById$yard$paymentMethods$splitPayment;

  factory CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$splitPayment;

  TRes call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardById$yard$paymentMethods$splitPayment<TRes>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment<TRes> {
  _CopyWithImpl$Query$GetYardById$yard$paymentMethods$splitPayment(
    this._instance,
    this._then,
  );

  final Query$GetYardById$yard$paymentMethods$splitPayment _instance;

  final TRes Function(Query$GetYardById$yard$paymentMethods$splitPayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetYardById$yard$paymentMethods$splitPayment(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$splitPayment<TRes>
    implements
        CopyWith$Query$GetYardById$yard$paymentMethods$splitPayment<TRes> {
  _CopyWithStubImpl$Query$GetYardById$yard$paymentMethods$splitPayment(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}
