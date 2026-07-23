import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$approveNewAssets {
  factory Variables$Mutation$approveNewAssets(
          {required Input$BulkAssetRequestInput input}) =>
      Variables$Mutation$approveNewAssets._({
        r'input': input,
      });

  Variables$Mutation$approveNewAssets._(this._$data);

  factory Variables$Mutation$approveNewAssets.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$BulkAssetRequestInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$approveNewAssets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BulkAssetRequestInput get input =>
      (_$data['input'] as Input$BulkAssetRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$approveNewAssets<
          Variables$Mutation$approveNewAssets>
      get copyWith => CopyWith$Variables$Mutation$approveNewAssets(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$approveNewAssets) ||
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

abstract class CopyWith$Variables$Mutation$approveNewAssets<TRes> {
  factory CopyWith$Variables$Mutation$approveNewAssets(
    Variables$Mutation$approveNewAssets instance,
    TRes Function(Variables$Mutation$approveNewAssets) then,
  ) = _CopyWithImpl$Variables$Mutation$approveNewAssets;

  factory CopyWith$Variables$Mutation$approveNewAssets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$approveNewAssets;

  TRes call({Input$BulkAssetRequestInput? input});
}

class _CopyWithImpl$Variables$Mutation$approveNewAssets<TRes>
    implements CopyWith$Variables$Mutation$approveNewAssets<TRes> {
  _CopyWithImpl$Variables$Mutation$approveNewAssets(
    this._instance,
    this._then,
  );

  final Variables$Mutation$approveNewAssets _instance;

  final TRes Function(Variables$Mutation$approveNewAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$approveNewAssets._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BulkAssetRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$approveNewAssets<TRes>
    implements CopyWith$Variables$Mutation$approveNewAssets<TRes> {
  _CopyWithStubImpl$Variables$Mutation$approveNewAssets(this._res);

  TRes _res;

  call({Input$BulkAssetRequestInput? input}) => _res;
}

class Mutation$approveNewAssets {
  Mutation$approveNewAssets({
    required this.approveAsset,
    this.$__typename = 'Mutation',
  });

  factory Mutation$approveNewAssets.fromJson(Map<String, dynamic> json) {
    final l$approveAsset = json['approveAsset'];
    final l$$__typename = json['__typename'];
    return Mutation$approveNewAssets(
      approveAsset: Mutation$approveNewAssets$approveAsset.fromJson(
          (l$approveAsset as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$approveNewAssets$approveAsset approveAsset;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$approveAsset = approveAsset;
    _resultData['approveAsset'] = l$approveAsset.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$approveAsset = approveAsset;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$approveAsset,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$approveNewAssets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$approveAsset = approveAsset;
    final lOther$approveAsset = other.approveAsset;
    if (l$approveAsset != lOther$approveAsset) {
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

extension UtilityExtension$Mutation$approveNewAssets
    on Mutation$approveNewAssets {
  CopyWith$Mutation$approveNewAssets<Mutation$approveNewAssets> get copyWith =>
      CopyWith$Mutation$approveNewAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$approveNewAssets<TRes> {
  factory CopyWith$Mutation$approveNewAssets(
    Mutation$approveNewAssets instance,
    TRes Function(Mutation$approveNewAssets) then,
  ) = _CopyWithImpl$Mutation$approveNewAssets;

  factory CopyWith$Mutation$approveNewAssets.stub(TRes res) =
      _CopyWithStubImpl$Mutation$approveNewAssets;

  TRes call({
    Mutation$approveNewAssets$approveAsset? approveAsset,
    String? $__typename,
  });
  CopyWith$Mutation$approveNewAssets$approveAsset<TRes> get approveAsset;
}

class _CopyWithImpl$Mutation$approveNewAssets<TRes>
    implements CopyWith$Mutation$approveNewAssets<TRes> {
  _CopyWithImpl$Mutation$approveNewAssets(
    this._instance,
    this._then,
  );

  final Mutation$approveNewAssets _instance;

  final TRes Function(Mutation$approveNewAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? approveAsset = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$approveNewAssets(
        approveAsset: approveAsset == _undefined || approveAsset == null
            ? _instance.approveAsset
            : (approveAsset as Mutation$approveNewAssets$approveAsset),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$approveNewAssets$approveAsset<TRes> get approveAsset {
    final local$approveAsset = _instance.approveAsset;
    return CopyWith$Mutation$approveNewAssets$approveAsset(
        local$approveAsset, (e) => call(approveAsset: e));
  }
}

class _CopyWithStubImpl$Mutation$approveNewAssets<TRes>
    implements CopyWith$Mutation$approveNewAssets<TRes> {
  _CopyWithStubImpl$Mutation$approveNewAssets(this._res);

  TRes _res;

  call({
    Mutation$approveNewAssets$approveAsset? approveAsset,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$approveNewAssets$approveAsset<TRes> get approveAsset =>
      CopyWith$Mutation$approveNewAssets$approveAsset.stub(_res);
}

const documentNodeMutationapproveNewAssets = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'approveNewAssets'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BulkAssetRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'approveAsset'),
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

class Mutation$approveNewAssets$approveAsset {
  Mutation$approveNewAssets$approveAsset({
    required this.successAssetIds,
    required this.failedAssetIds,
    this.$__typename = 'BulkAssetResult',
  });

  factory Mutation$approveNewAssets$approveAsset.fromJson(
      Map<String, dynamic> json) {
    final l$successAssetIds = json['successAssetIds'];
    final l$failedAssetIds = json['failedAssetIds'];
    final l$$__typename = json['__typename'];
    return Mutation$approveNewAssets$approveAsset(
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
    if (!(other is Mutation$approveNewAssets$approveAsset) ||
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

extension UtilityExtension$Mutation$approveNewAssets$approveAsset
    on Mutation$approveNewAssets$approveAsset {
  CopyWith$Mutation$approveNewAssets$approveAsset<
          Mutation$approveNewAssets$approveAsset>
      get copyWith => CopyWith$Mutation$approveNewAssets$approveAsset(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$approveNewAssets$approveAsset<TRes> {
  factory CopyWith$Mutation$approveNewAssets$approveAsset(
    Mutation$approveNewAssets$approveAsset instance,
    TRes Function(Mutation$approveNewAssets$approveAsset) then,
  ) = _CopyWithImpl$Mutation$approveNewAssets$approveAsset;

  factory CopyWith$Mutation$approveNewAssets$approveAsset.stub(TRes res) =
      _CopyWithStubImpl$Mutation$approveNewAssets$approveAsset;

  TRes call({
    List<String>? successAssetIds,
    List<String>? failedAssetIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$approveNewAssets$approveAsset<TRes>
    implements CopyWith$Mutation$approveNewAssets$approveAsset<TRes> {
  _CopyWithImpl$Mutation$approveNewAssets$approveAsset(
    this._instance,
    this._then,
  );

  final Mutation$approveNewAssets$approveAsset _instance;

  final TRes Function(Mutation$approveNewAssets$approveAsset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? successAssetIds = _undefined,
    Object? failedAssetIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$approveNewAssets$approveAsset(
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

class _CopyWithStubImpl$Mutation$approveNewAssets$approveAsset<TRes>
    implements CopyWith$Mutation$approveNewAssets$approveAsset<TRes> {
  _CopyWithStubImpl$Mutation$approveNewAssets$approveAsset(this._res);

  TRes _res;

  call({
    List<String>? successAssetIds,
    List<String>? failedAssetIds,
    String? $__typename,
  }) =>
      _res;
}
