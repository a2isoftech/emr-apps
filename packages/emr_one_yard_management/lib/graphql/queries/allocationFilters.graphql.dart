import 'package:gql/ast.dart';

class Query$allocationFilters {
  Query$allocationFilters({
    this.allocationFilters,
    this.$__typename = 'Query',
  });

  factory Query$allocationFilters.fromJson(Map<String, dynamic> json) {
    final l$allocationFilters = json['allocationFilters'];
    final l$$__typename = json['__typename'];
    return Query$allocationFilters(
      allocationFilters: (l$allocationFilters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$allocationFilters$allocationFilters.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$allocationFilters$allocationFilters?>? allocationFilters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allocationFilters = allocationFilters;
    _resultData['allocationFilters'] =
        l$allocationFilters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allocationFilters = allocationFilters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$allocationFilters == null
          ? null
          : Object.hashAll(l$allocationFilters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$allocationFilters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allocationFilters = allocationFilters;
    final lOther$allocationFilters = other.allocationFilters;
    if (l$allocationFilters != null && lOther$allocationFilters != null) {
      if (l$allocationFilters.length != lOther$allocationFilters.length) {
        return false;
      }
      for (int i = 0; i < l$allocationFilters.length; i++) {
        final l$allocationFilters$entry = l$allocationFilters[i];
        final lOther$allocationFilters$entry = lOther$allocationFilters[i];
        if (l$allocationFilters$entry != lOther$allocationFilters$entry) {
          return false;
        }
      }
    } else if (l$allocationFilters != lOther$allocationFilters) {
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

extension UtilityExtension$Query$allocationFilters on Query$allocationFilters {
  CopyWith$Query$allocationFilters<Query$allocationFilters> get copyWith =>
      CopyWith$Query$allocationFilters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$allocationFilters<TRes> {
  factory CopyWith$Query$allocationFilters(
    Query$allocationFilters instance,
    TRes Function(Query$allocationFilters) then,
  ) = _CopyWithImpl$Query$allocationFilters;

  factory CopyWith$Query$allocationFilters.stub(TRes res) =
      _CopyWithStubImpl$Query$allocationFilters;

  TRes call({
    List<Query$allocationFilters$allocationFilters?>? allocationFilters,
    String? $__typename,
  });
  TRes allocationFilters(
      Iterable<Query$allocationFilters$allocationFilters?>? Function(
              Iterable<
                  CopyWith$Query$allocationFilters$allocationFilters<
                      Query$allocationFilters$allocationFilters>?>?)
          _fn);
}

class _CopyWithImpl$Query$allocationFilters<TRes>
    implements CopyWith$Query$allocationFilters<TRes> {
  _CopyWithImpl$Query$allocationFilters(
    this._instance,
    this._then,
  );

  final Query$allocationFilters _instance;

  final TRes Function(Query$allocationFilters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allocationFilters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$allocationFilters(
        allocationFilters: allocationFilters == _undefined
            ? _instance.allocationFilters
            : (allocationFilters
                as List<Query$allocationFilters$allocationFilters?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes allocationFilters(
          Iterable<Query$allocationFilters$allocationFilters?>? Function(
                  Iterable<
                      CopyWith$Query$allocationFilters$allocationFilters<
                          Query$allocationFilters$allocationFilters>?>?)
              _fn) =>
      call(
          allocationFilters:
              _fn(_instance.allocationFilters?.map((e) => e == null
                  ? null
                  : CopyWith$Query$allocationFilters$allocationFilters(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$allocationFilters<TRes>
    implements CopyWith$Query$allocationFilters<TRes> {
  _CopyWithStubImpl$Query$allocationFilters(this._res);

  TRes _res;

  call({
    List<Query$allocationFilters$allocationFilters?>? allocationFilters,
    String? $__typename,
  }) =>
      _res;

  allocationFilters(_fn) => _res;
}

const documentNodeQueryallocationFilters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'allocationFilters'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allocationFilters'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$allocationFilters$allocationFilters {
  Query$allocationFilters$allocationFilters({
    required this.id,
    this.name,
    this.$__typename = 'FilterModel',
  });

  factory Query$allocationFilters$allocationFilters.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$allocationFilters$allocationFilters(
      id: (l$id as int),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? name;

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
    if (!(other is Query$allocationFilters$allocationFilters) ||
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

extension UtilityExtension$Query$allocationFilters$allocationFilters
    on Query$allocationFilters$allocationFilters {
  CopyWith$Query$allocationFilters$allocationFilters<
          Query$allocationFilters$allocationFilters>
      get copyWith => CopyWith$Query$allocationFilters$allocationFilters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$allocationFilters$allocationFilters<TRes> {
  factory CopyWith$Query$allocationFilters$allocationFilters(
    Query$allocationFilters$allocationFilters instance,
    TRes Function(Query$allocationFilters$allocationFilters) then,
  ) = _CopyWithImpl$Query$allocationFilters$allocationFilters;

  factory CopyWith$Query$allocationFilters$allocationFilters.stub(TRes res) =
      _CopyWithStubImpl$Query$allocationFilters$allocationFilters;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$allocationFilters$allocationFilters<TRes>
    implements CopyWith$Query$allocationFilters$allocationFilters<TRes> {
  _CopyWithImpl$Query$allocationFilters$allocationFilters(
    this._instance,
    this._then,
  );

  final Query$allocationFilters$allocationFilters _instance;

  final TRes Function(Query$allocationFilters$allocationFilters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$allocationFilters$allocationFilters(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$allocationFilters$allocationFilters<TRes>
    implements CopyWith$Query$allocationFilters$allocationFilters<TRes> {
  _CopyWithStubImpl$Query$allocationFilters$allocationFilters(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
