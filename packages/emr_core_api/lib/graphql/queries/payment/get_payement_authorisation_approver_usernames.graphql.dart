import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetpaymentAuthorisationApproverUsernames {
  factory Variables$Query$GetpaymentAuthorisationApproverUsernames({
    required Input$PaymentAuthorisationApproverInput input,
  }) => Variables$Query$GetpaymentAuthorisationApproverUsernames._({
    r'input': input,
  });

  Variables$Query$GetpaymentAuthorisationApproverUsernames._(this._$data);

  factory Variables$Query$GetpaymentAuthorisationApproverUsernames.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$PaymentAuthorisationApproverInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$GetpaymentAuthorisationApproverUsernames._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Input$PaymentAuthorisationApproverInput get input =>
      (_$data['input'] as Input$PaymentAuthorisationApproverInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetpaymentAuthorisationApproverUsernames<
    Variables$Query$GetpaymentAuthorisationApproverUsernames
  >
  get copyWith =>
      CopyWith$Variables$Query$GetpaymentAuthorisationApproverUsernames(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetpaymentAuthorisationApproverUsernames ||
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

abstract class CopyWith$Variables$Query$GetpaymentAuthorisationApproverUsernames<
  TRes
> {
  factory CopyWith$Variables$Query$GetpaymentAuthorisationApproverUsernames(
    Variables$Query$GetpaymentAuthorisationApproverUsernames instance,
    TRes Function(Variables$Query$GetpaymentAuthorisationApproverUsernames)
    then,
  ) = _CopyWithImpl$Variables$Query$GetpaymentAuthorisationApproverUsernames;

  factory CopyWith$Variables$Query$GetpaymentAuthorisationApproverUsernames.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$GetpaymentAuthorisationApproverUsernames;

  TRes call({Input$PaymentAuthorisationApproverInput? input});
}

class _CopyWithImpl$Variables$Query$GetpaymentAuthorisationApproverUsernames<
  TRes
>
    implements
        CopyWith$Variables$Query$GetpaymentAuthorisationApproverUsernames<
          TRes
        > {
  _CopyWithImpl$Variables$Query$GetpaymentAuthorisationApproverUsernames(
    this._instance,
    this._then,
  );

  final Variables$Query$GetpaymentAuthorisationApproverUsernames _instance;

  final TRes Function(Variables$Query$GetpaymentAuthorisationApproverUsernames)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$GetpaymentAuthorisationApproverUsernames._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$PaymentAuthorisationApproverInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetpaymentAuthorisationApproverUsernames<
  TRes
>
    implements
        CopyWith$Variables$Query$GetpaymentAuthorisationApproverUsernames<
          TRes
        > {
  _CopyWithStubImpl$Variables$Query$GetpaymentAuthorisationApproverUsernames(
    this._res,
  );

  TRes _res;

  call({Input$PaymentAuthorisationApproverInput? input}) => _res;
}

class Query$GetpaymentAuthorisationApproverUsernames {
  Query$GetpaymentAuthorisationApproverUsernames({
    required this.paymentAuthorisationApproverUsernames,
    this.$__typename = 'Query',
  });

  factory Query$GetpaymentAuthorisationApproverUsernames.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentAuthorisationApproverUsernames =
        json['paymentAuthorisationApproverUsernames'];
    final l$$__typename = json['__typename'];
    return Query$GetpaymentAuthorisationApproverUsernames(
      paymentAuthorisationApproverUsernames:
          (l$paymentAuthorisationApproverUsernames as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> paymentAuthorisationApproverUsernames;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentAuthorisationApproverUsernames =
        paymentAuthorisationApproverUsernames;
    _resultData['paymentAuthorisationApproverUsernames'] =
        l$paymentAuthorisationApproverUsernames.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentAuthorisationApproverUsernames =
        paymentAuthorisationApproverUsernames;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$paymentAuthorisationApproverUsernames.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetpaymentAuthorisationApproverUsernames ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentAuthorisationApproverUsernames =
        paymentAuthorisationApproverUsernames;
    final lOther$paymentAuthorisationApproverUsernames =
        other.paymentAuthorisationApproverUsernames;
    if (l$paymentAuthorisationApproverUsernames.length !=
        lOther$paymentAuthorisationApproverUsernames.length) {
      return false;
    }
    for (int i = 0; i < l$paymentAuthorisationApproverUsernames.length; i++) {
      final l$paymentAuthorisationApproverUsernames$entry =
          l$paymentAuthorisationApproverUsernames[i];
      final lOther$paymentAuthorisationApproverUsernames$entry =
          lOther$paymentAuthorisationApproverUsernames[i];
      if (l$paymentAuthorisationApproverUsernames$entry !=
          lOther$paymentAuthorisationApproverUsernames$entry) {
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

extension UtilityExtension$Query$GetpaymentAuthorisationApproverUsernames
    on Query$GetpaymentAuthorisationApproverUsernames {
  CopyWith$Query$GetpaymentAuthorisationApproverUsernames<
    Query$GetpaymentAuthorisationApproverUsernames
  >
  get copyWith =>
      CopyWith$Query$GetpaymentAuthorisationApproverUsernames(this, (i) => i);
}

abstract class CopyWith$Query$GetpaymentAuthorisationApproverUsernames<TRes> {
  factory CopyWith$Query$GetpaymentAuthorisationApproverUsernames(
    Query$GetpaymentAuthorisationApproverUsernames instance,
    TRes Function(Query$GetpaymentAuthorisationApproverUsernames) then,
  ) = _CopyWithImpl$Query$GetpaymentAuthorisationApproverUsernames;

  factory CopyWith$Query$GetpaymentAuthorisationApproverUsernames.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetpaymentAuthorisationApproverUsernames;

  TRes call({
    List<String>? paymentAuthorisationApproverUsernames,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetpaymentAuthorisationApproverUsernames<TRes>
    implements CopyWith$Query$GetpaymentAuthorisationApproverUsernames<TRes> {
  _CopyWithImpl$Query$GetpaymentAuthorisationApproverUsernames(
    this._instance,
    this._then,
  );

  final Query$GetpaymentAuthorisationApproverUsernames _instance;

  final TRes Function(Query$GetpaymentAuthorisationApproverUsernames) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentAuthorisationApproverUsernames = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetpaymentAuthorisationApproverUsernames(
      paymentAuthorisationApproverUsernames:
          paymentAuthorisationApproverUsernames == _undefined ||
              paymentAuthorisationApproverUsernames == null
          ? _instance.paymentAuthorisationApproverUsernames
          : (paymentAuthorisationApproverUsernames as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetpaymentAuthorisationApproverUsernames<TRes>
    implements CopyWith$Query$GetpaymentAuthorisationApproverUsernames<TRes> {
  _CopyWithStubImpl$Query$GetpaymentAuthorisationApproverUsernames(this._res);

  TRes _res;

  call({
    List<String>? paymentAuthorisationApproverUsernames,
    String? $__typename,
  }) => _res;
}

const documentNodeQueryGetpaymentAuthorisationApproverUsernames = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetpaymentAuthorisationApproverUsernames'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'PaymentAuthorisationApproverInput'),
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
            name: NameNode(value: 'paymentAuthorisationApproverUsernames'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
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
