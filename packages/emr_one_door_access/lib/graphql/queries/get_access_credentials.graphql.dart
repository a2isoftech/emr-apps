import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAccessCredentials {
  factory Variables$Query$GetAccessCredentials({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$SearchAccessCredentialsInput input,
  }) =>
      Variables$Query$GetAccessCredentials._({
        if (after != null) r'after': after,
        if (before != null) r'before': before,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        r'input': input,
      });

  Variables$Query$GetAccessCredentials._(this._$data);

  factory Variables$Query$GetAccessCredentials.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    final l$input = data['input'];
    result$data['input'] = Input$SearchAccessCredentialsInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$GetAccessCredentials._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$SearchAccessCredentialsInput get input =>
      (_$data['input'] as Input$SearchAccessCredentialsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetAccessCredentials<
          Variables$Query$GetAccessCredentials>
      get copyWith => CopyWith$Variables$Query$GetAccessCredentials(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccessCredentials ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
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
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$input = input;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAccessCredentials<TRes> {
  factory CopyWith$Variables$Query$GetAccessCredentials(
    Variables$Query$GetAccessCredentials instance,
    TRes Function(Variables$Query$GetAccessCredentials) then,
  ) = _CopyWithImpl$Variables$Query$GetAccessCredentials;

  factory CopyWith$Variables$Query$GetAccessCredentials.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccessCredentials;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchAccessCredentialsInput? input,
  });
}

class _CopyWithImpl$Variables$Query$GetAccessCredentials<TRes>
    implements CopyWith$Variables$Query$GetAccessCredentials<TRes> {
  _CopyWithImpl$Variables$Query$GetAccessCredentials(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAccessCredentials _instance;

  final TRes Function(Variables$Query$GetAccessCredentials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Query$GetAccessCredentials._({
        ..._instance._$data,
        if (after != _undefined) 'after': (after as String?),
        if (before != _undefined) 'before': (before as String?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (input != _undefined && input != null)
          'input': (input as Input$SearchAccessCredentialsInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAccessCredentials<TRes>
    implements CopyWith$Variables$Query$GetAccessCredentials<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccessCredentials(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchAccessCredentialsInput? input,
  }) =>
      _res;
}

class Query$GetAccessCredentials {
  Query$GetAccessCredentials({
    this.searchAccessCredentials,
    this.$__typename = 'Query',
  });

  factory Query$GetAccessCredentials.fromJson(Map<String, dynamic> json) {
    final l$searchAccessCredentials = json['searchAccessCredentials'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessCredentials(
      searchAccessCredentials: l$searchAccessCredentials == null
          ? null
          : Query$GetAccessCredentials$searchAccessCredentials.fromJson(
              (l$searchAccessCredentials as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccessCredentials$searchAccessCredentials?
      searchAccessCredentials;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAccessCredentials = searchAccessCredentials;
    _resultData['searchAccessCredentials'] =
        l$searchAccessCredentials?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAccessCredentials = searchAccessCredentials;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$searchAccessCredentials,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessCredentials ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAccessCredentials = searchAccessCredentials;
    final lOther$searchAccessCredentials = other.searchAccessCredentials;
    if (l$searchAccessCredentials != lOther$searchAccessCredentials) {
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

extension UtilityExtension$Query$GetAccessCredentials
    on Query$GetAccessCredentials {
  CopyWith$Query$GetAccessCredentials<Query$GetAccessCredentials>
      get copyWith => CopyWith$Query$GetAccessCredentials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccessCredentials<TRes> {
  factory CopyWith$Query$GetAccessCredentials(
    Query$GetAccessCredentials instance,
    TRes Function(Query$GetAccessCredentials) then,
  ) = _CopyWithImpl$Query$GetAccessCredentials;

  factory CopyWith$Query$GetAccessCredentials.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessCredentials;

  TRes call({
    Query$GetAccessCredentials$searchAccessCredentials? searchAccessCredentials,
    String? $__typename,
  });
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials<TRes>
      get searchAccessCredentials;
}

class _CopyWithImpl$Query$GetAccessCredentials<TRes>
    implements CopyWith$Query$GetAccessCredentials<TRes> {
  _CopyWithImpl$Query$GetAccessCredentials(
    this._instance,
    this._then,
  );

  final Query$GetAccessCredentials _instance;

  final TRes Function(Query$GetAccessCredentials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAccessCredentials = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccessCredentials(
        searchAccessCredentials: searchAccessCredentials == _undefined
            ? _instance.searchAccessCredentials
            : (searchAccessCredentials
                as Query$GetAccessCredentials$searchAccessCredentials?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials<TRes>
      get searchAccessCredentials {
    final local$searchAccessCredentials = _instance.searchAccessCredentials;
    return local$searchAccessCredentials == null
        ? CopyWith$Query$GetAccessCredentials$searchAccessCredentials.stub(
            _then(_instance))
        : CopyWith$Query$GetAccessCredentials$searchAccessCredentials(
            local$searchAccessCredentials,
            (e) => call(searchAccessCredentials: e));
  }
}

class _CopyWithStubImpl$Query$GetAccessCredentials<TRes>
    implements CopyWith$Query$GetAccessCredentials<TRes> {
  _CopyWithStubImpl$Query$GetAccessCredentials(this._res);

  TRes _res;

  call({
    Query$GetAccessCredentials$searchAccessCredentials? searchAccessCredentials,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials<TRes>
      get searchAccessCredentials =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials.stub(
              _res);
}

const documentNodeQueryGetAccessCredentials = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAccessCredentials'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'before')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchAccessCredentialsInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'searchAccessCredentials'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last'),
            value: VariableNode(name: NameNode(value: 'last')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endCursor'),
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
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'externalId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deletedOn'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deletedInDoorControllerOn'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdInDoorControllerOn'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdOn'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'active'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'accessPointId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'modifiedOn'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'modifiedBy'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'accessPoints'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'restricted'),
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
                name: NameNode(value: 'accessControllers'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
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
                name: NameNode(value: 'users'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'active'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'userName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'azureId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'cardNumber'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'externalId'),
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
                name: NameNode(value: 'groups'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'azureId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'active'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
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

class Query$GetAccessCredentials$searchAccessCredentials {
  Query$GetAccessCredentials$searchAccessCredentials({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'SearchAccessCredentialsConnection',
  });

  factory Query$GetAccessCredentials$searchAccessCredentials.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessCredentials$searchAccessCredentials(
      pageInfo:
          Query$GetAccessCredentials$searchAccessCredentials$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) =>
              Query$GetAccessCredentials$searchAccessCredentials$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccessCredentials$searchAccessCredentials$pageInfo pageInfo;

  final int totalCount;

  final List<Query$GetAccessCredentials$searchAccessCredentials$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessCredentials$searchAccessCredentials ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$GetAccessCredentials$searchAccessCredentials
    on Query$GetAccessCredentials$searchAccessCredentials {
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials<
          Query$GetAccessCredentials$searchAccessCredentials>
      get copyWith =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccessCredentials$searchAccessCredentials<
    TRes> {
  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials(
    Query$GetAccessCredentials$searchAccessCredentials instance,
    TRes Function(Query$GetAccessCredentials$searchAccessCredentials) then,
  ) = _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials;

  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials;

  TRes call({
    Query$GetAccessCredentials$searchAccessCredentials$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetAccessCredentials$searchAccessCredentials$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Query$GetAccessCredentials$searchAccessCredentials$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes<
                      Query$GetAccessCredentials$searchAccessCredentials$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials<TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials<TRes> {
  _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials(
    this._instance,
    this._then,
  );

  final Query$GetAccessCredentials$searchAccessCredentials _instance;

  final TRes Function(Query$GetAccessCredentials$searchAccessCredentials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccessCredentials$searchAccessCredentials(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$GetAccessCredentials$searchAccessCredentials$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$GetAccessCredentials$searchAccessCredentials$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetAccessCredentials$searchAccessCredentials$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes<
                          Query$GetAccessCredentials$searchAccessCredentials$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) =>
              CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials<TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials<TRes> {
  _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials(
      this._res);

  TRes _res;

  call({
    Query$GetAccessCredentials$searchAccessCredentials$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetAccessCredentials$searchAccessCredentials$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo
              .stub(_res);

  nodes(_fn) => _res;
}

class Query$GetAccessCredentials$searchAccessCredentials$pageInfo {
  Query$GetAccessCredentials$searchAccessCredentials$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAccessCredentials$searchAccessCredentials$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessCredentials$searchAccessCredentials$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
      l$startCursor,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessCredentials$searchAccessCredentials$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$GetAccessCredentials$searchAccessCredentials$pageInfo
    on Query$GetAccessCredentials$searchAccessCredentials$pageInfo {
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo<
          Query$GetAccessCredentials$searchAccessCredentials$pageInfo>
      get copyWith =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo<
    TRes> {
  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo(
    Query$GetAccessCredentials$searchAccessCredentials$pageInfo instance,
    TRes Function(Query$GetAccessCredentials$searchAccessCredentials$pageInfo)
        then,
  ) = _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$pageInfo;

  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo<
            TRes> {
  _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetAccessCredentials$searchAccessCredentials$pageInfo _instance;

  final TRes Function(
      Query$GetAccessCredentials$searchAccessCredentials$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccessCredentials$searchAccessCredentials$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccessCredentials$searchAccessCredentials$nodes {
  Query$GetAccessCredentials$searchAccessCredentials$nodes({
    required this.id,
    this.externalId,
    this.deletedOn,
    this.deletedInDoorControllerOn,
    this.createdInDoorControllerOn,
    required this.createdOn,
    required this.active,
    required this.accessPointId,
    this.modifiedOn,
    this.modifiedBy,
    required this.accessPoints,
    required this.accessControllers,
    required this.users,
    required this.groups,
    this.$__typename = 'AccessCredential',
  });

  factory Query$GetAccessCredentials$searchAccessCredentials$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$externalId = json['externalId'];
    final l$deletedOn = json['deletedOn'];
    final l$deletedInDoorControllerOn = json['deletedInDoorControllerOn'];
    final l$createdInDoorControllerOn = json['createdInDoorControllerOn'];
    final l$createdOn = json['createdOn'];
    final l$active = json['active'];
    final l$accessPointId = json['accessPointId'];
    final l$modifiedOn = json['modifiedOn'];
    final l$modifiedBy = json['modifiedBy'];
    final l$accessPoints = json['accessPoints'];
    final l$accessControllers = json['accessControllers'];
    final l$users = json['users'];
    final l$groups = json['groups'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessCredentials$searchAccessCredentials$nodes(
      id: (l$id as String),
      externalId: (l$externalId as String?),
      deletedOn:
          l$deletedOn == null ? null : DateTime.parse((l$deletedOn as String)),
      deletedInDoorControllerOn: l$deletedInDoorControllerOn == null
          ? null
          : DateTime.parse((l$deletedInDoorControllerOn as String)),
      createdInDoorControllerOn: l$createdInDoorControllerOn == null
          ? null
          : DateTime.parse((l$createdInDoorControllerOn as String)),
      createdOn: DateTime.parse((l$createdOn as String)),
      active: (l$active as bool),
      accessPointId: (l$accessPointId as String),
      modifiedOn: l$modifiedOn == null
          ? null
          : DateTime.parse((l$modifiedOn as String)),
      modifiedBy: (l$modifiedBy as String?),
      accessPoints:
          Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints
              .fromJson((l$accessPoints as Map<String, dynamic>)),
      accessControllers:
          Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers
              .fromJson((l$accessControllers as Map<String, dynamic>)),
      users: Query$GetAccessCredentials$searchAccessCredentials$nodes$users
          .fromJson((l$users as Map<String, dynamic>)),
      groups: Query$GetAccessCredentials$searchAccessCredentials$nodes$groups
          .fromJson((l$groups as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? externalId;

  final DateTime? deletedOn;

  final DateTime? deletedInDoorControllerOn;

  final DateTime? createdInDoorControllerOn;

  final DateTime createdOn;

  final bool active;

  final String accessPointId;

  final DateTime? modifiedOn;

  final String? modifiedBy;

  final Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints
      accessPoints;

  final Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers
      accessControllers;

  final Query$GetAccessCredentials$searchAccessCredentials$nodes$users users;

  final Query$GetAccessCredentials$searchAccessCredentials$nodes$groups groups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$deletedOn = deletedOn;
    _resultData['deletedOn'] = l$deletedOn?.toIso8601String();
    final l$deletedInDoorControllerOn = deletedInDoorControllerOn;
    _resultData['deletedInDoorControllerOn'] =
        l$deletedInDoorControllerOn?.toIso8601String();
    final l$createdInDoorControllerOn = createdInDoorControllerOn;
    _resultData['createdInDoorControllerOn'] =
        l$createdInDoorControllerOn?.toIso8601String();
    final l$createdOn = createdOn;
    _resultData['createdOn'] = l$createdOn.toIso8601String();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$accessPointId = accessPointId;
    _resultData['accessPointId'] = l$accessPointId;
    final l$modifiedOn = modifiedOn;
    _resultData['modifiedOn'] = l$modifiedOn?.toIso8601String();
    final l$modifiedBy = modifiedBy;
    _resultData['modifiedBy'] = l$modifiedBy;
    final l$accessPoints = accessPoints;
    _resultData['accessPoints'] = l$accessPoints.toJson();
    final l$accessControllers = accessControllers;
    _resultData['accessControllers'] = l$accessControllers.toJson();
    final l$users = users;
    _resultData['users'] = l$users.toJson();
    final l$groups = groups;
    _resultData['groups'] = l$groups.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$externalId = externalId;
    final l$deletedOn = deletedOn;
    final l$deletedInDoorControllerOn = deletedInDoorControllerOn;
    final l$createdInDoorControllerOn = createdInDoorControllerOn;
    final l$createdOn = createdOn;
    final l$active = active;
    final l$accessPointId = accessPointId;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    final l$accessPoints = accessPoints;
    final l$accessControllers = accessControllers;
    final l$users = users;
    final l$groups = groups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$externalId,
      l$deletedOn,
      l$deletedInDoorControllerOn,
      l$createdInDoorControllerOn,
      l$createdOn,
      l$active,
      l$accessPointId,
      l$modifiedOn,
      l$modifiedBy,
      l$accessPoints,
      l$accessControllers,
      l$users,
      l$groups,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessCredentials$searchAccessCredentials$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$deletedOn = deletedOn;
    final lOther$deletedOn = other.deletedOn;
    if (l$deletedOn != lOther$deletedOn) {
      return false;
    }
    final l$deletedInDoorControllerOn = deletedInDoorControllerOn;
    final lOther$deletedInDoorControllerOn = other.deletedInDoorControllerOn;
    if (l$deletedInDoorControllerOn != lOther$deletedInDoorControllerOn) {
      return false;
    }
    final l$createdInDoorControllerOn = createdInDoorControllerOn;
    final lOther$createdInDoorControllerOn = other.createdInDoorControllerOn;
    if (l$createdInDoorControllerOn != lOther$createdInDoorControllerOn) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    final l$accessPoints = accessPoints;
    final lOther$accessPoints = other.accessPoints;
    if (l$accessPoints != lOther$accessPoints) {
      return false;
    }
    final l$accessControllers = accessControllers;
    final lOther$accessControllers = other.accessControllers;
    if (l$accessControllers != lOther$accessControllers) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != lOther$users) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups != lOther$groups) {
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

extension UtilityExtension$Query$GetAccessCredentials$searchAccessCredentials$nodes
    on Query$GetAccessCredentials$searchAccessCredentials$nodes {
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes<
          Query$GetAccessCredentials$searchAccessCredentials$nodes>
      get copyWith =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes<
    TRes> {
  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes(
    Query$GetAccessCredentials$searchAccessCredentials$nodes instance,
    TRes Function(Query$GetAccessCredentials$searchAccessCredentials$nodes)
        then,
  ) = _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes;

  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes;

  TRes call({
    String? id,
    String? externalId,
    DateTime? deletedOn,
    DateTime? deletedInDoorControllerOn,
    DateTime? createdInDoorControllerOn,
    DateTime? createdOn,
    bool? active,
    String? accessPointId,
    DateTime? modifiedOn,
    String? modifiedBy,
    Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints?
        accessPoints,
    Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers?
        accessControllers,
    Query$GetAccessCredentials$searchAccessCredentials$nodes$users? users,
    Query$GetAccessCredentials$searchAccessCredentials$nodes$groups? groups,
    String? $__typename,
  });
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints<
      TRes> get accessPoints;
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers<
      TRes> get accessControllers;
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users<TRes>
      get users;
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups<TRes>
      get groups;
}

class _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes<
            TRes> {
  _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes(
    this._instance,
    this._then,
  );

  final Query$GetAccessCredentials$searchAccessCredentials$nodes _instance;

  final TRes Function(Query$GetAccessCredentials$searchAccessCredentials$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? externalId = _undefined,
    Object? deletedOn = _undefined,
    Object? deletedInDoorControllerOn = _undefined,
    Object? createdInDoorControllerOn = _undefined,
    Object? createdOn = _undefined,
    Object? active = _undefined,
    Object? accessPointId = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
    Object? accessPoints = _undefined,
    Object? accessControllers = _undefined,
    Object? users = _undefined,
    Object? groups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccessCredentials$searchAccessCredentials$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        externalId: externalId == _undefined
            ? _instance.externalId
            : (externalId as String?),
        deletedOn: deletedOn == _undefined
            ? _instance.deletedOn
            : (deletedOn as DateTime?),
        deletedInDoorControllerOn: deletedInDoorControllerOn == _undefined
            ? _instance.deletedInDoorControllerOn
            : (deletedInDoorControllerOn as DateTime?),
        createdInDoorControllerOn: createdInDoorControllerOn == _undefined
            ? _instance.createdInDoorControllerOn
            : (createdInDoorControllerOn as DateTime?),
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as DateTime),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        accessPointId: accessPointId == _undefined || accessPointId == null
            ? _instance.accessPointId
            : (accessPointId as String),
        modifiedOn: modifiedOn == _undefined
            ? _instance.modifiedOn
            : (modifiedOn as DateTime?),
        modifiedBy: modifiedBy == _undefined
            ? _instance.modifiedBy
            : (modifiedBy as String?),
        accessPoints: accessPoints == _undefined || accessPoints == null
            ? _instance.accessPoints
            : (accessPoints
                as Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints),
        accessControllers: accessControllers == _undefined ||
                accessControllers == null
            ? _instance.accessControllers
            : (accessControllers
                as Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers),
        users: users == _undefined || users == null
            ? _instance.users
            : (users
                as Query$GetAccessCredentials$searchAccessCredentials$nodes$users),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups
                as Query$GetAccessCredentials$searchAccessCredentials$nodes$groups),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints<
      TRes> get accessPoints {
    final local$accessPoints = _instance.accessPoints;
    return CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints(
        local$accessPoints, (e) => call(accessPoints: e));
  }

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers<
      TRes> get accessControllers {
    final local$accessControllers = _instance.accessControllers;
    return CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers(
        local$accessControllers, (e) => call(accessControllers: e));
  }

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users<TRes>
      get users {
    final local$users = _instance.users;
    return CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users(
        local$users, (e) => call(users: e));
  }

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups<TRes>
      get groups {
    final local$groups = _instance.groups;
    return CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups(
        local$groups, (e) => call(groups: e));
  }
}

class _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes<
            TRes> {
  _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes(
      this._res);

  TRes _res;

  call({
    String? id,
    String? externalId,
    DateTime? deletedOn,
    DateTime? deletedInDoorControllerOn,
    DateTime? createdInDoorControllerOn,
    DateTime? createdOn,
    bool? active,
    String? accessPointId,
    DateTime? modifiedOn,
    String? modifiedBy,
    Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints?
        accessPoints,
    Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers?
        accessControllers,
    Query$GetAccessCredentials$searchAccessCredentials$nodes$users? users,
    Query$GetAccessCredentials$searchAccessCredentials$nodes$groups? groups,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints<
          TRes>
      get accessPoints =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints
              .stub(_res);

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers<
          TRes>
      get accessControllers =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers
              .stub(_res);

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users<TRes>
      get users =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users
              .stub(_res);

  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups<TRes>
      get groups =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups
              .stub(_res);
}

class Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints {
  Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints({
    required this.id,
    required this.name,
    required this.restricted,
    this.$__typename = 'AccessPoint',
  });

  factory Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$restricted = json['restricted'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints(
      id: (l$id as String),
      name: (l$name as String),
      restricted: (l$restricted as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool restricted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$restricted = restricted;
    _resultData['restricted'] = l$restricted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$restricted = restricted;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$restricted,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$restricted = restricted;
    final lOther$restricted = other.restricted;
    if (l$restricted != lOther$restricted) {
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

extension UtilityExtension$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints
    on Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints {
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints<
          Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints>
      get copyWith =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints<
    TRes> {
  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints(
    Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints
        instance,
    TRes Function(
            Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints)
        then,
  ) = _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints;

  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints;

  TRes call({
    String? id,
    String? name,
    bool? restricted,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints<
            TRes> {
  _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints(
    this._instance,
    this._then,
  );

  final Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints
      _instance;

  final TRes Function(
          Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? restricted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        restricted: restricted == _undefined || restricted == null
            ? _instance.restricted
            : (restricted as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints<
            TRes> {
  _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessPoints(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    bool? restricted,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers {
  Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers({
    required this.id,
    required this.name,
    this.$__typename = 'AccessController',
  });

  factory Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers
    on Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers {
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers<
          Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers>
      get copyWith =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers<
    TRes> {
  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers(
    Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers
        instance,
    TRes Function(
            Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers)
        then,
  ) = _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers;

  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers<
            TRes> {
  _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers(
    this._instance,
    this._then,
  );

  final Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers
      _instance;

  final TRes Function(
          Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers<
            TRes> {
  _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$accessControllers(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccessCredentials$searchAccessCredentials$nodes$users {
  Query$GetAccessCredentials$searchAccessCredentials$nodes$users({
    required this.id,
    required this.name,
    required this.active,
    required this.userName,
    this.azureId,
    required this.cardNumber,
    this.externalId,
    this.$__typename = 'User',
  });

  factory Query$GetAccessCredentials$searchAccessCredentials$nodes$users.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$active = json['active'];
    final l$userName = json['userName'];
    final l$azureId = json['azureId'];
    final l$cardNumber = json['cardNumber'];
    final l$externalId = json['externalId'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessCredentials$searchAccessCredentials$nodes$users(
      id: (l$id as String),
      name: (l$name as String),
      active: (l$active as bool),
      userName: (l$userName as String),
      azureId: (l$azureId as String?),
      cardNumber: (l$cardNumber as String),
      externalId: (l$externalId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool active;

  final String userName;

  final String? azureId;

  final String cardNumber;

  final String? externalId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$cardNumber = cardNumber;
    _resultData['cardNumber'] = l$cardNumber;
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$active = active;
    final l$userName = userName;
    final l$azureId = azureId;
    final l$cardNumber = cardNumber;
    final l$externalId = externalId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$active,
      l$userName,
      l$azureId,
      l$cardNumber,
      l$externalId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccessCredentials$searchAccessCredentials$nodes$users ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$cardNumber = cardNumber;
    final lOther$cardNumber = other.cardNumber;
    if (l$cardNumber != lOther$cardNumber) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
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

extension UtilityExtension$Query$GetAccessCredentials$searchAccessCredentials$nodes$users
    on Query$GetAccessCredentials$searchAccessCredentials$nodes$users {
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users<
          Query$GetAccessCredentials$searchAccessCredentials$nodes$users>
      get copyWith =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users<
    TRes> {
  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users(
    Query$GetAccessCredentials$searchAccessCredentials$nodes$users instance,
    TRes Function(
            Query$GetAccessCredentials$searchAccessCredentials$nodes$users)
        then,
  ) = _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$users;

  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$users;

  TRes call({
    String? id,
    String? name,
    bool? active,
    String? userName,
    String? azureId,
    String? cardNumber,
    String? externalId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$users<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users<
            TRes> {
  _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$users(
    this._instance,
    this._then,
  );

  final Query$GetAccessCredentials$searchAccessCredentials$nodes$users
      _instance;

  final TRes Function(
      Query$GetAccessCredentials$searchAccessCredentials$nodes$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? active = _undefined,
    Object? userName = _undefined,
    Object? azureId = _undefined,
    Object? cardNumber = _undefined,
    Object? externalId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccessCredentials$searchAccessCredentials$nodes$users(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        userName: userName == _undefined || userName == null
            ? _instance.userName
            : (userName as String),
        azureId:
            azureId == _undefined ? _instance.azureId : (azureId as String?),
        cardNumber: cardNumber == _undefined || cardNumber == null
            ? _instance.cardNumber
            : (cardNumber as String),
        externalId: externalId == _undefined
            ? _instance.externalId
            : (externalId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$users<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$users<
            TRes> {
  _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$users(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    bool? active,
    String? userName,
    String? azureId,
    String? cardNumber,
    String? externalId,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccessCredentials$searchAccessCredentials$nodes$groups {
  Query$GetAccessCredentials$searchAccessCredentials$nodes$groups({
    this.azureId,
    required this.active,
    required this.name,
    required this.id,
    this.$__typename = 'Group',
  });

  factory Query$GetAccessCredentials$searchAccessCredentials$nodes$groups.fromJson(
      Map<String, dynamic> json) {
    final l$azureId = json['azureId'];
    final l$active = json['active'];
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessCredentials$searchAccessCredentials$nodes$groups(
      azureId: (l$azureId as String?),
      active: (l$active as bool),
      name: (l$name as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? azureId;

  final bool active;

  final String name;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$azureId = azureId;
    final l$active = active;
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$azureId,
      l$active,
      l$name,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccessCredentials$searchAccessCredentials$nodes$groups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups
    on Query$GetAccessCredentials$searchAccessCredentials$nodes$groups {
  CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups<
          Query$GetAccessCredentials$searchAccessCredentials$nodes$groups>
      get copyWith =>
          CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups<
    TRes> {
  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups(
    Query$GetAccessCredentials$searchAccessCredentials$nodes$groups instance,
    TRes Function(
            Query$GetAccessCredentials$searchAccessCredentials$nodes$groups)
        then,
  ) = _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups;

  factory CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups;

  TRes call({
    String? azureId,
    bool? active,
    String? name,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups<
            TRes> {
  _CopyWithImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups(
    this._instance,
    this._then,
  );

  final Query$GetAccessCredentials$searchAccessCredentials$nodes$groups
      _instance;

  final TRes Function(
      Query$GetAccessCredentials$searchAccessCredentials$nodes$groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? active = _undefined,
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccessCredentials$searchAccessCredentials$nodes$groups(
        azureId:
            azureId == _undefined ? _instance.azureId : (azureId as String?),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups<
        TRes>
    implements
        CopyWith$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups<
            TRes> {
  _CopyWithStubImpl$Query$GetAccessCredentials$searchAccessCredentials$nodes$groups(
      this._res);

  TRes _res;

  call({
    String? azureId,
    bool? active,
    String? name,
    String? id,
    String? $__typename,
  }) =>
      _res;
}
