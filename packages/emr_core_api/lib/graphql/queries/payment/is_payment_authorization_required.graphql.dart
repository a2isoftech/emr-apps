import 'package:gql/ast.dart';

class Variables$Query$IsPaymentAuthorizationRequired {
  factory Variables$Query$IsPaymentAuthorizationRequired({
    required double totalAmount,
    required String yardCode,
  }) => Variables$Query$IsPaymentAuthorizationRequired._({
    r'totalAmount': totalAmount,
    r'yardCode': yardCode,
  });

  Variables$Query$IsPaymentAuthorizationRequired._(this._$data);

  factory Variables$Query$IsPaymentAuthorizationRequired.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$totalAmount = data['totalAmount'];
    result$data['totalAmount'] = (l$totalAmount as num).toDouble();
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    return Variables$Query$IsPaymentAuthorizationRequired._(result$data);
  }

  Map<String, dynamic> _$data;

  double get totalAmount => (_$data['totalAmount'] as double);

  String get yardCode => (_$data['yardCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$totalAmount = totalAmount;
    result$data['totalAmount'] = l$totalAmount;
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    return result$data;
  }

  CopyWith$Variables$Query$IsPaymentAuthorizationRequired<
    Variables$Query$IsPaymentAuthorizationRequired
  >
  get copyWith =>
      CopyWith$Variables$Query$IsPaymentAuthorizationRequired(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$IsPaymentAuthorizationRequired ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalAmount = totalAmount;
    final lOther$totalAmount = other.totalAmount;
    if (l$totalAmount != lOther$totalAmount) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$totalAmount = totalAmount;
    final l$yardCode = yardCode;
    return Object.hashAll([l$totalAmount, l$yardCode]);
  }
}

abstract class CopyWith$Variables$Query$IsPaymentAuthorizationRequired<TRes> {
  factory CopyWith$Variables$Query$IsPaymentAuthorizationRequired(
    Variables$Query$IsPaymentAuthorizationRequired instance,
    TRes Function(Variables$Query$IsPaymentAuthorizationRequired) then,
  ) = _CopyWithImpl$Variables$Query$IsPaymentAuthorizationRequired;

  factory CopyWith$Variables$Query$IsPaymentAuthorizationRequired.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$IsPaymentAuthorizationRequired;

  TRes call({double? totalAmount, String? yardCode});
}

class _CopyWithImpl$Variables$Query$IsPaymentAuthorizationRequired<TRes>
    implements CopyWith$Variables$Query$IsPaymentAuthorizationRequired<TRes> {
  _CopyWithImpl$Variables$Query$IsPaymentAuthorizationRequired(
    this._instance,
    this._then,
  );

  final Variables$Query$IsPaymentAuthorizationRequired _instance;

  final TRes Function(Variables$Query$IsPaymentAuthorizationRequired) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalAmount = _undefined,
    Object? yardCode = _undefined,
  }) => _then(
    Variables$Query$IsPaymentAuthorizationRequired._({
      ..._instance._$data,
      if (totalAmount != _undefined && totalAmount != null)
        'totalAmount': (totalAmount as double),
      if (yardCode != _undefined && yardCode != null)
        'yardCode': (yardCode as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$IsPaymentAuthorizationRequired<TRes>
    implements CopyWith$Variables$Query$IsPaymentAuthorizationRequired<TRes> {
  _CopyWithStubImpl$Variables$Query$IsPaymentAuthorizationRequired(this._res);

  TRes _res;

  call({double? totalAmount, String? yardCode}) => _res;
}

class Query$IsPaymentAuthorizationRequired {
  Query$IsPaymentAuthorizationRequired({
    required this.isPaymentAuthorizationRequired,
    this.$__typename = 'Query',
  });

  factory Query$IsPaymentAuthorizationRequired.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isPaymentAuthorizationRequired =
        json['isPaymentAuthorizationRequired'];
    final l$$__typename = json['__typename'];
    return Query$IsPaymentAuthorizationRequired(
      isPaymentAuthorizationRequired:
          (l$isPaymentAuthorizationRequired as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isPaymentAuthorizationRequired;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isPaymentAuthorizationRequired = isPaymentAuthorizationRequired;
    _resultData['isPaymentAuthorizationRequired'] =
        l$isPaymentAuthorizationRequired;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isPaymentAuthorizationRequired = isPaymentAuthorizationRequired;
    final l$$__typename = $__typename;
    return Object.hashAll([l$isPaymentAuthorizationRequired, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$IsPaymentAuthorizationRequired ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isPaymentAuthorizationRequired = isPaymentAuthorizationRequired;
    final lOther$isPaymentAuthorizationRequired =
        other.isPaymentAuthorizationRequired;
    if (l$isPaymentAuthorizationRequired !=
        lOther$isPaymentAuthorizationRequired) {
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

extension UtilityExtension$Query$IsPaymentAuthorizationRequired
    on Query$IsPaymentAuthorizationRequired {
  CopyWith$Query$IsPaymentAuthorizationRequired<
    Query$IsPaymentAuthorizationRequired
  >
  get copyWith => CopyWith$Query$IsPaymentAuthorizationRequired(this, (i) => i);
}

abstract class CopyWith$Query$IsPaymentAuthorizationRequired<TRes> {
  factory CopyWith$Query$IsPaymentAuthorizationRequired(
    Query$IsPaymentAuthorizationRequired instance,
    TRes Function(Query$IsPaymentAuthorizationRequired) then,
  ) = _CopyWithImpl$Query$IsPaymentAuthorizationRequired;

  factory CopyWith$Query$IsPaymentAuthorizationRequired.stub(TRes res) =
      _CopyWithStubImpl$Query$IsPaymentAuthorizationRequired;

  TRes call({bool? isPaymentAuthorizationRequired, String? $__typename});
}

class _CopyWithImpl$Query$IsPaymentAuthorizationRequired<TRes>
    implements CopyWith$Query$IsPaymentAuthorizationRequired<TRes> {
  _CopyWithImpl$Query$IsPaymentAuthorizationRequired(
    this._instance,
    this._then,
  );

  final Query$IsPaymentAuthorizationRequired _instance;

  final TRes Function(Query$IsPaymentAuthorizationRequired) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isPaymentAuthorizationRequired = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$IsPaymentAuthorizationRequired(
      isPaymentAuthorizationRequired:
          isPaymentAuthorizationRequired == _undefined ||
              isPaymentAuthorizationRequired == null
          ? _instance.isPaymentAuthorizationRequired
          : (isPaymentAuthorizationRequired as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$IsPaymentAuthorizationRequired<TRes>
    implements CopyWith$Query$IsPaymentAuthorizationRequired<TRes> {
  _CopyWithStubImpl$Query$IsPaymentAuthorizationRequired(this._res);

  TRes _res;

  call({bool? isPaymentAuthorizationRequired, String? $__typename}) => _res;
}

const documentNodeQueryIsPaymentAuthorizationRequired = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'IsPaymentAuthorizationRequired'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'totalAmount')),
          type: NamedTypeNode(
            name: NameNode(value: 'Decimal'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'isPaymentAuthorizationRequired'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'totalAmount'),
                value: VariableNode(name: NameNode(value: 'totalAmount')),
              ),
              ArgumentNode(
                name: NameNode(value: 'yardCode'),
                value: VariableNode(name: NameNode(value: 'yardCode')),
              ),
            ],
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
  ],
);
