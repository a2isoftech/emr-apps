import 'package:gql/ast.dart';

class Variables$Query$GetTimeZones {
  factory Variables$Query$GetTimeZones({required String query}) =>
      Variables$Query$GetTimeZones._({r'query': query});

  Variables$Query$GetTimeZones._(this._$data);

  factory Variables$Query$GetTimeZones.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    return Variables$Query$GetTimeZones._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    return result$data;
  }

  CopyWith$Variables$Query$GetTimeZones<Variables$Query$GetTimeZones>
  get copyWith => CopyWith$Variables$Query$GetTimeZones(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTimeZones ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([l$query]);
  }
}

abstract class CopyWith$Variables$Query$GetTimeZones<TRes> {
  factory CopyWith$Variables$Query$GetTimeZones(
    Variables$Query$GetTimeZones instance,
    TRes Function(Variables$Query$GetTimeZones) then,
  ) = _CopyWithImpl$Variables$Query$GetTimeZones;

  factory CopyWith$Variables$Query$GetTimeZones.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTimeZones;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$GetTimeZones<TRes>
    implements CopyWith$Variables$Query$GetTimeZones<TRes> {
  _CopyWithImpl$Variables$Query$GetTimeZones(this._instance, this._then);

  final Variables$Query$GetTimeZones _instance;

  final TRes Function(Variables$Query$GetTimeZones) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(
    Variables$Query$GetTimeZones._({
      ..._instance._$data,
      if (query != _undefined && query != null) 'query': (query as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetTimeZones<TRes>
    implements CopyWith$Variables$Query$GetTimeZones<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTimeZones(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$GetTimeZones {
  Query$GetTimeZones({required this.timezones, this.$__typename = 'Query'});

  factory Query$GetTimeZones.fromJson(Map<String, dynamic> json) {
    final l$timezones = json['timezones'];
    final l$$__typename = json['__typename'];
    return Query$GetTimeZones(
      timezones: (l$timezones as List<dynamic>)
          .map(
            (e) => Query$GetTimeZones$timezones.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetTimeZones$timezones> timezones;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$timezones = timezones;
    _resultData['timezones'] = l$timezones.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$timezones = timezones;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$timezones.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTimeZones || runtimeType != other.runtimeType) {
      return false;
    }
    final l$timezones = timezones;
    final lOther$timezones = other.timezones;
    if (l$timezones.length != lOther$timezones.length) {
      return false;
    }
    for (int i = 0; i < l$timezones.length; i++) {
      final l$timezones$entry = l$timezones[i];
      final lOther$timezones$entry = lOther$timezones[i];
      if (l$timezones$entry != lOther$timezones$entry) {
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

extension UtilityExtension$Query$GetTimeZones on Query$GetTimeZones {
  CopyWith$Query$GetTimeZones<Query$GetTimeZones> get copyWith =>
      CopyWith$Query$GetTimeZones(this, (i) => i);
}

abstract class CopyWith$Query$GetTimeZones<TRes> {
  factory CopyWith$Query$GetTimeZones(
    Query$GetTimeZones instance,
    TRes Function(Query$GetTimeZones) then,
  ) = _CopyWithImpl$Query$GetTimeZones;

  factory CopyWith$Query$GetTimeZones.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTimeZones;

  TRes call({
    List<Query$GetTimeZones$timezones>? timezones,
    String? $__typename,
  });
  TRes timezones(
    Iterable<Query$GetTimeZones$timezones> Function(
      Iterable<
        CopyWith$Query$GetTimeZones$timezones<Query$GetTimeZones$timezones>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetTimeZones<TRes>
    implements CopyWith$Query$GetTimeZones<TRes> {
  _CopyWithImpl$Query$GetTimeZones(this._instance, this._then);

  final Query$GetTimeZones _instance;

  final TRes Function(Query$GetTimeZones) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? timezones = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTimeZones(
      timezones: timezones == _undefined || timezones == null
          ? _instance.timezones
          : (timezones as List<Query$GetTimeZones$timezones>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes timezones(
    Iterable<Query$GetTimeZones$timezones> Function(
      Iterable<
        CopyWith$Query$GetTimeZones$timezones<Query$GetTimeZones$timezones>
      >,
    )
    _fn,
  ) => call(
    timezones: _fn(
      _instance.timezones.map(
        (e) => CopyWith$Query$GetTimeZones$timezones(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetTimeZones<TRes>
    implements CopyWith$Query$GetTimeZones<TRes> {
  _CopyWithStubImpl$Query$GetTimeZones(this._res);

  TRes _res;

  call({List<Query$GetTimeZones$timezones>? timezones, String? $__typename}) =>
      _res;

  timezones(_fn) => _res;
}

const documentNodeQueryGetTimeZones = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetTimeZones'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'timezones'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'query'),
                      value: VariableNode(name: NameNode(value: 'query')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'timeZoneId'),
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

class Query$GetTimeZones$timezones {
  Query$GetTimeZones$timezones({
    required this.timeZoneId,
    required this.displayName,
    this.$__typename = 'Timezone',
  });

  factory Query$GetTimeZones$timezones.fromJson(Map<String, dynamic> json) {
    final l$timeZoneId = json['timeZoneId'];
    final l$displayName = json['displayName'];
    final l$$__typename = json['__typename'];
    return Query$GetTimeZones$timezones(
      timeZoneId: (l$timeZoneId as String),
      displayName: (l$displayName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String timeZoneId;

  final String displayName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$timeZoneId = timeZoneId;
    _resultData['timeZoneId'] = l$timeZoneId;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$timeZoneId = timeZoneId;
    final l$displayName = displayName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$timeZoneId, l$displayName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTimeZones$timezones ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$timeZoneId = timeZoneId;
    final lOther$timeZoneId = other.timeZoneId;
    if (l$timeZoneId != lOther$timeZoneId) {
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

extension UtilityExtension$Query$GetTimeZones$timezones
    on Query$GetTimeZones$timezones {
  CopyWith$Query$GetTimeZones$timezones<Query$GetTimeZones$timezones>
  get copyWith => CopyWith$Query$GetTimeZones$timezones(this, (i) => i);
}

abstract class CopyWith$Query$GetTimeZones$timezones<TRes> {
  factory CopyWith$Query$GetTimeZones$timezones(
    Query$GetTimeZones$timezones instance,
    TRes Function(Query$GetTimeZones$timezones) then,
  ) = _CopyWithImpl$Query$GetTimeZones$timezones;

  factory CopyWith$Query$GetTimeZones$timezones.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTimeZones$timezones;

  TRes call({String? timeZoneId, String? displayName, String? $__typename});
}

class _CopyWithImpl$Query$GetTimeZones$timezones<TRes>
    implements CopyWith$Query$GetTimeZones$timezones<TRes> {
  _CopyWithImpl$Query$GetTimeZones$timezones(this._instance, this._then);

  final Query$GetTimeZones$timezones _instance;

  final TRes Function(Query$GetTimeZones$timezones) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? timeZoneId = _undefined,
    Object? displayName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTimeZones$timezones(
      timeZoneId: timeZoneId == _undefined || timeZoneId == null
          ? _instance.timeZoneId
          : (timeZoneId as String),
      displayName: displayName == _undefined || displayName == null
          ? _instance.displayName
          : (displayName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTimeZones$timezones<TRes>
    implements CopyWith$Query$GetTimeZones$timezones<TRes> {
  _CopyWithStubImpl$Query$GetTimeZones$timezones(this._res);

  TRes _res;

  call({String? timeZoneId, String? displayName, String? $__typename}) => _res;
}
