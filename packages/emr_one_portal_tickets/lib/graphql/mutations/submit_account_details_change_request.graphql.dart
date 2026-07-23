import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SubmitAccountDetailsChangeRequest {
  factory Variables$Mutation$SubmitAccountDetailsChangeRequest(
          {required Input$AccountChangeRequestInput accountChangeRequest}) =>
      Variables$Mutation$SubmitAccountDetailsChangeRequest._({
        r'accountChangeRequest': accountChangeRequest,
      });

  Variables$Mutation$SubmitAccountDetailsChangeRequest._(this._$data);

  factory Variables$Mutation$SubmitAccountDetailsChangeRequest.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accountChangeRequest = data['accountChangeRequest'];
    result$data['accountChangeRequest'] =
        Input$AccountChangeRequestInput.fromJson(
            (l$accountChangeRequest as Map<String, dynamic>));
    return Variables$Mutation$SubmitAccountDetailsChangeRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AccountChangeRequestInput get accountChangeRequest =>
      (_$data['accountChangeRequest'] as Input$AccountChangeRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountChangeRequest = accountChangeRequest;
    result$data['accountChangeRequest'] = l$accountChangeRequest.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitAccountDetailsChangeRequest<
          Variables$Mutation$SubmitAccountDetailsChangeRequest>
      get copyWith =>
          CopyWith$Variables$Mutation$SubmitAccountDetailsChangeRequest(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SubmitAccountDetailsChangeRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountChangeRequest = accountChangeRequest;
    final lOther$accountChangeRequest = other.accountChangeRequest;
    if (l$accountChangeRequest != lOther$accountChangeRequest) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountChangeRequest = accountChangeRequest;
    return Object.hashAll([l$accountChangeRequest]);
  }
}

abstract class CopyWith$Variables$Mutation$SubmitAccountDetailsChangeRequest<
    TRes> {
  factory CopyWith$Variables$Mutation$SubmitAccountDetailsChangeRequest(
    Variables$Mutation$SubmitAccountDetailsChangeRequest instance,
    TRes Function(Variables$Mutation$SubmitAccountDetailsChangeRequest) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitAccountDetailsChangeRequest;

  factory CopyWith$Variables$Mutation$SubmitAccountDetailsChangeRequest.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitAccountDetailsChangeRequest;

  TRes call({Input$AccountChangeRequestInput? accountChangeRequest});
}

class _CopyWithImpl$Variables$Mutation$SubmitAccountDetailsChangeRequest<TRes>
    implements
        CopyWith$Variables$Mutation$SubmitAccountDetailsChangeRequest<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitAccountDetailsChangeRequest(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitAccountDetailsChangeRequest _instance;

  final TRes Function(Variables$Mutation$SubmitAccountDetailsChangeRequest)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountChangeRequest = _undefined}) =>
      _then(Variables$Mutation$SubmitAccountDetailsChangeRequest._({
        ..._instance._$data,
        if (accountChangeRequest != _undefined && accountChangeRequest != null)
          'accountChangeRequest':
              (accountChangeRequest as Input$AccountChangeRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitAccountDetailsChangeRequest<
        TRes>
    implements
        CopyWith$Variables$Mutation$SubmitAccountDetailsChangeRequest<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitAccountDetailsChangeRequest(
      this._res);

  TRes _res;

  call({Input$AccountChangeRequestInput? accountChangeRequest}) => _res;
}

class Mutation$SubmitAccountDetailsChangeRequest {
  Mutation$SubmitAccountDetailsChangeRequest({
    required this.result,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SubmitAccountDetailsChangeRequest.fromJson(
      Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitAccountDetailsChangeRequest(
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
    if (other is! Mutation$SubmitAccountDetailsChangeRequest ||
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

extension UtilityExtension$Mutation$SubmitAccountDetailsChangeRequest
    on Mutation$SubmitAccountDetailsChangeRequest {
  CopyWith$Mutation$SubmitAccountDetailsChangeRequest<
          Mutation$SubmitAccountDetailsChangeRequest>
      get copyWith => CopyWith$Mutation$SubmitAccountDetailsChangeRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitAccountDetailsChangeRequest<TRes> {
  factory CopyWith$Mutation$SubmitAccountDetailsChangeRequest(
    Mutation$SubmitAccountDetailsChangeRequest instance,
    TRes Function(Mutation$SubmitAccountDetailsChangeRequest) then,
  ) = _CopyWithImpl$Mutation$SubmitAccountDetailsChangeRequest;

  factory CopyWith$Mutation$SubmitAccountDetailsChangeRequest.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitAccountDetailsChangeRequest;

  TRes call({
    bool? result,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitAccountDetailsChangeRequest<TRes>
    implements CopyWith$Mutation$SubmitAccountDetailsChangeRequest<TRes> {
  _CopyWithImpl$Mutation$SubmitAccountDetailsChangeRequest(
    this._instance,
    this._then,
  );

  final Mutation$SubmitAccountDetailsChangeRequest _instance;

  final TRes Function(Mutation$SubmitAccountDetailsChangeRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitAccountDetailsChangeRequest(
        result: result == _undefined || result == null
            ? _instance.result
            : (result as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitAccountDetailsChangeRequest<TRes>
    implements CopyWith$Mutation$SubmitAccountDetailsChangeRequest<TRes> {
  _CopyWithStubImpl$Mutation$SubmitAccountDetailsChangeRequest(this._res);

  TRes _res;

  call({
    bool? result,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSubmitAccountDetailsChangeRequest =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitAccountDetailsChangeRequest'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'accountChangeRequest')),
        type: NamedTypeNode(
          name: NameNode(value: 'AccountChangeRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'submitAccountDetailsChangeRequest'),
        alias: NameNode(value: 'result'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'accountChangeRequest'),
            value: VariableNode(name: NameNode(value: 'accountChangeRequest')),
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
