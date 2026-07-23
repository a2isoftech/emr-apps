import 'package:gql/ast.dart';

class Input$RouteToMarketQueryModelInput {
  factory Input$RouteToMarketQueryModelInput({
    List<String?>? depotNo,
    String? grade,
    String? route,
  }) =>
      Input$RouteToMarketQueryModelInput._({
        if (depotNo != null) r'depotNo': depotNo,
        if (grade != null) r'grade': grade,
        if (route != null) r'route': route,
      });

  Input$RouteToMarketQueryModelInput._(this._$data);

  factory Input$RouteToMarketQueryModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('depotNo')) {
      final l$depotNo = data['depotNo'];
      result$data['depotNo'] =
          (l$depotNo as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('grade')) {
      final l$grade = data['grade'];
      result$data['grade'] = (l$grade as String?);
    }
    if (data.containsKey('route')) {
      final l$route = data['route'];
      result$data['route'] = (l$route as String?);
    }
    return Input$RouteToMarketQueryModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String?>? get depotNo => (_$data['depotNo'] as List<String?>?);

  String? get grade => (_$data['grade'] as String?);

  String? get route => (_$data['route'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('depotNo')) {
      final l$depotNo = depotNo;
      result$data['depotNo'] = l$depotNo?.map((e) => e).toList();
    }
    if (_$data.containsKey('grade')) {
      final l$grade = grade;
      result$data['grade'] = l$grade;
    }
    if (_$data.containsKey('route')) {
      final l$route = route;
      result$data['route'] = l$route;
    }
    return result$data;
  }

  CopyWith$Input$RouteToMarketQueryModelInput<
          Input$RouteToMarketQueryModelInput>
      get copyWith => CopyWith$Input$RouteToMarketQueryModelInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RouteToMarketQueryModelInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (_$data.containsKey('depotNo') != other._$data.containsKey('depotNo')) {
      return false;
    }
    if (l$depotNo != null && lOther$depotNo != null) {
      if (l$depotNo.length != lOther$depotNo.length) {
        return false;
      }
      for (int i = 0; i < l$depotNo.length; i++) {
        final l$depotNo$entry = l$depotNo[i];
        final lOther$depotNo$entry = lOther$depotNo[i];
        if (l$depotNo$entry != lOther$depotNo$entry) {
          return false;
        }
      }
    } else if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$grade = grade;
    final lOther$grade = other.grade;
    if (_$data.containsKey('grade') != other._$data.containsKey('grade')) {
      return false;
    }
    if (l$grade != lOther$grade) {
      return false;
    }
    final l$route = route;
    final lOther$route = other.route;
    if (_$data.containsKey('route') != other._$data.containsKey('route')) {
      return false;
    }
    if (l$route != lOther$route) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$depotNo = depotNo;
    final l$grade = grade;
    final l$route = route;
    return Object.hashAll([
      _$data.containsKey('depotNo')
          ? l$depotNo == null
              ? null
              : Object.hashAll(l$depotNo.map((v) => v))
          : const {},
      _$data.containsKey('grade') ? l$grade : const {},
      _$data.containsKey('route') ? l$route : const {},
    ]);
  }
}

abstract class CopyWith$Input$RouteToMarketQueryModelInput<TRes> {
  factory CopyWith$Input$RouteToMarketQueryModelInput(
    Input$RouteToMarketQueryModelInput instance,
    TRes Function(Input$RouteToMarketQueryModelInput) then,
  ) = _CopyWithImpl$Input$RouteToMarketQueryModelInput;

  factory CopyWith$Input$RouteToMarketQueryModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RouteToMarketQueryModelInput;

  TRes call({
    List<String?>? depotNo,
    String? grade,
    String? route,
  });
}

class _CopyWithImpl$Input$RouteToMarketQueryModelInput<TRes>
    implements CopyWith$Input$RouteToMarketQueryModelInput<TRes> {
  _CopyWithImpl$Input$RouteToMarketQueryModelInput(
    this._instance,
    this._then,
  );

  final Input$RouteToMarketQueryModelInput _instance;

  final TRes Function(Input$RouteToMarketQueryModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNo = _undefined,
    Object? grade = _undefined,
    Object? route = _undefined,
  }) =>
      _then(Input$RouteToMarketQueryModelInput._({
        ..._instance._$data,
        if (depotNo != _undefined) 'depotNo': (depotNo as List<String?>?),
        if (grade != _undefined) 'grade': (grade as String?),
        if (route != _undefined) 'route': (route as String?),
      }));
}

class _CopyWithStubImpl$Input$RouteToMarketQueryModelInput<TRes>
    implements CopyWith$Input$RouteToMarketQueryModelInput<TRes> {
  _CopyWithStubImpl$Input$RouteToMarketQueryModelInput(this._res);

  TRes _res;

  call({
    List<String?>? depotNo,
    String? grade,
    String? route,
  }) =>
      _res;
}

class Variables$Query$routeToMarket {
  factory Variables$Query$routeToMarket({
    Input$RouteToMarketQueryModelInput? searchModel,
    int? first,
    String? after,
    String? before,
    int? last,
  }) =>
      Variables$Query$routeToMarket._({
        if (searchModel != null) r'searchModel': searchModel,
        if (first != null) r'first': first,
        if (after != null) r'after': after,
        if (before != null) r'before': before,
        if (last != null) r'last': last,
      });

  Variables$Query$routeToMarket._(this._$data);

  factory Variables$Query$routeToMarket.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('searchModel')) {
      final l$searchModel = data['searchModel'];
      result$data['searchModel'] = l$searchModel == null
          ? null
          : Input$RouteToMarketQueryModelInput.fromJson(
              (l$searchModel as Map<String, dynamic>));
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    return Variables$Query$routeToMarket._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RouteToMarketQueryModelInput? get searchModel =>
      (_$data['searchModel'] as Input$RouteToMarketQueryModelInput?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get last => (_$data['last'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('searchModel')) {
      final l$searchModel = searchModel;
      result$data['searchModel'] = l$searchModel?.toJson();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    return result$data;
  }

  CopyWith$Variables$Query$routeToMarket<Variables$Query$routeToMarket>
      get copyWith => CopyWith$Variables$Query$routeToMarket(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$routeToMarket) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchModel = searchModel;
    final lOther$searchModel = other.searchModel;
    if (_$data.containsKey('searchModel') !=
        other._$data.containsKey('searchModel')) {
      return false;
    }
    if (l$searchModel != lOther$searchModel) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchModel = searchModel;
    final l$first = first;
    final l$after = after;
    final l$before = before;
    final l$last = last;
    return Object.hashAll([
      _$data.containsKey('searchModel') ? l$searchModel : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('last') ? l$last : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$routeToMarket<TRes> {
  factory CopyWith$Variables$Query$routeToMarket(
    Variables$Query$routeToMarket instance,
    TRes Function(Variables$Query$routeToMarket) then,
  ) = _CopyWithImpl$Variables$Query$routeToMarket;

  factory CopyWith$Variables$Query$routeToMarket.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$routeToMarket;

  TRes call({
    Input$RouteToMarketQueryModelInput? searchModel,
    int? first,
    String? after,
    String? before,
    int? last,
  });
  CopyWith$Input$RouteToMarketQueryModelInput<TRes> get searchModel;
}

class _CopyWithImpl$Variables$Query$routeToMarket<TRes>
    implements CopyWith$Variables$Query$routeToMarket<TRes> {
  _CopyWithImpl$Variables$Query$routeToMarket(
    this._instance,
    this._then,
  );

  final Variables$Query$routeToMarket _instance;

  final TRes Function(Variables$Query$routeToMarket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchModel = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
    Object? before = _undefined,
    Object? last = _undefined,
  }) =>
      _then(Variables$Query$routeToMarket._({
        ..._instance._$data,
        if (searchModel != _undefined)
          'searchModel': (searchModel as Input$RouteToMarketQueryModelInput?),
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
        if (before != _undefined) 'before': (before as String?),
        if (last != _undefined) 'last': (last as int?),
      }));

  CopyWith$Input$RouteToMarketQueryModelInput<TRes> get searchModel {
    final local$searchModel = _instance.searchModel;
    return local$searchModel == null
        ? CopyWith$Input$RouteToMarketQueryModelInput.stub(_then(_instance))
        : CopyWith$Input$RouteToMarketQueryModelInput(
            local$searchModel, (e) => call(searchModel: e));
  }
}

class _CopyWithStubImpl$Variables$Query$routeToMarket<TRes>
    implements CopyWith$Variables$Query$routeToMarket<TRes> {
  _CopyWithStubImpl$Variables$Query$routeToMarket(this._res);

  TRes _res;

  call({
    Input$RouteToMarketQueryModelInput? searchModel,
    int? first,
    String? after,
    String? before,
    int? last,
  }) =>
      _res;

  CopyWith$Input$RouteToMarketQueryModelInput<TRes> get searchModel =>
      CopyWith$Input$RouteToMarketQueryModelInput.stub(_res);
}

class Query$routeToMarket {
  Query$routeToMarket({
    this.routeToMarket,
    this.$__typename = 'Query',
  });

  factory Query$routeToMarket.fromJson(Map<String, dynamic> json) {
    final l$routeToMarket = json['routeToMarket'];
    final l$$__typename = json['__typename'];
    return Query$routeToMarket(
      routeToMarket: l$routeToMarket == null
          ? null
          : Query$routeToMarket$routeToMarket.fromJson(
              (l$routeToMarket as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$routeToMarket$routeToMarket? routeToMarket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$routeToMarket = routeToMarket;
    _resultData['routeToMarket'] = l$routeToMarket?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$routeToMarket = routeToMarket;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$routeToMarket,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$routeToMarket) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$routeToMarket = routeToMarket;
    final lOther$routeToMarket = other.routeToMarket;
    if (l$routeToMarket != lOther$routeToMarket) {
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

extension UtilityExtension$Query$routeToMarket on Query$routeToMarket {
  CopyWith$Query$routeToMarket<Query$routeToMarket> get copyWith =>
      CopyWith$Query$routeToMarket(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$routeToMarket<TRes> {
  factory CopyWith$Query$routeToMarket(
    Query$routeToMarket instance,
    TRes Function(Query$routeToMarket) then,
  ) = _CopyWithImpl$Query$routeToMarket;

  factory CopyWith$Query$routeToMarket.stub(TRes res) =
      _CopyWithStubImpl$Query$routeToMarket;

  TRes call({
    Query$routeToMarket$routeToMarket? routeToMarket,
    String? $__typename,
  });
  CopyWith$Query$routeToMarket$routeToMarket<TRes> get routeToMarket;
}

class _CopyWithImpl$Query$routeToMarket<TRes>
    implements CopyWith$Query$routeToMarket<TRes> {
  _CopyWithImpl$Query$routeToMarket(
    this._instance,
    this._then,
  );

  final Query$routeToMarket _instance;

  final TRes Function(Query$routeToMarket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? routeToMarket = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$routeToMarket(
        routeToMarket: routeToMarket == _undefined
            ? _instance.routeToMarket
            : (routeToMarket as Query$routeToMarket$routeToMarket?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$routeToMarket$routeToMarket<TRes> get routeToMarket {
    final local$routeToMarket = _instance.routeToMarket;
    return local$routeToMarket == null
        ? CopyWith$Query$routeToMarket$routeToMarket.stub(_then(_instance))
        : CopyWith$Query$routeToMarket$routeToMarket(
            local$routeToMarket, (e) => call(routeToMarket: e));
  }
}

class _CopyWithStubImpl$Query$routeToMarket<TRes>
    implements CopyWith$Query$routeToMarket<TRes> {
  _CopyWithStubImpl$Query$routeToMarket(this._res);

  TRes _res;

  call({
    Query$routeToMarket$routeToMarket? routeToMarket,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$routeToMarket$routeToMarket<TRes> get routeToMarket =>
      CopyWith$Query$routeToMarket$routeToMarket.stub(_res);
}

const documentNodeQueryrouteToMarket = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'routeToMarket'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchModel')),
        type: NamedTypeNode(
          name: NameNode(value: 'RouteToMarketQueryModelInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'before')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'routeToMarket'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last'),
            value: VariableNode(name: NameNode(value: 'last')),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
          ),
          ArgumentNode(
            name: NameNode(value: 'searchModel'),
            value: VariableNode(name: NameNode(value: 'searchModel')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endCursor'),
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
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'changeHistories'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'changeHistoryId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'tableName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'tableFriendlyName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'columnName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'columnFriendlyName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'modifiedDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'oldValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'newValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rowChangedId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'userName'),
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
                name: NameNode(value: 'id'),
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
                name: NameNode(value: 'grade'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'route'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdBy'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'modifiedDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'modifiedBy'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'effectiveDate'),
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

class Query$routeToMarket$routeToMarket {
  Query$routeToMarket$routeToMarket({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'RouteToMarketConnection',
  });

  factory Query$routeToMarket$routeToMarket.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$routeToMarket$routeToMarket(
      pageInfo: Query$routeToMarket$routeToMarket$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$routeToMarket$routeToMarket$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$routeToMarket$routeToMarket$pageInfo pageInfo;

  final List<Query$routeToMarket$routeToMarket$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$routeToMarket$routeToMarket) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$routeToMarket$routeToMarket
    on Query$routeToMarket$routeToMarket {
  CopyWith$Query$routeToMarket$routeToMarket<Query$routeToMarket$routeToMarket>
      get copyWith => CopyWith$Query$routeToMarket$routeToMarket(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$routeToMarket$routeToMarket<TRes> {
  factory CopyWith$Query$routeToMarket$routeToMarket(
    Query$routeToMarket$routeToMarket instance,
    TRes Function(Query$routeToMarket$routeToMarket) then,
  ) = _CopyWithImpl$Query$routeToMarket$routeToMarket;

  factory CopyWith$Query$routeToMarket$routeToMarket.stub(TRes res) =
      _CopyWithStubImpl$Query$routeToMarket$routeToMarket;

  TRes call({
    Query$routeToMarket$routeToMarket$pageInfo? pageInfo,
    List<Query$routeToMarket$routeToMarket$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$routeToMarket$routeToMarket$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$routeToMarket$routeToMarket$nodes?>? Function(
              Iterable<
                  CopyWith$Query$routeToMarket$routeToMarket$nodes<
                      Query$routeToMarket$routeToMarket$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$routeToMarket$routeToMarket<TRes>
    implements CopyWith$Query$routeToMarket$routeToMarket<TRes> {
  _CopyWithImpl$Query$routeToMarket$routeToMarket(
    this._instance,
    this._then,
  );

  final Query$routeToMarket$routeToMarket _instance;

  final TRes Function(Query$routeToMarket$routeToMarket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$routeToMarket$routeToMarket(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$routeToMarket$routeToMarket$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$routeToMarket$routeToMarket$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$routeToMarket$routeToMarket$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$routeToMarket$routeToMarket$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$routeToMarket$routeToMarket$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$routeToMarket$routeToMarket$nodes<
                          Query$routeToMarket$routeToMarket$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$routeToMarket$routeToMarket$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$routeToMarket$routeToMarket<TRes>
    implements CopyWith$Query$routeToMarket$routeToMarket<TRes> {
  _CopyWithStubImpl$Query$routeToMarket$routeToMarket(this._res);

  TRes _res;

  call({
    Query$routeToMarket$routeToMarket$pageInfo? pageInfo,
    List<Query$routeToMarket$routeToMarket$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$routeToMarket$routeToMarket$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$routeToMarket$routeToMarket$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$routeToMarket$routeToMarket$pageInfo {
  Query$routeToMarket$routeToMarket$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$routeToMarket$routeToMarket$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$routeToMarket$routeToMarket$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
      l$startCursor,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$routeToMarket$routeToMarket$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$routeToMarket$routeToMarket$pageInfo
    on Query$routeToMarket$routeToMarket$pageInfo {
  CopyWith$Query$routeToMarket$routeToMarket$pageInfo<
          Query$routeToMarket$routeToMarket$pageInfo>
      get copyWith => CopyWith$Query$routeToMarket$routeToMarket$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$routeToMarket$routeToMarket$pageInfo<TRes> {
  factory CopyWith$Query$routeToMarket$routeToMarket$pageInfo(
    Query$routeToMarket$routeToMarket$pageInfo instance,
    TRes Function(Query$routeToMarket$routeToMarket$pageInfo) then,
  ) = _CopyWithImpl$Query$routeToMarket$routeToMarket$pageInfo;

  factory CopyWith$Query$routeToMarket$routeToMarket$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$routeToMarket$routeToMarket$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$routeToMarket$routeToMarket$pageInfo<TRes>
    implements CopyWith$Query$routeToMarket$routeToMarket$pageInfo<TRes> {
  _CopyWithImpl$Query$routeToMarket$routeToMarket$pageInfo(
    this._instance,
    this._then,
  );

  final Query$routeToMarket$routeToMarket$pageInfo _instance;

  final TRes Function(Query$routeToMarket$routeToMarket$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$routeToMarket$routeToMarket$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$routeToMarket$routeToMarket$pageInfo<TRes>
    implements CopyWith$Query$routeToMarket$routeToMarket$pageInfo<TRes> {
  _CopyWithStubImpl$Query$routeToMarket$routeToMarket$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$routeToMarket$routeToMarket$nodes {
  Query$routeToMarket$routeToMarket$nodes({
    this.changeHistories,
    required this.id,
    this.depotNo,
    this.grade,
    this.route,
    required this.createdDate,
    required this.createdBy,
    this.modifiedDate,
    this.modifiedBy,
    this.effectiveDate,
    required this.active,
    this.$__typename = 'RouteToMarketVM',
  });

  factory Query$routeToMarket$routeToMarket$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$changeHistories = json['changeHistories'];
    final l$id = json['id'];
    final l$depotNo = json['depotNo'];
    final l$grade = json['grade'];
    final l$route = json['route'];
    final l$createdDate = json['createdDate'];
    final l$createdBy = json['createdBy'];
    final l$modifiedDate = json['modifiedDate'];
    final l$modifiedBy = json['modifiedBy'];
    final l$effectiveDate = json['effectiveDate'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$routeToMarket$routeToMarket$nodes(
      changeHistories: (l$changeHistories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$routeToMarket$routeToMarket$nodes$changeHistories
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      id: (l$id as int),
      depotNo: (l$depotNo as String?),
      grade: (l$grade as String?),
      route: (l$route as String?),
      createdDate: DateTime.parse((l$createdDate as String)),
      createdBy: (l$createdBy as String),
      modifiedDate: l$modifiedDate == null
          ? null
          : DateTime.parse((l$modifiedDate as String)),
      modifiedBy: (l$modifiedBy as String?),
      effectiveDate: l$effectiveDate == null
          ? null
          : DateTime.parse((l$effectiveDate as String)),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$routeToMarket$routeToMarket$nodes$changeHistories?>?
      changeHistories;

  final int id;

  final String? depotNo;

  final String? grade;

  final String? route;

  final DateTime createdDate;

  final String createdBy;

  final DateTime? modifiedDate;

  final String? modifiedBy;

  final DateTime? effectiveDate;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeHistories = changeHistories;
    _resultData['changeHistories'] =
        l$changeHistories?.map((e) => e?.toJson()).toList();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$grade = grade;
    _resultData['grade'] = l$grade;
    final l$route = route;
    _resultData['route'] = l$route;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$modifiedDate = modifiedDate;
    _resultData['modifiedDate'] = l$modifiedDate?.toIso8601String();
    final l$modifiedBy = modifiedBy;
    _resultData['modifiedBy'] = l$modifiedBy;
    final l$effectiveDate = effectiveDate;
    _resultData['effectiveDate'] = l$effectiveDate?.toIso8601String();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeHistories = changeHistories;
    final l$id = id;
    final l$depotNo = depotNo;
    final l$grade = grade;
    final l$route = route;
    final l$createdDate = createdDate;
    final l$createdBy = createdBy;
    final l$modifiedDate = modifiedDate;
    final l$modifiedBy = modifiedBy;
    final l$effectiveDate = effectiveDate;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$changeHistories == null
          ? null
          : Object.hashAll(l$changeHistories.map((v) => v)),
      l$id,
      l$depotNo,
      l$grade,
      l$route,
      l$createdDate,
      l$createdBy,
      l$modifiedDate,
      l$modifiedBy,
      l$effectiveDate,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$routeToMarket$routeToMarket$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeHistories = changeHistories;
    final lOther$changeHistories = other.changeHistories;
    if (l$changeHistories != null && lOther$changeHistories != null) {
      if (l$changeHistories.length != lOther$changeHistories.length) {
        return false;
      }
      for (int i = 0; i < l$changeHistories.length; i++) {
        final l$changeHistories$entry = l$changeHistories[i];
        final lOther$changeHistories$entry = lOther$changeHistories[i];
        if (l$changeHistories$entry != lOther$changeHistories$entry) {
          return false;
        }
      }
    } else if (l$changeHistories != lOther$changeHistories) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$grade = grade;
    final lOther$grade = other.grade;
    if (l$grade != lOther$grade) {
      return false;
    }
    final l$route = route;
    final lOther$route = other.route;
    if (l$route != lOther$route) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$modifiedDate = modifiedDate;
    final lOther$modifiedDate = other.modifiedDate;
    if (l$modifiedDate != lOther$modifiedDate) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    final l$effectiveDate = effectiveDate;
    final lOther$effectiveDate = other.effectiveDate;
    if (l$effectiveDate != lOther$effectiveDate) {
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

extension UtilityExtension$Query$routeToMarket$routeToMarket$nodes
    on Query$routeToMarket$routeToMarket$nodes {
  CopyWith$Query$routeToMarket$routeToMarket$nodes<
          Query$routeToMarket$routeToMarket$nodes>
      get copyWith => CopyWith$Query$routeToMarket$routeToMarket$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$routeToMarket$routeToMarket$nodes<TRes> {
  factory CopyWith$Query$routeToMarket$routeToMarket$nodes(
    Query$routeToMarket$routeToMarket$nodes instance,
    TRes Function(Query$routeToMarket$routeToMarket$nodes) then,
  ) = _CopyWithImpl$Query$routeToMarket$routeToMarket$nodes;

  factory CopyWith$Query$routeToMarket$routeToMarket$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$routeToMarket$routeToMarket$nodes;

  TRes call({
    List<Query$routeToMarket$routeToMarket$nodes$changeHistories?>?
        changeHistories,
    int? id,
    String? depotNo,
    String? grade,
    String? route,
    DateTime? createdDate,
    String? createdBy,
    DateTime? modifiedDate,
    String? modifiedBy,
    DateTime? effectiveDate,
    bool? active,
    String? $__typename,
  });
  TRes changeHistories(
      Iterable<Query$routeToMarket$routeToMarket$nodes$changeHistories?>? Function(
              Iterable<
                  CopyWith$Query$routeToMarket$routeToMarket$nodes$changeHistories<
                      Query$routeToMarket$routeToMarket$nodes$changeHistories>?>?)
          _fn);
}

class _CopyWithImpl$Query$routeToMarket$routeToMarket$nodes<TRes>
    implements CopyWith$Query$routeToMarket$routeToMarket$nodes<TRes> {
  _CopyWithImpl$Query$routeToMarket$routeToMarket$nodes(
    this._instance,
    this._then,
  );

  final Query$routeToMarket$routeToMarket$nodes _instance;

  final TRes Function(Query$routeToMarket$routeToMarket$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeHistories = _undefined,
    Object? id = _undefined,
    Object? depotNo = _undefined,
    Object? grade = _undefined,
    Object? route = _undefined,
    Object? createdDate = _undefined,
    Object? createdBy = _undefined,
    Object? modifiedDate = _undefined,
    Object? modifiedBy = _undefined,
    Object? effectiveDate = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$routeToMarket$routeToMarket$nodes(
        changeHistories: changeHistories == _undefined
            ? _instance.changeHistories
            : (changeHistories as List<
                Query$routeToMarket$routeToMarket$nodes$changeHistories?>?),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        depotNo:
            depotNo == _undefined ? _instance.depotNo : (depotNo as String?),
        grade: grade == _undefined ? _instance.grade : (grade as String?),
        route: route == _undefined ? _instance.route : (route as String?),
        createdDate: createdDate == _undefined || createdDate == null
            ? _instance.createdDate
            : (createdDate as DateTime),
        createdBy: createdBy == _undefined || createdBy == null
            ? _instance.createdBy
            : (createdBy as String),
        modifiedDate: modifiedDate == _undefined
            ? _instance.modifiedDate
            : (modifiedDate as DateTime?),
        modifiedBy: modifiedBy == _undefined
            ? _instance.modifiedBy
            : (modifiedBy as String?),
        effectiveDate: effectiveDate == _undefined
            ? _instance.effectiveDate
            : (effectiveDate as DateTime?),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes changeHistories(
          Iterable<Query$routeToMarket$routeToMarket$nodes$changeHistories?>? Function(
                  Iterable<
                      CopyWith$Query$routeToMarket$routeToMarket$nodes$changeHistories<
                          Query$routeToMarket$routeToMarket$nodes$changeHistories>?>?)
              _fn) =>
      call(
          changeHistories: _fn(_instance.changeHistories?.map((e) => e == null
              ? null
              : CopyWith$Query$routeToMarket$routeToMarket$nodes$changeHistories(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$routeToMarket$routeToMarket$nodes<TRes>
    implements CopyWith$Query$routeToMarket$routeToMarket$nodes<TRes> {
  _CopyWithStubImpl$Query$routeToMarket$routeToMarket$nodes(this._res);

  TRes _res;

  call({
    List<Query$routeToMarket$routeToMarket$nodes$changeHistories?>?
        changeHistories,
    int? id,
    String? depotNo,
    String? grade,
    String? route,
    DateTime? createdDate,
    String? createdBy,
    DateTime? modifiedDate,
    String? modifiedBy,
    DateTime? effectiveDate,
    bool? active,
    String? $__typename,
  }) =>
      _res;

  changeHistories(_fn) => _res;
}

class Query$routeToMarket$routeToMarket$nodes$changeHistories {
  Query$routeToMarket$routeToMarket$nodes$changeHistories({
    required this.changeHistoryId,
    this.tableName,
    this.tableFriendlyName,
    this.columnName,
    this.columnFriendlyName,
    this.modifiedDate,
    this.oldValue,
    this.newValue,
    this.rowChangedId,
    this.userName,
    this.$__typename = 'ChangeHistoryVm',
  });

  factory Query$routeToMarket$routeToMarket$nodes$changeHistories.fromJson(
      Map<String, dynamic> json) {
    final l$changeHistoryId = json['changeHistoryId'];
    final l$tableName = json['tableName'];
    final l$tableFriendlyName = json['tableFriendlyName'];
    final l$columnName = json['columnName'];
    final l$columnFriendlyName = json['columnFriendlyName'];
    final l$modifiedDate = json['modifiedDate'];
    final l$oldValue = json['oldValue'];
    final l$newValue = json['newValue'];
    final l$rowChangedId = json['rowChangedId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$routeToMarket$routeToMarket$nodes$changeHistories(
      changeHistoryId: (l$changeHistoryId as int),
      tableName: (l$tableName as String?),
      tableFriendlyName: (l$tableFriendlyName as String?),
      columnName: (l$columnName as String?),
      columnFriendlyName: (l$columnFriendlyName as String?),
      modifiedDate: l$modifiedDate == null
          ? null
          : DateTime.parse((l$modifiedDate as String)),
      oldValue: (l$oldValue as String?),
      newValue: (l$newValue as String?),
      rowChangedId: (l$rowChangedId as int?),
      userName: (l$userName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int changeHistoryId;

  final String? tableName;

  final String? tableFriendlyName;

  final String? columnName;

  final String? columnFriendlyName;

  final DateTime? modifiedDate;

  final String? oldValue;

  final String? newValue;

  final int? rowChangedId;

  final String? userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeHistoryId = changeHistoryId;
    _resultData['changeHistoryId'] = l$changeHistoryId;
    final l$tableName = tableName;
    _resultData['tableName'] = l$tableName;
    final l$tableFriendlyName = tableFriendlyName;
    _resultData['tableFriendlyName'] = l$tableFriendlyName;
    final l$columnName = columnName;
    _resultData['columnName'] = l$columnName;
    final l$columnFriendlyName = columnFriendlyName;
    _resultData['columnFriendlyName'] = l$columnFriendlyName;
    final l$modifiedDate = modifiedDate;
    _resultData['modifiedDate'] = l$modifiedDate?.toIso8601String();
    final l$oldValue = oldValue;
    _resultData['oldValue'] = l$oldValue;
    final l$newValue = newValue;
    _resultData['newValue'] = l$newValue;
    final l$rowChangedId = rowChangedId;
    _resultData['rowChangedId'] = l$rowChangedId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeHistoryId = changeHistoryId;
    final l$tableName = tableName;
    final l$tableFriendlyName = tableFriendlyName;
    final l$columnName = columnName;
    final l$columnFriendlyName = columnFriendlyName;
    final l$modifiedDate = modifiedDate;
    final l$oldValue = oldValue;
    final l$newValue = newValue;
    final l$rowChangedId = rowChangedId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$changeHistoryId,
      l$tableName,
      l$tableFriendlyName,
      l$columnName,
      l$columnFriendlyName,
      l$modifiedDate,
      l$oldValue,
      l$newValue,
      l$rowChangedId,
      l$userName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$routeToMarket$routeToMarket$nodes$changeHistories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeHistoryId = changeHistoryId;
    final lOther$changeHistoryId = other.changeHistoryId;
    if (l$changeHistoryId != lOther$changeHistoryId) {
      return false;
    }
    final l$tableName = tableName;
    final lOther$tableName = other.tableName;
    if (l$tableName != lOther$tableName) {
      return false;
    }
    final l$tableFriendlyName = tableFriendlyName;
    final lOther$tableFriendlyName = other.tableFriendlyName;
    if (l$tableFriendlyName != lOther$tableFriendlyName) {
      return false;
    }
    final l$columnName = columnName;
    final lOther$columnName = other.columnName;
    if (l$columnName != lOther$columnName) {
      return false;
    }
    final l$columnFriendlyName = columnFriendlyName;
    final lOther$columnFriendlyName = other.columnFriendlyName;
    if (l$columnFriendlyName != lOther$columnFriendlyName) {
      return false;
    }
    final l$modifiedDate = modifiedDate;
    final lOther$modifiedDate = other.modifiedDate;
    if (l$modifiedDate != lOther$modifiedDate) {
      return false;
    }
    final l$oldValue = oldValue;
    final lOther$oldValue = other.oldValue;
    if (l$oldValue != lOther$oldValue) {
      return false;
    }
    final l$newValue = newValue;
    final lOther$newValue = other.newValue;
    if (l$newValue != lOther$newValue) {
      return false;
    }
    final l$rowChangedId = rowChangedId;
    final lOther$rowChangedId = other.rowChangedId;
    if (l$rowChangedId != lOther$rowChangedId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$routeToMarket$routeToMarket$nodes$changeHistories
    on Query$routeToMarket$routeToMarket$nodes$changeHistories {
  CopyWith$Query$routeToMarket$routeToMarket$nodes$changeHistories<
          Query$routeToMarket$routeToMarket$nodes$changeHistories>
      get copyWith =>
          CopyWith$Query$routeToMarket$routeToMarket$nodes$changeHistories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$routeToMarket$routeToMarket$nodes$changeHistories<
    TRes> {
  factory CopyWith$Query$routeToMarket$routeToMarket$nodes$changeHistories(
    Query$routeToMarket$routeToMarket$nodes$changeHistories instance,
    TRes Function(Query$routeToMarket$routeToMarket$nodes$changeHistories) then,
  ) = _CopyWithImpl$Query$routeToMarket$routeToMarket$nodes$changeHistories;

  factory CopyWith$Query$routeToMarket$routeToMarket$nodes$changeHistories.stub(
          TRes res) =
      _CopyWithStubImpl$Query$routeToMarket$routeToMarket$nodes$changeHistories;

  TRes call({
    int? changeHistoryId,
    String? tableName,
    String? tableFriendlyName,
    String? columnName,
    String? columnFriendlyName,
    DateTime? modifiedDate,
    String? oldValue,
    String? newValue,
    int? rowChangedId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$routeToMarket$routeToMarket$nodes$changeHistories<
        TRes>
    implements
        CopyWith$Query$routeToMarket$routeToMarket$nodes$changeHistories<TRes> {
  _CopyWithImpl$Query$routeToMarket$routeToMarket$nodes$changeHistories(
    this._instance,
    this._then,
  );

  final Query$routeToMarket$routeToMarket$nodes$changeHistories _instance;

  final TRes Function(Query$routeToMarket$routeToMarket$nodes$changeHistories)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeHistoryId = _undefined,
    Object? tableName = _undefined,
    Object? tableFriendlyName = _undefined,
    Object? columnName = _undefined,
    Object? columnFriendlyName = _undefined,
    Object? modifiedDate = _undefined,
    Object? oldValue = _undefined,
    Object? newValue = _undefined,
    Object? rowChangedId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$routeToMarket$routeToMarket$nodes$changeHistories(
        changeHistoryId:
            changeHistoryId == _undefined || changeHistoryId == null
                ? _instance.changeHistoryId
                : (changeHistoryId as int),
        tableName: tableName == _undefined
            ? _instance.tableName
            : (tableName as String?),
        tableFriendlyName: tableFriendlyName == _undefined
            ? _instance.tableFriendlyName
            : (tableFriendlyName as String?),
        columnName: columnName == _undefined
            ? _instance.columnName
            : (columnName as String?),
        columnFriendlyName: columnFriendlyName == _undefined
            ? _instance.columnFriendlyName
            : (columnFriendlyName as String?),
        modifiedDate: modifiedDate == _undefined
            ? _instance.modifiedDate
            : (modifiedDate as DateTime?),
        oldValue:
            oldValue == _undefined ? _instance.oldValue : (oldValue as String?),
        newValue:
            newValue == _undefined ? _instance.newValue : (newValue as String?),
        rowChangedId: rowChangedId == _undefined
            ? _instance.rowChangedId
            : (rowChangedId as int?),
        userName:
            userName == _undefined ? _instance.userName : (userName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$routeToMarket$routeToMarket$nodes$changeHistories<
        TRes>
    implements
        CopyWith$Query$routeToMarket$routeToMarket$nodes$changeHistories<TRes> {
  _CopyWithStubImpl$Query$routeToMarket$routeToMarket$nodes$changeHistories(
      this._res);

  TRes _res;

  call({
    int? changeHistoryId,
    String? tableName,
    String? tableFriendlyName,
    String? columnName,
    String? columnFriendlyName,
    DateTime? modifiedDate,
    String? oldValue,
    String? newValue,
    int? rowChangedId,
    String? userName,
    String? $__typename,
  }) =>
      _res;
}
