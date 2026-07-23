import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getAssetHistory {
  factory Variables$Query$getAssetHistory(
          {required Input$AssetHistoryRequestInput input}) =>
      Variables$Query$getAssetHistory._({
        r'input': input,
      });

  Variables$Query$getAssetHistory._(this._$data);

  factory Variables$Query$getAssetHistory.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AssetHistoryRequestInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$getAssetHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetHistoryRequestInput get input =>
      (_$data['input'] as Input$AssetHistoryRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$getAssetHistory<Variables$Query$getAssetHistory>
      get copyWith => CopyWith$Variables$Query$getAssetHistory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getAssetHistory) ||
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

abstract class CopyWith$Variables$Query$getAssetHistory<TRes> {
  factory CopyWith$Variables$Query$getAssetHistory(
    Variables$Query$getAssetHistory instance,
    TRes Function(Variables$Query$getAssetHistory) then,
  ) = _CopyWithImpl$Variables$Query$getAssetHistory;

  factory CopyWith$Variables$Query$getAssetHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getAssetHistory;

  TRes call({Input$AssetHistoryRequestInput? input});
}

class _CopyWithImpl$Variables$Query$getAssetHistory<TRes>
    implements CopyWith$Variables$Query$getAssetHistory<TRes> {
  _CopyWithImpl$Variables$Query$getAssetHistory(
    this._instance,
    this._then,
  );

  final Variables$Query$getAssetHistory _instance;

  final TRes Function(Variables$Query$getAssetHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$getAssetHistory._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$AssetHistoryRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$getAssetHistory<TRes>
    implements CopyWith$Variables$Query$getAssetHistory<TRes> {
  _CopyWithStubImpl$Variables$Query$getAssetHistory(this._res);

  TRes _res;

  call({Input$AssetHistoryRequestInput? input}) => _res;
}

class Query$getAssetHistory {
  Query$getAssetHistory({
    required this.revisions,
    this.$__typename = 'Query',
  });

  factory Query$getAssetHistory.fromJson(Map<String, dynamic> json) {
    final l$revisions = json['revisions'];
    final l$$__typename = json['__typename'];
    return Query$getAssetHistory(
      revisions: Query$getAssetHistory$revisions.fromJson(
          (l$revisions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getAssetHistory$revisions revisions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$revisions = revisions;
    _resultData['revisions'] = l$revisions.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$revisions = revisions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$revisions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAssetHistory) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$revisions = revisions;
    final lOther$revisions = other.revisions;
    if (l$revisions != lOther$revisions) {
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

extension UtilityExtension$Query$getAssetHistory on Query$getAssetHistory {
  CopyWith$Query$getAssetHistory<Query$getAssetHistory> get copyWith =>
      CopyWith$Query$getAssetHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getAssetHistory<TRes> {
  factory CopyWith$Query$getAssetHistory(
    Query$getAssetHistory instance,
    TRes Function(Query$getAssetHistory) then,
  ) = _CopyWithImpl$Query$getAssetHistory;

  factory CopyWith$Query$getAssetHistory.stub(TRes res) =
      _CopyWithStubImpl$Query$getAssetHistory;

  TRes call({
    Query$getAssetHistory$revisions? revisions,
    String? $__typename,
  });
  CopyWith$Query$getAssetHistory$revisions<TRes> get revisions;
}

class _CopyWithImpl$Query$getAssetHistory<TRes>
    implements CopyWith$Query$getAssetHistory<TRes> {
  _CopyWithImpl$Query$getAssetHistory(
    this._instance,
    this._then,
  );

  final Query$getAssetHistory _instance;

  final TRes Function(Query$getAssetHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? revisions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAssetHistory(
        revisions: revisions == _undefined || revisions == null
            ? _instance.revisions
            : (revisions as Query$getAssetHistory$revisions),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getAssetHistory$revisions<TRes> get revisions {
    final local$revisions = _instance.revisions;
    return CopyWith$Query$getAssetHistory$revisions(
        local$revisions, (e) => call(revisions: e));
  }
}

class _CopyWithStubImpl$Query$getAssetHistory<TRes>
    implements CopyWith$Query$getAssetHistory<TRes> {
  _CopyWithStubImpl$Query$getAssetHistory(this._res);

  TRes _res;

  call({
    Query$getAssetHistory$revisions? revisions,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getAssetHistory$revisions<TRes> get revisions =>
      CopyWith$Query$getAssetHistory$revisions.stub(_res);
}

const documentNodeQuerygetAssetHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getAssetHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'AssetHistoryRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'revisions'),
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
            name: NameNode(value: 'attributes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'key'),
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
                name: NameNode(value: 'dataType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'values'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'value'),
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
                name: NameNode(value: 'displayName'),
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
            name: NameNode(value: 'timestamps'),
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

class Query$getAssetHistory$revisions {
  Query$getAssetHistory$revisions({
    required this.attributes,
    required this.users,
    required this.timestamps,
    this.$__typename = 'AssetHistory',
  });

  factory Query$getAssetHistory$revisions.fromJson(Map<String, dynamic> json) {
    final l$attributes = json['attributes'];
    final l$users = json['users'];
    final l$timestamps = json['timestamps'];
    final l$$__typename = json['__typename'];
    return Query$getAssetHistory$revisions(
      attributes: (l$attributes as List<dynamic>)
          .map((e) => Query$getAssetHistory$revisions$attributes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      users: (l$users as List<dynamic>)
          .map((e) => Query$getAssetHistory$revisions$users.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      timestamps:
          (l$timestamps as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getAssetHistory$revisions$attributes> attributes;

  final List<Query$getAssetHistory$revisions$users> users;

  final List<String> timestamps;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$attributes = attributes;
    _resultData['attributes'] = l$attributes.map((e) => e.toJson()).toList();
    final l$users = users;
    _resultData['users'] = l$users.map((e) => e.toJson()).toList();
    final l$timestamps = timestamps;
    _resultData['timestamps'] = l$timestamps.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$attributes = attributes;
    final l$users = users;
    final l$timestamps = timestamps;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$attributes.map((v) => v)),
      Object.hashAll(l$users.map((v) => v)),
      Object.hashAll(l$timestamps.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAssetHistory$revisions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$attributes = attributes;
    final lOther$attributes = other.attributes;
    if (l$attributes.length != lOther$attributes.length) {
      return false;
    }
    for (int i = 0; i < l$attributes.length; i++) {
      final l$attributes$entry = l$attributes[i];
      final lOther$attributes$entry = lOther$attributes[i];
      if (l$attributes$entry != lOther$attributes$entry) {
        return false;
      }
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users.length != lOther$users.length) {
      return false;
    }
    for (int i = 0; i < l$users.length; i++) {
      final l$users$entry = l$users[i];
      final lOther$users$entry = lOther$users[i];
      if (l$users$entry != lOther$users$entry) {
        return false;
      }
    }
    final l$timestamps = timestamps;
    final lOther$timestamps = other.timestamps;
    if (l$timestamps.length != lOther$timestamps.length) {
      return false;
    }
    for (int i = 0; i < l$timestamps.length; i++) {
      final l$timestamps$entry = l$timestamps[i];
      final lOther$timestamps$entry = lOther$timestamps[i];
      if (l$timestamps$entry != lOther$timestamps$entry) {
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

extension UtilityExtension$Query$getAssetHistory$revisions
    on Query$getAssetHistory$revisions {
  CopyWith$Query$getAssetHistory$revisions<Query$getAssetHistory$revisions>
      get copyWith => CopyWith$Query$getAssetHistory$revisions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getAssetHistory$revisions<TRes> {
  factory CopyWith$Query$getAssetHistory$revisions(
    Query$getAssetHistory$revisions instance,
    TRes Function(Query$getAssetHistory$revisions) then,
  ) = _CopyWithImpl$Query$getAssetHistory$revisions;

  factory CopyWith$Query$getAssetHistory$revisions.stub(TRes res) =
      _CopyWithStubImpl$Query$getAssetHistory$revisions;

  TRes call({
    List<Query$getAssetHistory$revisions$attributes>? attributes,
    List<Query$getAssetHistory$revisions$users>? users,
    List<String>? timestamps,
    String? $__typename,
  });
  TRes attributes(
      Iterable<Query$getAssetHistory$revisions$attributes> Function(
              Iterable<
                  CopyWith$Query$getAssetHistory$revisions$attributes<
                      Query$getAssetHistory$revisions$attributes>>)
          _fn);
  TRes users(
      Iterable<Query$getAssetHistory$revisions$users> Function(
              Iterable<
                  CopyWith$Query$getAssetHistory$revisions$users<
                      Query$getAssetHistory$revisions$users>>)
          _fn);
}

class _CopyWithImpl$Query$getAssetHistory$revisions<TRes>
    implements CopyWith$Query$getAssetHistory$revisions<TRes> {
  _CopyWithImpl$Query$getAssetHistory$revisions(
    this._instance,
    this._then,
  );

  final Query$getAssetHistory$revisions _instance;

  final TRes Function(Query$getAssetHistory$revisions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attributes = _undefined,
    Object? users = _undefined,
    Object? timestamps = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAssetHistory$revisions(
        attributes: attributes == _undefined || attributes == null
            ? _instance.attributes
            : (attributes as List<Query$getAssetHistory$revisions$attributes>),
        users: users == _undefined || users == null
            ? _instance.users
            : (users as List<Query$getAssetHistory$revisions$users>),
        timestamps: timestamps == _undefined || timestamps == null
            ? _instance.timestamps
            : (timestamps as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes attributes(
          Iterable<Query$getAssetHistory$revisions$attributes> Function(
                  Iterable<
                      CopyWith$Query$getAssetHistory$revisions$attributes<
                          Query$getAssetHistory$revisions$attributes>>)
              _fn) =>
      call(
          attributes: _fn(_instance.attributes
              .map((e) => CopyWith$Query$getAssetHistory$revisions$attributes(
                    e,
                    (i) => i,
                  ))).toList());

  TRes users(
          Iterable<Query$getAssetHistory$revisions$users> Function(
                  Iterable<
                      CopyWith$Query$getAssetHistory$revisions$users<
                          Query$getAssetHistory$revisions$users>>)
              _fn) =>
      call(
          users: _fn(_instance.users
              .map((e) => CopyWith$Query$getAssetHistory$revisions$users(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getAssetHistory$revisions<TRes>
    implements CopyWith$Query$getAssetHistory$revisions<TRes> {
  _CopyWithStubImpl$Query$getAssetHistory$revisions(this._res);

  TRes _res;

  call({
    List<Query$getAssetHistory$revisions$attributes>? attributes,
    List<Query$getAssetHistory$revisions$users>? users,
    List<String>? timestamps,
    String? $__typename,
  }) =>
      _res;

  attributes(_fn) => _res;

  users(_fn) => _res;
}

class Query$getAssetHistory$revisions$attributes {
  Query$getAssetHistory$revisions$attributes({
    required this.key,
    required this.name,
    required this.dataType,
    required this.values,
    this.$__typename = 'AssetHistoryAttribute',
  });

  factory Query$getAssetHistory$revisions$attributes.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$name = json['name'];
    final l$dataType = json['dataType'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$getAssetHistory$revisions$attributes(
      key: (l$key as String),
      name: (l$name as String),
      dataType: (l$dataType as String),
      values: (l$values as List<dynamic>)
          .map((e) =>
              Query$getAssetHistory$revisions$attributes$values.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String name;

  final String dataType;

  final List<Query$getAssetHistory$revisions$attributes$values> values;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$dataType = dataType;
    _resultData['dataType'] = l$dataType;
    final l$values = values;
    _resultData['values'] = l$values.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$name = name;
    final l$dataType = dataType;
    final l$values = values;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$name,
      l$dataType,
      Object.hashAll(l$values.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAssetHistory$revisions$attributes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values.length != lOther$values.length) {
      return false;
    }
    for (int i = 0; i < l$values.length; i++) {
      final l$values$entry = l$values[i];
      final lOther$values$entry = lOther$values[i];
      if (l$values$entry != lOther$values$entry) {
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

extension UtilityExtension$Query$getAssetHistory$revisions$attributes
    on Query$getAssetHistory$revisions$attributes {
  CopyWith$Query$getAssetHistory$revisions$attributes<
          Query$getAssetHistory$revisions$attributes>
      get copyWith => CopyWith$Query$getAssetHistory$revisions$attributes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getAssetHistory$revisions$attributes<TRes> {
  factory CopyWith$Query$getAssetHistory$revisions$attributes(
    Query$getAssetHistory$revisions$attributes instance,
    TRes Function(Query$getAssetHistory$revisions$attributes) then,
  ) = _CopyWithImpl$Query$getAssetHistory$revisions$attributes;

  factory CopyWith$Query$getAssetHistory$revisions$attributes.stub(TRes res) =
      _CopyWithStubImpl$Query$getAssetHistory$revisions$attributes;

  TRes call({
    String? key,
    String? name,
    String? dataType,
    List<Query$getAssetHistory$revisions$attributes$values>? values,
    String? $__typename,
  });
  TRes values(
      Iterable<Query$getAssetHistory$revisions$attributes$values> Function(
              Iterable<
                  CopyWith$Query$getAssetHistory$revisions$attributes$values<
                      Query$getAssetHistory$revisions$attributes$values>>)
          _fn);
}

class _CopyWithImpl$Query$getAssetHistory$revisions$attributes<TRes>
    implements CopyWith$Query$getAssetHistory$revisions$attributes<TRes> {
  _CopyWithImpl$Query$getAssetHistory$revisions$attributes(
    this._instance,
    this._then,
  );

  final Query$getAssetHistory$revisions$attributes _instance;

  final TRes Function(Query$getAssetHistory$revisions$attributes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAssetHistory$revisions$attributes(
        key: key == _undefined || key == null ? _instance.key : (key as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        dataType: dataType == _undefined || dataType == null
            ? _instance.dataType
            : (dataType as String),
        values: values == _undefined || values == null
            ? _instance.values
            : (values
                as List<Query$getAssetHistory$revisions$attributes$values>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes values(
          Iterable<Query$getAssetHistory$revisions$attributes$values> Function(
                  Iterable<
                      CopyWith$Query$getAssetHistory$revisions$attributes$values<
                          Query$getAssetHistory$revisions$attributes$values>>)
              _fn) =>
      call(
          values: _fn(_instance.values.map(
              (e) => CopyWith$Query$getAssetHistory$revisions$attributes$values(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getAssetHistory$revisions$attributes<TRes>
    implements CopyWith$Query$getAssetHistory$revisions$attributes<TRes> {
  _CopyWithStubImpl$Query$getAssetHistory$revisions$attributes(this._res);

  TRes _res;

  call({
    String? key,
    String? name,
    String? dataType,
    List<Query$getAssetHistory$revisions$attributes$values>? values,
    String? $__typename,
  }) =>
      _res;

  values(_fn) => _res;
}

class Query$getAssetHistory$revisions$attributes$values {
  Query$getAssetHistory$revisions$attributes$values({
    required this.value,
    required this.text,
    this.$__typename = 'AssetHistoryAttributeValue',
  });

  factory Query$getAssetHistory$revisions$attributes$values.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$text = json['text'];
    final l$$__typename = json['__typename'];
    return Query$getAssetHistory$revisions$attributes$values(
      value: (l$value as String),
      text: (l$text as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final String text;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$text,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAssetHistory$revisions$attributes$values) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Query$getAssetHistory$revisions$attributes$values
    on Query$getAssetHistory$revisions$attributes$values {
  CopyWith$Query$getAssetHistory$revisions$attributes$values<
          Query$getAssetHistory$revisions$attributes$values>
      get copyWith =>
          CopyWith$Query$getAssetHistory$revisions$attributes$values(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getAssetHistory$revisions$attributes$values<
    TRes> {
  factory CopyWith$Query$getAssetHistory$revisions$attributes$values(
    Query$getAssetHistory$revisions$attributes$values instance,
    TRes Function(Query$getAssetHistory$revisions$attributes$values) then,
  ) = _CopyWithImpl$Query$getAssetHistory$revisions$attributes$values;

  factory CopyWith$Query$getAssetHistory$revisions$attributes$values.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getAssetHistory$revisions$attributes$values;

  TRes call({
    String? value,
    String? text,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getAssetHistory$revisions$attributes$values<TRes>
    implements
        CopyWith$Query$getAssetHistory$revisions$attributes$values<TRes> {
  _CopyWithImpl$Query$getAssetHistory$revisions$attributes$values(
    this._instance,
    this._then,
  );

  final Query$getAssetHistory$revisions$attributes$values _instance;

  final TRes Function(Query$getAssetHistory$revisions$attributes$values) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAssetHistory$revisions$attributes$values(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getAssetHistory$revisions$attributes$values<TRes>
    implements
        CopyWith$Query$getAssetHistory$revisions$attributes$values<TRes> {
  _CopyWithStubImpl$Query$getAssetHistory$revisions$attributes$values(
      this._res);

  TRes _res;

  call({
    String? value,
    String? text,
    String? $__typename,
  }) =>
      _res;
}

class Query$getAssetHistory$revisions$users {
  Query$getAssetHistory$revisions$users({
    required this.id,
    required this.displayName,
    this.$__typename = 'AssetHistoryUser',
  });

  factory Query$getAssetHistory$revisions$users.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$displayName = json['displayName'];
    final l$$__typename = json['__typename'];
    return Query$getAssetHistory$revisions$users(
      id: (l$id as String),
      displayName: (l$displayName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String displayName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$displayName = displayName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$displayName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAssetHistory$revisions$users) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
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

extension UtilityExtension$Query$getAssetHistory$revisions$users
    on Query$getAssetHistory$revisions$users {
  CopyWith$Query$getAssetHistory$revisions$users<
          Query$getAssetHistory$revisions$users>
      get copyWith => CopyWith$Query$getAssetHistory$revisions$users(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getAssetHistory$revisions$users<TRes> {
  factory CopyWith$Query$getAssetHistory$revisions$users(
    Query$getAssetHistory$revisions$users instance,
    TRes Function(Query$getAssetHistory$revisions$users) then,
  ) = _CopyWithImpl$Query$getAssetHistory$revisions$users;

  factory CopyWith$Query$getAssetHistory$revisions$users.stub(TRes res) =
      _CopyWithStubImpl$Query$getAssetHistory$revisions$users;

  TRes call({
    String? id,
    String? displayName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getAssetHistory$revisions$users<TRes>
    implements CopyWith$Query$getAssetHistory$revisions$users<TRes> {
  _CopyWithImpl$Query$getAssetHistory$revisions$users(
    this._instance,
    this._then,
  );

  final Query$getAssetHistory$revisions$users _instance;

  final TRes Function(Query$getAssetHistory$revisions$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? displayName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAssetHistory$revisions$users(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        displayName: displayName == _undefined || displayName == null
            ? _instance.displayName
            : (displayName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getAssetHistory$revisions$users<TRes>
    implements CopyWith$Query$getAssetHistory$revisions$users<TRes> {
  _CopyWithStubImpl$Query$getAssetHistory$revisions$users(this._res);

  TRes _res;

  call({
    String? id,
    String? displayName,
    String? $__typename,
  }) =>
      _res;
}
