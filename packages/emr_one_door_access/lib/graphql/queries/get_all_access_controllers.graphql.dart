import 'package:gql/ast.dart';

class Variables$Query$GetAllAccessControllers {
  factory Variables$Query$GetAllAccessControllers({
    String? siteId,
    String? accessControllerId,
  }) => Variables$Query$GetAllAccessControllers._({
    if (siteId != null) r'siteId': siteId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
  });

  Variables$Query$GetAllAccessControllers._(this._$data);

  factory Variables$Query$GetAllAccessControllers.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = (l$siteId as String?);
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = (l$accessControllerId as String?);
    }
    return Variables$Query$GetAllAccessControllers._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get siteId => (_$data['siteId'] as String?);

  String? get accessControllerId => (_$data['accessControllerId'] as String?);

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
    return result$data;
  }

  CopyWith$Variables$Query$GetAllAccessControllers<
    Variables$Query$GetAllAccessControllers
  >
  get copyWith =>
      CopyWith$Variables$Query$GetAllAccessControllers(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAllAccessControllers ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$siteId = siteId;
    final l$accessControllerId = accessControllerId;
    return Object.hashAll([
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAllAccessControllers<TRes> {
  factory CopyWith$Variables$Query$GetAllAccessControllers(
    Variables$Query$GetAllAccessControllers instance,
    TRes Function(Variables$Query$GetAllAccessControllers) then,
  ) = _CopyWithImpl$Variables$Query$GetAllAccessControllers;

  factory CopyWith$Variables$Query$GetAllAccessControllers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllAccessControllers;

  TRes call({String? siteId, String? accessControllerId});
}

class _CopyWithImpl$Variables$Query$GetAllAccessControllers<TRes>
    implements CopyWith$Variables$Query$GetAllAccessControllers<TRes> {
  _CopyWithImpl$Variables$Query$GetAllAccessControllers(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllAccessControllers _instance;

  final TRes Function(Variables$Query$GetAllAccessControllers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? siteId = _undefined,
    Object? accessControllerId = _undefined,
  }) => _then(
    Variables$Query$GetAllAccessControllers._({
      ..._instance._$data,
      if (siteId != _undefined) 'siteId': (siteId as String?),
      if (accessControllerId != _undefined)
        'accessControllerId': (accessControllerId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAllAccessControllers<TRes>
    implements CopyWith$Variables$Query$GetAllAccessControllers<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllAccessControllers(this._res);

  TRes _res;

  call({String? siteId, String? accessControllerId}) => _res;
}

class Query$GetAllAccessControllers {
  Query$GetAllAccessControllers({
    required this.allAccessControllers,
    this.$__typename = 'Query',
  });

  factory Query$GetAllAccessControllers.fromJson(Map<String, dynamic> json) {
    final l$allAccessControllers = json['allAccessControllers'];
    final l$$__typename = json['__typename'];
    return Query$GetAllAccessControllers(
      allAccessControllers: (l$allAccessControllers as List<dynamic>)
          .map(
            (e) => Query$GetAllAccessControllers$allAccessControllers.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllAccessControllers$allAccessControllers>
  allAccessControllers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allAccessControllers = allAccessControllers;
    _resultData['allAccessControllers'] = l$allAccessControllers
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allAccessControllers = allAccessControllers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allAccessControllers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllAccessControllers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allAccessControllers = allAccessControllers;
    final lOther$allAccessControllers = other.allAccessControllers;
    if (l$allAccessControllers.length != lOther$allAccessControllers.length) {
      return false;
    }
    for (int i = 0; i < l$allAccessControllers.length; i++) {
      final l$allAccessControllers$entry = l$allAccessControllers[i];
      final lOther$allAccessControllers$entry = lOther$allAccessControllers[i];
      if (l$allAccessControllers$entry != lOther$allAccessControllers$entry) {
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

extension UtilityExtension$Query$GetAllAccessControllers
    on Query$GetAllAccessControllers {
  CopyWith$Query$GetAllAccessControllers<Query$GetAllAccessControllers>
  get copyWith => CopyWith$Query$GetAllAccessControllers(this, (i) => i);
}

abstract class CopyWith$Query$GetAllAccessControllers<TRes> {
  factory CopyWith$Query$GetAllAccessControllers(
    Query$GetAllAccessControllers instance,
    TRes Function(Query$GetAllAccessControllers) then,
  ) = _CopyWithImpl$Query$GetAllAccessControllers;

  factory CopyWith$Query$GetAllAccessControllers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllAccessControllers;

  TRes call({
    List<Query$GetAllAccessControllers$allAccessControllers>?
    allAccessControllers,
    String? $__typename,
  });
  TRes allAccessControllers(
    Iterable<Query$GetAllAccessControllers$allAccessControllers> Function(
      Iterable<
        CopyWith$Query$GetAllAccessControllers$allAccessControllers<
          Query$GetAllAccessControllers$allAccessControllers
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllAccessControllers<TRes>
    implements CopyWith$Query$GetAllAccessControllers<TRes> {
  _CopyWithImpl$Query$GetAllAccessControllers(this._instance, this._then);

  final Query$GetAllAccessControllers _instance;

  final TRes Function(Query$GetAllAccessControllers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allAccessControllers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllAccessControllers(
      allAccessControllers:
          allAccessControllers == _undefined || allAccessControllers == null
          ? _instance.allAccessControllers
          : (allAccessControllers
                as List<Query$GetAllAccessControllers$allAccessControllers>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes allAccessControllers(
    Iterable<Query$GetAllAccessControllers$allAccessControllers> Function(
      Iterable<
        CopyWith$Query$GetAllAccessControllers$allAccessControllers<
          Query$GetAllAccessControllers$allAccessControllers
        >
      >,
    )
    _fn,
  ) => call(
    allAccessControllers: _fn(
      _instance.allAccessControllers.map(
        (e) => CopyWith$Query$GetAllAccessControllers$allAccessControllers(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllAccessControllers<TRes>
    implements CopyWith$Query$GetAllAccessControllers<TRes> {
  _CopyWithStubImpl$Query$GetAllAccessControllers(this._res);

  TRes _res;

  call({
    List<Query$GetAllAccessControllers$allAccessControllers>?
    allAccessControllers,
    String? $__typename,
  }) => _res;

  allAccessControllers(_fn) => _res;
}

const documentNodeQueryGetAllAccessControllers = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllAccessControllers'),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'allAccessControllers'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'siteId'),
                value: VariableNode(name: NameNode(value: 'siteId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'accessControllerId'),
                value: VariableNode(
                  name: NameNode(value: 'accessControllerId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
                  name: NameNode(value: 'site'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'location'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'latitude'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'longitude'),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'uri'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'username'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'schedules'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'token'),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'accessPoints'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'externalId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'externalName'),
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
  ],
);

class Query$GetAllAccessControllers$allAccessControllers {
  Query$GetAllAccessControllers$allAccessControllers({
    required this.id,
    required this.name,
    required this.site,
    required this.location,
    required this.uri,
    required this.username,
    this.schedules,
    this.accessPoints,
    required this.externalId,
    required this.externalName,
    this.$__typename = 'AccessController',
  });

  factory Query$GetAllAccessControllers$allAccessControllers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$site = json['site'];
    final l$location = json['location'];
    final l$uri = json['uri'];
    final l$username = json['username'];
    final l$schedules = json['schedules'];
    final l$accessPoints = json['accessPoints'];
    final l$externalId = json['externalId'];
    final l$externalName = json['externalName'];
    final l$$__typename = json['__typename'];
    return Query$GetAllAccessControllers$allAccessControllers(
      id: (l$id as String),
      name: (l$name as String),
      site: (l$site as String),
      location:
          Query$GetAllAccessControllers$allAccessControllers$location.fromJson(
            (l$location as Map<String, dynamic>),
          ),
      uri: (l$uri as String),
      username: (l$username as String),
      schedules: (l$schedules as List<dynamic>?)
          ?.map(
            (e) =>
                Query$GetAllAccessControllers$allAccessControllers$schedules.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      accessPoints: (l$accessPoints as List<dynamic>?)
          ?.map(
            (e) =>
                Query$GetAllAccessControllers$allAccessControllers$accessPoints.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      externalId: (l$externalId as String),
      externalName: (l$externalName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String site;

  final Query$GetAllAccessControllers$allAccessControllers$location location;

  final String uri;

  final String username;

  final List<Query$GetAllAccessControllers$allAccessControllers$schedules>?
  schedules;

  final List<Query$GetAllAccessControllers$allAccessControllers$accessPoints>?
  accessPoints;

  final String externalId;

  final String externalName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$location = location;
    _resultData['location'] = l$location.toJson();
    final l$uri = uri;
    _resultData['uri'] = l$uri;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$schedules = schedules;
    _resultData['schedules'] = l$schedules?.map((e) => e.toJson()).toList();
    final l$accessPoints = accessPoints;
    _resultData['accessPoints'] = l$accessPoints
        ?.map((e) => e.toJson())
        .toList();
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$externalName = externalName;
    _resultData['externalName'] = l$externalName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$site = site;
    final l$location = location;
    final l$uri = uri;
    final l$username = username;
    final l$schedules = schedules;
    final l$accessPoints = accessPoints;
    final l$externalId = externalId;
    final l$externalName = externalName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$site,
      l$location,
      l$uri,
      l$username,
      l$schedules == null ? null : Object.hashAll(l$schedules.map((v) => v)),
      l$accessPoints == null
          ? null
          : Object.hashAll(l$accessPoints.map((v) => v)),
      l$externalId,
      l$externalName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllAccessControllers$allAccessControllers ||
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
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$uri = uri;
    final lOther$uri = other.uri;
    if (l$uri != lOther$uri) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$schedules = schedules;
    final lOther$schedules = other.schedules;
    if (l$schedules != null && lOther$schedules != null) {
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
    } else if (l$schedules != lOther$schedules) {
      return false;
    }
    final l$accessPoints = accessPoints;
    final lOther$accessPoints = other.accessPoints;
    if (l$accessPoints != null && lOther$accessPoints != null) {
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
    } else if (l$accessPoints != lOther$accessPoints) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$externalName = externalName;
    final lOther$externalName = other.externalName;
    if (l$externalName != lOther$externalName) {
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

extension UtilityExtension$Query$GetAllAccessControllers$allAccessControllers
    on Query$GetAllAccessControllers$allAccessControllers {
  CopyWith$Query$GetAllAccessControllers$allAccessControllers<
    Query$GetAllAccessControllers$allAccessControllers
  >
  get copyWith => CopyWith$Query$GetAllAccessControllers$allAccessControllers(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetAllAccessControllers$allAccessControllers<
  TRes
> {
  factory CopyWith$Query$GetAllAccessControllers$allAccessControllers(
    Query$GetAllAccessControllers$allAccessControllers instance,
    TRes Function(Query$GetAllAccessControllers$allAccessControllers) then,
  ) = _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers;

  factory CopyWith$Query$GetAllAccessControllers$allAccessControllers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers;

  TRes call({
    String? id,
    String? name,
    String? site,
    Query$GetAllAccessControllers$allAccessControllers$location? location,
    String? uri,
    String? username,
    List<Query$GetAllAccessControllers$allAccessControllers$schedules>?
    schedules,
    List<Query$GetAllAccessControllers$allAccessControllers$accessPoints>?
    accessPoints,
    String? externalId,
    String? externalName,
    String? $__typename,
  });
  CopyWith$Query$GetAllAccessControllers$allAccessControllers$location<TRes>
  get location;
  TRes schedules(
    Iterable<Query$GetAllAccessControllers$allAccessControllers$schedules>?
    Function(
      Iterable<
        CopyWith$Query$GetAllAccessControllers$allAccessControllers$schedules<
          Query$GetAllAccessControllers$allAccessControllers$schedules
        >
      >?,
    )
    _fn,
  );
  TRes accessPoints(
    Iterable<Query$GetAllAccessControllers$allAccessControllers$accessPoints>?
    Function(
      Iterable<
        CopyWith$Query$GetAllAccessControllers$allAccessControllers$accessPoints<
          Query$GetAllAccessControllers$allAccessControllers$accessPoints
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers<TRes>
    implements
        CopyWith$Query$GetAllAccessControllers$allAccessControllers<TRes> {
  _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers(
    this._instance,
    this._then,
  );

  final Query$GetAllAccessControllers$allAccessControllers _instance;

  final TRes Function(Query$GetAllAccessControllers$allAccessControllers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? site = _undefined,
    Object? location = _undefined,
    Object? uri = _undefined,
    Object? username = _undefined,
    Object? schedules = _undefined,
    Object? accessPoints = _undefined,
    Object? externalId = _undefined,
    Object? externalName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllAccessControllers$allAccessControllers(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      site: site == _undefined || site == null
          ? _instance.site
          : (site as String),
      location: location == _undefined || location == null
          ? _instance.location
          : (location
                as Query$GetAllAccessControllers$allAccessControllers$location),
      uri: uri == _undefined || uri == null ? _instance.uri : (uri as String),
      username: username == _undefined || username == null
          ? _instance.username
          : (username as String),
      schedules: schedules == _undefined
          ? _instance.schedules
          : (schedules
                as List<
                  Query$GetAllAccessControllers$allAccessControllers$schedules
                >?),
      accessPoints: accessPoints == _undefined
          ? _instance.accessPoints
          : (accessPoints
                as List<
                  Query$GetAllAccessControllers$allAccessControllers$accessPoints
                >?),
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      externalName: externalName == _undefined || externalName == null
          ? _instance.externalName
          : (externalName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAllAccessControllers$allAccessControllers$location<TRes>
  get location {
    final local$location = _instance.location;
    return CopyWith$Query$GetAllAccessControllers$allAccessControllers$location(
      local$location,
      (e) => call(location: e),
    );
  }

  TRes schedules(
    Iterable<Query$GetAllAccessControllers$allAccessControllers$schedules>?
    Function(
      Iterable<
        CopyWith$Query$GetAllAccessControllers$allAccessControllers$schedules<
          Query$GetAllAccessControllers$allAccessControllers$schedules
        >
      >?,
    )
    _fn,
  ) => call(
    schedules: _fn(
      _instance.schedules?.map(
        (e) =>
            CopyWith$Query$GetAllAccessControllers$allAccessControllers$schedules(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );

  TRes accessPoints(
    Iterable<Query$GetAllAccessControllers$allAccessControllers$accessPoints>?
    Function(
      Iterable<
        CopyWith$Query$GetAllAccessControllers$allAccessControllers$accessPoints<
          Query$GetAllAccessControllers$allAccessControllers$accessPoints
        >
      >?,
    )
    _fn,
  ) => call(
    accessPoints: _fn(
      _instance.accessPoints?.map(
        (e) =>
            CopyWith$Query$GetAllAccessControllers$allAccessControllers$accessPoints(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers<TRes>
    implements
        CopyWith$Query$GetAllAccessControllers$allAccessControllers<TRes> {
  _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    String? site,
    Query$GetAllAccessControllers$allAccessControllers$location? location,
    String? uri,
    String? username,
    List<Query$GetAllAccessControllers$allAccessControllers$schedules>?
    schedules,
    List<Query$GetAllAccessControllers$allAccessControllers$accessPoints>?
    accessPoints,
    String? externalId,
    String? externalName,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAllAccessControllers$allAccessControllers$location<TRes>
  get location =>
      CopyWith$Query$GetAllAccessControllers$allAccessControllers$location.stub(
        _res,
      );

  schedules(_fn) => _res;

  accessPoints(_fn) => _res;
}

class Query$GetAllAccessControllers$allAccessControllers$location {
  Query$GetAllAccessControllers$allAccessControllers$location({
    required this.latitude,
    required this.longitude,
    this.$__typename = 'LatLong',
  });

  factory Query$GetAllAccessControllers$allAccessControllers$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$$__typename = json['__typename'];
    return Query$GetAllAccessControllers$allAccessControllers$location(
      latitude: (l$latitude as num).toDouble(),
      longitude: (l$longitude as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double latitude;

  final double longitude;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$$__typename = $__typename;
    return Object.hashAll([l$latitude, l$longitude, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllAccessControllers$allAccessControllers$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
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

extension UtilityExtension$Query$GetAllAccessControllers$allAccessControllers$location
    on Query$GetAllAccessControllers$allAccessControllers$location {
  CopyWith$Query$GetAllAccessControllers$allAccessControllers$location<
    Query$GetAllAccessControllers$allAccessControllers$location
  >
  get copyWith =>
      CopyWith$Query$GetAllAccessControllers$allAccessControllers$location(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllAccessControllers$allAccessControllers$location<
  TRes
> {
  factory CopyWith$Query$GetAllAccessControllers$allAccessControllers$location(
    Query$GetAllAccessControllers$allAccessControllers$location instance,
    TRes Function(Query$GetAllAccessControllers$allAccessControllers$location)
    then,
  ) = _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers$location;

  factory CopyWith$Query$GetAllAccessControllers$allAccessControllers$location.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers$location;

  TRes call({double? latitude, double? longitude, String? $__typename});
}

class _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers$location<
  TRes
>
    implements
        CopyWith$Query$GetAllAccessControllers$allAccessControllers$location<
          TRes
        > {
  _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers$location(
    this._instance,
    this._then,
  );

  final Query$GetAllAccessControllers$allAccessControllers$location _instance;

  final TRes Function(
    Query$GetAllAccessControllers$allAccessControllers$location,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllAccessControllers$allAccessControllers$location(
      latitude: latitude == _undefined || latitude == null
          ? _instance.latitude
          : (latitude as double),
      longitude: longitude == _undefined || longitude == null
          ? _instance.longitude
          : (longitude as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers$location<
  TRes
>
    implements
        CopyWith$Query$GetAllAccessControllers$allAccessControllers$location<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers$location(
    this._res,
  );

  TRes _res;

  call({double? latitude, double? longitude, String? $__typename}) => _res;
}

class Query$GetAllAccessControllers$allAccessControllers$schedules {
  Query$GetAllAccessControllers$allAccessControllers$schedules({
    required this.token,
    required this.name,
    required this.description,
    this.$__typename = 'Schedule',
  });

  factory Query$GetAllAccessControllers$allAccessControllers$schedules.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$token = json['token'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetAllAccessControllers$allAccessControllers$schedules(
      token: (l$token as String),
      name: (l$name as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final String name;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$token, l$name, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAllAccessControllers$allAccessControllers$schedules ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetAllAccessControllers$allAccessControllers$schedules
    on Query$GetAllAccessControllers$allAccessControllers$schedules {
  CopyWith$Query$GetAllAccessControllers$allAccessControllers$schedules<
    Query$GetAllAccessControllers$allAccessControllers$schedules
  >
  get copyWith =>
      CopyWith$Query$GetAllAccessControllers$allAccessControllers$schedules(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllAccessControllers$allAccessControllers$schedules<
  TRes
> {
  factory CopyWith$Query$GetAllAccessControllers$allAccessControllers$schedules(
    Query$GetAllAccessControllers$allAccessControllers$schedules instance,
    TRes Function(Query$GetAllAccessControllers$allAccessControllers$schedules)
    then,
  ) = _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers$schedules;

  factory CopyWith$Query$GetAllAccessControllers$allAccessControllers$schedules.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers$schedules;

  TRes call({
    String? token,
    String? name,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers$schedules<
  TRes
>
    implements
        CopyWith$Query$GetAllAccessControllers$allAccessControllers$schedules<
          TRes
        > {
  _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers$schedules(
    this._instance,
    this._then,
  );

  final Query$GetAllAccessControllers$allAccessControllers$schedules _instance;

  final TRes Function(
    Query$GetAllAccessControllers$allAccessControllers$schedules,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllAccessControllers$allAccessControllers$schedules(
      token: token == _undefined || token == null
          ? _instance.token
          : (token as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers$schedules<
  TRes
>
    implements
        CopyWith$Query$GetAllAccessControllers$allAccessControllers$schedules<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers$schedules(
    this._res,
  );

  TRes _res;

  call({
    String? token,
    String? name,
    String? description,
    String? $__typename,
  }) => _res;
}

class Query$GetAllAccessControllers$allAccessControllers$accessPoints {
  Query$GetAllAccessControllers$allAccessControllers$accessPoints({
    required this.name,
    required this.id,
    required this.externalId,
    required this.entity,
    required this.restricted,
    this.$__typename = 'AccessPoint',
  });

  factory Query$GetAllAccessControllers$allAccessControllers$accessPoints.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$externalId = json['externalId'];
    final l$entity = json['entity'];
    final l$restricted = json['restricted'];
    final l$$__typename = json['__typename'];
    return Query$GetAllAccessControllers$allAccessControllers$accessPoints(
      name: (l$name as String),
      id: (l$id as String),
      externalId: (l$externalId as String),
      entity: (l$entity as String),
      restricted: (l$restricted as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String id;

  final String externalId;

  final String entity;

  final bool restricted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$entity = entity;
    _resultData['entity'] = l$entity;
    final l$restricted = restricted;
    _resultData['restricted'] = l$restricted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$externalId = externalId;
    final l$entity = entity;
    final l$restricted = restricted;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$externalId,
      l$entity,
      l$restricted,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAllAccessControllers$allAccessControllers$accessPoints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetAllAccessControllers$allAccessControllers$accessPoints
    on Query$GetAllAccessControllers$allAccessControllers$accessPoints {
  CopyWith$Query$GetAllAccessControllers$allAccessControllers$accessPoints<
    Query$GetAllAccessControllers$allAccessControllers$accessPoints
  >
  get copyWith =>
      CopyWith$Query$GetAllAccessControllers$allAccessControllers$accessPoints(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllAccessControllers$allAccessControllers$accessPoints<
  TRes
> {
  factory CopyWith$Query$GetAllAccessControllers$allAccessControllers$accessPoints(
    Query$GetAllAccessControllers$allAccessControllers$accessPoints instance,
    TRes Function(
      Query$GetAllAccessControllers$allAccessControllers$accessPoints,
    )
    then,
  ) = _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers$accessPoints;

  factory CopyWith$Query$GetAllAccessControllers$allAccessControllers$accessPoints.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers$accessPoints;

  TRes call({
    String? name,
    String? id,
    String? externalId,
    String? entity,
    bool? restricted,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers$accessPoints<
  TRes
>
    implements
        CopyWith$Query$GetAllAccessControllers$allAccessControllers$accessPoints<
          TRes
        > {
  _CopyWithImpl$Query$GetAllAccessControllers$allAccessControllers$accessPoints(
    this._instance,
    this._then,
  );

  final Query$GetAllAccessControllers$allAccessControllers$accessPoints
  _instance;

  final TRes Function(
    Query$GetAllAccessControllers$allAccessControllers$accessPoints,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? externalId = _undefined,
    Object? entity = _undefined,
    Object? restricted = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllAccessControllers$allAccessControllers$accessPoints(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      entity: entity == _undefined || entity == null
          ? _instance.entity
          : (entity as String),
      restricted: restricted == _undefined || restricted == null
          ? _instance.restricted
          : (restricted as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers$accessPoints<
  TRes
>
    implements
        CopyWith$Query$GetAllAccessControllers$allAccessControllers$accessPoints<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAllAccessControllers$allAccessControllers$accessPoints(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? id,
    String? externalId,
    String? entity,
    bool? restricted,
    String? $__typename,
  }) => _res;
}
