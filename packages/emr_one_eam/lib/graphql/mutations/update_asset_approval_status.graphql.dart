import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$updateAssetApprovalStatus {
  factory Variables$Mutation$updateAssetApprovalStatus(
          {required Input$UpdateAssetApprovalInput input}) =>
      Variables$Mutation$updateAssetApprovalStatus._({
        r'input': input,
      });

  Variables$Mutation$updateAssetApprovalStatus._(this._$data);

  factory Variables$Mutation$updateAssetApprovalStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateAssetApprovalInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$updateAssetApprovalStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateAssetApprovalInput get input =>
      (_$data['input'] as Input$UpdateAssetApprovalInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateAssetApprovalStatus<
          Variables$Mutation$updateAssetApprovalStatus>
      get copyWith => CopyWith$Variables$Mutation$updateAssetApprovalStatus(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateAssetApprovalStatus) ||
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

abstract class CopyWith$Variables$Mutation$updateAssetApprovalStatus<TRes> {
  factory CopyWith$Variables$Mutation$updateAssetApprovalStatus(
    Variables$Mutation$updateAssetApprovalStatus instance,
    TRes Function(Variables$Mutation$updateAssetApprovalStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$updateAssetApprovalStatus;

  factory CopyWith$Variables$Mutation$updateAssetApprovalStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateAssetApprovalStatus;

  TRes call({Input$UpdateAssetApprovalInput? input});
}

class _CopyWithImpl$Variables$Mutation$updateAssetApprovalStatus<TRes>
    implements CopyWith$Variables$Mutation$updateAssetApprovalStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$updateAssetApprovalStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateAssetApprovalStatus _instance;

  final TRes Function(Variables$Mutation$updateAssetApprovalStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$updateAssetApprovalStatus._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateAssetApprovalInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateAssetApprovalStatus<TRes>
    implements CopyWith$Variables$Mutation$updateAssetApprovalStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateAssetApprovalStatus(this._res);

  TRes _res;

  call({Input$UpdateAssetApprovalInput? input}) => _res;
}

class Mutation$updateAssetApprovalStatus {
  Mutation$updateAssetApprovalStatus({
    required this.updateAssetApprovalStatus,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateAssetApprovalStatus.fromJson(
      Map<String, dynamic> json) {
    final l$updateAssetApprovalStatus = json['updateAssetApprovalStatus'];
    final l$$__typename = json['__typename'];
    return Mutation$updateAssetApprovalStatus(
      updateAssetApprovalStatus:
          Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus.fromJson(
              (l$updateAssetApprovalStatus as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus
      updateAssetApprovalStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAssetApprovalStatus = updateAssetApprovalStatus;
    _resultData['updateAssetApprovalStatus'] =
        l$updateAssetApprovalStatus.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAssetApprovalStatus = updateAssetApprovalStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateAssetApprovalStatus,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updateAssetApprovalStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAssetApprovalStatus = updateAssetApprovalStatus;
    final lOther$updateAssetApprovalStatus = other.updateAssetApprovalStatus;
    if (l$updateAssetApprovalStatus != lOther$updateAssetApprovalStatus) {
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

extension UtilityExtension$Mutation$updateAssetApprovalStatus
    on Mutation$updateAssetApprovalStatus {
  CopyWith$Mutation$updateAssetApprovalStatus<
          Mutation$updateAssetApprovalStatus>
      get copyWith => CopyWith$Mutation$updateAssetApprovalStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateAssetApprovalStatus<TRes> {
  factory CopyWith$Mutation$updateAssetApprovalStatus(
    Mutation$updateAssetApprovalStatus instance,
    TRes Function(Mutation$updateAssetApprovalStatus) then,
  ) = _CopyWithImpl$Mutation$updateAssetApprovalStatus;

  factory CopyWith$Mutation$updateAssetApprovalStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateAssetApprovalStatus;

  TRes call({
    Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus?
        updateAssetApprovalStatus,
    String? $__typename,
  });
  CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus<TRes>
      get updateAssetApprovalStatus;
}

class _CopyWithImpl$Mutation$updateAssetApprovalStatus<TRes>
    implements CopyWith$Mutation$updateAssetApprovalStatus<TRes> {
  _CopyWithImpl$Mutation$updateAssetApprovalStatus(
    this._instance,
    this._then,
  );

  final Mutation$updateAssetApprovalStatus _instance;

  final TRes Function(Mutation$updateAssetApprovalStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAssetApprovalStatus = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateAssetApprovalStatus(
        updateAssetApprovalStatus: updateAssetApprovalStatus == _undefined ||
                updateAssetApprovalStatus == null
            ? _instance.updateAssetApprovalStatus
            : (updateAssetApprovalStatus
                as Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus<TRes>
      get updateAssetApprovalStatus {
    final local$updateAssetApprovalStatus = _instance.updateAssetApprovalStatus;
    return CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus(
        local$updateAssetApprovalStatus,
        (e) => call(updateAssetApprovalStatus: e));
  }
}

class _CopyWithStubImpl$Mutation$updateAssetApprovalStatus<TRes>
    implements CopyWith$Mutation$updateAssetApprovalStatus<TRes> {
  _CopyWithStubImpl$Mutation$updateAssetApprovalStatus(this._res);

  TRes _res;

  call({
    Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus?
        updateAssetApprovalStatus,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus<TRes>
      get updateAssetApprovalStatus =>
          CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus
              .stub(_res);
}

const documentNodeMutationupdateAssetApprovalStatus =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateAssetApprovalStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateAssetApprovalInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateAssetApprovalStatus'),
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

class Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus {
  Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus({
    required this.successAssetIds,
    required this.failedAssetIds,
    this.$__typename = 'BulkAssetResult',
  });

  factory Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus.fromJson(
      Map<String, dynamic> json) {
    final l$successAssetIds = json['successAssetIds'];
    final l$failedAssetIds = json['failedAssetIds'];
    final l$$__typename = json['__typename'];
    return Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus(
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
    if (!(other
            is Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus) ||
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

extension UtilityExtension$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus
    on Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus {
  CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus<
          Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus>
      get copyWith =>
          CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus<
    TRes> {
  factory CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus(
    Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus instance,
    TRes Function(Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus)
        then,
  ) = _CopyWithImpl$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus;

  factory CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus;

  TRes call({
    List<String>? successAssetIds,
    List<String>? failedAssetIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus<
        TRes>
    implements
        CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus<
            TRes> {
  _CopyWithImpl$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus(
    this._instance,
    this._then,
  );

  final Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus _instance;

  final TRes Function(
      Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? successAssetIds = _undefined,
    Object? failedAssetIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus(
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

class _CopyWithStubImpl$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus<
        TRes>
    implements
        CopyWith$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus<
            TRes> {
  _CopyWithStubImpl$Mutation$updateAssetApprovalStatus$updateAssetApprovalStatus(
      this._res);

  TRes _res;

  call({
    List<String>? successAssetIds,
    List<String>? failedAssetIds,
    String? $__typename,
  }) =>
      _res;
}
