import 'package:gql/ast.dart';

class Variables$Query$GetWorkOrderIds {
  factory Variables$Query$GetWorkOrderIds({
    required String searchPattern,
    bool? filterForUser,
    List<int>? stateIds,
  }) =>
      Variables$Query$GetWorkOrderIds._({
        r'searchPattern': searchPattern,
        if (filterForUser != null) r'filterForUser': filterForUser,
        if (stateIds != null) r'stateIds': stateIds,
      });

  Variables$Query$GetWorkOrderIds._(this._$data);

  factory Variables$Query$GetWorkOrderIds.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$searchPattern = data['searchPattern'];
    result$data['searchPattern'] = (l$searchPattern as String);
    if (data.containsKey('filterForUser')) {
      final l$filterForUser = data['filterForUser'];
      result$data['filterForUser'] = (l$filterForUser as bool?);
    }
    if (data.containsKey('stateIds')) {
      final l$stateIds = data['stateIds'];
      result$data['stateIds'] =
          (l$stateIds as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    return Variables$Query$GetWorkOrderIds._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchPattern => (_$data['searchPattern'] as String);

  bool? get filterForUser => (_$data['filterForUser'] as bool?);

  List<int>? get stateIds => (_$data['stateIds'] as List<int>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchPattern = searchPattern;
    result$data['searchPattern'] = l$searchPattern;
    if (_$data.containsKey('filterForUser')) {
      final l$filterForUser = filterForUser;
      result$data['filterForUser'] = l$filterForUser;
    }
    if (_$data.containsKey('stateIds')) {
      final l$stateIds = stateIds;
      result$data['stateIds'] = l$stateIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetWorkOrderIds<Variables$Query$GetWorkOrderIds>
      get copyWith => CopyWith$Variables$Query$GetWorkOrderIds(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetWorkOrderIds) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchPattern = searchPattern;
    final lOther$searchPattern = other.searchPattern;
    if (l$searchPattern != lOther$searchPattern) {
      return false;
    }
    final l$filterForUser = filterForUser;
    final lOther$filterForUser = other.filterForUser;
    if (_$data.containsKey('filterForUser') !=
        other._$data.containsKey('filterForUser')) {
      return false;
    }
    if (l$filterForUser != lOther$filterForUser) {
      return false;
    }
    final l$stateIds = stateIds;
    final lOther$stateIds = other.stateIds;
    if (_$data.containsKey('stateIds') !=
        other._$data.containsKey('stateIds')) {
      return false;
    }
    if (l$stateIds != null && lOther$stateIds != null) {
      if (l$stateIds.length != lOther$stateIds.length) {
        return false;
      }
      for (int i = 0; i < l$stateIds.length; i++) {
        final l$stateIds$entry = l$stateIds[i];
        final lOther$stateIds$entry = lOther$stateIds[i];
        if (l$stateIds$entry != lOther$stateIds$entry) {
          return false;
        }
      }
    } else if (l$stateIds != lOther$stateIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchPattern = searchPattern;
    final l$filterForUser = filterForUser;
    final l$stateIds = stateIds;
    return Object.hashAll([
      l$searchPattern,
      _$data.containsKey('filterForUser') ? l$filterForUser : const {},
      _$data.containsKey('stateIds')
          ? l$stateIds == null
              ? null
              : Object.hashAll(l$stateIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetWorkOrderIds<TRes> {
  factory CopyWith$Variables$Query$GetWorkOrderIds(
    Variables$Query$GetWorkOrderIds instance,
    TRes Function(Variables$Query$GetWorkOrderIds) then,
  ) = _CopyWithImpl$Variables$Query$GetWorkOrderIds;

  factory CopyWith$Variables$Query$GetWorkOrderIds.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetWorkOrderIds;

  TRes call({
    String? searchPattern,
    bool? filterForUser,
    List<int>? stateIds,
  });
}

class _CopyWithImpl$Variables$Query$GetWorkOrderIds<TRes>
    implements CopyWith$Variables$Query$GetWorkOrderIds<TRes> {
  _CopyWithImpl$Variables$Query$GetWorkOrderIds(
    this._instance,
    this._then,
  );

  final Variables$Query$GetWorkOrderIds _instance;

  final TRes Function(Variables$Query$GetWorkOrderIds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchPattern = _undefined,
    Object? filterForUser = _undefined,
    Object? stateIds = _undefined,
  }) =>
      _then(Variables$Query$GetWorkOrderIds._({
        ..._instance._$data,
        if (searchPattern != _undefined && searchPattern != null)
          'searchPattern': (searchPattern as String),
        if (filterForUser != _undefined)
          'filterForUser': (filterForUser as bool?),
        if (stateIds != _undefined) 'stateIds': (stateIds as List<int>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetWorkOrderIds<TRes>
    implements CopyWith$Variables$Query$GetWorkOrderIds<TRes> {
  _CopyWithStubImpl$Variables$Query$GetWorkOrderIds(this._res);

  TRes _res;

  call({
    String? searchPattern,
    bool? filterForUser,
    List<int>? stateIds,
  }) =>
      _res;
}

class Query$GetWorkOrderIds {
  Query$GetWorkOrderIds({
    required this.workOrderIds,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetWorkOrderIds.fromJson(Map<String, dynamic> json) {
    final l$workOrderIds = json['workOrderIds'];
    final l$$__typename = json['__typename'];
    return Query$GetWorkOrderIds(
      workOrderIds:
          (l$workOrderIds as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> workOrderIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workOrderIds = workOrderIds;
    _resultData['workOrderIds'] = l$workOrderIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workOrderIds = workOrderIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$workOrderIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetWorkOrderIds) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$workOrderIds = workOrderIds;
    final lOther$workOrderIds = other.workOrderIds;
    if (l$workOrderIds.length != lOther$workOrderIds.length) {
      return false;
    }
    for (int i = 0; i < l$workOrderIds.length; i++) {
      final l$workOrderIds$entry = l$workOrderIds[i];
      final lOther$workOrderIds$entry = lOther$workOrderIds[i];
      if (l$workOrderIds$entry != lOther$workOrderIds$entry) {
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

extension UtilityExtension$Query$GetWorkOrderIds on Query$GetWorkOrderIds {
  CopyWith$Query$GetWorkOrderIds<Query$GetWorkOrderIds> get copyWith =>
      CopyWith$Query$GetWorkOrderIds(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWorkOrderIds<TRes> {
  factory CopyWith$Query$GetWorkOrderIds(
    Query$GetWorkOrderIds instance,
    TRes Function(Query$GetWorkOrderIds) then,
  ) = _CopyWithImpl$Query$GetWorkOrderIds;

  factory CopyWith$Query$GetWorkOrderIds.stub(TRes res) =
      _CopyWithStubImpl$Query$GetWorkOrderIds;

  TRes call({
    List<String>? workOrderIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetWorkOrderIds<TRes>
    implements CopyWith$Query$GetWorkOrderIds<TRes> {
  _CopyWithImpl$Query$GetWorkOrderIds(
    this._instance,
    this._then,
  );

  final Query$GetWorkOrderIds _instance;

  final TRes Function(Query$GetWorkOrderIds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workOrderIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetWorkOrderIds(
        workOrderIds: workOrderIds == _undefined || workOrderIds == null
            ? _instance.workOrderIds
            : (workOrderIds as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetWorkOrderIds<TRes>
    implements CopyWith$Query$GetWorkOrderIds<TRes> {
  _CopyWithStubImpl$Query$GetWorkOrderIds(this._res);

  TRes _res;

  call({
    List<String>? workOrderIds,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryGetWorkOrderIds = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetWorkOrderIds'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchPattern')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filterForUser')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'stateIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'workOrderIds'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'searchPattern'),
            value: VariableNode(name: NameNode(value: 'searchPattern')),
          ),
          ArgumentNode(
            name: NameNode(value: 'filterForUser'),
            value: VariableNode(name: NameNode(value: 'filterForUser')),
          ),
          ArgumentNode(
            name: NameNode(value: 'stateIds'),
            value: VariableNode(name: NameNode(value: 'stateIds')),
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
    ]),
  ),
]);
