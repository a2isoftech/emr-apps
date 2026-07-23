import 'package:gql/ast.dart';

class Variables$Query$GetClientById {
  factory Variables$Query$GetClientById({required int id}) =>
      Variables$Query$GetClientById._({
        r'id': id,
      });

  Variables$Query$GetClientById._(this._$data);

  factory Variables$Query$GetClientById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Query$GetClientById._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetClientById<Variables$Query$GetClientById>
      get copyWith => CopyWith$Variables$Query$GetClientById(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetClientById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetClientById<TRes> {
  factory CopyWith$Variables$Query$GetClientById(
    Variables$Query$GetClientById instance,
    TRes Function(Variables$Query$GetClientById) then,
  ) = _CopyWithImpl$Variables$Query$GetClientById;

  factory CopyWith$Variables$Query$GetClientById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetClientById;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$GetClientById<TRes>
    implements CopyWith$Variables$Query$GetClientById<TRes> {
  _CopyWithImpl$Variables$Query$GetClientById(
    this._instance,
    this._then,
  );

  final Variables$Query$GetClientById _instance;

  final TRes Function(Variables$Query$GetClientById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetClientById._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetClientById<TRes>
    implements CopyWith$Variables$Query$GetClientById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetClientById(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$GetClientById {
  Query$GetClientById({
    this.clientById,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetClientById.fromJson(Map<String, dynamic> json) {
    final l$clientById = json['clientById'];
    final l$$__typename = json['__typename'];
    return Query$GetClientById(
      clientById: l$clientById == null
          ? null
          : Query$GetClientById$clientById.fromJson(
              (l$clientById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClientById$clientById? clientById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientById = clientById;
    _resultData['clientById'] = l$clientById?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientById = clientById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clientById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClientById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientById = clientById;
    final lOther$clientById = other.clientById;
    if (l$clientById != lOther$clientById) {
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

extension UtilityExtension$Query$GetClientById on Query$GetClientById {
  CopyWith$Query$GetClientById<Query$GetClientById> get copyWith =>
      CopyWith$Query$GetClientById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetClientById<TRes> {
  factory CopyWith$Query$GetClientById(
    Query$GetClientById instance,
    TRes Function(Query$GetClientById) then,
  ) = _CopyWithImpl$Query$GetClientById;

  factory CopyWith$Query$GetClientById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClientById;

  TRes call({
    Query$GetClientById$clientById? clientById,
    String? $__typename,
  });
  CopyWith$Query$GetClientById$clientById<TRes> get clientById;
}

class _CopyWithImpl$Query$GetClientById<TRes>
    implements CopyWith$Query$GetClientById<TRes> {
  _CopyWithImpl$Query$GetClientById(
    this._instance,
    this._then,
  );

  final Query$GetClientById _instance;

  final TRes Function(Query$GetClientById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClientById(
        clientById: clientById == _undefined
            ? _instance.clientById
            : (clientById as Query$GetClientById$clientById?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetClientById$clientById<TRes> get clientById {
    final local$clientById = _instance.clientById;
    return local$clientById == null
        ? CopyWith$Query$GetClientById$clientById.stub(_then(_instance))
        : CopyWith$Query$GetClientById$clientById(
            local$clientById, (e) => call(clientById: e));
  }
}

class _CopyWithStubImpl$Query$GetClientById<TRes>
    implements CopyWith$Query$GetClientById<TRes> {
  _CopyWithStubImpl$Query$GetClientById(this._res);

  TRes _res;

  call({
    Query$GetClientById$clientById? clientById,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetClientById$clientById<TRes> get clientById =>
      CopyWith$Query$GetClientById$clientById.stub(_res);
}

const documentNodeQueryGetClientById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetClientById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'clientById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isEditable'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isD365'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isActive'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'defaultWorkRequestType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'defaultLifeCycleState'),
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

class Query$GetClientById$clientById {
  Query$GetClientById$clientById({
    required this.id,
    required this.title,
    required this.isEditable,
    required this.isD365,
    required this.isActive,
    this.defaultWorkRequestType,
    this.defaultLifeCycleState,
    this.$__typename = 'Client',
  });

  factory Query$GetClientById$clientById.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$isEditable = json['isEditable'];
    final l$isD365 = json['isD365'];
    final l$isActive = json['isActive'];
    final l$defaultWorkRequestType = json['defaultWorkRequestType'];
    final l$defaultLifeCycleState = json['defaultLifeCycleState'];
    final l$$__typename = json['__typename'];
    return Query$GetClientById$clientById(
      id: (l$id as int),
      title: (l$title as String),
      isEditable: (l$isEditable as bool),
      isD365: (l$isD365 as bool),
      isActive: (l$isActive as bool),
      defaultWorkRequestType: (l$defaultWorkRequestType as String?),
      defaultLifeCycleState: (l$defaultLifeCycleState as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final bool isEditable;

  final bool isD365;

  final bool isActive;

  final String? defaultWorkRequestType;

  final String? defaultLifeCycleState;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$isEditable = isEditable;
    _resultData['isEditable'] = l$isEditable;
    final l$isD365 = isD365;
    _resultData['isD365'] = l$isD365;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$defaultWorkRequestType = defaultWorkRequestType;
    _resultData['defaultWorkRequestType'] = l$defaultWorkRequestType;
    final l$defaultLifeCycleState = defaultLifeCycleState;
    _resultData['defaultLifeCycleState'] = l$defaultLifeCycleState;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$isEditable = isEditable;
    final l$isD365 = isD365;
    final l$isActive = isActive;
    final l$defaultWorkRequestType = defaultWorkRequestType;
    final l$defaultLifeCycleState = defaultLifeCycleState;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$isEditable,
      l$isD365,
      l$isActive,
      l$defaultWorkRequestType,
      l$defaultLifeCycleState,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClientById$clientById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$isEditable = isEditable;
    final lOther$isEditable = other.isEditable;
    if (l$isEditable != lOther$isEditable) {
      return false;
    }
    final l$isD365 = isD365;
    final lOther$isD365 = other.isD365;
    if (l$isD365 != lOther$isD365) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$defaultWorkRequestType = defaultWorkRequestType;
    final lOther$defaultWorkRequestType = other.defaultWorkRequestType;
    if (l$defaultWorkRequestType != lOther$defaultWorkRequestType) {
      return false;
    }
    final l$defaultLifeCycleState = defaultLifeCycleState;
    final lOther$defaultLifeCycleState = other.defaultLifeCycleState;
    if (l$defaultLifeCycleState != lOther$defaultLifeCycleState) {
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

extension UtilityExtension$Query$GetClientById$clientById
    on Query$GetClientById$clientById {
  CopyWith$Query$GetClientById$clientById<Query$GetClientById$clientById>
      get copyWith => CopyWith$Query$GetClientById$clientById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClientById$clientById<TRes> {
  factory CopyWith$Query$GetClientById$clientById(
    Query$GetClientById$clientById instance,
    TRes Function(Query$GetClientById$clientById) then,
  ) = _CopyWithImpl$Query$GetClientById$clientById;

  factory CopyWith$Query$GetClientById$clientById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClientById$clientById;

  TRes call({
    int? id,
    String? title,
    bool? isEditable,
    bool? isD365,
    bool? isActive,
    String? defaultWorkRequestType,
    String? defaultLifeCycleState,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetClientById$clientById<TRes>
    implements CopyWith$Query$GetClientById$clientById<TRes> {
  _CopyWithImpl$Query$GetClientById$clientById(
    this._instance,
    this._then,
  );

  final Query$GetClientById$clientById _instance;

  final TRes Function(Query$GetClientById$clientById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? isEditable = _undefined,
    Object? isD365 = _undefined,
    Object? isActive = _undefined,
    Object? defaultWorkRequestType = _undefined,
    Object? defaultLifeCycleState = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClientById$clientById(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        isEditable: isEditable == _undefined || isEditable == null
            ? _instance.isEditable
            : (isEditable as bool),
        isD365: isD365 == _undefined || isD365 == null
            ? _instance.isD365
            : (isD365 as bool),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        defaultWorkRequestType: defaultWorkRequestType == _undefined
            ? _instance.defaultWorkRequestType
            : (defaultWorkRequestType as String?),
        defaultLifeCycleState: defaultLifeCycleState == _undefined
            ? _instance.defaultLifeCycleState
            : (defaultLifeCycleState as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetClientById$clientById<TRes>
    implements CopyWith$Query$GetClientById$clientById<TRes> {
  _CopyWithStubImpl$Query$GetClientById$clientById(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    bool? isEditable,
    bool? isD365,
    bool? isActive,
    String? defaultWorkRequestType,
    String? defaultLifeCycleState,
    String? $__typename,
  }) =>
      _res;
}
