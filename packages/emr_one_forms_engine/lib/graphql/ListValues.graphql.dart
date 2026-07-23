import 'package:gql/ast.dart';

class Query$getListValues {
  Query$getListValues({
    required this.listValues,
    this.$__typename = 'FormsQuery',
  });

  factory Query$getListValues.fromJson(Map<String, dynamic> json) {
    final l$listValues = json['listValues'];
    final l$$__typename = json['__typename'];
    return Query$getListValues(
      listValues: (l$listValues as List<dynamic>)
          .map((e) => Query$getListValues$listValues.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getListValues$listValues> listValues;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$listValues = listValues;
    _resultData['listValues'] = l$listValues.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$listValues = listValues;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$listValues.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getListValues) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$listValues = listValues;
    final lOther$listValues = other.listValues;
    if (l$listValues.length != lOther$listValues.length) {
      return false;
    }
    for (int i = 0; i < l$listValues.length; i++) {
      final l$listValues$entry = l$listValues[i];
      final lOther$listValues$entry = lOther$listValues[i];
      if (l$listValues$entry != lOther$listValues$entry) {
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

extension UtilityExtension$Query$getListValues on Query$getListValues {
  CopyWith$Query$getListValues<Query$getListValues> get copyWith =>
      CopyWith$Query$getListValues(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getListValues<TRes> {
  factory CopyWith$Query$getListValues(
    Query$getListValues instance,
    TRes Function(Query$getListValues) then,
  ) = _CopyWithImpl$Query$getListValues;

  factory CopyWith$Query$getListValues.stub(TRes res) =
      _CopyWithStubImpl$Query$getListValues;

  TRes call({
    List<Query$getListValues$listValues>? listValues,
    String? $__typename,
  });
  TRes listValues(
      Iterable<Query$getListValues$listValues> Function(
              Iterable<
                  CopyWith$Query$getListValues$listValues<
                      Query$getListValues$listValues>>)
          _fn);
}

class _CopyWithImpl$Query$getListValues<TRes>
    implements CopyWith$Query$getListValues<TRes> {
  _CopyWithImpl$Query$getListValues(
    this._instance,
    this._then,
  );

  final Query$getListValues _instance;

  final TRes Function(Query$getListValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? listValues = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getListValues(
        listValues: listValues == _undefined || listValues == null
            ? _instance.listValues
            : (listValues as List<Query$getListValues$listValues>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes listValues(
          Iterable<Query$getListValues$listValues> Function(
                  Iterable<
                      CopyWith$Query$getListValues$listValues<
                          Query$getListValues$listValues>>)
              _fn) =>
      call(
          listValues: _fn(_instance.listValues
              .map((e) => CopyWith$Query$getListValues$listValues(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getListValues<TRes>
    implements CopyWith$Query$getListValues<TRes> {
  _CopyWithStubImpl$Query$getListValues(this._res);

  TRes _res;

  call({
    List<Query$getListValues$listValues>? listValues,
    String? $__typename,
  }) =>
      _res;

  listValues(_fn) => _res;
}

const documentNodeQuerygetListValues = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getListValues'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'listValues'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'listName'),
            value: StringValueNode(
              value: 'PrimaryFunction',
              isBlock: false,
            ),
          )
        ],
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
            name: NameNode(value: 'listId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'text'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'value'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'orderIndex'),
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

class Query$getListValues$listValues {
  Query$getListValues$listValues({
    required this.id,
    required this.listId,
    this.text,
    this.value,
    required this.orderIndex,
    required this.active,
    this.$__typename = 'ListValue',
  });

  factory Query$getListValues$listValues.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$listId = json['listId'];
    final l$text = json['text'];
    final l$value = json['value'];
    final l$orderIndex = json['orderIndex'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$getListValues$listValues(
      id: (l$id as int),
      listId: (l$listId as int),
      text: (l$text as String?),
      value: (l$value as String?),
      orderIndex: (l$orderIndex as int),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int listId;

  final String? text;

  final String? value;

  final int orderIndex;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$listId = listId;
    _resultData['listId'] = l$listId;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$orderIndex = orderIndex;
    _resultData['orderIndex'] = l$orderIndex;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$listId = listId;
    final l$text = text;
    final l$value = value;
    final l$orderIndex = orderIndex;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$listId,
      l$text,
      l$value,
      l$orderIndex,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getListValues$listValues) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$listId = listId;
    final lOther$listId = other.listId;
    if (l$listId != lOther$listId) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$orderIndex = orderIndex;
    final lOther$orderIndex = other.orderIndex;
    if (l$orderIndex != lOther$orderIndex) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Query$getListValues$listValues
    on Query$getListValues$listValues {
  CopyWith$Query$getListValues$listValues<Query$getListValues$listValues>
      get copyWith => CopyWith$Query$getListValues$listValues(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getListValues$listValues<TRes> {
  factory CopyWith$Query$getListValues$listValues(
    Query$getListValues$listValues instance,
    TRes Function(Query$getListValues$listValues) then,
  ) = _CopyWithImpl$Query$getListValues$listValues;

  factory CopyWith$Query$getListValues$listValues.stub(TRes res) =
      _CopyWithStubImpl$Query$getListValues$listValues;

  TRes call({
    int? id,
    int? listId,
    String? text,
    String? value,
    int? orderIndex,
    bool? active,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getListValues$listValues<TRes>
    implements CopyWith$Query$getListValues$listValues<TRes> {
  _CopyWithImpl$Query$getListValues$listValues(
    this._instance,
    this._then,
  );

  final Query$getListValues$listValues _instance;

  final TRes Function(Query$getListValues$listValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? listId = _undefined,
    Object? text = _undefined,
    Object? value = _undefined,
    Object? orderIndex = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getListValues$listValues(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        listId: listId == _undefined || listId == null
            ? _instance.listId
            : (listId as int),
        text: text == _undefined ? _instance.text : (text as String?),
        value: value == _undefined ? _instance.value : (value as String?),
        orderIndex: orderIndex == _undefined || orderIndex == null
            ? _instance.orderIndex
            : (orderIndex as int),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getListValues$listValues<TRes>
    implements CopyWith$Query$getListValues$listValues<TRes> {
  _CopyWithStubImpl$Query$getListValues$listValues(this._res);

  TRes _res;

  call({
    int? id,
    int? listId,
    String? text,
    String? value,
    int? orderIndex,
    bool? active,
    String? $__typename,
  }) =>
      _res;
}
