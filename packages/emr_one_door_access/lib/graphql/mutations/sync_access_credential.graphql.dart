import 'package:gql/ast.dart';

class Variables$Mutation$SyncCredential {
  factory Variables$Mutation$SyncCredential(
          {required String accessCredentialId}) =>
      Variables$Mutation$SyncCredential._({
        r'accessCredentialId': accessCredentialId,
      });

  Variables$Mutation$SyncCredential._(this._$data);

  factory Variables$Mutation$SyncCredential.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accessCredentialId = data['accessCredentialId'];
    result$data['accessCredentialId'] = (l$accessCredentialId as String);
    return Variables$Mutation$SyncCredential._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessCredentialId => (_$data['accessCredentialId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessCredentialId = accessCredentialId;
    result$data['accessCredentialId'] = l$accessCredentialId;
    return result$data;
  }

  CopyWith$Variables$Mutation$SyncCredential<Variables$Mutation$SyncCredential>
      get copyWith => CopyWith$Variables$Mutation$SyncCredential(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SyncCredential ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessCredentialId = accessCredentialId;
    final lOther$accessCredentialId = other.accessCredentialId;
    if (l$accessCredentialId != lOther$accessCredentialId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessCredentialId = accessCredentialId;
    return Object.hashAll([l$accessCredentialId]);
  }
}

abstract class CopyWith$Variables$Mutation$SyncCredential<TRes> {
  factory CopyWith$Variables$Mutation$SyncCredential(
    Variables$Mutation$SyncCredential instance,
    TRes Function(Variables$Mutation$SyncCredential) then,
  ) = _CopyWithImpl$Variables$Mutation$SyncCredential;

  factory CopyWith$Variables$Mutation$SyncCredential.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SyncCredential;

  TRes call({String? accessCredentialId});
}

class _CopyWithImpl$Variables$Mutation$SyncCredential<TRes>
    implements CopyWith$Variables$Mutation$SyncCredential<TRes> {
  _CopyWithImpl$Variables$Mutation$SyncCredential(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SyncCredential _instance;

  final TRes Function(Variables$Mutation$SyncCredential) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accessCredentialId = _undefined}) =>
      _then(Variables$Mutation$SyncCredential._({
        ..._instance._$data,
        if (accessCredentialId != _undefined && accessCredentialId != null)
          'accessCredentialId': (accessCredentialId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SyncCredential<TRes>
    implements CopyWith$Variables$Mutation$SyncCredential<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SyncCredential(this._res);

  TRes _res;

  call({String? accessCredentialId}) => _res;
}

class Mutation$SyncCredential {
  Mutation$SyncCredential({
    required this.syncCredential,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SyncCredential.fromJson(Map<String, dynamic> json) {
    final l$syncCredential = json['syncCredential'];
    final l$$__typename = json['__typename'];
    return Mutation$SyncCredential(
      syncCredential: (l$syncCredential as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool syncCredential;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$syncCredential = syncCredential;
    _resultData['syncCredential'] = l$syncCredential;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$syncCredential = syncCredential;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$syncCredential,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SyncCredential || runtimeType != other.runtimeType) {
      return false;
    }
    final l$syncCredential = syncCredential;
    final lOther$syncCredential = other.syncCredential;
    if (l$syncCredential != lOther$syncCredential) {
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

extension UtilityExtension$Mutation$SyncCredential on Mutation$SyncCredential {
  CopyWith$Mutation$SyncCredential<Mutation$SyncCredential> get copyWith =>
      CopyWith$Mutation$SyncCredential(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SyncCredential<TRes> {
  factory CopyWith$Mutation$SyncCredential(
    Mutation$SyncCredential instance,
    TRes Function(Mutation$SyncCredential) then,
  ) = _CopyWithImpl$Mutation$SyncCredential;

  factory CopyWith$Mutation$SyncCredential.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SyncCredential;

  TRes call({
    bool? syncCredential,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SyncCredential<TRes>
    implements CopyWith$Mutation$SyncCredential<TRes> {
  _CopyWithImpl$Mutation$SyncCredential(
    this._instance,
    this._then,
  );

  final Mutation$SyncCredential _instance;

  final TRes Function(Mutation$SyncCredential) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? syncCredential = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SyncCredential(
        syncCredential: syncCredential == _undefined || syncCredential == null
            ? _instance.syncCredential
            : (syncCredential as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SyncCredential<TRes>
    implements CopyWith$Mutation$SyncCredential<TRes> {
  _CopyWithStubImpl$Mutation$SyncCredential(this._res);

  TRes _res;

  call({
    bool? syncCredential,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSyncCredential = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SyncCredential'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'accessCredentialId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'syncCredential'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'accessCredentialId'),
            value: VariableNode(name: NameNode(value: 'accessCredentialId')),
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
