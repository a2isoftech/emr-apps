import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$TagCategories {
  factory Variables$Query$TagCategories({
    required Input$GetTagCategoriesInput input,
  }) => Variables$Query$TagCategories._({r'input': input});

  Variables$Query$TagCategories._(this._$data);

  factory Variables$Query$TagCategories.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$GetTagCategoriesInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$TagCategories._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetTagCategoriesInput get input =>
      (_$data['input'] as Input$GetTagCategoriesInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$TagCategories<Variables$Query$TagCategories>
  get copyWith => CopyWith$Variables$Query$TagCategories(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TagCategories ||
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

abstract class CopyWith$Variables$Query$TagCategories<TRes> {
  factory CopyWith$Variables$Query$TagCategories(
    Variables$Query$TagCategories instance,
    TRes Function(Variables$Query$TagCategories) then,
  ) = _CopyWithImpl$Variables$Query$TagCategories;

  factory CopyWith$Variables$Query$TagCategories.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TagCategories;

  TRes call({Input$GetTagCategoriesInput? input});
}

class _CopyWithImpl$Variables$Query$TagCategories<TRes>
    implements CopyWith$Variables$Query$TagCategories<TRes> {
  _CopyWithImpl$Variables$Query$TagCategories(this._instance, this._then);

  final Variables$Query$TagCategories _instance;

  final TRes Function(Variables$Query$TagCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$TagCategories._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$GetTagCategoriesInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TagCategories<TRes>
    implements CopyWith$Variables$Query$TagCategories<TRes> {
  _CopyWithStubImpl$Variables$Query$TagCategories(this._res);

  TRes _res;

  call({Input$GetTagCategoriesInput? input}) => _res;
}

class Query$TagCategories {
  Query$TagCategories({
    required this.tagCategories,
    this.$__typename = 'Query',
  });

  factory Query$TagCategories.fromJson(Map<String, dynamic> json) {
    final l$tagCategories = json['tagCategories'];
    final l$$__typename = json['__typename'];
    return Query$TagCategories(
      tagCategories: (l$tagCategories as List<dynamic>)
          .map(
            (e) => Query$TagCategories$tagCategories.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TagCategories$tagCategories> tagCategories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tagCategories = tagCategories;
    _resultData['tagCategories'] = l$tagCategories
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tagCategories = tagCategories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$tagCategories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TagCategories || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tagCategories = tagCategories;
    final lOther$tagCategories = other.tagCategories;
    if (l$tagCategories.length != lOther$tagCategories.length) {
      return false;
    }
    for (int i = 0; i < l$tagCategories.length; i++) {
      final l$tagCategories$entry = l$tagCategories[i];
      final lOther$tagCategories$entry = lOther$tagCategories[i];
      if (l$tagCategories$entry != lOther$tagCategories$entry) {
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

extension UtilityExtension$Query$TagCategories on Query$TagCategories {
  CopyWith$Query$TagCategories<Query$TagCategories> get copyWith =>
      CopyWith$Query$TagCategories(this, (i) => i);
}

abstract class CopyWith$Query$TagCategories<TRes> {
  factory CopyWith$Query$TagCategories(
    Query$TagCategories instance,
    TRes Function(Query$TagCategories) then,
  ) = _CopyWithImpl$Query$TagCategories;

  factory CopyWith$Query$TagCategories.stub(TRes res) =
      _CopyWithStubImpl$Query$TagCategories;

  TRes call({
    List<Query$TagCategories$tagCategories>? tagCategories,
    String? $__typename,
  });
  TRes tagCategories(
    Iterable<Query$TagCategories$tagCategories> Function(
      Iterable<
        CopyWith$Query$TagCategories$tagCategories<
          Query$TagCategories$tagCategories
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TagCategories<TRes>
    implements CopyWith$Query$TagCategories<TRes> {
  _CopyWithImpl$Query$TagCategories(this._instance, this._then);

  final Query$TagCategories _instance;

  final TRes Function(Query$TagCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tagCategories = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TagCategories(
      tagCategories: tagCategories == _undefined || tagCategories == null
          ? _instance.tagCategories
          : (tagCategories as List<Query$TagCategories$tagCategories>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes tagCategories(
    Iterable<Query$TagCategories$tagCategories> Function(
      Iterable<
        CopyWith$Query$TagCategories$tagCategories<
          Query$TagCategories$tagCategories
        >
      >,
    )
    _fn,
  ) => call(
    tagCategories: _fn(
      _instance.tagCategories.map(
        (e) => CopyWith$Query$TagCategories$tagCategories(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TagCategories<TRes>
    implements CopyWith$Query$TagCategories<TRes> {
  _CopyWithStubImpl$Query$TagCategories(this._res);

  TRes _res;

  call({
    List<Query$TagCategories$tagCategories>? tagCategories,
    String? $__typename,
  }) => _res;

  tagCategories(_fn) => _res;
}

const documentNodeQueryTagCategories = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TagCategories'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetTagCategoriesInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'tagCategories'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
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
                  name: NameNode(value: 'functional'),
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

class Query$TagCategories$tagCategories {
  Query$TagCategories$tagCategories({
    required this.id,
    required this.name,
    required this.functional,
    this.$__typename = 'TagCategory',
  });

  factory Query$TagCategories$tagCategories.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$functional = json['functional'];
    final l$$__typename = json['__typename'];
    return Query$TagCategories$tagCategories(
      id: (l$id as String),
      name: (l$name as String),
      functional: (l$functional as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool functional;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$functional = functional;
    _resultData['functional'] = l$functional;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$functional = functional;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$functional, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TagCategories$tagCategories ||
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
    final l$functional = functional;
    final lOther$functional = other.functional;
    if (l$functional != lOther$functional) {
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

extension UtilityExtension$Query$TagCategories$tagCategories
    on Query$TagCategories$tagCategories {
  CopyWith$Query$TagCategories$tagCategories<Query$TagCategories$tagCategories>
  get copyWith => CopyWith$Query$TagCategories$tagCategories(this, (i) => i);
}

abstract class CopyWith$Query$TagCategories$tagCategories<TRes> {
  factory CopyWith$Query$TagCategories$tagCategories(
    Query$TagCategories$tagCategories instance,
    TRes Function(Query$TagCategories$tagCategories) then,
  ) = _CopyWithImpl$Query$TagCategories$tagCategories;

  factory CopyWith$Query$TagCategories$tagCategories.stub(TRes res) =
      _CopyWithStubImpl$Query$TagCategories$tagCategories;

  TRes call({String? id, String? name, bool? functional, String? $__typename});
}

class _CopyWithImpl$Query$TagCategories$tagCategories<TRes>
    implements CopyWith$Query$TagCategories$tagCategories<TRes> {
  _CopyWithImpl$Query$TagCategories$tagCategories(this._instance, this._then);

  final Query$TagCategories$tagCategories _instance;

  final TRes Function(Query$TagCategories$tagCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? functional = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TagCategories$tagCategories(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      functional: functional == _undefined || functional == null
          ? _instance.functional
          : (functional as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TagCategories$tagCategories<TRes>
    implements CopyWith$Query$TagCategories$tagCategories<TRes> {
  _CopyWithStubImpl$Query$TagCategories$tagCategories(this._res);

  TRes _res;

  call({String? id, String? name, bool? functional, String? $__typename}) =>
      _res;
}
