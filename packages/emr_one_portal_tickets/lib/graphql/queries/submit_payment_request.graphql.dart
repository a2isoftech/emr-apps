import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SubmitPaymentRequest {
  factory Variables$Mutation$SubmitPaymentRequest(
          {required Input$PaymentRequestInput paymentRequest}) =>
      Variables$Mutation$SubmitPaymentRequest._({
        r'paymentRequest': paymentRequest,
      });

  Variables$Mutation$SubmitPaymentRequest._(this._$data);

  factory Variables$Mutation$SubmitPaymentRequest.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$paymentRequest = data['paymentRequest'];
    result$data['paymentRequest'] = Input$PaymentRequestInput.fromJson(
        (l$paymentRequest as Map<String, dynamic>));
    return Variables$Mutation$SubmitPaymentRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PaymentRequestInput get paymentRequest =>
      (_$data['paymentRequest'] as Input$PaymentRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentRequest = paymentRequest;
    result$data['paymentRequest'] = l$paymentRequest.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitPaymentRequest<
          Variables$Mutation$SubmitPaymentRequest>
      get copyWith => CopyWith$Variables$Mutation$SubmitPaymentRequest(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SubmitPaymentRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRequest = paymentRequest;
    final lOther$paymentRequest = other.paymentRequest;
    if (l$paymentRequest != lOther$paymentRequest) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$paymentRequest = paymentRequest;
    return Object.hashAll([l$paymentRequest]);
  }
}

abstract class CopyWith$Variables$Mutation$SubmitPaymentRequest<TRes> {
  factory CopyWith$Variables$Mutation$SubmitPaymentRequest(
    Variables$Mutation$SubmitPaymentRequest instance,
    TRes Function(Variables$Mutation$SubmitPaymentRequest) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitPaymentRequest;

  factory CopyWith$Variables$Mutation$SubmitPaymentRequest.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitPaymentRequest;

  TRes call({Input$PaymentRequestInput? paymentRequest});
}

class _CopyWithImpl$Variables$Mutation$SubmitPaymentRequest<TRes>
    implements CopyWith$Variables$Mutation$SubmitPaymentRequest<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitPaymentRequest(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitPaymentRequest _instance;

  final TRes Function(Variables$Mutation$SubmitPaymentRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paymentRequest = _undefined}) =>
      _then(Variables$Mutation$SubmitPaymentRequest._({
        ..._instance._$data,
        if (paymentRequest != _undefined && paymentRequest != null)
          'paymentRequest': (paymentRequest as Input$PaymentRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitPaymentRequest<TRes>
    implements CopyWith$Variables$Mutation$SubmitPaymentRequest<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitPaymentRequest(this._res);

  TRes _res;

  call({Input$PaymentRequestInput? paymentRequest}) => _res;
}

class Mutation$SubmitPaymentRequest {
  Mutation$SubmitPaymentRequest({
    required this.result,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SubmitPaymentRequest.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitPaymentRequest(
      result: (l$result as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$result,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SubmitPaymentRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension$Mutation$SubmitPaymentRequest
    on Mutation$SubmitPaymentRequest {
  CopyWith$Mutation$SubmitPaymentRequest<Mutation$SubmitPaymentRequest>
      get copyWith => CopyWith$Mutation$SubmitPaymentRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitPaymentRequest<TRes> {
  factory CopyWith$Mutation$SubmitPaymentRequest(
    Mutation$SubmitPaymentRequest instance,
    TRes Function(Mutation$SubmitPaymentRequest) then,
  ) = _CopyWithImpl$Mutation$SubmitPaymentRequest;

  factory CopyWith$Mutation$SubmitPaymentRequest.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitPaymentRequest;

  TRes call({
    bool? result,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitPaymentRequest<TRes>
    implements CopyWith$Mutation$SubmitPaymentRequest<TRes> {
  _CopyWithImpl$Mutation$SubmitPaymentRequest(
    this._instance,
    this._then,
  );

  final Mutation$SubmitPaymentRequest _instance;

  final TRes Function(Mutation$SubmitPaymentRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitPaymentRequest(
        result: result == _undefined || result == null
            ? _instance.result
            : (result as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitPaymentRequest<TRes>
    implements CopyWith$Mutation$SubmitPaymentRequest<TRes> {
  _CopyWithStubImpl$Mutation$SubmitPaymentRequest(this._res);

  TRes _res;

  call({
    bool? result,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSubmitPaymentRequest = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitPaymentRequest'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'paymentRequest')),
        type: NamedTypeNode(
          name: NameNode(value: 'PaymentRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'submitPaymentRequest'),
        alias: NameNode(value: 'result'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'requestForPayment'),
            value: VariableNode(name: NameNode(value: 'paymentRequest')),
          )
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
    ]),
  ),
]);
