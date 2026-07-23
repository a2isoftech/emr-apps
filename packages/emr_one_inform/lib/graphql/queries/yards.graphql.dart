import 'package:gql/ast.dart';

class Variables$Query$Yards {
  factory Variables$Query$Yards({required String code}) =>
      Variables$Query$Yards._({
        r'code': code,
      });

  Variables$Query$Yards._(this._$data);

  factory Variables$Query$Yards.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Query$Yards._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Query$Yards<Variables$Query$Yards> get copyWith =>
      CopyWith$Variables$Query$Yards(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Yards) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Variables$Query$Yards<TRes> {
  factory CopyWith$Variables$Query$Yards(
    Variables$Query$Yards instance,
    TRes Function(Variables$Query$Yards) then,
  ) = _CopyWithImpl$Variables$Query$Yards;

  factory CopyWith$Variables$Query$Yards.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Yards;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Query$Yards<TRes>
    implements CopyWith$Variables$Query$Yards<TRes> {
  _CopyWithImpl$Variables$Query$Yards(
    this._instance,
    this._then,
  );

  final Variables$Query$Yards _instance;

  final TRes Function(Variables$Query$Yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) => _then(Variables$Query$Yards._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Yards<TRes>
    implements CopyWith$Variables$Query$Yards<TRes> {
  _CopyWithStubImpl$Variables$Query$Yards(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Query$Yards {
  Query$Yards({
    required this.territory,
    this.$__typename = 'FormsQuery',
  });

  factory Query$Yards.fromJson(Map<String, dynamic> json) {
    final l$territory = json['territory'];
    final l$$__typename = json['__typename'];
    return Query$Yards(
      territory:
          Query$Yards$territory.fromJson((l$territory as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Yards$territory territory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$territory = territory;
    _resultData['territory'] = l$territory.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$territory = territory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$territory,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Yards) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
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

extension UtilityExtension$Query$Yards on Query$Yards {
  CopyWith$Query$Yards<Query$Yards> get copyWith => CopyWith$Query$Yards(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Yards<TRes> {
  factory CopyWith$Query$Yards(
    Query$Yards instance,
    TRes Function(Query$Yards) then,
  ) = _CopyWithImpl$Query$Yards;

  factory CopyWith$Query$Yards.stub(TRes res) = _CopyWithStubImpl$Query$Yards;

  TRes call({
    Query$Yards$territory? territory,
    String? $__typename,
  });
  CopyWith$Query$Yards$territory<TRes> get territory;
}

class _CopyWithImpl$Query$Yards<TRes> implements CopyWith$Query$Yards<TRes> {
  _CopyWithImpl$Query$Yards(
    this._instance,
    this._then,
  );

  final Query$Yards _instance;

  final TRes Function(Query$Yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? territory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Yards(
        territory: territory == _undefined || territory == null
            ? _instance.territory
            : (territory as Query$Yards$territory),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Yards$territory<TRes> get territory {
    final local$territory = _instance.territory;
    return CopyWith$Query$Yards$territory(
        local$territory, (e) => call(territory: e));
  }
}

class _CopyWithStubImpl$Query$Yards<TRes>
    implements CopyWith$Query$Yards<TRes> {
  _CopyWithStubImpl$Query$Yards(this._res);

  TRes _res;

  call({
    Query$Yards$territory? territory,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Yards$territory<TRes> get territory =>
      CopyWith$Query$Yards$territory.stub(_res);
}

const documentNodeQueryYards = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Yards'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'territory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'yards'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'yardCode'),
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

class Query$Yards$territory {
  Query$Yards$territory({
    this.yards,
    this.$__typename = 'Territory',
  });

  factory Query$Yards$territory.fromJson(Map<String, dynamic> json) {
    final l$yards = json['yards'];
    final l$$__typename = json['__typename'];
    return Query$Yards$territory(
      yards: (l$yards as List<dynamic>?)
          ?.map((e) =>
              Query$Yards$territory$yards.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Yards$territory$yards>? yards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yards = yards;
    _resultData['yards'] = l$yards?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yards = yards;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yards == null ? null : Object.hashAll(l$yards.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Yards$territory) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yards = yards;
    final lOther$yards = other.yards;
    if (l$yards != null && lOther$yards != null) {
      if (l$yards.length != lOther$yards.length) {
        return false;
      }
      for (int i = 0; i < l$yards.length; i++) {
        final l$yards$entry = l$yards[i];
        final lOther$yards$entry = lOther$yards[i];
        if (l$yards$entry != lOther$yards$entry) {
          return false;
        }
      }
    } else if (l$yards != lOther$yards) {
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

extension UtilityExtension$Query$Yards$territory on Query$Yards$territory {
  CopyWith$Query$Yards$territory<Query$Yards$territory> get copyWith =>
      CopyWith$Query$Yards$territory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Yards$territory<TRes> {
  factory CopyWith$Query$Yards$territory(
    Query$Yards$territory instance,
    TRes Function(Query$Yards$territory) then,
  ) = _CopyWithImpl$Query$Yards$territory;

  factory CopyWith$Query$Yards$territory.stub(TRes res) =
      _CopyWithStubImpl$Query$Yards$territory;

  TRes call({
    List<Query$Yards$territory$yards>? yards,
    String? $__typename,
  });
  TRes yards(
      Iterable<Query$Yards$territory$yards>? Function(
              Iterable<
                  CopyWith$Query$Yards$territory$yards<
                      Query$Yards$territory$yards>>?)
          _fn);
}

class _CopyWithImpl$Query$Yards$territory<TRes>
    implements CopyWith$Query$Yards$territory<TRes> {
  _CopyWithImpl$Query$Yards$territory(
    this._instance,
    this._then,
  );

  final Query$Yards$territory _instance;

  final TRes Function(Query$Yards$territory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yards = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Yards$territory(
        yards: yards == _undefined
            ? _instance.yards
            : (yards as List<Query$Yards$territory$yards>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes yards(
          Iterable<Query$Yards$territory$yards>? Function(
                  Iterable<
                      CopyWith$Query$Yards$territory$yards<
                          Query$Yards$territory$yards>>?)
              _fn) =>
      call(
          yards: _fn(
              _instance.yards?.map((e) => CopyWith$Query$Yards$territory$yards(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$Yards$territory<TRes>
    implements CopyWith$Query$Yards$territory<TRes> {
  _CopyWithStubImpl$Query$Yards$territory(this._res);

  TRes _res;

  call({
    List<Query$Yards$territory$yards>? yards,
    String? $__typename,
  }) =>
      _res;

  yards(_fn) => _res;
}

class Query$Yards$territory$yards {
  Query$Yards$territory$yards({
    this.yardCode,
    this.name,
    this.$__typename = 'Yard',
  });

  factory Query$Yards$territory$yards.fromJson(Map<String, dynamic> json) {
    final l$yardCode = json['yardCode'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Yards$territory$yards(
      yardCode: (l$yardCode as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? yardCode;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Yards$territory$yards) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Query$Yards$territory$yards
    on Query$Yards$territory$yards {
  CopyWith$Query$Yards$territory$yards<Query$Yards$territory$yards>
      get copyWith => CopyWith$Query$Yards$territory$yards(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Yards$territory$yards<TRes> {
  factory CopyWith$Query$Yards$territory$yards(
    Query$Yards$territory$yards instance,
    TRes Function(Query$Yards$territory$yards) then,
  ) = _CopyWithImpl$Query$Yards$territory$yards;

  factory CopyWith$Query$Yards$territory$yards.stub(TRes res) =
      _CopyWithStubImpl$Query$Yards$territory$yards;

  TRes call({
    String? yardCode,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Yards$territory$yards<TRes>
    implements CopyWith$Query$Yards$territory$yards<TRes> {
  _CopyWithImpl$Query$Yards$territory$yards(
    this._instance,
    this._then,
  );

  final Query$Yards$territory$yards _instance;

  final TRes Function(Query$Yards$territory$yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Yards$territory$yards(
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Yards$territory$yards<TRes>
    implements CopyWith$Query$Yards$territory$yards<TRes> {
  _CopyWithStubImpl$Query$Yards$territory$yards(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
