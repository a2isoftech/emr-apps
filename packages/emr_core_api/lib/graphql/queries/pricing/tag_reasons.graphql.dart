import 'package:gql/ast.dart';

class Query$TagReasons {
  Query$TagReasons({required this.tagReasons, this.$__typename = 'Query'});

  factory Query$TagReasons.fromJson(Map<String, dynamic> json) {
    final l$tagReasons = json['tagReasons'];
    final l$$__typename = json['__typename'];
    return Query$TagReasons(
      tagReasons: (l$tagReasons as List<dynamic>)
          .map(
            (e) => Query$TagReasons$tagReasons.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TagReasons$tagReasons> tagReasons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tagReasons = tagReasons;
    _resultData['tagReasons'] = l$tagReasons.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tagReasons = tagReasons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$tagReasons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TagReasons || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tagReasons = tagReasons;
    final lOther$tagReasons = other.tagReasons;
    if (l$tagReasons.length != lOther$tagReasons.length) {
      return false;
    }
    for (int i = 0; i < l$tagReasons.length; i++) {
      final l$tagReasons$entry = l$tagReasons[i];
      final lOther$tagReasons$entry = lOther$tagReasons[i];
      if (l$tagReasons$entry != lOther$tagReasons$entry) {
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

extension UtilityExtension$Query$TagReasons on Query$TagReasons {
  CopyWith$Query$TagReasons<Query$TagReasons> get copyWith =>
      CopyWith$Query$TagReasons(this, (i) => i);
}

abstract class CopyWith$Query$TagReasons<TRes> {
  factory CopyWith$Query$TagReasons(
    Query$TagReasons instance,
    TRes Function(Query$TagReasons) then,
  ) = _CopyWithImpl$Query$TagReasons;

  factory CopyWith$Query$TagReasons.stub(TRes res) =
      _CopyWithStubImpl$Query$TagReasons;

  TRes call({
    List<Query$TagReasons$tagReasons>? tagReasons,
    String? $__typename,
  });
  TRes tagReasons(
    Iterable<Query$TagReasons$tagReasons> Function(
      Iterable<
        CopyWith$Query$TagReasons$tagReasons<Query$TagReasons$tagReasons>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TagReasons<TRes>
    implements CopyWith$Query$TagReasons<TRes> {
  _CopyWithImpl$Query$TagReasons(this._instance, this._then);

  final Query$TagReasons _instance;

  final TRes Function(Query$TagReasons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tagReasons = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TagReasons(
      tagReasons: tagReasons == _undefined || tagReasons == null
          ? _instance.tagReasons
          : (tagReasons as List<Query$TagReasons$tagReasons>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes tagReasons(
    Iterable<Query$TagReasons$tagReasons> Function(
      Iterable<
        CopyWith$Query$TagReasons$tagReasons<Query$TagReasons$tagReasons>
      >,
    )
    _fn,
  ) => call(
    tagReasons: _fn(
      _instance.tagReasons.map(
        (e) => CopyWith$Query$TagReasons$tagReasons(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TagReasons<TRes>
    implements CopyWith$Query$TagReasons<TRes> {
  _CopyWithStubImpl$Query$TagReasons(this._res);

  TRes _res;

  call({List<Query$TagReasons$tagReasons>? tagReasons, String? $__typename}) =>
      _res;

  tagReasons(_fn) => _res;
}

const documentNodeQueryTagReasons = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TagReasons'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'tagReasons'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$TagReasons$tagReasons {
  Query$TagReasons$tagReasons({
    required this.id,
    required this.name,
    this.$__typename = 'TagReason',
  });

  factory Query$TagReasons$tagReasons.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$TagReasons$tagReasons(
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
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TagReasons$tagReasons ||
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

extension UtilityExtension$Query$TagReasons$tagReasons
    on Query$TagReasons$tagReasons {
  CopyWith$Query$TagReasons$tagReasons<Query$TagReasons$tagReasons>
  get copyWith => CopyWith$Query$TagReasons$tagReasons(this, (i) => i);
}

abstract class CopyWith$Query$TagReasons$tagReasons<TRes> {
  factory CopyWith$Query$TagReasons$tagReasons(
    Query$TagReasons$tagReasons instance,
    TRes Function(Query$TagReasons$tagReasons) then,
  ) = _CopyWithImpl$Query$TagReasons$tagReasons;

  factory CopyWith$Query$TagReasons$tagReasons.stub(TRes res) =
      _CopyWithStubImpl$Query$TagReasons$tagReasons;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$TagReasons$tagReasons<TRes>
    implements CopyWith$Query$TagReasons$tagReasons<TRes> {
  _CopyWithImpl$Query$TagReasons$tagReasons(this._instance, this._then);

  final Query$TagReasons$tagReasons _instance;

  final TRes Function(Query$TagReasons$tagReasons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TagReasons$tagReasons(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TagReasons$tagReasons<TRes>
    implements CopyWith$Query$TagReasons$tagReasons<TRes> {
  _CopyWithStubImpl$Query$TagReasons$tagReasons(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}
