import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$WorkRequestOptionsForDepot {
  factory Variables$Query$WorkRequestOptionsForDepot(
          {required Input$DepotQueryFilterInput filter}) =>
      Variables$Query$WorkRequestOptionsForDepot._({
        r'filter': filter,
      });

  Variables$Query$WorkRequestOptionsForDepot._(this._$data);

  factory Variables$Query$WorkRequestOptionsForDepot.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = Input$DepotQueryFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$WorkRequestOptionsForDepot._(result$data);
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

  CopyWith$Variables$Query$WorkRequestOptionsForDepot<
          Variables$Query$WorkRequestOptionsForDepot>
      get copyWith => CopyWith$Variables$Query$WorkRequestOptionsForDepot(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$WorkRequestOptionsForDepot) ||
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

abstract class CopyWith$Variables$Query$WorkRequestOptionsForDepot<TRes> {
  factory CopyWith$Variables$Query$WorkRequestOptionsForDepot(
    Variables$Query$WorkRequestOptionsForDepot instance,
    TRes Function(Variables$Query$WorkRequestOptionsForDepot) then,
  ) = _CopyWithImpl$Variables$Query$WorkRequestOptionsForDepot;

  factory CopyWith$Variables$Query$WorkRequestOptionsForDepot.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$WorkRequestOptionsForDepot;

  TRes call({Input$DepotQueryFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$WorkRequestOptionsForDepot<TRes>
    implements CopyWith$Variables$Query$WorkRequestOptionsForDepot<TRes> {
  _CopyWithImpl$Variables$Query$WorkRequestOptionsForDepot(
    this._instance,
    this._then,
  );

  final Variables$Query$WorkRequestOptionsForDepot _instance;

  final TRes Function(Variables$Query$WorkRequestOptionsForDepot) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$WorkRequestOptionsForDepot._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$DepotQueryFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$WorkRequestOptionsForDepot<TRes>
    implements CopyWith$Variables$Query$WorkRequestOptionsForDepot<TRes> {
  _CopyWithStubImpl$Variables$Query$WorkRequestOptionsForDepot(this._res);

  TRes _res;

  call({Input$DepotQueryFilterInput? filter}) => _res;
}

class Query$WorkRequestOptionsForDepot {
  Query$WorkRequestOptionsForDepot({
    required this.depots,
    this.$__typename = 'FormsQuery',
  });

  factory Query$WorkRequestOptionsForDepot.fromJson(Map<String, dynamic> json) {
    final l$depots = json['depots'];
    final l$$__typename = json['__typename'];
    return Query$WorkRequestOptionsForDepot(
      depots: (l$depots as List<dynamic>)
          .map((e) => Query$WorkRequestOptionsForDepot$depots.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$WorkRequestOptionsForDepot$depots> depots;

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
    if (!(other is Query$WorkRequestOptionsForDepot) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$WorkRequestOptionsForDepot
    on Query$WorkRequestOptionsForDepot {
  CopyWith$Query$WorkRequestOptionsForDepot<Query$WorkRequestOptionsForDepot>
      get copyWith => CopyWith$Query$WorkRequestOptionsForDepot(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WorkRequestOptionsForDepot<TRes> {
  factory CopyWith$Query$WorkRequestOptionsForDepot(
    Query$WorkRequestOptionsForDepot instance,
    TRes Function(Query$WorkRequestOptionsForDepot) then,
  ) = _CopyWithImpl$Query$WorkRequestOptionsForDepot;

  factory CopyWith$Query$WorkRequestOptionsForDepot.stub(TRes res) =
      _CopyWithStubImpl$Query$WorkRequestOptionsForDepot;

  TRes call({
    List<Query$WorkRequestOptionsForDepot$depots>? depots,
    String? $__typename,
  });
  TRes depots(
      Iterable<Query$WorkRequestOptionsForDepot$depots> Function(
              Iterable<
                  CopyWith$Query$WorkRequestOptionsForDepot$depots<
                      Query$WorkRequestOptionsForDepot$depots>>)
          _fn);
}

class _CopyWithImpl$Query$WorkRequestOptionsForDepot<TRes>
    implements CopyWith$Query$WorkRequestOptionsForDepot<TRes> {
  _CopyWithImpl$Query$WorkRequestOptionsForDepot(
    this._instance,
    this._then,
  );

  final Query$WorkRequestOptionsForDepot _instance;

  final TRes Function(Query$WorkRequestOptionsForDepot) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depots = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WorkRequestOptionsForDepot(
        depots: depots == _undefined || depots == null
            ? _instance.depots
            : (depots as List<Query$WorkRequestOptionsForDepot$depots>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes depots(
          Iterable<Query$WorkRequestOptionsForDepot$depots> Function(
                  Iterable<
                      CopyWith$Query$WorkRequestOptionsForDepot$depots<
                          Query$WorkRequestOptionsForDepot$depots>>)
              _fn) =>
      call(
          depots: _fn(_instance.depots
              .map((e) => CopyWith$Query$WorkRequestOptionsForDepot$depots(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$WorkRequestOptionsForDepot<TRes>
    implements CopyWith$Query$WorkRequestOptionsForDepot<TRes> {
  _CopyWithStubImpl$Query$WorkRequestOptionsForDepot(this._res);

  TRes _res;

  call({
    List<Query$WorkRequestOptionsForDepot$depots>? depots,
    String? $__typename,
  }) =>
      _res;

  depots(_fn) => _res;
}

const documentNodeQueryWorkRequestOptionsForDepot = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'WorkRequestOptionsForDepot'),
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
            name: NameNode(value: 'workRequestOptions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'serviceLevels'),
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
                name: NameNode(value: 'requestTypes'),
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

class Query$WorkRequestOptionsForDepot$depots {
  Query$WorkRequestOptionsForDepot$depots({
    required this.workRequestOptions,
    this.$__typename = 'Depot',
  });

  factory Query$WorkRequestOptionsForDepot$depots.fromJson(
      Map<String, dynamic> json) {
    final l$workRequestOptions = json['workRequestOptions'];
    final l$$__typename = json['__typename'];
    return Query$WorkRequestOptionsForDepot$depots(
      workRequestOptions:
          Query$WorkRequestOptionsForDepot$depots$workRequestOptions.fromJson(
              (l$workRequestOptions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$WorkRequestOptionsForDepot$depots$workRequestOptions
      workRequestOptions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workRequestOptions = workRequestOptions;
    _resultData['workRequestOptions'] = l$workRequestOptions.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workRequestOptions = workRequestOptions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$workRequestOptions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$WorkRequestOptionsForDepot$depots) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workRequestOptions = workRequestOptions;
    final lOther$workRequestOptions = other.workRequestOptions;
    if (l$workRequestOptions != lOther$workRequestOptions) {
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

extension UtilityExtension$Query$WorkRequestOptionsForDepot$depots
    on Query$WorkRequestOptionsForDepot$depots {
  CopyWith$Query$WorkRequestOptionsForDepot$depots<
          Query$WorkRequestOptionsForDepot$depots>
      get copyWith => CopyWith$Query$WorkRequestOptionsForDepot$depots(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WorkRequestOptionsForDepot$depots<TRes> {
  factory CopyWith$Query$WorkRequestOptionsForDepot$depots(
    Query$WorkRequestOptionsForDepot$depots instance,
    TRes Function(Query$WorkRequestOptionsForDepot$depots) then,
  ) = _CopyWithImpl$Query$WorkRequestOptionsForDepot$depots;

  factory CopyWith$Query$WorkRequestOptionsForDepot$depots.stub(TRes res) =
      _CopyWithStubImpl$Query$WorkRequestOptionsForDepot$depots;

  TRes call({
    Query$WorkRequestOptionsForDepot$depots$workRequestOptions?
        workRequestOptions,
    String? $__typename,
  });
  CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions<TRes>
      get workRequestOptions;
}

class _CopyWithImpl$Query$WorkRequestOptionsForDepot$depots<TRes>
    implements CopyWith$Query$WorkRequestOptionsForDepot$depots<TRes> {
  _CopyWithImpl$Query$WorkRequestOptionsForDepot$depots(
    this._instance,
    this._then,
  );

  final Query$WorkRequestOptionsForDepot$depots _instance;

  final TRes Function(Query$WorkRequestOptionsForDepot$depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workRequestOptions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WorkRequestOptionsForDepot$depots(
        workRequestOptions: workRequestOptions == _undefined ||
                workRequestOptions == null
            ? _instance.workRequestOptions
            : (workRequestOptions
                as Query$WorkRequestOptionsForDepot$depots$workRequestOptions),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions<TRes>
      get workRequestOptions {
    final local$workRequestOptions = _instance.workRequestOptions;
    return CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions(
        local$workRequestOptions, (e) => call(workRequestOptions: e));
  }
}

class _CopyWithStubImpl$Query$WorkRequestOptionsForDepot$depots<TRes>
    implements CopyWith$Query$WorkRequestOptionsForDepot$depots<TRes> {
  _CopyWithStubImpl$Query$WorkRequestOptionsForDepot$depots(this._res);

  TRes _res;

  call({
    Query$WorkRequestOptionsForDepot$depots$workRequestOptions?
        workRequestOptions,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions<TRes>
      get workRequestOptions =>
          CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions
              .stub(_res);
}

class Query$WorkRequestOptionsForDepot$depots$workRequestOptions {
  Query$WorkRequestOptionsForDepot$depots$workRequestOptions({
    this.serviceLevels,
    this.requestTypes,
    this.$__typename = 'WorkRequestListSelections',
  });

  factory Query$WorkRequestOptionsForDepot$depots$workRequestOptions.fromJson(
      Map<String, dynamic> json) {
    final l$serviceLevels = json['serviceLevels'];
    final l$requestTypes = json['requestTypes'];
    final l$$__typename = json['__typename'];
    return Query$WorkRequestOptionsForDepot$depots$workRequestOptions(
      serviceLevels: (l$serviceLevels as List<dynamic>?)
          ?.map((e) =>
              Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      requestTypes: (l$requestTypes as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels>?
      serviceLevels;

  final List<String>? requestTypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$serviceLevels = serviceLevels;
    _resultData['serviceLevels'] =
        l$serviceLevels?.map((e) => e.toJson()).toList();
    final l$requestTypes = requestTypes;
    _resultData['requestTypes'] = l$requestTypes?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$serviceLevels = serviceLevels;
    final l$requestTypes = requestTypes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$serviceLevels == null
          ? null
          : Object.hashAll(l$serviceLevels.map((v) => v)),
      l$requestTypes == null
          ? null
          : Object.hashAll(l$requestTypes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$WorkRequestOptionsForDepot$depots$workRequestOptions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceLevels = serviceLevels;
    final lOther$serviceLevels = other.serviceLevels;
    if (l$serviceLevels != null && lOther$serviceLevels != null) {
      if (l$serviceLevels.length != lOther$serviceLevels.length) {
        return false;
      }
      for (int i = 0; i < l$serviceLevels.length; i++) {
        final l$serviceLevels$entry = l$serviceLevels[i];
        final lOther$serviceLevels$entry = lOther$serviceLevels[i];
        if (l$serviceLevels$entry != lOther$serviceLevels$entry) {
          return false;
        }
      }
    } else if (l$serviceLevels != lOther$serviceLevels) {
      return false;
    }
    final l$requestTypes = requestTypes;
    final lOther$requestTypes = other.requestTypes;
    if (l$requestTypes != null && lOther$requestTypes != null) {
      if (l$requestTypes.length != lOther$requestTypes.length) {
        return false;
      }
      for (int i = 0; i < l$requestTypes.length; i++) {
        final l$requestTypes$entry = l$requestTypes[i];
        final lOther$requestTypes$entry = lOther$requestTypes[i];
        if (l$requestTypes$entry != lOther$requestTypes$entry) {
          return false;
        }
      }
    } else if (l$requestTypes != lOther$requestTypes) {
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

extension UtilityExtension$Query$WorkRequestOptionsForDepot$depots$workRequestOptions
    on Query$WorkRequestOptionsForDepot$depots$workRequestOptions {
  CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions<
          Query$WorkRequestOptionsForDepot$depots$workRequestOptions>
      get copyWith =>
          CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions<
    TRes> {
  factory CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions(
    Query$WorkRequestOptionsForDepot$depots$workRequestOptions instance,
    TRes Function(Query$WorkRequestOptionsForDepot$depots$workRequestOptions)
        then,
  ) = _CopyWithImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions;

  factory CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions;

  TRes call({
    List<Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels>?
        serviceLevels,
    List<String>? requestTypes,
    String? $__typename,
  });
  TRes serviceLevels(
      Iterable<Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels>? Function(
              Iterable<
                  CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels<
                      Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels>>?)
          _fn);
}

class _CopyWithImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions<
        TRes>
    implements
        CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions<
            TRes> {
  _CopyWithImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions(
    this._instance,
    this._then,
  );

  final Query$WorkRequestOptionsForDepot$depots$workRequestOptions _instance;

  final TRes Function(
      Query$WorkRequestOptionsForDepot$depots$workRequestOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? serviceLevels = _undefined,
    Object? requestTypes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WorkRequestOptionsForDepot$depots$workRequestOptions(
        serviceLevels: serviceLevels == _undefined
            ? _instance.serviceLevels
            : (serviceLevels as List<
                Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels>?),
        requestTypes: requestTypes == _undefined
            ? _instance.requestTypes
            : (requestTypes as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes serviceLevels(
          Iterable<Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels>? Function(
                  Iterable<
                      CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels<
                          Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels>>?)
              _fn) =>
      call(
          serviceLevels: _fn(_instance.serviceLevels?.map((e) =>
              CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions<
        TRes>
    implements
        CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions<
            TRes> {
  _CopyWithStubImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions(
      this._res);

  TRes _res;

  call({
    List<Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels>?
        serviceLevels,
    List<String>? requestTypes,
    String? $__typename,
  }) =>
      _res;

  serviceLevels(_fn) => _res;
}

class Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels {
  Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels({
    required this.id,
    this.name,
    this.$__typename = 'WorkRequestServiceLevel',
  });

  factory Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels(
      id: (l$id as int),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels
    on Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels {
  CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels<
          Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels>
      get copyWith =>
          CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels<
    TRes> {
  factory CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels(
    Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels
        instance,
    TRes Function(
            Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels)
        then,
  ) = _CopyWithImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels;

  factory CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels.stub(
          TRes res) =
      _CopyWithStubImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels<
        TRes>
    implements
        CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels<
            TRes> {
  _CopyWithImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels(
    this._instance,
    this._then,
  );

  final Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels
      _instance;

  final TRes Function(
          Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels<
        TRes>
    implements
        CopyWith$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels<
            TRes> {
  _CopyWithStubImpl$Query$WorkRequestOptionsForDepot$depots$workRequestOptions$serviceLevels(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
