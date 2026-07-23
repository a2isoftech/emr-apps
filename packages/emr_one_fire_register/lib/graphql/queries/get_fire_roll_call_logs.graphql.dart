import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetFireRollCallLogs {
  factory Variables$Query$GetFireRollCallLogs(
          {required Input$GetFireRollCallLogsInput input}) =>
      Variables$Query$GetFireRollCallLogs._({
        r'input': input,
      });

  Variables$Query$GetFireRollCallLogs._(this._$data);

  factory Variables$Query$GetFireRollCallLogs.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$GetFireRollCallLogsInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$GetFireRollCallLogs._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetFireRollCallLogsInput get input =>
      (_$data['input'] as Input$GetFireRollCallLogsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetFireRollCallLogs<
          Variables$Query$GetFireRollCallLogs>
      get copyWith => CopyWith$Variables$Query$GetFireRollCallLogs(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetFireRollCallLogs) ||
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

abstract class CopyWith$Variables$Query$GetFireRollCallLogs<TRes> {
  factory CopyWith$Variables$Query$GetFireRollCallLogs(
    Variables$Query$GetFireRollCallLogs instance,
    TRes Function(Variables$Query$GetFireRollCallLogs) then,
  ) = _CopyWithImpl$Variables$Query$GetFireRollCallLogs;

  factory CopyWith$Variables$Query$GetFireRollCallLogs.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFireRollCallLogs;

  TRes call({Input$GetFireRollCallLogsInput? input});
}

class _CopyWithImpl$Variables$Query$GetFireRollCallLogs<TRes>
    implements CopyWith$Variables$Query$GetFireRollCallLogs<TRes> {
  _CopyWithImpl$Variables$Query$GetFireRollCallLogs(
    this._instance,
    this._then,
  );

  final Variables$Query$GetFireRollCallLogs _instance;

  final TRes Function(Variables$Query$GetFireRollCallLogs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$GetFireRollCallLogs._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$GetFireRollCallLogsInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetFireRollCallLogs<TRes>
    implements CopyWith$Variables$Query$GetFireRollCallLogs<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFireRollCallLogs(this._res);

  TRes _res;

  call({Input$GetFireRollCallLogsInput? input}) => _res;
}

class Query$GetFireRollCallLogs {
  Query$GetFireRollCallLogs({
    required this.fireRollCallLogs,
    this.$__typename = 'Query',
  });

  factory Query$GetFireRollCallLogs.fromJson(Map<String, dynamic> json) {
    final l$fireRollCallLogs = json['fireRollCallLogs'];
    final l$$__typename = json['__typename'];
    return Query$GetFireRollCallLogs(
      fireRollCallLogs: (l$fireRollCallLogs as List<dynamic>)
          .map((e) => Query$GetFireRollCallLogs$fireRollCallLogs.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetFireRollCallLogs$fireRollCallLogs> fireRollCallLogs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fireRollCallLogs = fireRollCallLogs;
    _resultData['fireRollCallLogs'] =
        l$fireRollCallLogs.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fireRollCallLogs = fireRollCallLogs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$fireRollCallLogs.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFireRollCallLogs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fireRollCallLogs = fireRollCallLogs;
    final lOther$fireRollCallLogs = other.fireRollCallLogs;
    if (l$fireRollCallLogs.length != lOther$fireRollCallLogs.length) {
      return false;
    }
    for (int i = 0; i < l$fireRollCallLogs.length; i++) {
      final l$fireRollCallLogs$entry = l$fireRollCallLogs[i];
      final lOther$fireRollCallLogs$entry = lOther$fireRollCallLogs[i];
      if (l$fireRollCallLogs$entry != lOther$fireRollCallLogs$entry) {
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

extension UtilityExtension$Query$GetFireRollCallLogs
    on Query$GetFireRollCallLogs {
  CopyWith$Query$GetFireRollCallLogs<Query$GetFireRollCallLogs> get copyWith =>
      CopyWith$Query$GetFireRollCallLogs(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetFireRollCallLogs<TRes> {
  factory CopyWith$Query$GetFireRollCallLogs(
    Query$GetFireRollCallLogs instance,
    TRes Function(Query$GetFireRollCallLogs) then,
  ) = _CopyWithImpl$Query$GetFireRollCallLogs;

  factory CopyWith$Query$GetFireRollCallLogs.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFireRollCallLogs;

  TRes call({
    List<Query$GetFireRollCallLogs$fireRollCallLogs>? fireRollCallLogs,
    String? $__typename,
  });
  TRes fireRollCallLogs(
      Iterable<Query$GetFireRollCallLogs$fireRollCallLogs> Function(
              Iterable<
                  CopyWith$Query$GetFireRollCallLogs$fireRollCallLogs<
                      Query$GetFireRollCallLogs$fireRollCallLogs>>)
          _fn);
}

class _CopyWithImpl$Query$GetFireRollCallLogs<TRes>
    implements CopyWith$Query$GetFireRollCallLogs<TRes> {
  _CopyWithImpl$Query$GetFireRollCallLogs(
    this._instance,
    this._then,
  );

  final Query$GetFireRollCallLogs _instance;

  final TRes Function(Query$GetFireRollCallLogs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fireRollCallLogs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFireRollCallLogs(
        fireRollCallLogs:
            fireRollCallLogs == _undefined || fireRollCallLogs == null
                ? _instance.fireRollCallLogs
                : (fireRollCallLogs
                    as List<Query$GetFireRollCallLogs$fireRollCallLogs>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes fireRollCallLogs(
          Iterable<Query$GetFireRollCallLogs$fireRollCallLogs> Function(
                  Iterable<
                      CopyWith$Query$GetFireRollCallLogs$fireRollCallLogs<
                          Query$GetFireRollCallLogs$fireRollCallLogs>>)
              _fn) =>
      call(
          fireRollCallLogs: _fn(_instance.fireRollCallLogs
              .map((e) => CopyWith$Query$GetFireRollCallLogs$fireRollCallLogs(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFireRollCallLogs<TRes>
    implements CopyWith$Query$GetFireRollCallLogs<TRes> {
  _CopyWithStubImpl$Query$GetFireRollCallLogs(this._res);

  TRes _res;

  call({
    List<Query$GetFireRollCallLogs$fireRollCallLogs>? fireRollCallLogs,
    String? $__typename,
  }) =>
      _res;

  fireRollCallLogs(_fn) => _res;
}

const documentNodeQueryGetFireRollCallLogs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFireRollCallLogs'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetFireRollCallLogsInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fireRollCallLogs'),
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
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'loggedBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'loggedOn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'punchData'),
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

class Query$GetFireRollCallLogs$fireRollCallLogs {
  Query$GetFireRollCallLogs$fireRollCallLogs({
    required this.id,
    required this.loggedBy,
    required this.loggedOn,
    required this.punchData,
    this.$__typename = 'FireRollCallLogs',
  });

  factory Query$GetFireRollCallLogs$fireRollCallLogs.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$loggedBy = json['loggedBy'];
    final l$loggedOn = json['loggedOn'];
    final l$punchData = json['punchData'];
    final l$$__typename = json['__typename'];
    return Query$GetFireRollCallLogs$fireRollCallLogs(
      id: (l$id as int),
      loggedBy: (l$loggedBy as String),
      loggedOn: DateTime.parse((l$loggedOn as String)),
      punchData: (l$punchData as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String loggedBy;

  final DateTime loggedOn;

  final String punchData;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$loggedBy = loggedBy;
    _resultData['loggedBy'] = l$loggedBy;
    final l$loggedOn = loggedOn;
    _resultData['loggedOn'] = l$loggedOn.toIso8601String();
    final l$punchData = punchData;
    _resultData['punchData'] = l$punchData;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$loggedBy = loggedBy;
    final l$loggedOn = loggedOn;
    final l$punchData = punchData;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$loggedBy,
      l$loggedOn,
      l$punchData,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFireRollCallLogs$fireRollCallLogs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$loggedBy = loggedBy;
    final lOther$loggedBy = other.loggedBy;
    if (l$loggedBy != lOther$loggedBy) {
      return false;
    }
    final l$loggedOn = loggedOn;
    final lOther$loggedOn = other.loggedOn;
    if (l$loggedOn != lOther$loggedOn) {
      return false;
    }
    final l$punchData = punchData;
    final lOther$punchData = other.punchData;
    if (l$punchData != lOther$punchData) {
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

extension UtilityExtension$Query$GetFireRollCallLogs$fireRollCallLogs
    on Query$GetFireRollCallLogs$fireRollCallLogs {
  CopyWith$Query$GetFireRollCallLogs$fireRollCallLogs<
          Query$GetFireRollCallLogs$fireRollCallLogs>
      get copyWith => CopyWith$Query$GetFireRollCallLogs$fireRollCallLogs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFireRollCallLogs$fireRollCallLogs<TRes> {
  factory CopyWith$Query$GetFireRollCallLogs$fireRollCallLogs(
    Query$GetFireRollCallLogs$fireRollCallLogs instance,
    TRes Function(Query$GetFireRollCallLogs$fireRollCallLogs) then,
  ) = _CopyWithImpl$Query$GetFireRollCallLogs$fireRollCallLogs;

  factory CopyWith$Query$GetFireRollCallLogs$fireRollCallLogs.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFireRollCallLogs$fireRollCallLogs;

  TRes call({
    int? id,
    String? loggedBy,
    DateTime? loggedOn,
    String? punchData,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFireRollCallLogs$fireRollCallLogs<TRes>
    implements CopyWith$Query$GetFireRollCallLogs$fireRollCallLogs<TRes> {
  _CopyWithImpl$Query$GetFireRollCallLogs$fireRollCallLogs(
    this._instance,
    this._then,
  );

  final Query$GetFireRollCallLogs$fireRollCallLogs _instance;

  final TRes Function(Query$GetFireRollCallLogs$fireRollCallLogs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? loggedBy = _undefined,
    Object? loggedOn = _undefined,
    Object? punchData = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFireRollCallLogs$fireRollCallLogs(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        loggedBy: loggedBy == _undefined || loggedBy == null
            ? _instance.loggedBy
            : (loggedBy as String),
        loggedOn: loggedOn == _undefined || loggedOn == null
            ? _instance.loggedOn
            : (loggedOn as DateTime),
        punchData: punchData == _undefined || punchData == null
            ? _instance.punchData
            : (punchData as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFireRollCallLogs$fireRollCallLogs<TRes>
    implements CopyWith$Query$GetFireRollCallLogs$fireRollCallLogs<TRes> {
  _CopyWithStubImpl$Query$GetFireRollCallLogs$fireRollCallLogs(this._res);

  TRes _res;

  call({
    int? id,
    String? loggedBy,
    DateTime? loggedOn,
    String? punchData,
    String? $__typename,
  }) =>
      _res;
}
