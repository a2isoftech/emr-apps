import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetScheduleDescriptions {
  factory Variables$Query$GetScheduleDescriptions(
          {required Input$ScheduleFilterInput filter}) =>
      Variables$Query$GetScheduleDescriptions._({
        r'filter': filter,
      });

  Variables$Query$GetScheduleDescriptions._(this._$data);

  factory Variables$Query$GetScheduleDescriptions.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] =
        Input$ScheduleFilterInput.fromJson((l$filter as Map<String, dynamic>));
    return Variables$Query$GetScheduleDescriptions._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ScheduleFilterInput get filter =>
      (_$data['filter'] as Input$ScheduleFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetScheduleDescriptions<
          Variables$Query$GetScheduleDescriptions>
      get copyWith => CopyWith$Variables$Query$GetScheduleDescriptions(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetScheduleDescriptions) ||
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

abstract class CopyWith$Variables$Query$GetScheduleDescriptions<TRes> {
  factory CopyWith$Variables$Query$GetScheduleDescriptions(
    Variables$Query$GetScheduleDescriptions instance,
    TRes Function(Variables$Query$GetScheduleDescriptions) then,
  ) = _CopyWithImpl$Variables$Query$GetScheduleDescriptions;

  factory CopyWith$Variables$Query$GetScheduleDescriptions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetScheduleDescriptions;

  TRes call({Input$ScheduleFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$GetScheduleDescriptions<TRes>
    implements CopyWith$Variables$Query$GetScheduleDescriptions<TRes> {
  _CopyWithImpl$Variables$Query$GetScheduleDescriptions(
    this._instance,
    this._then,
  );

  final Variables$Query$GetScheduleDescriptions _instance;

  final TRes Function(Variables$Query$GetScheduleDescriptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$GetScheduleDescriptions._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$ScheduleFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetScheduleDescriptions<TRes>
    implements CopyWith$Variables$Query$GetScheduleDescriptions<TRes> {
  _CopyWithStubImpl$Variables$Query$GetScheduleDescriptions(this._res);

  TRes _res;

  call({Input$ScheduleFilterInput? filter}) => _res;
}

class Query$GetScheduleDescriptions {
  Query$GetScheduleDescriptions({
    required this.schedules,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetScheduleDescriptions.fromJson(Map<String, dynamic> json) {
    final l$schedules = json['schedules'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduleDescriptions(
      schedules: (l$schedules as List<dynamic>)
          .map((e) => Query$GetScheduleDescriptions$schedules.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetScheduleDescriptions$schedules> schedules;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$schedules = schedules;
    _resultData['schedules'] = l$schedules.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$schedules = schedules;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$schedules.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetScheduleDescriptions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$schedules = schedules;
    final lOther$schedules = other.schedules;
    if (l$schedules.length != lOther$schedules.length) {
      return false;
    }
    for (int i = 0; i < l$schedules.length; i++) {
      final l$schedules$entry = l$schedules[i];
      final lOther$schedules$entry = lOther$schedules[i];
      if (l$schedules$entry != lOther$schedules$entry) {
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

extension UtilityExtension$Query$GetScheduleDescriptions
    on Query$GetScheduleDescriptions {
  CopyWith$Query$GetScheduleDescriptions<Query$GetScheduleDescriptions>
      get copyWith => CopyWith$Query$GetScheduleDescriptions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduleDescriptions<TRes> {
  factory CopyWith$Query$GetScheduleDescriptions(
    Query$GetScheduleDescriptions instance,
    TRes Function(Query$GetScheduleDescriptions) then,
  ) = _CopyWithImpl$Query$GetScheduleDescriptions;

  factory CopyWith$Query$GetScheduleDescriptions.stub(TRes res) =
      _CopyWithStubImpl$Query$GetScheduleDescriptions;

  TRes call({
    List<Query$GetScheduleDescriptions$schedules>? schedules,
    String? $__typename,
  });
  TRes schedules(
      Iterable<Query$GetScheduleDescriptions$schedules> Function(
              Iterable<
                  CopyWith$Query$GetScheduleDescriptions$schedules<
                      Query$GetScheduleDescriptions$schedules>>)
          _fn);
}

class _CopyWithImpl$Query$GetScheduleDescriptions<TRes>
    implements CopyWith$Query$GetScheduleDescriptions<TRes> {
  _CopyWithImpl$Query$GetScheduleDescriptions(
    this._instance,
    this._then,
  );

  final Query$GetScheduleDescriptions _instance;

  final TRes Function(Query$GetScheduleDescriptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? schedules = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetScheduleDescriptions(
        schedules: schedules == _undefined || schedules == null
            ? _instance.schedules
            : (schedules as List<Query$GetScheduleDescriptions$schedules>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes schedules(
          Iterable<Query$GetScheduleDescriptions$schedules> Function(
                  Iterable<
                      CopyWith$Query$GetScheduleDescriptions$schedules<
                          Query$GetScheduleDescriptions$schedules>>)
              _fn) =>
      call(
          schedules: _fn(_instance.schedules
              .map((e) => CopyWith$Query$GetScheduleDescriptions$schedules(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetScheduleDescriptions<TRes>
    implements CopyWith$Query$GetScheduleDescriptions<TRes> {
  _CopyWithStubImpl$Query$GetScheduleDescriptions(this._res);

  TRes _res;

  call({
    List<Query$GetScheduleDescriptions$schedules>? schedules,
    String? $__typename,
  }) =>
      _res;

  schedules(_fn) => _res;
}

const documentNodeQueryGetScheduleDescriptions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetScheduleDescriptions'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'ScheduleFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'schedules'),
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
            name: NameNode(value: 'description'),
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

class Query$GetScheduleDescriptions$schedules {
  Query$GetScheduleDescriptions$schedules({
    required this.description,
    this.$__typename = 'ScheduleRecord',
  });

  factory Query$GetScheduleDescriptions$schedules.fromJson(
      Map<String, dynamic> json) {
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduleDescriptions$schedules(
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetScheduleDescriptions$schedules) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$GetScheduleDescriptions$schedules
    on Query$GetScheduleDescriptions$schedules {
  CopyWith$Query$GetScheduleDescriptions$schedules<
          Query$GetScheduleDescriptions$schedules>
      get copyWith => CopyWith$Query$GetScheduleDescriptions$schedules(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduleDescriptions$schedules<TRes> {
  factory CopyWith$Query$GetScheduleDescriptions$schedules(
    Query$GetScheduleDescriptions$schedules instance,
    TRes Function(Query$GetScheduleDescriptions$schedules) then,
  ) = _CopyWithImpl$Query$GetScheduleDescriptions$schedules;

  factory CopyWith$Query$GetScheduleDescriptions$schedules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetScheduleDescriptions$schedules;

  TRes call({
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetScheduleDescriptions$schedules<TRes>
    implements CopyWith$Query$GetScheduleDescriptions$schedules<TRes> {
  _CopyWithImpl$Query$GetScheduleDescriptions$schedules(
    this._instance,
    this._then,
  );

  final Query$GetScheduleDescriptions$schedules _instance;

  final TRes Function(Query$GetScheduleDescriptions$schedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetScheduleDescriptions$schedules(
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetScheduleDescriptions$schedules<TRes>
    implements CopyWith$Query$GetScheduleDescriptions$schedules<TRes> {
  _CopyWithStubImpl$Query$GetScheduleDescriptions$schedules(this._res);

  TRes _res;

  call({
    String? description,
    String? $__typename,
  }) =>
      _res;
}
