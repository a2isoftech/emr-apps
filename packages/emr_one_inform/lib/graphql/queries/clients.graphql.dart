import 'package:gql/ast.dart';

class Variables$Query$getClients {
  factory Variables$Query$getClients({
    String? clientName,
    bool? isEditable,
    bool? isD365,
    bool? canSchedule,
  }) =>
      Variables$Query$getClients._({
        if (clientName != null) r'clientName': clientName,
        if (isEditable != null) r'isEditable': isEditable,
        if (isD365 != null) r'isD365': isD365,
        if (canSchedule != null) r'canSchedule': canSchedule,
      });

  Variables$Query$getClients._(this._$data);

  factory Variables$Query$getClients.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('clientName')) {
      final l$clientName = data['clientName'];
      result$data['clientName'] = (l$clientName as String?);
    }
    if (data.containsKey('isEditable')) {
      final l$isEditable = data['isEditable'];
      result$data['isEditable'] = (l$isEditable as bool?);
    }
    if (data.containsKey('isD365')) {
      final l$isD365 = data['isD365'];
      result$data['isD365'] = (l$isD365 as bool?);
    }
    if (data.containsKey('canSchedule')) {
      final l$canSchedule = data['canSchedule'];
      result$data['canSchedule'] = (l$canSchedule as bool?);
    }
    return Variables$Query$getClients._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get clientName => (_$data['clientName'] as String?);

  bool? get isEditable => (_$data['isEditable'] as bool?);

  bool? get isD365 => (_$data['isD365'] as bool?);

  bool? get canSchedule => (_$data['canSchedule'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('clientName')) {
      final l$clientName = clientName;
      result$data['clientName'] = l$clientName;
    }
    if (_$data.containsKey('isEditable')) {
      final l$isEditable = isEditable;
      result$data['isEditable'] = l$isEditable;
    }
    if (_$data.containsKey('isD365')) {
      final l$isD365 = isD365;
      result$data['isD365'] = l$isD365;
    }
    if (_$data.containsKey('canSchedule')) {
      final l$canSchedule = canSchedule;
      result$data['canSchedule'] = l$canSchedule;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getClients<Variables$Query$getClients>
      get copyWith => CopyWith$Variables$Query$getClients(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getClients) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientName = clientName;
    final lOther$clientName = other.clientName;
    if (_$data.containsKey('clientName') !=
        other._$data.containsKey('clientName')) {
      return false;
    }
    if (l$clientName != lOther$clientName) {
      return false;
    }
    final l$isEditable = isEditable;
    final lOther$isEditable = other.isEditable;
    if (_$data.containsKey('isEditable') !=
        other._$data.containsKey('isEditable')) {
      return false;
    }
    if (l$isEditable != lOther$isEditable) {
      return false;
    }
    final l$isD365 = isD365;
    final lOther$isD365 = other.isD365;
    if (_$data.containsKey('isD365') != other._$data.containsKey('isD365')) {
      return false;
    }
    if (l$isD365 != lOther$isD365) {
      return false;
    }
    final l$canSchedule = canSchedule;
    final lOther$canSchedule = other.canSchedule;
    if (_$data.containsKey('canSchedule') !=
        other._$data.containsKey('canSchedule')) {
      return false;
    }
    if (l$canSchedule != lOther$canSchedule) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$clientName = clientName;
    final l$isEditable = isEditable;
    final l$isD365 = isD365;
    final l$canSchedule = canSchedule;
    return Object.hashAll([
      _$data.containsKey('clientName') ? l$clientName : const {},
      _$data.containsKey('isEditable') ? l$isEditable : const {},
      _$data.containsKey('isD365') ? l$isD365 : const {},
      _$data.containsKey('canSchedule') ? l$canSchedule : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getClients<TRes> {
  factory CopyWith$Variables$Query$getClients(
    Variables$Query$getClients instance,
    TRes Function(Variables$Query$getClients) then,
  ) = _CopyWithImpl$Variables$Query$getClients;

  factory CopyWith$Variables$Query$getClients.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getClients;

  TRes call({
    String? clientName,
    bool? isEditable,
    bool? isD365,
    bool? canSchedule,
  });
}

class _CopyWithImpl$Variables$Query$getClients<TRes>
    implements CopyWith$Variables$Query$getClients<TRes> {
  _CopyWithImpl$Variables$Query$getClients(
    this._instance,
    this._then,
  );

  final Variables$Query$getClients _instance;

  final TRes Function(Variables$Query$getClients) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientName = _undefined,
    Object? isEditable = _undefined,
    Object? isD365 = _undefined,
    Object? canSchedule = _undefined,
  }) =>
      _then(Variables$Query$getClients._({
        ..._instance._$data,
        if (clientName != _undefined) 'clientName': (clientName as String?),
        if (isEditable != _undefined) 'isEditable': (isEditable as bool?),
        if (isD365 != _undefined) 'isD365': (isD365 as bool?),
        if (canSchedule != _undefined) 'canSchedule': (canSchedule as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getClients<TRes>
    implements CopyWith$Variables$Query$getClients<TRes> {
  _CopyWithStubImpl$Variables$Query$getClients(this._res);

  TRes _res;

  call({
    String? clientName,
    bool? isEditable,
    bool? isD365,
    bool? canSchedule,
  }) =>
      _res;
}

class Query$getClients {
  Query$getClients({
    required this.clients,
    this.$__typename = 'FormsQuery',
  });

  factory Query$getClients.fromJson(Map<String, dynamic> json) {
    final l$clients = json['clients'];
    final l$$__typename = json['__typename'];
    return Query$getClients(
      clients: (l$clients as List<dynamic>)
          .map((e) =>
              Query$getClients$clients.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getClients$clients> clients;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clients = clients;
    _resultData['clients'] = l$clients.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clients = clients;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$clients.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getClients) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clients = clients;
    final lOther$clients = other.clients;
    if (l$clients.length != lOther$clients.length) {
      return false;
    }
    for (int i = 0; i < l$clients.length; i++) {
      final l$clients$entry = l$clients[i];
      final lOther$clients$entry = lOther$clients[i];
      if (l$clients$entry != lOther$clients$entry) {
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

extension UtilityExtension$Query$getClients on Query$getClients {
  CopyWith$Query$getClients<Query$getClients> get copyWith =>
      CopyWith$Query$getClients(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getClients<TRes> {
  factory CopyWith$Query$getClients(
    Query$getClients instance,
    TRes Function(Query$getClients) then,
  ) = _CopyWithImpl$Query$getClients;

  factory CopyWith$Query$getClients.stub(TRes res) =
      _CopyWithStubImpl$Query$getClients;

  TRes call({
    List<Query$getClients$clients>? clients,
    String? $__typename,
  });
  TRes clients(
      Iterable<Query$getClients$clients> Function(
              Iterable<
                  CopyWith$Query$getClients$clients<Query$getClients$clients>>)
          _fn);
}

class _CopyWithImpl$Query$getClients<TRes>
    implements CopyWith$Query$getClients<TRes> {
  _CopyWithImpl$Query$getClients(
    this._instance,
    this._then,
  );

  final Query$getClients _instance;

  final TRes Function(Query$getClients) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clients = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getClients(
        clients: clients == _undefined || clients == null
            ? _instance.clients
            : (clients as List<Query$getClients$clients>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes clients(
          Iterable<Query$getClients$clients> Function(
                  Iterable<
                      CopyWith$Query$getClients$clients<
                          Query$getClients$clients>>)
              _fn) =>
      call(
          clients: _fn(
              _instance.clients.map((e) => CopyWith$Query$getClients$clients(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getClients<TRes>
    implements CopyWith$Query$getClients<TRes> {
  _CopyWithStubImpl$Query$getClients(this._res);

  TRes _res;

  call({
    List<Query$getClients$clients>? clients,
    String? $__typename,
  }) =>
      _res;

  clients(_fn) => _res;
}

const documentNodeQuerygetClients = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getClients'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'clientName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isEditable')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isD365')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'canSchedule')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'clients'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'clientName'),
            value: VariableNode(name: NameNode(value: 'clientName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isEditable'),
            value: VariableNode(name: NameNode(value: 'isEditable')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isD365'),
            value: VariableNode(name: NameNode(value: 'isD365')),
          ),
          ArgumentNode(
            name: NameNode(value: 'canSchedule'),
            value: VariableNode(name: NameNode(value: 'canSchedule')),
          ),
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
            name: NameNode(value: 'canSchedule'),
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

class Query$getClients$clients {
  Query$getClients$clients({
    required this.id,
    required this.title,
    required this.isEditable,
    required this.isD365,
    required this.isActive,
    this.defaultWorkRequestType,
    required this.canSchedule,
    this.$__typename = 'Client',
  });

  factory Query$getClients$clients.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$isEditable = json['isEditable'];
    final l$isD365 = json['isD365'];
    final l$isActive = json['isActive'];
    final l$defaultWorkRequestType = json['defaultWorkRequestType'];
    final l$canSchedule = json['canSchedule'];
    final l$$__typename = json['__typename'];
    return Query$getClients$clients(
      id: (l$id as int),
      title: (l$title as String),
      isEditable: (l$isEditable as bool),
      isD365: (l$isD365 as bool),
      isActive: (l$isActive as bool),
      defaultWorkRequestType: (l$defaultWorkRequestType as String?),
      canSchedule: (l$canSchedule as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final bool isEditable;

  final bool isD365;

  final bool isActive;

  final String? defaultWorkRequestType;

  final bool canSchedule;

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
    final l$canSchedule = canSchedule;
    _resultData['canSchedule'] = l$canSchedule;
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
    final l$canSchedule = canSchedule;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$isEditable,
      l$isD365,
      l$isActive,
      l$defaultWorkRequestType,
      l$canSchedule,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getClients$clients) ||
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
    final l$canSchedule = canSchedule;
    final lOther$canSchedule = other.canSchedule;
    if (l$canSchedule != lOther$canSchedule) {
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

extension UtilityExtension$Query$getClients$clients
    on Query$getClients$clients {
  CopyWith$Query$getClients$clients<Query$getClients$clients> get copyWith =>
      CopyWith$Query$getClients$clients(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getClients$clients<TRes> {
  factory CopyWith$Query$getClients$clients(
    Query$getClients$clients instance,
    TRes Function(Query$getClients$clients) then,
  ) = _CopyWithImpl$Query$getClients$clients;

  factory CopyWith$Query$getClients$clients.stub(TRes res) =
      _CopyWithStubImpl$Query$getClients$clients;

  TRes call({
    int? id,
    String? title,
    bool? isEditable,
    bool? isD365,
    bool? isActive,
    String? defaultWorkRequestType,
    bool? canSchedule,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getClients$clients<TRes>
    implements CopyWith$Query$getClients$clients<TRes> {
  _CopyWithImpl$Query$getClients$clients(
    this._instance,
    this._then,
  );

  final Query$getClients$clients _instance;

  final TRes Function(Query$getClients$clients) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? isEditable = _undefined,
    Object? isD365 = _undefined,
    Object? isActive = _undefined,
    Object? defaultWorkRequestType = _undefined,
    Object? canSchedule = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getClients$clients(
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
        canSchedule: canSchedule == _undefined || canSchedule == null
            ? _instance.canSchedule
            : (canSchedule as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getClients$clients<TRes>
    implements CopyWith$Query$getClients$clients<TRes> {
  _CopyWithStubImpl$Query$getClients$clients(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    bool? isEditable,
    bool? isD365,
    bool? isActive,
    String? defaultWorkRequestType,
    bool? canSchedule,
    String? $__typename,
  }) =>
      _res;
}
