import 'package:gql/ast.dart';

class Variables$Query$GetAccessPointNames {
  factory Variables$Query$GetAccessPointNames({
    String? siteId,
    String? accessControllerId,
    String? accessPointId,
  }) =>
      Variables$Query$GetAccessPointNames._({
        if (siteId != null) r'siteId': siteId,
        if (accessControllerId != null)
          r'accessControllerId': accessControllerId,
        if (accessPointId != null) r'accessPointId': accessPointId,
      });

  Variables$Query$GetAccessPointNames._(this._$data);

  factory Variables$Query$GetAccessPointNames.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = (l$siteId as String?);
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = (l$accessControllerId as String?);
    }
    if (data.containsKey('accessPointId')) {
      final l$accessPointId = data['accessPointId'];
      result$data['accessPointId'] = (l$accessPointId as String?);
    }
    return Variables$Query$GetAccessPointNames._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get siteId => (_$data['siteId'] as String?);

  String? get accessControllerId => (_$data['accessControllerId'] as String?);

  String? get accessPointId => (_$data['accessPointId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId;
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId;
    }
    if (_$data.containsKey('accessPointId')) {
      final l$accessPointId = accessPointId;
      result$data['accessPointId'] = l$accessPointId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAccessPointNames<
          Variables$Query$GetAccessPointNames>
      get copyWith => CopyWith$Variables$Query$GetAccessPointNames(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccessPointNames ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (_$data.containsKey('accessPointId') !=
        other._$data.containsKey('accessPointId')) {
      return false;
    }
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$siteId = siteId;
    final l$accessControllerId = accessControllerId;
    final l$accessPointId = accessPointId;
    return Object.hashAll([
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('accessPointId') ? l$accessPointId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAccessPointNames<TRes> {
  factory CopyWith$Variables$Query$GetAccessPointNames(
    Variables$Query$GetAccessPointNames instance,
    TRes Function(Variables$Query$GetAccessPointNames) then,
  ) = _CopyWithImpl$Variables$Query$GetAccessPointNames;

  factory CopyWith$Variables$Query$GetAccessPointNames.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccessPointNames;

  TRes call({
    String? siteId,
    String? accessControllerId,
    String? accessPointId,
  });
}

class _CopyWithImpl$Variables$Query$GetAccessPointNames<TRes>
    implements CopyWith$Variables$Query$GetAccessPointNames<TRes> {
  _CopyWithImpl$Variables$Query$GetAccessPointNames(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAccessPointNames _instance;

  final TRes Function(Variables$Query$GetAccessPointNames) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? siteId = _undefined,
    Object? accessControllerId = _undefined,
    Object? accessPointId = _undefined,
  }) =>
      _then(Variables$Query$GetAccessPointNames._({
        ..._instance._$data,
        if (siteId != _undefined) 'siteId': (siteId as String?),
        if (accessControllerId != _undefined)
          'accessControllerId': (accessControllerId as String?),
        if (accessPointId != _undefined)
          'accessPointId': (accessPointId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAccessPointNames<TRes>
    implements CopyWith$Variables$Query$GetAccessPointNames<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccessPointNames(this._res);

  TRes _res;

  call({
    String? siteId,
    String? accessControllerId,
    String? accessPointId,
  }) =>
      _res;
}

class Query$GetAccessPointNames {
  Query$GetAccessPointNames({
    required this.accessPoints,
    this.$__typename = 'Query',
  });

  factory Query$GetAccessPointNames.fromJson(Map<String, dynamic> json) {
    final l$accessPoints = json['accessPoints'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPointNames(
      accessPoints: (l$accessPoints as List<dynamic>)
          .map((e) => Query$GetAccessPointNames$accessPoints.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAccessPointNames$accessPoints> accessPoints;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessPoints = accessPoints;
    _resultData['accessPoints'] =
        l$accessPoints.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessPoints = accessPoints;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$accessPoints.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessPointNames ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessPoints = accessPoints;
    final lOther$accessPoints = other.accessPoints;
    if (l$accessPoints.length != lOther$accessPoints.length) {
      return false;
    }
    for (int i = 0; i < l$accessPoints.length; i++) {
      final l$accessPoints$entry = l$accessPoints[i];
      final lOther$accessPoints$entry = lOther$accessPoints[i];
      if (l$accessPoints$entry != lOther$accessPoints$entry) {
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

extension UtilityExtension$Query$GetAccessPointNames
    on Query$GetAccessPointNames {
  CopyWith$Query$GetAccessPointNames<Query$GetAccessPointNames> get copyWith =>
      CopyWith$Query$GetAccessPointNames(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccessPointNames<TRes> {
  factory CopyWith$Query$GetAccessPointNames(
    Query$GetAccessPointNames instance,
    TRes Function(Query$GetAccessPointNames) then,
  ) = _CopyWithImpl$Query$GetAccessPointNames;

  factory CopyWith$Query$GetAccessPointNames.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessPointNames;

  TRes call({
    List<Query$GetAccessPointNames$accessPoints>? accessPoints,
    String? $__typename,
  });
  TRes accessPoints(
      Iterable<Query$GetAccessPointNames$accessPoints> Function(
              Iterable<
                  CopyWith$Query$GetAccessPointNames$accessPoints<
                      Query$GetAccessPointNames$accessPoints>>)
          _fn);
}

class _CopyWithImpl$Query$GetAccessPointNames<TRes>
    implements CopyWith$Query$GetAccessPointNames<TRes> {
  _CopyWithImpl$Query$GetAccessPointNames(
    this._instance,
    this._then,
  );

  final Query$GetAccessPointNames _instance;

  final TRes Function(Query$GetAccessPointNames) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessPoints = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccessPointNames(
        accessPoints: accessPoints == _undefined || accessPoints == null
            ? _instance.accessPoints
            : (accessPoints as List<Query$GetAccessPointNames$accessPoints>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes accessPoints(
          Iterable<Query$GetAccessPointNames$accessPoints> Function(
                  Iterable<
                      CopyWith$Query$GetAccessPointNames$accessPoints<
                          Query$GetAccessPointNames$accessPoints>>)
              _fn) =>
      call(
          accessPoints: _fn(_instance.accessPoints
              .map((e) => CopyWith$Query$GetAccessPointNames$accessPoints(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAccessPointNames<TRes>
    implements CopyWith$Query$GetAccessPointNames<TRes> {
  _CopyWithStubImpl$Query$GetAccessPointNames(this._res);

  TRes _res;

  call({
    List<Query$GetAccessPointNames$accessPoints>? accessPoints,
    String? $__typename,
  }) =>
      _res;

  accessPoints(_fn) => _res;
}

const documentNodeQueryGetAccessPointNames = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAccessPointNames'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'siteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'accessControllerId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'accessPointId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'accessPoints'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'siteId'),
            value: VariableNode(name: NameNode(value: 'siteId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'accessControllerId'),
            value: VariableNode(name: NameNode(value: 'accessControllerId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'accessPointId'),
            value: VariableNode(name: NameNode(value: 'accessPointId')),
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
            name: NameNode(value: 'externalId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'entity'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'accessControllerId'),
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
            name: NameNode(value: 'restricted'),
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

class Query$GetAccessPointNames$accessPoints {
  Query$GetAccessPointNames$accessPoints({
    required this.id,
    required this.externalId,
    required this.entity,
    required this.accessControllerId,
    required this.name,
    required this.restricted,
    this.$__typename = 'AccessPoint',
  });

  factory Query$GetAccessPointNames$accessPoints.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$externalId = json['externalId'];
    final l$entity = json['entity'];
    final l$accessControllerId = json['accessControllerId'];
    final l$name = json['name'];
    final l$restricted = json['restricted'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPointNames$accessPoints(
      id: (l$id as String),
      externalId: (l$externalId as String),
      entity: (l$entity as String),
      accessControllerId: (l$accessControllerId as String),
      name: (l$name as String),
      restricted: (l$restricted as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String externalId;

  final String entity;

  final String accessControllerId;

  final String name;

  final bool restricted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$entity = entity;
    _resultData['entity'] = l$entity;
    final l$accessControllerId = accessControllerId;
    _resultData['accessControllerId'] = l$accessControllerId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$restricted = restricted;
    _resultData['restricted'] = l$restricted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$externalId = externalId;
    final l$entity = entity;
    final l$accessControllerId = accessControllerId;
    final l$name = name;
    final l$restricted = restricted;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$externalId,
      l$entity,
      l$accessControllerId,
      l$name,
      l$restricted,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessPointNames$accessPoints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$entity = entity;
    final lOther$entity = other.entity;
    if (l$entity != lOther$entity) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$restricted = restricted;
    final lOther$restricted = other.restricted;
    if (l$restricted != lOther$restricted) {
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

extension UtilityExtension$Query$GetAccessPointNames$accessPoints
    on Query$GetAccessPointNames$accessPoints {
  CopyWith$Query$GetAccessPointNames$accessPoints<
          Query$GetAccessPointNames$accessPoints>
      get copyWith => CopyWith$Query$GetAccessPointNames$accessPoints(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccessPointNames$accessPoints<TRes> {
  factory CopyWith$Query$GetAccessPointNames$accessPoints(
    Query$GetAccessPointNames$accessPoints instance,
    TRes Function(Query$GetAccessPointNames$accessPoints) then,
  ) = _CopyWithImpl$Query$GetAccessPointNames$accessPoints;

  factory CopyWith$Query$GetAccessPointNames$accessPoints.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessPointNames$accessPoints;

  TRes call({
    String? id,
    String? externalId,
    String? entity,
    String? accessControllerId,
    String? name,
    bool? restricted,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessPointNames$accessPoints<TRes>
    implements CopyWith$Query$GetAccessPointNames$accessPoints<TRes> {
  _CopyWithImpl$Query$GetAccessPointNames$accessPoints(
    this._instance,
    this._then,
  );

  final Query$GetAccessPointNames$accessPoints _instance;

  final TRes Function(Query$GetAccessPointNames$accessPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? externalId = _undefined,
    Object? entity = _undefined,
    Object? accessControllerId = _undefined,
    Object? name = _undefined,
    Object? restricted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccessPointNames$accessPoints(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        externalId: externalId == _undefined || externalId == null
            ? _instance.externalId
            : (externalId as String),
        entity: entity == _undefined || entity == null
            ? _instance.entity
            : (entity as String),
        accessControllerId:
            accessControllerId == _undefined || accessControllerId == null
                ? _instance.accessControllerId
                : (accessControllerId as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        restricted: restricted == _undefined || restricted == null
            ? _instance.restricted
            : (restricted as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccessPointNames$accessPoints<TRes>
    implements CopyWith$Query$GetAccessPointNames$accessPoints<TRes> {
  _CopyWithStubImpl$Query$GetAccessPointNames$accessPoints(this._res);

  TRes _res;

  call({
    String? id,
    String? externalId,
    String? entity,
    String? accessControllerId,
    String? name,
    bool? restricted,
    String? $__typename,
  }) =>
      _res;
}
