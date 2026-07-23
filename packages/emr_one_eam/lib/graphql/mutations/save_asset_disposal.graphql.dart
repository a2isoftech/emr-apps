import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$saveAssetDisposal {
  factory Variables$Mutation$saveAssetDisposal(
          {required Input$DisposalRequestInput input}) =>
      Variables$Mutation$saveAssetDisposal._({
        r'input': input,
      });

  Variables$Mutation$saveAssetDisposal._(this._$data);

  factory Variables$Mutation$saveAssetDisposal.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$DisposalRequestInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$saveAssetDisposal._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DisposalRequestInput get input =>
      (_$data['input'] as Input$DisposalRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$saveAssetDisposal<
          Variables$Mutation$saveAssetDisposal>
      get copyWith => CopyWith$Variables$Mutation$saveAssetDisposal(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$saveAssetDisposal) ||
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

abstract class CopyWith$Variables$Mutation$saveAssetDisposal<TRes> {
  factory CopyWith$Variables$Mutation$saveAssetDisposal(
    Variables$Mutation$saveAssetDisposal instance,
    TRes Function(Variables$Mutation$saveAssetDisposal) then,
  ) = _CopyWithImpl$Variables$Mutation$saveAssetDisposal;

  factory CopyWith$Variables$Mutation$saveAssetDisposal.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$saveAssetDisposal;

  TRes call({Input$DisposalRequestInput? input});
}

class _CopyWithImpl$Variables$Mutation$saveAssetDisposal<TRes>
    implements CopyWith$Variables$Mutation$saveAssetDisposal<TRes> {
  _CopyWithImpl$Variables$Mutation$saveAssetDisposal(
    this._instance,
    this._then,
  );

  final Variables$Mutation$saveAssetDisposal _instance;

  final TRes Function(Variables$Mutation$saveAssetDisposal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$saveAssetDisposal._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$DisposalRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$saveAssetDisposal<TRes>
    implements CopyWith$Variables$Mutation$saveAssetDisposal<TRes> {
  _CopyWithStubImpl$Variables$Mutation$saveAssetDisposal(this._res);

  TRes _res;

  call({Input$DisposalRequestInput? input}) => _res;
}

class Mutation$saveAssetDisposal {
  Mutation$saveAssetDisposal({
    required this.createDisposalRequest,
    this.$__typename = 'Mutation',
  });

  factory Mutation$saveAssetDisposal.fromJson(Map<String, dynamic> json) {
    final l$createDisposalRequest = json['createDisposalRequest'];
    final l$$__typename = json['__typename'];
    return Mutation$saveAssetDisposal(
      createDisposalRequest:
          Mutation$saveAssetDisposal$createDisposalRequest.fromJson(
              (l$createDisposalRequest as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$saveAssetDisposal$createDisposalRequest createDisposalRequest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createDisposalRequest = createDisposalRequest;
    _resultData['createDisposalRequest'] = l$createDisposalRequest.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createDisposalRequest = createDisposalRequest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createDisposalRequest,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$saveAssetDisposal) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createDisposalRequest = createDisposalRequest;
    final lOther$createDisposalRequest = other.createDisposalRequest;
    if (l$createDisposalRequest != lOther$createDisposalRequest) {
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

extension UtilityExtension$Mutation$saveAssetDisposal
    on Mutation$saveAssetDisposal {
  CopyWith$Mutation$saveAssetDisposal<Mutation$saveAssetDisposal>
      get copyWith => CopyWith$Mutation$saveAssetDisposal(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$saveAssetDisposal<TRes> {
  factory CopyWith$Mutation$saveAssetDisposal(
    Mutation$saveAssetDisposal instance,
    TRes Function(Mutation$saveAssetDisposal) then,
  ) = _CopyWithImpl$Mutation$saveAssetDisposal;

  factory CopyWith$Mutation$saveAssetDisposal.stub(TRes res) =
      _CopyWithStubImpl$Mutation$saveAssetDisposal;

  TRes call({
    Mutation$saveAssetDisposal$createDisposalRequest? createDisposalRequest,
    String? $__typename,
  });
  CopyWith$Mutation$saveAssetDisposal$createDisposalRequest<TRes>
      get createDisposalRequest;
}

class _CopyWithImpl$Mutation$saveAssetDisposal<TRes>
    implements CopyWith$Mutation$saveAssetDisposal<TRes> {
  _CopyWithImpl$Mutation$saveAssetDisposal(
    this._instance,
    this._then,
  );

  final Mutation$saveAssetDisposal _instance;

  final TRes Function(Mutation$saveAssetDisposal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createDisposalRequest = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$saveAssetDisposal(
        createDisposalRequest:
            createDisposalRequest == _undefined || createDisposalRequest == null
                ? _instance.createDisposalRequest
                : (createDisposalRequest
                    as Mutation$saveAssetDisposal$createDisposalRequest),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$saveAssetDisposal$createDisposalRequest<TRes>
      get createDisposalRequest {
    final local$createDisposalRequest = _instance.createDisposalRequest;
    return CopyWith$Mutation$saveAssetDisposal$createDisposalRequest(
        local$createDisposalRequest, (e) => call(createDisposalRequest: e));
  }
}

class _CopyWithStubImpl$Mutation$saveAssetDisposal<TRes>
    implements CopyWith$Mutation$saveAssetDisposal<TRes> {
  _CopyWithStubImpl$Mutation$saveAssetDisposal(this._res);

  TRes _res;

  call({
    Mutation$saveAssetDisposal$createDisposalRequest? createDisposalRequest,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$saveAssetDisposal$createDisposalRequest<TRes>
      get createDisposalRequest =>
          CopyWith$Mutation$saveAssetDisposal$createDisposalRequest.stub(_res);
}

const documentNodeMutationsaveAssetDisposal = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'saveAssetDisposal'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'DisposalRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createDisposalRequest'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'successAssetIds'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'failedAssetIds'),
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
        ]),
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

class Mutation$saveAssetDisposal$createDisposalRequest {
  Mutation$saveAssetDisposal$createDisposalRequest({
    required this.successAssetIds,
    required this.failedAssetIds,
    this.$__typename = 'BulkAssetResult',
  });

  factory Mutation$saveAssetDisposal$createDisposalRequest.fromJson(
      Map<String, dynamic> json) {
    final l$successAssetIds = json['successAssetIds'];
    final l$failedAssetIds = json['failedAssetIds'];
    final l$$__typename = json['__typename'];
    return Mutation$saveAssetDisposal$createDisposalRequest(
      successAssetIds: (l$successAssetIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      failedAssetIds: (l$failedAssetIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> successAssetIds;

  final List<String> failedAssetIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$successAssetIds = successAssetIds;
    _resultData['successAssetIds'] = l$successAssetIds.map((e) => e).toList();
    final l$failedAssetIds = failedAssetIds;
    _resultData['failedAssetIds'] = l$failedAssetIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$successAssetIds = successAssetIds;
    final l$failedAssetIds = failedAssetIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$successAssetIds.map((v) => v)),
      Object.hashAll(l$failedAssetIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$saveAssetDisposal$createDisposalRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$successAssetIds = successAssetIds;
    final lOther$successAssetIds = other.successAssetIds;
    if (l$successAssetIds.length != lOther$successAssetIds.length) {
      return false;
    }
    for (int i = 0; i < l$successAssetIds.length; i++) {
      final l$successAssetIds$entry = l$successAssetIds[i];
      final lOther$successAssetIds$entry = lOther$successAssetIds[i];
      if (l$successAssetIds$entry != lOther$successAssetIds$entry) {
        return false;
      }
    }
    final l$failedAssetIds = failedAssetIds;
    final lOther$failedAssetIds = other.failedAssetIds;
    if (l$failedAssetIds.length != lOther$failedAssetIds.length) {
      return false;
    }
    for (int i = 0; i < l$failedAssetIds.length; i++) {
      final l$failedAssetIds$entry = l$failedAssetIds[i];
      final lOther$failedAssetIds$entry = lOther$failedAssetIds[i];
      if (l$failedAssetIds$entry != lOther$failedAssetIds$entry) {
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

extension UtilityExtension$Mutation$saveAssetDisposal$createDisposalRequest
    on Mutation$saveAssetDisposal$createDisposalRequest {
  CopyWith$Mutation$saveAssetDisposal$createDisposalRequest<
          Mutation$saveAssetDisposal$createDisposalRequest>
      get copyWith => CopyWith$Mutation$saveAssetDisposal$createDisposalRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$saveAssetDisposal$createDisposalRequest<TRes> {
  factory CopyWith$Mutation$saveAssetDisposal$createDisposalRequest(
    Mutation$saveAssetDisposal$createDisposalRequest instance,
    TRes Function(Mutation$saveAssetDisposal$createDisposalRequest) then,
  ) = _CopyWithImpl$Mutation$saveAssetDisposal$createDisposalRequest;

  factory CopyWith$Mutation$saveAssetDisposal$createDisposalRequest.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$saveAssetDisposal$createDisposalRequest;

  TRes call({
    List<String>? successAssetIds,
    List<String>? failedAssetIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$saveAssetDisposal$createDisposalRequest<TRes>
    implements CopyWith$Mutation$saveAssetDisposal$createDisposalRequest<TRes> {
  _CopyWithImpl$Mutation$saveAssetDisposal$createDisposalRequest(
    this._instance,
    this._then,
  );

  final Mutation$saveAssetDisposal$createDisposalRequest _instance;

  final TRes Function(Mutation$saveAssetDisposal$createDisposalRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? successAssetIds = _undefined,
    Object? failedAssetIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$saveAssetDisposal$createDisposalRequest(
        successAssetIds:
            successAssetIds == _undefined || successAssetIds == null
                ? _instance.successAssetIds
                : (successAssetIds as List<String>),
        failedAssetIds: failedAssetIds == _undefined || failedAssetIds == null
            ? _instance.failedAssetIds
            : (failedAssetIds as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$saveAssetDisposal$createDisposalRequest<TRes>
    implements CopyWith$Mutation$saveAssetDisposal$createDisposalRequest<TRes> {
  _CopyWithStubImpl$Mutation$saveAssetDisposal$createDisposalRequest(this._res);

  TRes _res;

  call({
    List<String>? successAssetIds,
    List<String>? failedAssetIds,
    String? $__typename,
  }) =>
      _res;
}
