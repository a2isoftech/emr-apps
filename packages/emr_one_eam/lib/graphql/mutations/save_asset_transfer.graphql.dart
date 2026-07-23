import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$saveAssetTransfer {
  factory Variables$Mutation$saveAssetTransfer(
          {required Input$TransferRequestInput input}) =>
      Variables$Mutation$saveAssetTransfer._({
        r'input': input,
      });

  Variables$Mutation$saveAssetTransfer._(this._$data);

  factory Variables$Mutation$saveAssetTransfer.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$TransferRequestInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$saveAssetTransfer._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TransferRequestInput get input =>
      (_$data['input'] as Input$TransferRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$saveAssetTransfer<
          Variables$Mutation$saveAssetTransfer>
      get copyWith => CopyWith$Variables$Mutation$saveAssetTransfer(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$saveAssetTransfer) ||
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

abstract class CopyWith$Variables$Mutation$saveAssetTransfer<TRes> {
  factory CopyWith$Variables$Mutation$saveAssetTransfer(
    Variables$Mutation$saveAssetTransfer instance,
    TRes Function(Variables$Mutation$saveAssetTransfer) then,
  ) = _CopyWithImpl$Variables$Mutation$saveAssetTransfer;

  factory CopyWith$Variables$Mutation$saveAssetTransfer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$saveAssetTransfer;

  TRes call({Input$TransferRequestInput? input});
}

class _CopyWithImpl$Variables$Mutation$saveAssetTransfer<TRes>
    implements CopyWith$Variables$Mutation$saveAssetTransfer<TRes> {
  _CopyWithImpl$Variables$Mutation$saveAssetTransfer(
    this._instance,
    this._then,
  );

  final Variables$Mutation$saveAssetTransfer _instance;

  final TRes Function(Variables$Mutation$saveAssetTransfer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$saveAssetTransfer._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TransferRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$saveAssetTransfer<TRes>
    implements CopyWith$Variables$Mutation$saveAssetTransfer<TRes> {
  _CopyWithStubImpl$Variables$Mutation$saveAssetTransfer(this._res);

  TRes _res;

  call({Input$TransferRequestInput? input}) => _res;
}

class Mutation$saveAssetTransfer {
  Mutation$saveAssetTransfer({
    required this.createTransferRequest,
    this.$__typename = 'Mutation',
  });

  factory Mutation$saveAssetTransfer.fromJson(Map<String, dynamic> json) {
    final l$createTransferRequest = json['createTransferRequest'];
    final l$$__typename = json['__typename'];
    return Mutation$saveAssetTransfer(
      createTransferRequest:
          Mutation$saveAssetTransfer$createTransferRequest.fromJson(
              (l$createTransferRequest as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$saveAssetTransfer$createTransferRequest createTransferRequest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createTransferRequest = createTransferRequest;
    _resultData['createTransferRequest'] = l$createTransferRequest.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createTransferRequest = createTransferRequest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createTransferRequest,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$saveAssetTransfer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTransferRequest = createTransferRequest;
    final lOther$createTransferRequest = other.createTransferRequest;
    if (l$createTransferRequest != lOther$createTransferRequest) {
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

extension UtilityExtension$Mutation$saveAssetTransfer
    on Mutation$saveAssetTransfer {
  CopyWith$Mutation$saveAssetTransfer<Mutation$saveAssetTransfer>
      get copyWith => CopyWith$Mutation$saveAssetTransfer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$saveAssetTransfer<TRes> {
  factory CopyWith$Mutation$saveAssetTransfer(
    Mutation$saveAssetTransfer instance,
    TRes Function(Mutation$saveAssetTransfer) then,
  ) = _CopyWithImpl$Mutation$saveAssetTransfer;

  factory CopyWith$Mutation$saveAssetTransfer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$saveAssetTransfer;

  TRes call({
    Mutation$saveAssetTransfer$createTransferRequest? createTransferRequest,
    String? $__typename,
  });
  CopyWith$Mutation$saveAssetTransfer$createTransferRequest<TRes>
      get createTransferRequest;
}

class _CopyWithImpl$Mutation$saveAssetTransfer<TRes>
    implements CopyWith$Mutation$saveAssetTransfer<TRes> {
  _CopyWithImpl$Mutation$saveAssetTransfer(
    this._instance,
    this._then,
  );

  final Mutation$saveAssetTransfer _instance;

  final TRes Function(Mutation$saveAssetTransfer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createTransferRequest = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$saveAssetTransfer(
        createTransferRequest:
            createTransferRequest == _undefined || createTransferRequest == null
                ? _instance.createTransferRequest
                : (createTransferRequest
                    as Mutation$saveAssetTransfer$createTransferRequest),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$saveAssetTransfer$createTransferRequest<TRes>
      get createTransferRequest {
    final local$createTransferRequest = _instance.createTransferRequest;
    return CopyWith$Mutation$saveAssetTransfer$createTransferRequest(
        local$createTransferRequest, (e) => call(createTransferRequest: e));
  }
}

class _CopyWithStubImpl$Mutation$saveAssetTransfer<TRes>
    implements CopyWith$Mutation$saveAssetTransfer<TRes> {
  _CopyWithStubImpl$Mutation$saveAssetTransfer(this._res);

  TRes _res;

  call({
    Mutation$saveAssetTransfer$createTransferRequest? createTransferRequest,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$saveAssetTransfer$createTransferRequest<TRes>
      get createTransferRequest =>
          CopyWith$Mutation$saveAssetTransfer$createTransferRequest.stub(_res);
}

const documentNodeMutationsaveAssetTransfer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'saveAssetTransfer'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'TransferRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createTransferRequest'),
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

class Mutation$saveAssetTransfer$createTransferRequest {
  Mutation$saveAssetTransfer$createTransferRequest({
    required this.successAssetIds,
    required this.failedAssetIds,
    this.$__typename = 'BulkAssetResult',
  });

  factory Mutation$saveAssetTransfer$createTransferRequest.fromJson(
      Map<String, dynamic> json) {
    final l$successAssetIds = json['successAssetIds'];
    final l$failedAssetIds = json['failedAssetIds'];
    final l$$__typename = json['__typename'];
    return Mutation$saveAssetTransfer$createTransferRequest(
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
    if (!(other is Mutation$saveAssetTransfer$createTransferRequest) ||
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

extension UtilityExtension$Mutation$saveAssetTransfer$createTransferRequest
    on Mutation$saveAssetTransfer$createTransferRequest {
  CopyWith$Mutation$saveAssetTransfer$createTransferRequest<
          Mutation$saveAssetTransfer$createTransferRequest>
      get copyWith => CopyWith$Mutation$saveAssetTransfer$createTransferRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$saveAssetTransfer$createTransferRequest<TRes> {
  factory CopyWith$Mutation$saveAssetTransfer$createTransferRequest(
    Mutation$saveAssetTransfer$createTransferRequest instance,
    TRes Function(Mutation$saveAssetTransfer$createTransferRequest) then,
  ) = _CopyWithImpl$Mutation$saveAssetTransfer$createTransferRequest;

  factory CopyWith$Mutation$saveAssetTransfer$createTransferRequest.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$saveAssetTransfer$createTransferRequest;

  TRes call({
    List<String>? successAssetIds,
    List<String>? failedAssetIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$saveAssetTransfer$createTransferRequest<TRes>
    implements CopyWith$Mutation$saveAssetTransfer$createTransferRequest<TRes> {
  _CopyWithImpl$Mutation$saveAssetTransfer$createTransferRequest(
    this._instance,
    this._then,
  );

  final Mutation$saveAssetTransfer$createTransferRequest _instance;

  final TRes Function(Mutation$saveAssetTransfer$createTransferRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? successAssetIds = _undefined,
    Object? failedAssetIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$saveAssetTransfer$createTransferRequest(
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

class _CopyWithStubImpl$Mutation$saveAssetTransfer$createTransferRequest<TRes>
    implements CopyWith$Mutation$saveAssetTransfer$createTransferRequest<TRes> {
  _CopyWithStubImpl$Mutation$saveAssetTransfer$createTransferRequest(this._res);

  TRes _res;

  call({
    List<String>? successAssetIds,
    List<String>? failedAssetIds,
    String? $__typename,
  }) =>
      _res;
}
