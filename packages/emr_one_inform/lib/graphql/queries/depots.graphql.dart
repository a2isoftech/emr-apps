import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Depots {
  factory Variables$Query$Depots(
          {required Input$DepotQueryFilterInput filter}) =>
      Variables$Query$Depots._({
        r'filter': filter,
      });

  Variables$Query$Depots._(this._$data);

  factory Variables$Query$Depots.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = Input$DepotQueryFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$Depots._(result$data);
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

  CopyWith$Variables$Query$Depots<Variables$Query$Depots> get copyWith =>
      CopyWith$Variables$Query$Depots(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Depots) ||
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

abstract class CopyWith$Variables$Query$Depots<TRes> {
  factory CopyWith$Variables$Query$Depots(
    Variables$Query$Depots instance,
    TRes Function(Variables$Query$Depots) then,
  ) = _CopyWithImpl$Variables$Query$Depots;

  factory CopyWith$Variables$Query$Depots.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Depots;

  TRes call({Input$DepotQueryFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$Depots<TRes>
    implements CopyWith$Variables$Query$Depots<TRes> {
  _CopyWithImpl$Variables$Query$Depots(
    this._instance,
    this._then,
  );

  final Variables$Query$Depots _instance;

  final TRes Function(Variables$Query$Depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) => _then(Variables$Query$Depots._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$DepotQueryFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$Depots<TRes>
    implements CopyWith$Variables$Query$Depots<TRes> {
  _CopyWithStubImpl$Variables$Query$Depots(this._res);

  TRes _res;

  call({Input$DepotQueryFilterInput? filter}) => _res;
}

class Query$Depots {
  Query$Depots({
    required this.depots,
    this.$__typename = 'FormsQuery',
  });

  factory Query$Depots.fromJson(Map<String, dynamic> json) {
    final l$depots = json['depots'];
    final l$$__typename = json['__typename'];
    return Query$Depots(
      depots: (l$depots as List<dynamic>)
          .map((e) => Query$Depots$depots.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Depots$depots> depots;

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
    if (!(other is Query$Depots) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Depots on Query$Depots {
  CopyWith$Query$Depots<Query$Depots> get copyWith => CopyWith$Query$Depots(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Depots<TRes> {
  factory CopyWith$Query$Depots(
    Query$Depots instance,
    TRes Function(Query$Depots) then,
  ) = _CopyWithImpl$Query$Depots;

  factory CopyWith$Query$Depots.stub(TRes res) = _CopyWithStubImpl$Query$Depots;

  TRes call({
    List<Query$Depots$depots>? depots,
    String? $__typename,
  });
  TRes depots(
      Iterable<Query$Depots$depots> Function(
              Iterable<CopyWith$Query$Depots$depots<Query$Depots$depots>>)
          _fn);
}

class _CopyWithImpl$Query$Depots<TRes> implements CopyWith$Query$Depots<TRes> {
  _CopyWithImpl$Query$Depots(
    this._instance,
    this._then,
  );

  final Query$Depots _instance;

  final TRes Function(Query$Depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depots = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Depots(
        depots: depots == _undefined || depots == null
            ? _instance.depots
            : (depots as List<Query$Depots$depots>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes depots(
          Iterable<Query$Depots$depots> Function(
                  Iterable<CopyWith$Query$Depots$depots<Query$Depots$depots>>)
              _fn) =>
      call(
          depots: _fn(_instance.depots.map((e) => CopyWith$Query$Depots$depots(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$Depots<TRes>
    implements CopyWith$Query$Depots<TRes> {
  _CopyWithStubImpl$Query$Depots(this._res);

  TRes _res;

  call({
    List<Query$Depots$depots>? depots,
    String? $__typename,
  }) =>
      _res;

  depots(_fn) => _res;
}

const documentNodeQueryDepots = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Depots'),
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
            name: NameNode(value: 'companyCode'),
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

class Query$Depots$depots {
  Query$Depots$depots({
    this.companyCode,
    this.yardCode,
    this.depotNo,
    this.name,
    this.$__typename = 'Depot',
  });

  factory Query$Depots$depots.fromJson(Map<String, dynamic> json) {
    final l$companyCode = json['companyCode'];
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Depots$depots(
      companyCode: (l$companyCode as String?),
      yardCode: (l$yardCode as String?),
      depotNo: (l$depotNo as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? companyCode;

  final String? yardCode;

  final String? depotNo;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyCode = companyCode;
    final l$yardCode = yardCode;
    final l$depotNo = depotNo;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$companyCode,
      l$yardCode,
      l$depotNo,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Depots$depots) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Depots$depots on Query$Depots$depots {
  CopyWith$Query$Depots$depots<Query$Depots$depots> get copyWith =>
      CopyWith$Query$Depots$depots(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Depots$depots<TRes> {
  factory CopyWith$Query$Depots$depots(
    Query$Depots$depots instance,
    TRes Function(Query$Depots$depots) then,
  ) = _CopyWithImpl$Query$Depots$depots;

  factory CopyWith$Query$Depots$depots.stub(TRes res) =
      _CopyWithStubImpl$Query$Depots$depots;

  TRes call({
    String? companyCode,
    String? yardCode,
    String? depotNo,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Depots$depots<TRes>
    implements CopyWith$Query$Depots$depots<TRes> {
  _CopyWithImpl$Query$Depots$depots(
    this._instance,
    this._then,
  );

  final Query$Depots$depots _instance;

  final TRes Function(Query$Depots$depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyCode = _undefined,
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Depots$depots(
        companyCode: companyCode == _undefined
            ? _instance.companyCode
            : (companyCode as String?),
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        depotNo:
            depotNo == _undefined ? _instance.depotNo : (depotNo as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Depots$depots<TRes>
    implements CopyWith$Query$Depots$depots<TRes> {
  _CopyWithStubImpl$Query$Depots$depots(this._res);

  TRes _res;

  call({
    String? companyCode,
    String? yardCode,
    String? depotNo,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
