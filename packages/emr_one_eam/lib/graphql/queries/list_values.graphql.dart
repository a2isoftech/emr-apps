import 'package:gql/ast.dart';

class Variables$Query$GetListValues {
  factory Variables$Query$GetListValues({
    required String listName,
    String? parameter,
    bool? active,
  }) =>
      Variables$Query$GetListValues._({
        r'listName': listName,
        if (parameter != null) r'parameter': parameter,
        if (active != null) r'active': active,
      });

  Variables$Query$GetListValues._(this._$data);

  factory Variables$Query$GetListValues.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$listName = data['listName'];
    result$data['listName'] = (l$listName as String);
    if (data.containsKey('parameter')) {
      final l$parameter = data['parameter'];
      result$data['parameter'] = (l$parameter as String?);
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = (l$active as bool?);
    }
    return Variables$Query$GetListValues._(result$data);
  }

  Map<String, dynamic> _$data;

  String get listName => (_$data['listName'] as String);

  String? get parameter => (_$data['parameter'] as String?);

  bool? get active => (_$data['active'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$listName = listName;
    result$data['listName'] = l$listName;
    if (_$data.containsKey('parameter')) {
      final l$parameter = parameter;
      result$data['parameter'] = l$parameter;
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetListValues<Variables$Query$GetListValues>
      get copyWith => CopyWith$Variables$Query$GetListValues(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetListValues) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$listName = listName;
    final lOther$listName = other.listName;
    if (l$listName != lOther$listName) {
      return false;
    }
    final l$parameter = parameter;
    final lOther$parameter = other.parameter;
    if (_$data.containsKey('parameter') !=
        other._$data.containsKey('parameter')) {
      return false;
    }
    if (l$parameter != lOther$parameter) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$listName = listName;
    final l$parameter = parameter;
    final l$active = active;
    return Object.hashAll([
      l$listName,
      _$data.containsKey('parameter') ? l$parameter : const {},
      _$data.containsKey('active') ? l$active : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetListValues<TRes> {
  factory CopyWith$Variables$Query$GetListValues(
    Variables$Query$GetListValues instance,
    TRes Function(Variables$Query$GetListValues) then,
  ) = _CopyWithImpl$Variables$Query$GetListValues;

  factory CopyWith$Variables$Query$GetListValues.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetListValues;

  TRes call({
    String? listName,
    String? parameter,
    bool? active,
  });
}

class _CopyWithImpl$Variables$Query$GetListValues<TRes>
    implements CopyWith$Variables$Query$GetListValues<TRes> {
  _CopyWithImpl$Variables$Query$GetListValues(
    this._instance,
    this._then,
  );

  final Variables$Query$GetListValues _instance;

  final TRes Function(Variables$Query$GetListValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? listName = _undefined,
    Object? parameter = _undefined,
    Object? active = _undefined,
  }) =>
      _then(Variables$Query$GetListValues._({
        ..._instance._$data,
        if (listName != _undefined && listName != null)
          'listName': (listName as String),
        if (parameter != _undefined) 'parameter': (parameter as String?),
        if (active != _undefined) 'active': (active as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetListValues<TRes>
    implements CopyWith$Variables$Query$GetListValues<TRes> {
  _CopyWithStubImpl$Variables$Query$GetListValues(this._res);

  TRes _res;

  call({
    String? listName,
    String? parameter,
    bool? active,
  }) =>
      _res;
}

class Query$GetListValues {
  Query$GetListValues({
    required this.listValues,
    this.$__typename = 'Query',
  });

  factory Query$GetListValues.fromJson(Map<String, dynamic> json) {
    final l$listValues = json['listValues'];
    final l$$__typename = json['__typename'];
    return Query$GetListValues(
      listValues: (l$listValues as List<dynamic>)
          .map((e) => Query$GetListValues$listValues.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetListValues$listValues> listValues;

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
    if (!(other is Query$GetListValues) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetListValues on Query$GetListValues {
  CopyWith$Query$GetListValues<Query$GetListValues> get copyWith =>
      CopyWith$Query$GetListValues(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetListValues<TRes> {
  factory CopyWith$Query$GetListValues(
    Query$GetListValues instance,
    TRes Function(Query$GetListValues) then,
  ) = _CopyWithImpl$Query$GetListValues;

  factory CopyWith$Query$GetListValues.stub(TRes res) =
      _CopyWithStubImpl$Query$GetListValues;

  TRes call({
    List<Query$GetListValues$listValues>? listValues,
    String? $__typename,
  });
  TRes listValues(
      Iterable<Query$GetListValues$listValues> Function(
              Iterable<
                  CopyWith$Query$GetListValues$listValues<
                      Query$GetListValues$listValues>>)
          _fn);
}

class _CopyWithImpl$Query$GetListValues<TRes>
    implements CopyWith$Query$GetListValues<TRes> {
  _CopyWithImpl$Query$GetListValues(
    this._instance,
    this._then,
  );

  final Query$GetListValues _instance;

  final TRes Function(Query$GetListValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? listValues = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetListValues(
        listValues: listValues == _undefined || listValues == null
            ? _instance.listValues
            : (listValues as List<Query$GetListValues$listValues>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes listValues(
          Iterable<Query$GetListValues$listValues> Function(
                  Iterable<
                      CopyWith$Query$GetListValues$listValues<
                          Query$GetListValues$listValues>>)
              _fn) =>
      call(
          listValues: _fn(_instance.listValues
              .map((e) => CopyWith$Query$GetListValues$listValues(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetListValues<TRes>
    implements CopyWith$Query$GetListValues<TRes> {
  _CopyWithStubImpl$Query$GetListValues(this._res);

  TRes _res;

  call({
    List<Query$GetListValues$listValues>? listValues,
    String? $__typename,
  }) =>
      _res;

  listValues(_fn) => _res;
}

const documentNodeQueryGetListValues = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetListValues'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'listName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parameter')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'active')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'listValues'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'listName'),
            value: VariableNode(name: NameNode(value: 'listName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'parameter'),
            value: VariableNode(name: NameNode(value: 'parameter')),
          ),
          ArgumentNode(
            name: NameNode(value: 'active'),
            value: VariableNode(name: NameNode(value: 'active')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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

class Query$GetListValues$listValues {
  Query$GetListValues$listValues({
    required this.text,
    required this.value,
    required this.orderIndex,
    required this.active,
    this.$__typename = 'ListValue',
  });

  factory Query$GetListValues$listValues.fromJson(Map<String, dynamic> json) {
    final l$text = json['text'];
    final l$value = json['value'];
    final l$orderIndex = json['orderIndex'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$GetListValues$listValues(
      text: (l$text as String),
      value: (l$value as String),
      orderIndex: (l$orderIndex as int),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String text;

  final String value;

  final int orderIndex;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$text = text;
    final l$value = value;
    final l$orderIndex = orderIndex;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (!(other is Query$GetListValues$listValues) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetListValues$listValues
    on Query$GetListValues$listValues {
  CopyWith$Query$GetListValues$listValues<Query$GetListValues$listValues>
      get copyWith => CopyWith$Query$GetListValues$listValues(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetListValues$listValues<TRes> {
  factory CopyWith$Query$GetListValues$listValues(
    Query$GetListValues$listValues instance,
    TRes Function(Query$GetListValues$listValues) then,
  ) = _CopyWithImpl$Query$GetListValues$listValues;

  factory CopyWith$Query$GetListValues$listValues.stub(TRes res) =
      _CopyWithStubImpl$Query$GetListValues$listValues;

  TRes call({
    String? text,
    String? value,
    int? orderIndex,
    bool? active,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetListValues$listValues<TRes>
    implements CopyWith$Query$GetListValues$listValues<TRes> {
  _CopyWithImpl$Query$GetListValues$listValues(
    this._instance,
    this._then,
  );

  final Query$GetListValues$listValues _instance;

  final TRes Function(Query$GetListValues$listValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? value = _undefined,
    Object? orderIndex = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetListValues$listValues(
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
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

class _CopyWithStubImpl$Query$GetListValues$listValues<TRes>
    implements CopyWith$Query$GetListValues$listValues<TRes> {
  _CopyWithStubImpl$Query$GetListValues$listValues(this._res);

  TRes _res;

  call({
    String? text,
    String? value,
    int? orderIndex,
    bool? active,
    String? $__typename,
  }) =>
      _res;
}
