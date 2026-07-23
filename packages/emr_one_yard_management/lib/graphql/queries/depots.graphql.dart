import 'package:gql/ast.dart';

class Variables$Query$depots {
  factory Variables$Query$depots({required String searchTerm}) =>
      Variables$Query$depots._({
        r'searchTerm': searchTerm,
      });

  Variables$Query$depots._(this._$data);

  factory Variables$Query$depots.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$searchTerm = data['searchTerm'];
    result$data['searchTerm'] = (l$searchTerm as String);
    return Variables$Query$depots._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchTerm => (_$data['searchTerm'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchTerm = searchTerm;
    result$data['searchTerm'] = l$searchTerm;
    return result$data;
  }

  CopyWith$Variables$Query$depots<Variables$Query$depots> get copyWith =>
      CopyWith$Variables$Query$depots(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$depots) ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$depots<TRes> {
  factory CopyWith$Variables$Query$depots(
    Variables$Query$depots instance,
    TRes Function(Variables$Query$depots) then,
  ) = _CopyWithImpl$Variables$Query$depots;

  factory CopyWith$Variables$Query$depots.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$depots;

  TRes call({String? searchTerm});
}

class _CopyWithImpl$Variables$Query$depots<TRes>
    implements CopyWith$Variables$Query$depots<TRes> {
  _CopyWithImpl$Variables$Query$depots(
    this._instance,
    this._then,
  );

  final Variables$Query$depots _instance;

  final TRes Function(Variables$Query$depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? searchTerm = _undefined}) =>
      _then(Variables$Query$depots._({
        ..._instance._$data,
        if (searchTerm != _undefined && searchTerm != null)
          'searchTerm': (searchTerm as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$depots<TRes>
    implements CopyWith$Variables$Query$depots<TRes> {
  _CopyWithStubImpl$Variables$Query$depots(this._res);

  TRes _res;

  call({String? searchTerm}) => _res;
}

class Query$depots {
  Query$depots({
    this.depots,
    this.$__typename = 'Query',
  });

  factory Query$depots.fromJson(Map<String, dynamic> json) {
    final l$depots = json['depots'];
    final l$$__typename = json['__typename'];
    return Query$depots(
      depots: (l$depots as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$depots$depots.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$depots$depots?>? depots;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depots = depots;
    _resultData['depots'] = l$depots?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depots = depots;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$depots == null ? null : Object.hashAll(l$depots.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$depots) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$depots = depots;
    final lOther$depots = other.depots;
    if (l$depots != null && lOther$depots != null) {
      if (l$depots.length != lOther$depots.length) {
        return false;
      }
      for (int i = 0; i < l$depots.length; i++) {
        final l$depots$entry = l$depots[i];
        final lOther$depots$entry = lOther$depots[i];
        if (l$depots$entry != lOther$depots$entry) {
          return false;
        }
      }
    } else if (l$depots != lOther$depots) {
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

extension UtilityExtension$Query$depots on Query$depots {
  CopyWith$Query$depots<Query$depots> get copyWith => CopyWith$Query$depots(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$depots<TRes> {
  factory CopyWith$Query$depots(
    Query$depots instance,
    TRes Function(Query$depots) then,
  ) = _CopyWithImpl$Query$depots;

  factory CopyWith$Query$depots.stub(TRes res) = _CopyWithStubImpl$Query$depots;

  TRes call({
    List<Query$depots$depots?>? depots,
    String? $__typename,
  });
  TRes depots(
      Iterable<Query$depots$depots?>? Function(
              Iterable<CopyWith$Query$depots$depots<Query$depots$depots>?>?)
          _fn);
}

class _CopyWithImpl$Query$depots<TRes> implements CopyWith$Query$depots<TRes> {
  _CopyWithImpl$Query$depots(
    this._instance,
    this._then,
  );

  final Query$depots _instance;

  final TRes Function(Query$depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depots = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$depots(
        depots: depots == _undefined
            ? _instance.depots
            : (depots as List<Query$depots$depots?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes depots(
          Iterable<Query$depots$depots?>? Function(
                  Iterable<CopyWith$Query$depots$depots<Query$depots$depots>?>?)
              _fn) =>
      call(
          depots: _fn(_instance.depots?.map((e) => e == null
              ? null
              : CopyWith$Query$depots$depots(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$depots<TRes>
    implements CopyWith$Query$depots<TRes> {
  _CopyWithStubImpl$Query$depots(this._res);

  TRes _res;

  call({
    List<Query$depots$depots?>? depots,
    String? $__typename,
  }) =>
      _res;

  depots(_fn) => _res;
}

const documentNodeQuerydepots = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'depots'),
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
        name: NameNode(value: 'depots'),
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
            name: NameNode(value: 'depotNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'depotName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'depotShortName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'territoryCode'),
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

class Query$depots$depots {
  Query$depots$depots({
    this.depotNumber,
    this.depotName,
    this.depotShortName,
    this.territoryCode,
    this.$__typename = 'DepotModel',
  });

  factory Query$depots$depots.fromJson(Map<String, dynamic> json) {
    final l$depotNumber = json['depotNumber'];
    final l$depotName = json['depotName'];
    final l$depotShortName = json['depotShortName'];
    final l$territoryCode = json['territoryCode'];
    final l$$__typename = json['__typename'];
    return Query$depots$depots(
      depotNumber: (l$depotNumber as String?),
      depotName: (l$depotName as String?),
      depotShortName: (l$depotShortName as String?),
      territoryCode: (l$territoryCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? depotNumber;

  final String? depotName;

  final String? depotShortName;

  final String? territoryCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depotNumber = depotNumber;
    _resultData['depotNumber'] = l$depotNumber;
    final l$depotName = depotName;
    _resultData['depotName'] = l$depotName;
    final l$depotShortName = depotShortName;
    _resultData['depotShortName'] = l$depotShortName;
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depotNumber = depotNumber;
    final l$depotName = depotName;
    final l$depotShortName = depotShortName;
    final l$territoryCode = territoryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$depotNumber,
      l$depotName,
      l$depotShortName,
      l$territoryCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$depots$depots) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotNumber = depotNumber;
    final lOther$depotNumber = other.depotNumber;
    if (l$depotNumber != lOther$depotNumber) {
      return false;
    }
    final l$depotName = depotName;
    final lOther$depotName = other.depotName;
    if (l$depotName != lOther$depotName) {
      return false;
    }
    final l$depotShortName = depotShortName;
    final lOther$depotShortName = other.depotShortName;
    if (l$depotShortName != lOther$depotShortName) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
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

extension UtilityExtension$Query$depots$depots on Query$depots$depots {
  CopyWith$Query$depots$depots<Query$depots$depots> get copyWith =>
      CopyWith$Query$depots$depots(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$depots$depots<TRes> {
  factory CopyWith$Query$depots$depots(
    Query$depots$depots instance,
    TRes Function(Query$depots$depots) then,
  ) = _CopyWithImpl$Query$depots$depots;

  factory CopyWith$Query$depots$depots.stub(TRes res) =
      _CopyWithStubImpl$Query$depots$depots;

  TRes call({
    String? depotNumber,
    String? depotName,
    String? depotShortName,
    String? territoryCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$depots$depots<TRes>
    implements CopyWith$Query$depots$depots<TRes> {
  _CopyWithImpl$Query$depots$depots(
    this._instance,
    this._then,
  );

  final Query$depots$depots _instance;

  final TRes Function(Query$depots$depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNumber = _undefined,
    Object? depotName = _undefined,
    Object? depotShortName = _undefined,
    Object? territoryCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$depots$depots(
        depotNumber: depotNumber == _undefined
            ? _instance.depotNumber
            : (depotNumber as String?),
        depotName: depotName == _undefined
            ? _instance.depotName
            : (depotName as String?),
        depotShortName: depotShortName == _undefined
            ? _instance.depotShortName
            : (depotShortName as String?),
        territoryCode: territoryCode == _undefined
            ? _instance.territoryCode
            : (territoryCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$depots$depots<TRes>
    implements CopyWith$Query$depots$depots<TRes> {
  _CopyWithStubImpl$Query$depots$depots(this._res);

  TRes _res;

  call({
    String? depotNumber,
    String? depotName,
    String? depotShortName,
    String? territoryCode,
    String? $__typename,
  }) =>
      _res;
}
