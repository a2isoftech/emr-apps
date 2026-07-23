import 'package:gql/ast.dart';

class Variables$Query$syncdata {
  factory Variables$Query$syncdata({required String tableName}) =>
      Variables$Query$syncdata._({
        r'tableName': tableName,
      });

  Variables$Query$syncdata._(this._$data);

  factory Variables$Query$syncdata.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$tableName = data['tableName'];
    result$data['tableName'] = (l$tableName as String);
    return Variables$Query$syncdata._(result$data);
  }

  Map<String, dynamic> _$data;

  String get tableName => (_$data['tableName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$tableName = tableName;
    result$data['tableName'] = l$tableName;
    return result$data;
  }

  CopyWith$Variables$Query$syncdata<Variables$Query$syncdata> get copyWith =>
      CopyWith$Variables$Query$syncdata(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$syncdata) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tableName = tableName;
    final lOther$tableName = other.tableName;
    if (l$tableName != lOther$tableName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$tableName = tableName;
    return Object.hashAll([l$tableName]);
  }
}

abstract class CopyWith$Variables$Query$syncdata<TRes> {
  factory CopyWith$Variables$Query$syncdata(
    Variables$Query$syncdata instance,
    TRes Function(Variables$Query$syncdata) then,
  ) = _CopyWithImpl$Variables$Query$syncdata;

  factory CopyWith$Variables$Query$syncdata.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$syncdata;

  TRes call({String? tableName});
}

class _CopyWithImpl$Variables$Query$syncdata<TRes>
    implements CopyWith$Variables$Query$syncdata<TRes> {
  _CopyWithImpl$Variables$Query$syncdata(
    this._instance,
    this._then,
  );

  final Variables$Query$syncdata _instance;

  final TRes Function(Variables$Query$syncdata) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? tableName = _undefined}) =>
      _then(Variables$Query$syncdata._({
        ..._instance._$data,
        if (tableName != _undefined && tableName != null)
          'tableName': (tableName as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$syncdata<TRes>
    implements CopyWith$Variables$Query$syncdata<TRes> {
  _CopyWithStubImpl$Variables$Query$syncdata(this._res);

  TRes _res;

  call({String? tableName}) => _res;
}

class Query$syncdata {
  Query$syncdata({
    required this.syncData,
    this.$__typename = 'Query',
  });

  factory Query$syncdata.fromJson(Map<String, dynamic> json) {
    final l$syncData = json['syncData'];
    final l$$__typename = json['__typename'];
    return Query$syncdata(
      syncData: (l$syncData as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool syncData;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$syncData = syncData;
    _resultData['syncData'] = l$syncData;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$syncData = syncData;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$syncData,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$syncdata) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$syncData = syncData;
    final lOther$syncData = other.syncData;
    if (l$syncData != lOther$syncData) {
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

extension UtilityExtension$Query$syncdata on Query$syncdata {
  CopyWith$Query$syncdata<Query$syncdata> get copyWith =>
      CopyWith$Query$syncdata(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$syncdata<TRes> {
  factory CopyWith$Query$syncdata(
    Query$syncdata instance,
    TRes Function(Query$syncdata) then,
  ) = _CopyWithImpl$Query$syncdata;

  factory CopyWith$Query$syncdata.stub(TRes res) =
      _CopyWithStubImpl$Query$syncdata;

  TRes call({
    bool? syncData,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$syncdata<TRes>
    implements CopyWith$Query$syncdata<TRes> {
  _CopyWithImpl$Query$syncdata(
    this._instance,
    this._then,
  );

  final Query$syncdata _instance;

  final TRes Function(Query$syncdata) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? syncData = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$syncdata(
        syncData: syncData == _undefined || syncData == null
            ? _instance.syncData
            : (syncData as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$syncdata<TRes>
    implements CopyWith$Query$syncdata<TRes> {
  _CopyWithStubImpl$Query$syncdata(this._res);

  TRes _res;

  call({
    bool? syncData,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQuerysyncdata = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'syncdata'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'tableName')),
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
        name: NameNode(value: 'syncData'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'tableName'),
            value: VariableNode(name: NameNode(value: 'tableName')),
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
