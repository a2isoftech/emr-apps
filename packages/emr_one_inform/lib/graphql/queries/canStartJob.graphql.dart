import 'package:gql/ast.dart';

class Variables$Query$CanStartJob {
  factory Variables$Query$CanStartJob({required String workOrderId}) =>
      Variables$Query$CanStartJob._({
        r'workOrderId': workOrderId,
      });

  Variables$Query$CanStartJob._(this._$data);

  factory Variables$Query$CanStartJob.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$workOrderId = data['workOrderId'];
    result$data['workOrderId'] = (l$workOrderId as String);
    return Variables$Query$CanStartJob._(result$data);
  }

  Map<String, dynamic> _$data;

  String get workOrderId => (_$data['workOrderId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$workOrderId = workOrderId;
    result$data['workOrderId'] = l$workOrderId;
    return result$data;
  }

  CopyWith$Variables$Query$CanStartJob<Variables$Query$CanStartJob>
      get copyWith => CopyWith$Variables$Query$CanStartJob(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$CanStartJob) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workOrderId = workOrderId;
    final lOther$workOrderId = other.workOrderId;
    if (l$workOrderId != lOther$workOrderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$workOrderId = workOrderId;
    return Object.hashAll([l$workOrderId]);
  }
}

abstract class CopyWith$Variables$Query$CanStartJob<TRes> {
  factory CopyWith$Variables$Query$CanStartJob(
    Variables$Query$CanStartJob instance,
    TRes Function(Variables$Query$CanStartJob) then,
  ) = _CopyWithImpl$Variables$Query$CanStartJob;

  factory CopyWith$Variables$Query$CanStartJob.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CanStartJob;

  TRes call({String? workOrderId});
}

class _CopyWithImpl$Variables$Query$CanStartJob<TRes>
    implements CopyWith$Variables$Query$CanStartJob<TRes> {
  _CopyWithImpl$Variables$Query$CanStartJob(
    this._instance,
    this._then,
  );

  final Variables$Query$CanStartJob _instance;

  final TRes Function(Variables$Query$CanStartJob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? workOrderId = _undefined}) =>
      _then(Variables$Query$CanStartJob._({
        ..._instance._$data,
        if (workOrderId != _undefined && workOrderId != null)
          'workOrderId': (workOrderId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$CanStartJob<TRes>
    implements CopyWith$Variables$Query$CanStartJob<TRes> {
  _CopyWithStubImpl$Variables$Query$CanStartJob(this._res);

  TRes _res;

  call({String? workOrderId}) => _res;
}

class Query$CanStartJob {
  Query$CanStartJob({
    required this.canStartJob,
    this.$__typename = 'FormsQuery',
  });

  factory Query$CanStartJob.fromJson(Map<String, dynamic> json) {
    final l$canStartJob = json['canStartJob'];
    final l$$__typename = json['__typename'];
    return Query$CanStartJob(
      canStartJob: Query$CanStartJob$canStartJob.fromJson(
          (l$canStartJob as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CanStartJob$canStartJob canStartJob;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$canStartJob = canStartJob;
    _resultData['canStartJob'] = l$canStartJob.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$canStartJob = canStartJob;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$canStartJob,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CanStartJob) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$canStartJob = canStartJob;
    final lOther$canStartJob = other.canStartJob;
    if (l$canStartJob != lOther$canStartJob) {
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

extension UtilityExtension$Query$CanStartJob on Query$CanStartJob {
  CopyWith$Query$CanStartJob<Query$CanStartJob> get copyWith =>
      CopyWith$Query$CanStartJob(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CanStartJob<TRes> {
  factory CopyWith$Query$CanStartJob(
    Query$CanStartJob instance,
    TRes Function(Query$CanStartJob) then,
  ) = _CopyWithImpl$Query$CanStartJob;

  factory CopyWith$Query$CanStartJob.stub(TRes res) =
      _CopyWithStubImpl$Query$CanStartJob;

  TRes call({
    Query$CanStartJob$canStartJob? canStartJob,
    String? $__typename,
  });
  CopyWith$Query$CanStartJob$canStartJob<TRes> get canStartJob;
}

class _CopyWithImpl$Query$CanStartJob<TRes>
    implements CopyWith$Query$CanStartJob<TRes> {
  _CopyWithImpl$Query$CanStartJob(
    this._instance,
    this._then,
  );

  final Query$CanStartJob _instance;

  final TRes Function(Query$CanStartJob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? canStartJob = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CanStartJob(
        canStartJob: canStartJob == _undefined || canStartJob == null
            ? _instance.canStartJob
            : (canStartJob as Query$CanStartJob$canStartJob),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CanStartJob$canStartJob<TRes> get canStartJob {
    final local$canStartJob = _instance.canStartJob;
    return CopyWith$Query$CanStartJob$canStartJob(
        local$canStartJob, (e) => call(canStartJob: e));
  }
}

class _CopyWithStubImpl$Query$CanStartJob<TRes>
    implements CopyWith$Query$CanStartJob<TRes> {
  _CopyWithStubImpl$Query$CanStartJob(this._res);

  TRes _res;

  call({
    Query$CanStartJob$canStartJob? canStartJob,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CanStartJob$canStartJob<TRes> get canStartJob =>
      CopyWith$Query$CanStartJob$canStartJob.stub(_res);
}

const documentNodeQueryCanStartJob = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CanStartJob'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'workOrderId')),
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
        name: NameNode(value: 'canStartJob'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'workOrderId'),
            value: VariableNode(name: NameNode(value: 'workOrderId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'value'),
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

class Query$CanStartJob$canStartJob {
  Query$CanStartJob$canStartJob({
    required this.value,
    this.$__typename = 'QuickReponseOfBoolean',
  });

  factory Query$CanStartJob$canStartJob.fromJson(Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$CanStartJob$canStartJob(
      value: (l$value as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CanStartJob$canStartJob) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$CanStartJob$canStartJob
    on Query$CanStartJob$canStartJob {
  CopyWith$Query$CanStartJob$canStartJob<Query$CanStartJob$canStartJob>
      get copyWith => CopyWith$Query$CanStartJob$canStartJob(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CanStartJob$canStartJob<TRes> {
  factory CopyWith$Query$CanStartJob$canStartJob(
    Query$CanStartJob$canStartJob instance,
    TRes Function(Query$CanStartJob$canStartJob) then,
  ) = _CopyWithImpl$Query$CanStartJob$canStartJob;

  factory CopyWith$Query$CanStartJob$canStartJob.stub(TRes res) =
      _CopyWithStubImpl$Query$CanStartJob$canStartJob;

  TRes call({
    bool? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CanStartJob$canStartJob<TRes>
    implements CopyWith$Query$CanStartJob$canStartJob<TRes> {
  _CopyWithImpl$Query$CanStartJob$canStartJob(
    this._instance,
    this._then,
  );

  final Query$CanStartJob$canStartJob _instance;

  final TRes Function(Query$CanStartJob$canStartJob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CanStartJob$canStartJob(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CanStartJob$canStartJob<TRes>
    implements CopyWith$Query$CanStartJob$canStartJob<TRes> {
  _CopyWithStubImpl$Query$CanStartJob$canStartJob(this._res);

  TRes _res;

  call({
    bool? value,
    String? $__typename,
  }) =>
      _res;
}
