import '../../fragments/ticket/sync_weighbridge_ticket_tasks.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$syncWeighbridgeTicketTasksSyncAll {
  factory Variables$Mutation$syncWeighbridgeTicketTasksSyncAll({
    required List<String> taskIds,
  }) => Variables$Mutation$syncWeighbridgeTicketTasksSyncAll._({
    r'taskIds': taskIds,
  });

  Variables$Mutation$syncWeighbridgeTicketTasksSyncAll._(this._$data);

  factory Variables$Mutation$syncWeighbridgeTicketTasksSyncAll.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$taskIds = data['taskIds'];
    result$data['taskIds'] = (l$taskIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Variables$Mutation$syncWeighbridgeTicketTasksSyncAll._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get taskIds => (_$data['taskIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$taskIds = taskIds;
    result$data['taskIds'] = l$taskIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll<
    Variables$Mutation$syncWeighbridgeTicketTasksSyncAll
  >
  get copyWith => CopyWith$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$syncWeighbridgeTicketTasksSyncAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$taskIds = taskIds;
    final lOther$taskIds = other.taskIds;
    if (l$taskIds.length != lOther$taskIds.length) {
      return false;
    }
    for (int i = 0; i < l$taskIds.length; i++) {
      final l$taskIds$entry = l$taskIds[i];
      final lOther$taskIds$entry = lOther$taskIds[i];
      if (l$taskIds$entry != lOther$taskIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$taskIds = taskIds;
    return Object.hashAll([Object.hashAll(l$taskIds.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll<
  TRes
> {
  factory CopyWith$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll(
    Variables$Mutation$syncWeighbridgeTicketTasksSyncAll instance,
    TRes Function(Variables$Mutation$syncWeighbridgeTicketTasksSyncAll) then,
  ) = _CopyWithImpl$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll;

  factory CopyWith$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll;

  TRes call({List<String>? taskIds});
}

class _CopyWithImpl$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll<TRes>
    implements
        CopyWith$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll<TRes> {
  _CopyWithImpl$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll(
    this._instance,
    this._then,
  );

  final Variables$Mutation$syncWeighbridgeTicketTasksSyncAll _instance;

  final TRes Function(Variables$Mutation$syncWeighbridgeTicketTasksSyncAll)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? taskIds = _undefined}) => _then(
    Variables$Mutation$syncWeighbridgeTicketTasksSyncAll._({
      ..._instance._$data,
      if (taskIds != _undefined && taskIds != null)
        'taskIds': (taskIds as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll<
  TRes
>
    implements
        CopyWith$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll<TRes> {
  _CopyWithStubImpl$Variables$Mutation$syncWeighbridgeTicketTasksSyncAll(
    this._res,
  );

  TRes _res;

  call({List<String>? taskIds}) => _res;
}

class Mutation$syncWeighbridgeTicketTasksSyncAll {
  Mutation$syncWeighbridgeTicketTasksSyncAll({
    required this.syncWeighbridgeTicketTasks,
    this.$__typename = 'Mutation',
  });

  factory Mutation$syncWeighbridgeTicketTasksSyncAll.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$syncWeighbridgeTicketTasks = json['syncWeighbridgeTicketTasks'];
    final l$$__typename = json['__typename'];
    return Mutation$syncWeighbridgeTicketTasksSyncAll(
      syncWeighbridgeTicketTasks:
          (l$syncWeighbridgeTicketTasks as List<dynamic>)
              .map(
                (e) => Fragment$SyncWeighbridgeTicketTaskFields.fromJson(
                  (e as Map<String, dynamic>),
                ),
              )
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$SyncWeighbridgeTicketTaskFields>
  syncWeighbridgeTicketTasks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$syncWeighbridgeTicketTasks = syncWeighbridgeTicketTasks;
    _resultData['syncWeighbridgeTicketTasks'] = l$syncWeighbridgeTicketTasks
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$syncWeighbridgeTicketTasks = syncWeighbridgeTicketTasks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$syncWeighbridgeTicketTasks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$syncWeighbridgeTicketTasksSyncAll ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$syncWeighbridgeTicketTasks = syncWeighbridgeTicketTasks;
    final lOther$syncWeighbridgeTicketTasks = other.syncWeighbridgeTicketTasks;
    if (l$syncWeighbridgeTicketTasks.length !=
        lOther$syncWeighbridgeTicketTasks.length) {
      return false;
    }
    for (int i = 0; i < l$syncWeighbridgeTicketTasks.length; i++) {
      final l$syncWeighbridgeTicketTasks$entry =
          l$syncWeighbridgeTicketTasks[i];
      final lOther$syncWeighbridgeTicketTasks$entry =
          lOther$syncWeighbridgeTicketTasks[i];
      if (l$syncWeighbridgeTicketTasks$entry !=
          lOther$syncWeighbridgeTicketTasks$entry) {
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

extension UtilityExtension$Mutation$syncWeighbridgeTicketTasksSyncAll
    on Mutation$syncWeighbridgeTicketTasksSyncAll {
  CopyWith$Mutation$syncWeighbridgeTicketTasksSyncAll<
    Mutation$syncWeighbridgeTicketTasksSyncAll
  >
  get copyWith =>
      CopyWith$Mutation$syncWeighbridgeTicketTasksSyncAll(this, (i) => i);
}

abstract class CopyWith$Mutation$syncWeighbridgeTicketTasksSyncAll<TRes> {
  factory CopyWith$Mutation$syncWeighbridgeTicketTasksSyncAll(
    Mutation$syncWeighbridgeTicketTasksSyncAll instance,
    TRes Function(Mutation$syncWeighbridgeTicketTasksSyncAll) then,
  ) = _CopyWithImpl$Mutation$syncWeighbridgeTicketTasksSyncAll;

  factory CopyWith$Mutation$syncWeighbridgeTicketTasksSyncAll.stub(TRes res) =
      _CopyWithStubImpl$Mutation$syncWeighbridgeTicketTasksSyncAll;

  TRes call({
    List<Fragment$SyncWeighbridgeTicketTaskFields>? syncWeighbridgeTicketTasks,
    String? $__typename,
  });
  TRes syncWeighbridgeTicketTasks(
    Iterable<Fragment$SyncWeighbridgeTicketTaskFields> Function(
      Iterable<
        CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<
          Fragment$SyncWeighbridgeTicketTaskFields
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$syncWeighbridgeTicketTasksSyncAll<TRes>
    implements CopyWith$Mutation$syncWeighbridgeTicketTasksSyncAll<TRes> {
  _CopyWithImpl$Mutation$syncWeighbridgeTicketTasksSyncAll(
    this._instance,
    this._then,
  );

  final Mutation$syncWeighbridgeTicketTasksSyncAll _instance;

  final TRes Function(Mutation$syncWeighbridgeTicketTasksSyncAll) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? syncWeighbridgeTicketTasks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$syncWeighbridgeTicketTasksSyncAll(
      syncWeighbridgeTicketTasks:
          syncWeighbridgeTicketTasks == _undefined ||
              syncWeighbridgeTicketTasks == null
          ? _instance.syncWeighbridgeTicketTasks
          : (syncWeighbridgeTicketTasks
                as List<Fragment$SyncWeighbridgeTicketTaskFields>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes syncWeighbridgeTicketTasks(
    Iterable<Fragment$SyncWeighbridgeTicketTaskFields> Function(
      Iterable<
        CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<
          Fragment$SyncWeighbridgeTicketTaskFields
        >
      >,
    )
    _fn,
  ) => call(
    syncWeighbridgeTicketTasks: _fn(
      _instance.syncWeighbridgeTicketTasks.map(
        (e) => CopyWith$Fragment$SyncWeighbridgeTicketTaskFields(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$syncWeighbridgeTicketTasksSyncAll<TRes>
    implements CopyWith$Mutation$syncWeighbridgeTicketTasksSyncAll<TRes> {
  _CopyWithStubImpl$Mutation$syncWeighbridgeTicketTasksSyncAll(this._res);

  TRes _res;

  call({
    List<Fragment$SyncWeighbridgeTicketTaskFields>? syncWeighbridgeTicketTasks,
    String? $__typename,
  }) => _res;

  syncWeighbridgeTicketTasks(_fn) => _res;
}

const documentNodeMutationsyncWeighbridgeTicketTasksSyncAll = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'syncWeighbridgeTicketTasksSyncAll'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'taskIds')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'syncWeighbridgeTicketTasks'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'taskIds'),
                      value: VariableNode(name: NameNode(value: 'taskIds')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'SyncWeighbridgeTicketTaskFields'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionSyncWeighbridgeTicketTaskFields,
  ],
);
