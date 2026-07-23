import 'package:gql/ast.dart';

class Variables$Query$GetAllSchedules {
  factory Variables$Query$GetAllSchedules({
    required String accessControllerId,
  }) => Variables$Query$GetAllSchedules._({
    r'accessControllerId': accessControllerId,
  });

  Variables$Query$GetAllSchedules._(this._$data);

  factory Variables$Query$GetAllSchedules.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = data['accessControllerId'];
    result$data['accessControllerId'] = (l$accessControllerId as String);
    return Variables$Query$GetAllSchedules._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessControllerId => (_$data['accessControllerId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = accessControllerId;
    result$data['accessControllerId'] = l$accessControllerId;
    return result$data;
  }

  CopyWith$Variables$Query$GetAllSchedules<Variables$Query$GetAllSchedules>
  get copyWith => CopyWith$Variables$Query$GetAllSchedules(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAllSchedules ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessControllerId = accessControllerId;
    return Object.hashAll([l$accessControllerId]);
  }
}

abstract class CopyWith$Variables$Query$GetAllSchedules<TRes> {
  factory CopyWith$Variables$Query$GetAllSchedules(
    Variables$Query$GetAllSchedules instance,
    TRes Function(Variables$Query$GetAllSchedules) then,
  ) = _CopyWithImpl$Variables$Query$GetAllSchedules;

  factory CopyWith$Variables$Query$GetAllSchedules.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllSchedules;

  TRes call({String? accessControllerId});
}

class _CopyWithImpl$Variables$Query$GetAllSchedules<TRes>
    implements CopyWith$Variables$Query$GetAllSchedules<TRes> {
  _CopyWithImpl$Variables$Query$GetAllSchedules(this._instance, this._then);

  final Variables$Query$GetAllSchedules _instance;

  final TRes Function(Variables$Query$GetAllSchedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accessControllerId = _undefined}) => _then(
    Variables$Query$GetAllSchedules._({
      ..._instance._$data,
      if (accessControllerId != _undefined && accessControllerId != null)
        'accessControllerId': (accessControllerId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAllSchedules<TRes>
    implements CopyWith$Variables$Query$GetAllSchedules<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllSchedules(this._res);

  TRes _res;

  call({String? accessControllerId}) => _res;
}

class Query$GetAllSchedules {
  Query$GetAllSchedules({
    required this.allSchedules,
    this.$__typename = 'Query',
  });

  factory Query$GetAllSchedules.fromJson(Map<String, dynamic> json) {
    final l$allSchedules = json['allSchedules'];
    final l$$__typename = json['__typename'];
    return Query$GetAllSchedules(
      allSchedules: (l$allSchedules as List<dynamic>)
          .map(
            (e) => Query$GetAllSchedules$allSchedules.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllSchedules$allSchedules> allSchedules;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allSchedules = allSchedules;
    _resultData['allSchedules'] = l$allSchedules
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allSchedules = allSchedules;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allSchedules.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllSchedules || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allSchedules = allSchedules;
    final lOther$allSchedules = other.allSchedules;
    if (l$allSchedules.length != lOther$allSchedules.length) {
      return false;
    }
    for (int i = 0; i < l$allSchedules.length; i++) {
      final l$allSchedules$entry = l$allSchedules[i];
      final lOther$allSchedules$entry = lOther$allSchedules[i];
      if (l$allSchedules$entry != lOther$allSchedules$entry) {
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

extension UtilityExtension$Query$GetAllSchedules on Query$GetAllSchedules {
  CopyWith$Query$GetAllSchedules<Query$GetAllSchedules> get copyWith =>
      CopyWith$Query$GetAllSchedules(this, (i) => i);
}

abstract class CopyWith$Query$GetAllSchedules<TRes> {
  factory CopyWith$Query$GetAllSchedules(
    Query$GetAllSchedules instance,
    TRes Function(Query$GetAllSchedules) then,
  ) = _CopyWithImpl$Query$GetAllSchedules;

  factory CopyWith$Query$GetAllSchedules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllSchedules;

  TRes call({
    List<Query$GetAllSchedules$allSchedules>? allSchedules,
    String? $__typename,
  });
  TRes allSchedules(
    Iterable<Query$GetAllSchedules$allSchedules> Function(
      Iterable<
        CopyWith$Query$GetAllSchedules$allSchedules<
          Query$GetAllSchedules$allSchedules
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllSchedules<TRes>
    implements CopyWith$Query$GetAllSchedules<TRes> {
  _CopyWithImpl$Query$GetAllSchedules(this._instance, this._then);

  final Query$GetAllSchedules _instance;

  final TRes Function(Query$GetAllSchedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allSchedules = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllSchedules(
      allSchedules: allSchedules == _undefined || allSchedules == null
          ? _instance.allSchedules
          : (allSchedules as List<Query$GetAllSchedules$allSchedules>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes allSchedules(
    Iterable<Query$GetAllSchedules$allSchedules> Function(
      Iterable<
        CopyWith$Query$GetAllSchedules$allSchedules<
          Query$GetAllSchedules$allSchedules
        >
      >,
    )
    _fn,
  ) => call(
    allSchedules: _fn(
      _instance.allSchedules.map(
        (e) => CopyWith$Query$GetAllSchedules$allSchedules(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllSchedules<TRes>
    implements CopyWith$Query$GetAllSchedules<TRes> {
  _CopyWithStubImpl$Query$GetAllSchedules(this._res);

  TRes _res;

  call({
    List<Query$GetAllSchedules$allSchedules>? allSchedules,
    String? $__typename,
  }) => _res;

  allSchedules(_fn) => _res;
}

const documentNodeQueryGetAllSchedules = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllSchedules'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accessControllerId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'allSchedules'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accessControllerId'),
                value: VariableNode(
                  name: NameNode(value: 'accessControllerId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'token'),
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
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'scheduleDefinition'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'attribute'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'type'),
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
                        name: NameNode(value: 'value'),
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
                  name: NameNode(value: 'exceptionScheduleDefinition'),
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

class Query$GetAllSchedules$allSchedules {
  Query$GetAllSchedules$allSchedules({
    required this.token,
    required this.name,
    required this.description,
    required this.scheduleDefinition,
    required this.attribute,
    required this.exceptionScheduleDefinition,
    this.$__typename = 'Schedule',
  });

  factory Query$GetAllSchedules$allSchedules.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$token = json['token'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$scheduleDefinition = json['scheduleDefinition'];
    final l$attribute = json['attribute'];
    final l$exceptionScheduleDefinition = json['exceptionScheduleDefinition'];
    final l$$__typename = json['__typename'];
    return Query$GetAllSchedules$allSchedules(
      token: (l$token as String),
      name: (l$name as String),
      description: (l$description as String),
      scheduleDefinition: (l$scheduleDefinition as String),
      attribute: (l$attribute as List<dynamic>)
          .map(
            (e) => Query$GetAllSchedules$allSchedules$attribute.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      exceptionScheduleDefinition: (l$exceptionScheduleDefinition as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final String name;

  final String description;

  final String scheduleDefinition;

  final List<Query$GetAllSchedules$allSchedules$attribute> attribute;

  final String exceptionScheduleDefinition;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$scheduleDefinition = scheduleDefinition;
    _resultData['scheduleDefinition'] = l$scheduleDefinition;
    final l$attribute = attribute;
    _resultData['attribute'] = l$attribute.map((e) => e.toJson()).toList();
    final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
    _resultData['exceptionScheduleDefinition'] = l$exceptionScheduleDefinition;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$name = name;
    final l$description = description;
    final l$scheduleDefinition = scheduleDefinition;
    final l$attribute = attribute;
    final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$name,
      l$description,
      l$scheduleDefinition,
      Object.hashAll(l$attribute.map((v) => v)),
      l$exceptionScheduleDefinition,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllSchedules$allSchedules ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$scheduleDefinition = scheduleDefinition;
    final lOther$scheduleDefinition = other.scheduleDefinition;
    if (l$scheduleDefinition != lOther$scheduleDefinition) {
      return false;
    }
    final l$attribute = attribute;
    final lOther$attribute = other.attribute;
    if (l$attribute.length != lOther$attribute.length) {
      return false;
    }
    for (int i = 0; i < l$attribute.length; i++) {
      final l$attribute$entry = l$attribute[i];
      final lOther$attribute$entry = lOther$attribute[i];
      if (l$attribute$entry != lOther$attribute$entry) {
        return false;
      }
    }
    final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
    final lOther$exceptionScheduleDefinition =
        other.exceptionScheduleDefinition;
    if (l$exceptionScheduleDefinition != lOther$exceptionScheduleDefinition) {
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

extension UtilityExtension$Query$GetAllSchedules$allSchedules
    on Query$GetAllSchedules$allSchedules {
  CopyWith$Query$GetAllSchedules$allSchedules<
    Query$GetAllSchedules$allSchedules
  >
  get copyWith => CopyWith$Query$GetAllSchedules$allSchedules(this, (i) => i);
}

abstract class CopyWith$Query$GetAllSchedules$allSchedules<TRes> {
  factory CopyWith$Query$GetAllSchedules$allSchedules(
    Query$GetAllSchedules$allSchedules instance,
    TRes Function(Query$GetAllSchedules$allSchedules) then,
  ) = _CopyWithImpl$Query$GetAllSchedules$allSchedules;

  factory CopyWith$Query$GetAllSchedules$allSchedules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllSchedules$allSchedules;

  TRes call({
    String? token,
    String? name,
    String? description,
    String? scheduleDefinition,
    List<Query$GetAllSchedules$allSchedules$attribute>? attribute,
    String? exceptionScheduleDefinition,
    String? $__typename,
  });
  TRes attribute(
    Iterable<Query$GetAllSchedules$allSchedules$attribute> Function(
      Iterable<
        CopyWith$Query$GetAllSchedules$allSchedules$attribute<
          Query$GetAllSchedules$allSchedules$attribute
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllSchedules$allSchedules<TRes>
    implements CopyWith$Query$GetAllSchedules$allSchedules<TRes> {
  _CopyWithImpl$Query$GetAllSchedules$allSchedules(this._instance, this._then);

  final Query$GetAllSchedules$allSchedules _instance;

  final TRes Function(Query$GetAllSchedules$allSchedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? scheduleDefinition = _undefined,
    Object? attribute = _undefined,
    Object? exceptionScheduleDefinition = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllSchedules$allSchedules(
      token: token == _undefined || token == null
          ? _instance.token
          : (token as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      scheduleDefinition:
          scheduleDefinition == _undefined || scheduleDefinition == null
          ? _instance.scheduleDefinition
          : (scheduleDefinition as String),
      attribute: attribute == _undefined || attribute == null
          ? _instance.attribute
          : (attribute as List<Query$GetAllSchedules$allSchedules$attribute>),
      exceptionScheduleDefinition:
          exceptionScheduleDefinition == _undefined ||
              exceptionScheduleDefinition == null
          ? _instance.exceptionScheduleDefinition
          : (exceptionScheduleDefinition as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes attribute(
    Iterable<Query$GetAllSchedules$allSchedules$attribute> Function(
      Iterable<
        CopyWith$Query$GetAllSchedules$allSchedules$attribute<
          Query$GetAllSchedules$allSchedules$attribute
        >
      >,
    )
    _fn,
  ) => call(
    attribute: _fn(
      _instance.attribute.map(
        (e) =>
            CopyWith$Query$GetAllSchedules$allSchedules$attribute(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllSchedules$allSchedules<TRes>
    implements CopyWith$Query$GetAllSchedules$allSchedules<TRes> {
  _CopyWithStubImpl$Query$GetAllSchedules$allSchedules(this._res);

  TRes _res;

  call({
    String? token,
    String? name,
    String? description,
    String? scheduleDefinition,
    List<Query$GetAllSchedules$allSchedules$attribute>? attribute,
    String? exceptionScheduleDefinition,
    String? $__typename,
  }) => _res;

  attribute(_fn) => _res;
}

class Query$GetAllSchedules$allSchedules$attribute {
  Query$GetAllSchedules$allSchedules$attribute({
    required this.type,
    required this.name,
    required this.value,
    this.$__typename = 'AttributeItem',
  });

  factory Query$GetAllSchedules$allSchedules$attribute.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$name = json['name'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAllSchedules$allSchedules$attribute(
      type: (l$type as String),
      name: (l$name as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String name;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$type, l$name, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllSchedules$allSchedules$attribute ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$GetAllSchedules$allSchedules$attribute
    on Query$GetAllSchedules$allSchedules$attribute {
  CopyWith$Query$GetAllSchedules$allSchedules$attribute<
    Query$GetAllSchedules$allSchedules$attribute
  >
  get copyWith =>
      CopyWith$Query$GetAllSchedules$allSchedules$attribute(this, (i) => i);
}

abstract class CopyWith$Query$GetAllSchedules$allSchedules$attribute<TRes> {
  factory CopyWith$Query$GetAllSchedules$allSchedules$attribute(
    Query$GetAllSchedules$allSchedules$attribute instance,
    TRes Function(Query$GetAllSchedules$allSchedules$attribute) then,
  ) = _CopyWithImpl$Query$GetAllSchedules$allSchedules$attribute;

  factory CopyWith$Query$GetAllSchedules$allSchedules$attribute.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllSchedules$allSchedules$attribute;

  TRes call({String? type, String? name, String? value, String? $__typename});
}

class _CopyWithImpl$Query$GetAllSchedules$allSchedules$attribute<TRes>
    implements CopyWith$Query$GetAllSchedules$allSchedules$attribute<TRes> {
  _CopyWithImpl$Query$GetAllSchedules$allSchedules$attribute(
    this._instance,
    this._then,
  );

  final Query$GetAllSchedules$allSchedules$attribute _instance;

  final TRes Function(Query$GetAllSchedules$allSchedules$attribute) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? name = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllSchedules$allSchedules$attribute(
      type: type == _undefined || type == null
          ? _instance.type
          : (type as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllSchedules$allSchedules$attribute<TRes>
    implements CopyWith$Query$GetAllSchedules$allSchedules$attribute<TRes> {
  _CopyWithStubImpl$Query$GetAllSchedules$allSchedules$attribute(this._res);

  TRes _res;

  call({String? type, String? name, String? value, String? $__typename}) =>
      _res;
}
