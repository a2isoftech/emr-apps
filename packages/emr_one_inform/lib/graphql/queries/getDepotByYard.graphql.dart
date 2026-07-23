import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetDepotByYard {
  factory Variables$Query$GetDepotByYard(
          {required Input$DepotQueryFilterInput filter}) =>
      Variables$Query$GetDepotByYard._({
        r'filter': filter,
      });

  Variables$Query$GetDepotByYard._(this._$data);

  factory Variables$Query$GetDepotByYard.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = Input$DepotQueryFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$GetDepotByYard._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DepotQueryFilterInput get filter =>
      (_$data['filter'] as Input$DepotQueryFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetDepotByYard<Variables$Query$GetDepotByYard>
      get copyWith => CopyWith$Variables$Query$GetDepotByYard(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetDepotByYard) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([l$filter]);
  }
}

abstract class CopyWith$Variables$Query$GetDepotByYard<TRes> {
  factory CopyWith$Variables$Query$GetDepotByYard(
    Variables$Query$GetDepotByYard instance,
    TRes Function(Variables$Query$GetDepotByYard) then,
  ) = _CopyWithImpl$Variables$Query$GetDepotByYard;

  factory CopyWith$Variables$Query$GetDepotByYard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetDepotByYard;

  TRes call({Input$DepotQueryFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$GetDepotByYard<TRes>
    implements CopyWith$Variables$Query$GetDepotByYard<TRes> {
  _CopyWithImpl$Variables$Query$GetDepotByYard(
    this._instance,
    this._then,
  );

  final Variables$Query$GetDepotByYard _instance;

  final TRes Function(Variables$Query$GetDepotByYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$GetDepotByYard._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$DepotQueryFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetDepotByYard<TRes>
    implements CopyWith$Variables$Query$GetDepotByYard<TRes> {
  _CopyWithStubImpl$Variables$Query$GetDepotByYard(this._res);

  TRes _res;

  call({Input$DepotQueryFilterInput? filter}) => _res;
}

class Query$GetDepotByYard {
  Query$GetDepotByYard({
    required this.depots,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetDepotByYard.fromJson(Map<String, dynamic> json) {
    final l$depots = json['depots'];
    final l$$__typename = json['__typename'];
    return Query$GetDepotByYard(
      depots: (l$depots as List<dynamic>)
          .map((e) =>
              Query$GetDepotByYard$depots.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetDepotByYard$depots> depots;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depots = depots;
    _resultData['depots'] = l$depots.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depots = depots;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$depots.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDepotByYard) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$depots = depots;
    final lOther$depots = other.depots;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetDepotByYard on Query$GetDepotByYard {
  CopyWith$Query$GetDepotByYard<Query$GetDepotByYard> get copyWith =>
      CopyWith$Query$GetDepotByYard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDepotByYard<TRes> {
  factory CopyWith$Query$GetDepotByYard(
    Query$GetDepotByYard instance,
    TRes Function(Query$GetDepotByYard) then,
  ) = _CopyWithImpl$Query$GetDepotByYard;

  factory CopyWith$Query$GetDepotByYard.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDepotByYard;

  TRes call({
    List<Query$GetDepotByYard$depots>? depots,
    String? $__typename,
  });
  TRes depots(
      Iterable<Query$GetDepotByYard$depots> Function(
              Iterable<
                  CopyWith$Query$GetDepotByYard$depots<
                      Query$GetDepotByYard$depots>>)
          _fn);
}

class _CopyWithImpl$Query$GetDepotByYard<TRes>
    implements CopyWith$Query$GetDepotByYard<TRes> {
  _CopyWithImpl$Query$GetDepotByYard(
    this._instance,
    this._then,
  );

  final Query$GetDepotByYard _instance;

  final TRes Function(Query$GetDepotByYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depots = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDepotByYard(
        depots: depots == _undefined || depots == null
            ? _instance.depots
            : (depots as List<Query$GetDepotByYard$depots>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes depots(
          Iterable<Query$GetDepotByYard$depots> Function(
                  Iterable<
                      CopyWith$Query$GetDepotByYard$depots<
                          Query$GetDepotByYard$depots>>)
              _fn) =>
      call(
          depots: _fn(
              _instance.depots.map((e) => CopyWith$Query$GetDepotByYard$depots(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetDepotByYard<TRes>
    implements CopyWith$Query$GetDepotByYard<TRes> {
  _CopyWithStubImpl$Query$GetDepotByYard(this._res);

  TRes _res;

  call({
    List<Query$GetDepotByYard$depots>? depots,
    String? $__typename,
  }) =>
      _res;

  depots(_fn) => _res;
}

const documentNodeQueryGetDepotByYard = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetDepotByYard'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'DepotQueryFilterInput'),
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
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'depotNo'),
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
            name: NameNode(value: 'yardCode'),
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

class Query$GetDepotByYard$depots {
  Query$GetDepotByYard$depots({
    this.depotNo,
    this.name,
    this.yardCode,
    this.$__typename = 'Depot',
  });

  factory Query$GetDepotByYard$depots.fromJson(Map<String, dynamic> json) {
    final l$depotNo = json['depotNo'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Query$GetDepotByYard$depots(
      depotNo: (l$depotNo as String?),
      name: (l$name as String?),
      yardCode: (l$yardCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? depotNo;

  final String? name;

  final String? yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depotNo = depotNo;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$depotNo,
      l$name,
      l$yardCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDepotByYard$depots) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Query$GetDepotByYard$depots
    on Query$GetDepotByYard$depots {
  CopyWith$Query$GetDepotByYard$depots<Query$GetDepotByYard$depots>
      get copyWith => CopyWith$Query$GetDepotByYard$depots(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDepotByYard$depots<TRes> {
  factory CopyWith$Query$GetDepotByYard$depots(
    Query$GetDepotByYard$depots instance,
    TRes Function(Query$GetDepotByYard$depots) then,
  ) = _CopyWithImpl$Query$GetDepotByYard$depots;

  factory CopyWith$Query$GetDepotByYard$depots.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDepotByYard$depots;

  TRes call({
    String? depotNo,
    String? name,
    String? yardCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetDepotByYard$depots<TRes>
    implements CopyWith$Query$GetDepotByYard$depots<TRes> {
  _CopyWithImpl$Query$GetDepotByYard$depots(
    this._instance,
    this._then,
  );

  final Query$GetDepotByYard$depots _instance;

  final TRes Function(Query$GetDepotByYard$depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNo = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDepotByYard$depots(
        depotNo:
            depotNo == _undefined ? _instance.depotNo : (depotNo as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetDepotByYard$depots<TRes>
    implements CopyWith$Query$GetDepotByYard$depots<TRes> {
  _CopyWithStubImpl$Query$GetDepotByYard$depots(this._res);

  TRes _res;

  call({
    String? depotNo,
    String? name,
    String? yardCode,
    String? $__typename,
  }) =>
      _res;
}
