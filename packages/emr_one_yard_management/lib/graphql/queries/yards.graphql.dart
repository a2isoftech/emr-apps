import 'package:gql/ast.dart';

class Variables$Query$yards {
  factory Variables$Query$yards({required String searchTerm}) =>
      Variables$Query$yards._({
        r'searchTerm': searchTerm,
      });

  Variables$Query$yards._(this._$data);

  factory Variables$Query$yards.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$searchTerm = data['searchTerm'];
    result$data['searchTerm'] = (l$searchTerm as String);
    return Variables$Query$yards._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchTerm => (_$data['searchTerm'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchTerm = searchTerm;
    result$data['searchTerm'] = l$searchTerm;
    return result$data;
  }

  CopyWith$Variables$Query$yards<Variables$Query$yards> get copyWith =>
      CopyWith$Variables$Query$yards(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$yards) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchTerm = searchTerm;
    final lOther$searchTerm = other.searchTerm;
    if (l$searchTerm != lOther$searchTerm) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchTerm = searchTerm;
    return Object.hashAll([l$searchTerm]);
  }
}

abstract class CopyWith$Variables$Query$yards<TRes> {
  factory CopyWith$Variables$Query$yards(
    Variables$Query$yards instance,
    TRes Function(Variables$Query$yards) then,
  ) = _CopyWithImpl$Variables$Query$yards;

  factory CopyWith$Variables$Query$yards.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$yards;

  TRes call({String? searchTerm});
}

class _CopyWithImpl$Variables$Query$yards<TRes>
    implements CopyWith$Variables$Query$yards<TRes> {
  _CopyWithImpl$Variables$Query$yards(
    this._instance,
    this._then,
  );

  final Variables$Query$yards _instance;

  final TRes Function(Variables$Query$yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? searchTerm = _undefined}) =>
      _then(Variables$Query$yards._({
        ..._instance._$data,
        if (searchTerm != _undefined && searchTerm != null)
          'searchTerm': (searchTerm as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$yards<TRes>
    implements CopyWith$Variables$Query$yards<TRes> {
  _CopyWithStubImpl$Variables$Query$yards(this._res);

  TRes _res;

  call({String? searchTerm}) => _res;
}

class Query$yards {
  Query$yards({
    this.yards,
    this.$__typename = 'Query',
  });

  factory Query$yards.fromJson(Map<String, dynamic> json) {
    final l$yards = json['yards'];
    final l$$__typename = json['__typename'];
    return Query$yards(
      yards: (l$yards as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$yards$yards.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$yards$yards?>? yards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yards = yards;
    _resultData['yards'] = l$yards?.map((e) => e?.toJson()).toList();
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
    if (!(other is Query$yards) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$yards on Query$yards {
  CopyWith$Query$yards<Query$yards> get copyWith => CopyWith$Query$yards(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$yards<TRes> {
  factory CopyWith$Query$yards(
    Query$yards instance,
    TRes Function(Query$yards) then,
  ) = _CopyWithImpl$Query$yards;

  factory CopyWith$Query$yards.stub(TRes res) = _CopyWithStubImpl$Query$yards;

  TRes call({
    List<Query$yards$yards?>? yards,
    String? $__typename,
  });
  TRes yards(
      Iterable<Query$yards$yards?>? Function(
              Iterable<CopyWith$Query$yards$yards<Query$yards$yards>?>?)
          _fn);
}

class _CopyWithImpl$Query$yards<TRes> implements CopyWith$Query$yards<TRes> {
  _CopyWithImpl$Query$yards(
    this._instance,
    this._then,
  );

  final Query$yards _instance;

  final TRes Function(Query$yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yards = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$yards(
        yards: yards == _undefined
            ? _instance.yards
            : (yards as List<Query$yards$yards?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes yards(
          Iterable<Query$yards$yards?>? Function(
                  Iterable<CopyWith$Query$yards$yards<Query$yards$yards>?>?)
              _fn) =>
      call(
          yards: _fn(_instance.yards?.map((e) => e == null
              ? null
              : CopyWith$Query$yards$yards(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$yards<TRes>
    implements CopyWith$Query$yards<TRes> {
  _CopyWithStubImpl$Query$yards(this._res);

  TRes _res;

  call({
    List<Query$yards$yards?>? yards,
    String? $__typename,
  }) =>
      _res;

  yards(_fn) => _res;
}

const documentNodeQueryyards = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'yards'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchTerm')),
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
        name: NameNode(value: 'yards'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'searchTerm'),
            value: VariableNode(name: NameNode(value: 'searchTerm')),
          )
        ],
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
            name: NameNode(value: 'yardName'),
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

class Query$yards$yards {
  Query$yards$yards({
    this.yardCode,
    this.yardName,
    this.$__typename = 'YardsVm',
  });

  factory Query$yards$yards.fromJson(Map<String, dynamic> json) {
    final l$yardCode = json['yardCode'];
    final l$yardName = json['yardName'];
    final l$$__typename = json['__typename'];
    return Query$yards$yards(
      yardCode: (l$yardCode as String?),
      yardName: (l$yardName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? yardCode;

  final String? yardName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$yardName = yardName;
    _resultData['yardName'] = l$yardName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$yardName = yardName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$yardName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$yards$yards) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$yardName = yardName;
    final lOther$yardName = other.yardName;
    if (l$yardName != lOther$yardName) {
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

extension UtilityExtension$Query$yards$yards on Query$yards$yards {
  CopyWith$Query$yards$yards<Query$yards$yards> get copyWith =>
      CopyWith$Query$yards$yards(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$yards$yards<TRes> {
  factory CopyWith$Query$yards$yards(
    Query$yards$yards instance,
    TRes Function(Query$yards$yards) then,
  ) = _CopyWithImpl$Query$yards$yards;

  factory CopyWith$Query$yards$yards.stub(TRes res) =
      _CopyWithStubImpl$Query$yards$yards;

  TRes call({
    String? yardCode,
    String? yardName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$yards$yards<TRes>
    implements CopyWith$Query$yards$yards<TRes> {
  _CopyWithImpl$Query$yards$yards(
    this._instance,
    this._then,
  );

  final Query$yards$yards _instance;

  final TRes Function(Query$yards$yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? yardName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$yards$yards(
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        yardName:
            yardName == _undefined ? _instance.yardName : (yardName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$yards$yards<TRes>
    implements CopyWith$Query$yards$yards<TRes> {
  _CopyWithStubImpl$Query$yards$yards(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? yardName,
    String? $__typename,
  }) =>
      _res;
}
