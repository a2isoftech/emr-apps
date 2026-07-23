import 'package:gql/ast.dart';

class Query$kPIFilters {
  Query$kPIFilters({
    this.kPIFilters,
    this.$__typename = 'Query',
  });

  factory Query$kPIFilters.fromJson(Map<String, dynamic> json) {
    final l$kPIFilters = json['kPIFilters'];
    final l$$__typename = json['__typename'];
    return Query$kPIFilters(
      kPIFilters: (l$kPIFilters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$kPIFilters$kPIFilters.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$kPIFilters$kPIFilters?>? kPIFilters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kPIFilters = kPIFilters;
    _resultData['kPIFilters'] = l$kPIFilters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kPIFilters = kPIFilters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kPIFilters == null ? null : Object.hashAll(l$kPIFilters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$kPIFilters) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$kPIFilters = kPIFilters;
    final lOther$kPIFilters = other.kPIFilters;
    if (l$kPIFilters != null && lOther$kPIFilters != null) {
      if (l$kPIFilters.length != lOther$kPIFilters.length) {
        return false;
      }
      for (int i = 0; i < l$kPIFilters.length; i++) {
        final l$kPIFilters$entry = l$kPIFilters[i];
        final lOther$kPIFilters$entry = lOther$kPIFilters[i];
        if (l$kPIFilters$entry != lOther$kPIFilters$entry) {
          return false;
        }
      }
    } else if (l$kPIFilters != lOther$kPIFilters) {
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

extension UtilityExtension$Query$kPIFilters on Query$kPIFilters {
  CopyWith$Query$kPIFilters<Query$kPIFilters> get copyWith =>
      CopyWith$Query$kPIFilters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$kPIFilters<TRes> {
  factory CopyWith$Query$kPIFilters(
    Query$kPIFilters instance,
    TRes Function(Query$kPIFilters) then,
  ) = _CopyWithImpl$Query$kPIFilters;

  factory CopyWith$Query$kPIFilters.stub(TRes res) =
      _CopyWithStubImpl$Query$kPIFilters;

  TRes call({
    List<Query$kPIFilters$kPIFilters?>? kPIFilters,
    String? $__typename,
  });
  TRes kPIFilters(
      Iterable<Query$kPIFilters$kPIFilters?>? Function(
              Iterable<
                  CopyWith$Query$kPIFilters$kPIFilters<
                      Query$kPIFilters$kPIFilters>?>?)
          _fn);
}

class _CopyWithImpl$Query$kPIFilters<TRes>
    implements CopyWith$Query$kPIFilters<TRes> {
  _CopyWithImpl$Query$kPIFilters(
    this._instance,
    this._then,
  );

  final Query$kPIFilters _instance;

  final TRes Function(Query$kPIFilters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? kPIFilters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$kPIFilters(
        kPIFilters: kPIFilters == _undefined
            ? _instance.kPIFilters
            : (kPIFilters as List<Query$kPIFilters$kPIFilters?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes kPIFilters(
          Iterable<Query$kPIFilters$kPIFilters?>? Function(
                  Iterable<
                      CopyWith$Query$kPIFilters$kPIFilters<
                          Query$kPIFilters$kPIFilters>?>?)
              _fn) =>
      call(
          kPIFilters: _fn(_instance.kPIFilters?.map((e) => e == null
              ? null
              : CopyWith$Query$kPIFilters$kPIFilters(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$kPIFilters<TRes>
    implements CopyWith$Query$kPIFilters<TRes> {
  _CopyWithStubImpl$Query$kPIFilters(this._res);

  TRes _res;

  call({
    List<Query$kPIFilters$kPIFilters?>? kPIFilters,
    String? $__typename,
  }) =>
      _res;

  kPIFilters(_fn) => _res;
}

const documentNodeQuerykPIFilters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'kPIFilters'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'kPIFilters'),
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

class Query$kPIFilters$kPIFilters {
  Query$kPIFilters$kPIFilters({
    required this.id,
    this.name,
    this.$__typename = 'FilterModel',
  });

  factory Query$kPIFilters$kPIFilters.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$kPIFilters$kPIFilters(
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
    if (!(other is Query$kPIFilters$kPIFilters) ||
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

extension UtilityExtension$Query$kPIFilters$kPIFilters
    on Query$kPIFilters$kPIFilters {
  CopyWith$Query$kPIFilters$kPIFilters<Query$kPIFilters$kPIFilters>
      get copyWith => CopyWith$Query$kPIFilters$kPIFilters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$kPIFilters$kPIFilters<TRes> {
  factory CopyWith$Query$kPIFilters$kPIFilters(
    Query$kPIFilters$kPIFilters instance,
    TRes Function(Query$kPIFilters$kPIFilters) then,
  ) = _CopyWithImpl$Query$kPIFilters$kPIFilters;

  factory CopyWith$Query$kPIFilters$kPIFilters.stub(TRes res) =
      _CopyWithStubImpl$Query$kPIFilters$kPIFilters;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$kPIFilters$kPIFilters<TRes>
    implements CopyWith$Query$kPIFilters$kPIFilters<TRes> {
  _CopyWithImpl$Query$kPIFilters$kPIFilters(
    this._instance,
    this._then,
  );

  final Query$kPIFilters$kPIFilters _instance;

  final TRes Function(Query$kPIFilters$kPIFilters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$kPIFilters$kPIFilters(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$kPIFilters$kPIFilters<TRes>
    implements CopyWith$Query$kPIFilters$kPIFilters<TRes> {
  _CopyWithStubImpl$Query$kPIFilters$kPIFilters(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
