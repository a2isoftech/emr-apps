import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SubmitPaymentRequestLegacy {
  factory Variables$Mutation$SubmitPaymentRequestLegacy(
          {required List<Input$TicketPaymentRequestInput> paymentRequests}) =>
      Variables$Mutation$SubmitPaymentRequestLegacy._({
        r'paymentRequests': paymentRequests,
      });

  Variables$Mutation$SubmitPaymentRequestLegacy._(this._$data);

  factory Variables$Mutation$SubmitPaymentRequestLegacy.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$paymentRequests = data['paymentRequests'];
    result$data['paymentRequests'] = (l$paymentRequests as List<dynamic>)
        .map((e) => Input$TicketPaymentRequestInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    return Variables$Mutation$SubmitPaymentRequestLegacy._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TicketPaymentRequestInput> get paymentRequests =>
      (_$data['paymentRequests'] as List<Input$TicketPaymentRequestInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentRequests = paymentRequests;
    result$data['paymentRequests'] =
        l$paymentRequests.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitPaymentRequestLegacy<
          Variables$Mutation$SubmitPaymentRequestLegacy>
      get copyWith => CopyWith$Variables$Mutation$SubmitPaymentRequestLegacy(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SubmitPaymentRequestLegacy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRequests = paymentRequests;
    final lOther$paymentRequests = other.paymentRequests;
    if (l$paymentRequests.length != lOther$paymentRequests.length) {
      return false;
    }
    for (int i = 0; i < l$paymentRequests.length; i++) {
      final l$paymentRequests$entry = l$paymentRequests[i];
      final lOther$paymentRequests$entry = lOther$paymentRequests[i];
      if (l$paymentRequests$entry != lOther$paymentRequests$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$paymentRequests = paymentRequests;
    return Object.hashAll([Object.hashAll(l$paymentRequests.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$SubmitPaymentRequestLegacy<TRes> {
  factory CopyWith$Variables$Mutation$SubmitPaymentRequestLegacy(
    Variables$Mutation$SubmitPaymentRequestLegacy instance,
    TRes Function(Variables$Mutation$SubmitPaymentRequestLegacy) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitPaymentRequestLegacy;

  factory CopyWith$Variables$Mutation$SubmitPaymentRequestLegacy.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitPaymentRequestLegacy;

  TRes call({List<Input$TicketPaymentRequestInput>? paymentRequests});
}

class _CopyWithImpl$Variables$Mutation$SubmitPaymentRequestLegacy<TRes>
    implements CopyWith$Variables$Mutation$SubmitPaymentRequestLegacy<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitPaymentRequestLegacy(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitPaymentRequestLegacy _instance;

  final TRes Function(Variables$Mutation$SubmitPaymentRequestLegacy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paymentRequests = _undefined}) =>
      _then(Variables$Mutation$SubmitPaymentRequestLegacy._({
        ..._instance._$data,
        if (paymentRequests != _undefined && paymentRequests != null)
          'paymentRequests':
              (paymentRequests as List<Input$TicketPaymentRequestInput>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitPaymentRequestLegacy<TRes>
    implements CopyWith$Variables$Mutation$SubmitPaymentRequestLegacy<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitPaymentRequestLegacy(this._res);

  TRes _res;

  call({List<Input$TicketPaymentRequestInput>? paymentRequests}) => _res;
}

class Mutation$SubmitPaymentRequestLegacy {
  Mutation$SubmitPaymentRequestLegacy({
    required this.result,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SubmitPaymentRequestLegacy.fromJson(
      Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitPaymentRequestLegacy(
      result: (l$result as List<dynamic>).map((e) => (e as int)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<int> result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$result.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SubmitPaymentRequestLegacy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result.length != lOther$result.length) {
      return false;
    }
    for (int i = 0; i < l$result.length; i++) {
      final l$result$entry = l$result[i];
      final lOther$result$entry = lOther$result[i];
      if (l$result$entry != lOther$result$entry) {
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

extension UtilityExtension$Mutation$SubmitPaymentRequestLegacy
    on Mutation$SubmitPaymentRequestLegacy {
  CopyWith$Mutation$SubmitPaymentRequestLegacy<
          Mutation$SubmitPaymentRequestLegacy>
      get copyWith => CopyWith$Mutation$SubmitPaymentRequestLegacy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitPaymentRequestLegacy<TRes> {
  factory CopyWith$Mutation$SubmitPaymentRequestLegacy(
    Mutation$SubmitPaymentRequestLegacy instance,
    TRes Function(Mutation$SubmitPaymentRequestLegacy) then,
  ) = _CopyWithImpl$Mutation$SubmitPaymentRequestLegacy;

  factory CopyWith$Mutation$SubmitPaymentRequestLegacy.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitPaymentRequestLegacy;

  TRes call({
    List<int>? result,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitPaymentRequestLegacy<TRes>
    implements CopyWith$Mutation$SubmitPaymentRequestLegacy<TRes> {
  _CopyWithImpl$Mutation$SubmitPaymentRequestLegacy(
    this._instance,
    this._then,
  );

  final Mutation$SubmitPaymentRequestLegacy _instance;

  final TRes Function(Mutation$SubmitPaymentRequestLegacy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitPaymentRequestLegacy(
        result: result == _undefined || result == null
            ? _instance.result
            : (result as List<int>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitPaymentRequestLegacy<TRes>
    implements CopyWith$Mutation$SubmitPaymentRequestLegacy<TRes> {
  _CopyWithStubImpl$Mutation$SubmitPaymentRequestLegacy(this._res);

  TRes _res;

  call({
    List<int>? result,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSubmitPaymentRequestLegacy =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitPaymentRequestLegacy'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'paymentRequests')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'TicketPaymentRequestInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'submitPaymentRequestLegacy'),
        alias: NameNode(value: 'result'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'requests'),
            value: VariableNode(name: NameNode(value: 'paymentRequests')),
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
