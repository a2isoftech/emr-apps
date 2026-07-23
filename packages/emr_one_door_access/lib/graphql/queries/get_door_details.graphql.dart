import 'package:gql/ast.dart';

class Variables$Query$GetDoorDetails {
  factory Variables$Query$GetDoorDetails({
    String? siteId,
    String? accessControllerId,
  }) => Variables$Query$GetDoorDetails._({
    if (siteId != null) r'siteId': siteId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
  });

  Variables$Query$GetDoorDetails._(this._$data);

  factory Variables$Query$GetDoorDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = (l$siteId as String?);
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = (l$accessControllerId as String?);
    }
    return Variables$Query$GetDoorDetails._(result$data);
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

  CopyWith$Variables$Query$GetDoorDetails<Variables$Query$GetDoorDetails>
  get copyWith => CopyWith$Variables$Query$GetDoorDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetDoorDetails ||
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

abstract class CopyWith$Variables$Query$GetDoorDetails<TRes> {
  factory CopyWith$Variables$Query$GetDoorDetails(
    Variables$Query$GetDoorDetails instance,
    TRes Function(Variables$Query$GetDoorDetails) then,
  ) = _CopyWithImpl$Variables$Query$GetDoorDetails;

  factory CopyWith$Variables$Query$GetDoorDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetDoorDetails;

  TRes call({String? siteId, String? accessControllerId});
}

class _CopyWithImpl$Variables$Query$GetDoorDetails<TRes>
    implements CopyWith$Variables$Query$GetDoorDetails<TRes> {
  _CopyWithImpl$Variables$Query$GetDoorDetails(this._instance, this._then);

  final Variables$Query$GetDoorDetails _instance;

  final TRes Function(Variables$Query$GetDoorDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? siteId = _undefined,
    Object? accessControllerId = _undefined,
  }) => _then(
    Variables$Query$GetDoorDetails._({
      ..._instance._$data,
      if (siteId != _undefined) 'siteId': (siteId as String?),
      if (accessControllerId != _undefined)
        'accessControllerId': (accessControllerId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetDoorDetails<TRes>
    implements CopyWith$Variables$Query$GetDoorDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$GetDoorDetails(this._res);

  TRes _res;

  call({String? siteId, String? accessControllerId}) => _res;
}

class Query$GetDoorDetails {
  Query$GetDoorDetails({
    required this.allAccessControllers,
    this.$__typename = 'Query',
  });

  factory Query$GetDoorDetails.fromJson(Map<String, dynamic> json) {
    final l$allAccessControllers = json['allAccessControllers'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorDetails(
      allAccessControllers: (l$allAccessControllers as List<dynamic>)
          .map(
            (e) => Query$GetDoorDetails$allAccessControllers.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetDoorDetails$allAccessControllers> allAccessControllers;

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
    if (other is! Query$GetDoorDetails || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetDoorDetails on Query$GetDoorDetails {
  CopyWith$Query$GetDoorDetails<Query$GetDoorDetails> get copyWith =>
      CopyWith$Query$GetDoorDetails(this, (i) => i);
}

abstract class CopyWith$Query$GetDoorDetails<TRes> {
  factory CopyWith$Query$GetDoorDetails(
    Query$GetDoorDetails instance,
    TRes Function(Query$GetDoorDetails) then,
  ) = _CopyWithImpl$Query$GetDoorDetails;

  factory CopyWith$Query$GetDoorDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDoorDetails;

  TRes call({
    List<Query$GetDoorDetails$allAccessControllers>? allAccessControllers,
    String? $__typename,
  });
  TRes allAccessControllers(
    Iterable<Query$GetDoorDetails$allAccessControllers> Function(
      Iterable<
        CopyWith$Query$GetDoorDetails$allAccessControllers<
          Query$GetDoorDetails$allAccessControllers
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetDoorDetails<TRes>
    implements CopyWith$Query$GetDoorDetails<TRes> {
  _CopyWithImpl$Query$GetDoorDetails(this._instance, this._then);

  final Query$GetDoorDetails _instance;

  final TRes Function(Query$GetDoorDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allAccessControllers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorDetails(
      allAccessControllers:
          allAccessControllers == _undefined || allAccessControllers == null
          ? _instance.allAccessControllers
          : (allAccessControllers
                as List<Query$GetDoorDetails$allAccessControllers>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes allAccessControllers(
    Iterable<Query$GetDoorDetails$allAccessControllers> Function(
      Iterable<
        CopyWith$Query$GetDoorDetails$allAccessControllers<
          Query$GetDoorDetails$allAccessControllers
        >
      >,
    )
    _fn,
  ) => call(
    allAccessControllers: _fn(
      _instance.allAccessControllers.map(
        (e) => CopyWith$Query$GetDoorDetails$allAccessControllers(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetDoorDetails<TRes>
    implements CopyWith$Query$GetDoorDetails<TRes> {
  _CopyWithStubImpl$Query$GetDoorDetails(this._res);

  TRes _res;

  call({
    List<Query$GetDoorDetails$allAccessControllers>? allAccessControllers,
    String? $__typename,
  }) => _res;

  allAccessControllers(_fn) => _res;
}

const documentNodeQueryGetDoorDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetDoorDetails'),
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
                  name: NameNode(value: 'doors'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'externalId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'defaultPriority'),
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
                        name: NameNode(value: 'accessTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'openTooLongTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'preAlarmTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'extendedAccessTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'extendedOpenTooLongTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'heartbeatInterval'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'scheduleConfiguration'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'externalId'),
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
                              name: NameNode(value: 'doorSchedule'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'priorityLevel'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'scheduledState'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'scheduleToken',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'enterAction'),
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
                        name: NameNode(value: 'priorityConfiguration'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'externalId'),
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
                              name: NameNode(value: 'defaultPriority'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'doorPriorityAction'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'priorityLevel'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'doorAction'),
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

class Query$GetDoorDetails$allAccessControllers {
  Query$GetDoorDetails$allAccessControllers({
    required this.id,
    required this.name,
    required this.site,
    required this.externalId,
    required this.externalName,
    required this.doors,
    this.$__typename = 'AccessController',
  });

  factory Query$GetDoorDetails$allAccessControllers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$site = json['site'];
    final l$externalId = json['externalId'];
    final l$externalName = json['externalName'];
    final l$doors = json['doors'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorDetails$allAccessControllers(
      id: (l$id as String),
      name: (l$name as String),
      site: (l$site as String),
      externalId: (l$externalId as String),
      externalName: (l$externalName as String),
      doors: (l$doors as List<dynamic>)
          .map(
            (e) => Query$GetDoorDetails$allAccessControllers$doors.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String site;

  final String externalId;

  final String externalName;

  final List<Query$GetDoorDetails$allAccessControllers$doors> doors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$externalName = externalName;
    _resultData['externalName'] = l$externalName;
    final l$doors = doors;
    _resultData['doors'] = l$doors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$site = site;
    final l$externalId = externalId;
    final l$externalName = externalName;
    final l$doors = doors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$site,
      l$externalId,
      l$externalName,
      Object.hashAll(l$doors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDoorDetails$allAccessControllers ||
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
    final l$doors = doors;
    final lOther$doors = other.doors;
    if (l$doors.length != lOther$doors.length) {
      return false;
    }
    for (int i = 0; i < l$doors.length; i++) {
      final l$doors$entry = l$doors[i];
      final lOther$doors$entry = lOther$doors[i];
      if (l$doors$entry != lOther$doors$entry) {
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

extension UtilityExtension$Query$GetDoorDetails$allAccessControllers
    on Query$GetDoorDetails$allAccessControllers {
  CopyWith$Query$GetDoorDetails$allAccessControllers<
    Query$GetDoorDetails$allAccessControllers
  >
  get copyWith =>
      CopyWith$Query$GetDoorDetails$allAccessControllers(this, (i) => i);
}

abstract class CopyWith$Query$GetDoorDetails$allAccessControllers<TRes> {
  factory CopyWith$Query$GetDoorDetails$allAccessControllers(
    Query$GetDoorDetails$allAccessControllers instance,
    TRes Function(Query$GetDoorDetails$allAccessControllers) then,
  ) = _CopyWithImpl$Query$GetDoorDetails$allAccessControllers;

  factory CopyWith$Query$GetDoorDetails$allAccessControllers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers;

  TRes call({
    String? id,
    String? name,
    String? site,
    String? externalId,
    String? externalName,
    List<Query$GetDoorDetails$allAccessControllers$doors>? doors,
    String? $__typename,
  });
  TRes doors(
    Iterable<Query$GetDoorDetails$allAccessControllers$doors> Function(
      Iterable<
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors<
          Query$GetDoorDetails$allAccessControllers$doors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetDoorDetails$allAccessControllers<TRes>
    implements CopyWith$Query$GetDoorDetails$allAccessControllers<TRes> {
  _CopyWithImpl$Query$GetDoorDetails$allAccessControllers(
    this._instance,
    this._then,
  );

  final Query$GetDoorDetails$allAccessControllers _instance;

  final TRes Function(Query$GetDoorDetails$allAccessControllers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? site = _undefined,
    Object? externalId = _undefined,
    Object? externalName = _undefined,
    Object? doors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorDetails$allAccessControllers(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      site: site == _undefined || site == null
          ? _instance.site
          : (site as String),
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      externalName: externalName == _undefined || externalName == null
          ? _instance.externalName
          : (externalName as String),
      doors: doors == _undefined || doors == null
          ? _instance.doors
          : (doors as List<Query$GetDoorDetails$allAccessControllers$doors>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes doors(
    Iterable<Query$GetDoorDetails$allAccessControllers$doors> Function(
      Iterable<
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors<
          Query$GetDoorDetails$allAccessControllers$doors
        >
      >,
    )
    _fn,
  ) => call(
    doors: _fn(
      _instance.doors.map(
        (e) => CopyWith$Query$GetDoorDetails$allAccessControllers$doors(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers<TRes>
    implements CopyWith$Query$GetDoorDetails$allAccessControllers<TRes> {
  _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? site,
    String? externalId,
    String? externalName,
    List<Query$GetDoorDetails$allAccessControllers$doors>? doors,
    String? $__typename,
  }) => _res;

  doors(_fn) => _res;
}

class Query$GetDoorDetails$allAccessControllers$doors {
  Query$GetDoorDetails$allAccessControllers$doors({
    required this.externalId,
    required this.defaultPriority,
    required this.name,
    required this.description,
    required this.accessTime,
    required this.openTooLongTime,
    required this.preAlarmTime,
    required this.extendedAccessTime,
    required this.extendedOpenTooLongTime,
    required this.heartbeatInterval,
    this.scheduleConfiguration,
    this.priorityConfiguration,
    this.$__typename = 'Door',
  });

  factory Query$GetDoorDetails$allAccessControllers$doors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$externalId = json['externalId'];
    final l$defaultPriority = json['defaultPriority'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$accessTime = json['accessTime'];
    final l$openTooLongTime = json['openTooLongTime'];
    final l$preAlarmTime = json['preAlarmTime'];
    final l$extendedAccessTime = json['extendedAccessTime'];
    final l$extendedOpenTooLongTime = json['extendedOpenTooLongTime'];
    final l$heartbeatInterval = json['heartbeatInterval'];
    final l$scheduleConfiguration = json['scheduleConfiguration'];
    final l$priorityConfiguration = json['priorityConfiguration'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorDetails$allAccessControllers$doors(
      externalId: (l$externalId as String),
      defaultPriority: (l$defaultPriority as String),
      name: (l$name as String),
      description: (l$description as String),
      accessTime: (l$accessTime as String),
      openTooLongTime: (l$openTooLongTime as String),
      preAlarmTime: (l$preAlarmTime as String),
      extendedAccessTime: (l$extendedAccessTime as String),
      extendedOpenTooLongTime: (l$extendedOpenTooLongTime as String),
      heartbeatInterval: (l$heartbeatInterval as String),
      scheduleConfiguration: l$scheduleConfiguration == null
          ? null
          : Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration.fromJson(
              (l$scheduleConfiguration as Map<String, dynamic>),
            ),
      priorityConfiguration: l$priorityConfiguration == null
          ? null
          : Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration.fromJson(
              (l$priorityConfiguration as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String externalId;

  final String defaultPriority;

  final String name;

  final String description;

  final String accessTime;

  final String openTooLongTime;

  final String preAlarmTime;

  final String extendedAccessTime;

  final String extendedOpenTooLongTime;

  final String heartbeatInterval;

  final Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration?
  scheduleConfiguration;

  final Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration?
  priorityConfiguration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$defaultPriority = defaultPriority;
    _resultData['defaultPriority'] = l$defaultPriority;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$accessTime = accessTime;
    _resultData['accessTime'] = l$accessTime;
    final l$openTooLongTime = openTooLongTime;
    _resultData['openTooLongTime'] = l$openTooLongTime;
    final l$preAlarmTime = preAlarmTime;
    _resultData['preAlarmTime'] = l$preAlarmTime;
    final l$extendedAccessTime = extendedAccessTime;
    _resultData['extendedAccessTime'] = l$extendedAccessTime;
    final l$extendedOpenTooLongTime = extendedOpenTooLongTime;
    _resultData['extendedOpenTooLongTime'] = l$extendedOpenTooLongTime;
    final l$heartbeatInterval = heartbeatInterval;
    _resultData['heartbeatInterval'] = l$heartbeatInterval;
    final l$scheduleConfiguration = scheduleConfiguration;
    _resultData['scheduleConfiguration'] = l$scheduleConfiguration?.toJson();
    final l$priorityConfiguration = priorityConfiguration;
    _resultData['priorityConfiguration'] = l$priorityConfiguration?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$externalId = externalId;
    final l$defaultPriority = defaultPriority;
    final l$name = name;
    final l$description = description;
    final l$accessTime = accessTime;
    final l$openTooLongTime = openTooLongTime;
    final l$preAlarmTime = preAlarmTime;
    final l$extendedAccessTime = extendedAccessTime;
    final l$extendedOpenTooLongTime = extendedOpenTooLongTime;
    final l$heartbeatInterval = heartbeatInterval;
    final l$scheduleConfiguration = scheduleConfiguration;
    final l$priorityConfiguration = priorityConfiguration;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$externalId,
      l$defaultPriority,
      l$name,
      l$description,
      l$accessTime,
      l$openTooLongTime,
      l$preAlarmTime,
      l$extendedAccessTime,
      l$extendedOpenTooLongTime,
      l$heartbeatInterval,
      l$scheduleConfiguration,
      l$priorityConfiguration,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDoorDetails$allAccessControllers$doors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$defaultPriority = defaultPriority;
    final lOther$defaultPriority = other.defaultPriority;
    if (l$defaultPriority != lOther$defaultPriority) {
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
    final l$accessTime = accessTime;
    final lOther$accessTime = other.accessTime;
    if (l$accessTime != lOther$accessTime) {
      return false;
    }
    final l$openTooLongTime = openTooLongTime;
    final lOther$openTooLongTime = other.openTooLongTime;
    if (l$openTooLongTime != lOther$openTooLongTime) {
      return false;
    }
    final l$preAlarmTime = preAlarmTime;
    final lOther$preAlarmTime = other.preAlarmTime;
    if (l$preAlarmTime != lOther$preAlarmTime) {
      return false;
    }
    final l$extendedAccessTime = extendedAccessTime;
    final lOther$extendedAccessTime = other.extendedAccessTime;
    if (l$extendedAccessTime != lOther$extendedAccessTime) {
      return false;
    }
    final l$extendedOpenTooLongTime = extendedOpenTooLongTime;
    final lOther$extendedOpenTooLongTime = other.extendedOpenTooLongTime;
    if (l$extendedOpenTooLongTime != lOther$extendedOpenTooLongTime) {
      return false;
    }
    final l$heartbeatInterval = heartbeatInterval;
    final lOther$heartbeatInterval = other.heartbeatInterval;
    if (l$heartbeatInterval != lOther$heartbeatInterval) {
      return false;
    }
    final l$scheduleConfiguration = scheduleConfiguration;
    final lOther$scheduleConfiguration = other.scheduleConfiguration;
    if (l$scheduleConfiguration != lOther$scheduleConfiguration) {
      return false;
    }
    final l$priorityConfiguration = priorityConfiguration;
    final lOther$priorityConfiguration = other.priorityConfiguration;
    if (l$priorityConfiguration != lOther$priorityConfiguration) {
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

extension UtilityExtension$Query$GetDoorDetails$allAccessControllers$doors
    on Query$GetDoorDetails$allAccessControllers$doors {
  CopyWith$Query$GetDoorDetails$allAccessControllers$doors<
    Query$GetDoorDetails$allAccessControllers$doors
  >
  get copyWith =>
      CopyWith$Query$GetDoorDetails$allAccessControllers$doors(this, (i) => i);
}

abstract class CopyWith$Query$GetDoorDetails$allAccessControllers$doors<TRes> {
  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors(
    Query$GetDoorDetails$allAccessControllers$doors instance,
    TRes Function(Query$GetDoorDetails$allAccessControllers$doors) then,
  ) = _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors;

  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors;

  TRes call({
    String? externalId,
    String? defaultPriority,
    String? name,
    String? description,
    String? accessTime,
    String? openTooLongTime,
    String? preAlarmTime,
    String? extendedAccessTime,
    String? extendedOpenTooLongTime,
    String? heartbeatInterval,
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration?
    scheduleConfiguration,
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration?
    priorityConfiguration,
    String? $__typename,
  });
  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration<
    TRes
  >
  get scheduleConfiguration;
  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration<
    TRes
  >
  get priorityConfiguration;
}

class _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors<TRes>
    implements CopyWith$Query$GetDoorDetails$allAccessControllers$doors<TRes> {
  _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors(
    this._instance,
    this._then,
  );

  final Query$GetDoorDetails$allAccessControllers$doors _instance;

  final TRes Function(Query$GetDoorDetails$allAccessControllers$doors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? externalId = _undefined,
    Object? defaultPriority = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? accessTime = _undefined,
    Object? openTooLongTime = _undefined,
    Object? preAlarmTime = _undefined,
    Object? extendedAccessTime = _undefined,
    Object? extendedOpenTooLongTime = _undefined,
    Object? heartbeatInterval = _undefined,
    Object? scheduleConfiguration = _undefined,
    Object? priorityConfiguration = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorDetails$allAccessControllers$doors(
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      defaultPriority: defaultPriority == _undefined || defaultPriority == null
          ? _instance.defaultPriority
          : (defaultPriority as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      accessTime: accessTime == _undefined || accessTime == null
          ? _instance.accessTime
          : (accessTime as String),
      openTooLongTime: openTooLongTime == _undefined || openTooLongTime == null
          ? _instance.openTooLongTime
          : (openTooLongTime as String),
      preAlarmTime: preAlarmTime == _undefined || preAlarmTime == null
          ? _instance.preAlarmTime
          : (preAlarmTime as String),
      extendedAccessTime:
          extendedAccessTime == _undefined || extendedAccessTime == null
          ? _instance.extendedAccessTime
          : (extendedAccessTime as String),
      extendedOpenTooLongTime:
          extendedOpenTooLongTime == _undefined ||
              extendedOpenTooLongTime == null
          ? _instance.extendedOpenTooLongTime
          : (extendedOpenTooLongTime as String),
      heartbeatInterval:
          heartbeatInterval == _undefined || heartbeatInterval == null
          ? _instance.heartbeatInterval
          : (heartbeatInterval as String),
      scheduleConfiguration: scheduleConfiguration == _undefined
          ? _instance.scheduleConfiguration
          : (scheduleConfiguration
                as Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration?),
      priorityConfiguration: priorityConfiguration == _undefined
          ? _instance.priorityConfiguration
          : (priorityConfiguration
                as Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration<
    TRes
  >
  get scheduleConfiguration {
    final local$scheduleConfiguration = _instance.scheduleConfiguration;
    return local$scheduleConfiguration == null
        ? CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration(
            local$scheduleConfiguration,
            (e) => call(scheduleConfiguration: e),
          );
  }

  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration<
    TRes
  >
  get priorityConfiguration {
    final local$priorityConfiguration = _instance.priorityConfiguration;
    return local$priorityConfiguration == null
        ? CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration(
            local$priorityConfiguration,
            (e) => call(priorityConfiguration: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors<TRes>
    implements CopyWith$Query$GetDoorDetails$allAccessControllers$doors<TRes> {
  _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors(this._res);

  TRes _res;

  call({
    String? externalId,
    String? defaultPriority,
    String? name,
    String? description,
    String? accessTime,
    String? openTooLongTime,
    String? preAlarmTime,
    String? extendedAccessTime,
    String? extendedOpenTooLongTime,
    String? heartbeatInterval,
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration?
    scheduleConfiguration,
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration?
    priorityConfiguration,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration<
    TRes
  >
  get scheduleConfiguration =>
      CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration.stub(
        _res,
      );

  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration<
    TRes
  >
  get priorityConfiguration =>
      CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration.stub(
        _res,
      );
}

class Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration {
  Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration({
    required this.externalId,
    required this.name,
    required this.description,
    required this.doorSchedule,
    this.$__typename = 'DoorScheduleConfiguration',
  });

  factory Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$externalId = json['externalId'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$doorSchedule = json['doorSchedule'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration(
      externalId: (l$externalId as String),
      name: (l$name as String),
      description: (l$description as String),
      doorSchedule: (l$doorSchedule as List<dynamic>)
          .map(
            (e) =>
                Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String externalId;

  final String name;

  final String description;

  final List<
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
  >
  doorSchedule;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$doorSchedule = doorSchedule;
    _resultData['doorSchedule'] = l$doorSchedule
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$externalId = externalId;
    final l$name = name;
    final l$description = description;
    final l$doorSchedule = doorSchedule;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$externalId,
      l$name,
      l$description,
      Object.hashAll(l$doorSchedule.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
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
    final l$doorSchedule = doorSchedule;
    final lOther$doorSchedule = other.doorSchedule;
    if (l$doorSchedule.length != lOther$doorSchedule.length) {
      return false;
    }
    for (int i = 0; i < l$doorSchedule.length; i++) {
      final l$doorSchedule$entry = l$doorSchedule[i];
      final lOther$doorSchedule$entry = lOther$doorSchedule[i];
      if (l$doorSchedule$entry != lOther$doorSchedule$entry) {
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

extension UtilityExtension$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration
    on Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration {
  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration<
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration
  >
  get copyWith =>
      CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration<
  TRes
> {
  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration(
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration
    instance,
    TRes Function(
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration,
    )
    then,
  ) = _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration;

  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration;

  TRes call({
    String? externalId,
    String? name,
    String? description,
    List<
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
    >?
    doorSchedule,
    String? $__typename,
  });
  TRes doorSchedule(
    Iterable<
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
    >
    Function(
      Iterable<
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule<
          Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration<
  TRes
>
    implements
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration<
          TRes
        > {
  _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration(
    this._instance,
    this._then,
  );

  final Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration
  _instance;

  final TRes Function(
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? doorSchedule = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration(
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      doorSchedule: doorSchedule == _undefined || doorSchedule == null
          ? _instance.doorSchedule
          : (doorSchedule
                as List<
                  Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes doorSchedule(
    Iterable<
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
    >
    Function(
      Iterable<
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule<
          Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
        >
      >,
    )
    _fn,
  ) => call(
    doorSchedule: _fn(
      _instance.doorSchedule.map(
        (e) =>
            CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration<
  TRes
>
    implements
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration<
          TRes
        > {
  _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration(
    this._res,
  );

  TRes _res;

  call({
    String? externalId,
    String? name,
    String? description,
    List<
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
    >?
    doorSchedule,
    String? $__typename,
  }) => _res;

  doorSchedule(_fn) => _res;
}

class Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule {
  Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule({
    required this.priorityLevel,
    required this.scheduledState,
    this.$__typename = 'DoorScheduleItem',
  });

  factory Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$priorityLevel = json['priorityLevel'];
    final l$scheduledState = json['scheduledState'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule(
      priorityLevel: (l$priorityLevel as String),
      scheduledState: (l$scheduledState as List<dynamic>)
          .map(
            (e) =>
                Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String priorityLevel;

  final List<
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
  >
  scheduledState;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$priorityLevel = priorityLevel;
    _resultData['priorityLevel'] = l$priorityLevel;
    final l$scheduledState = scheduledState;
    _resultData['scheduledState'] = l$scheduledState
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$priorityLevel = priorityLevel;
    final l$scheduledState = scheduledState;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$priorityLevel,
      Object.hashAll(l$scheduledState.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$priorityLevel = priorityLevel;
    final lOther$priorityLevel = other.priorityLevel;
    if (l$priorityLevel != lOther$priorityLevel) {
      return false;
    }
    final l$scheduledState = scheduledState;
    final lOther$scheduledState = other.scheduledState;
    if (l$scheduledState.length != lOther$scheduledState.length) {
      return false;
    }
    for (int i = 0; i < l$scheduledState.length; i++) {
      final l$scheduledState$entry = l$scheduledState[i];
      final lOther$scheduledState$entry = lOther$scheduledState[i];
      if (l$scheduledState$entry != lOther$scheduledState$entry) {
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

extension UtilityExtension$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
    on
        Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule {
  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule<
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
  >
  get copyWith =>
      CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule<
  TRes
> {
  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule(
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
    instance,
    TRes Function(
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule,
    )
    then,
  ) = _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule;

  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule;

  TRes call({
    String? priorityLevel,
    List<
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
    >?
    scheduledState,
    String? $__typename,
  });
  TRes scheduledState(
    Iterable<
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
    >
    Function(
      Iterable<
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState<
          Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule<
  TRes
>
    implements
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule<
          TRes
        > {
  _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule(
    this._instance,
    this._then,
  );

  final Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule
  _instance;

  final TRes Function(
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priorityLevel = _undefined,
    Object? scheduledState = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule(
      priorityLevel: priorityLevel == _undefined || priorityLevel == null
          ? _instance.priorityLevel
          : (priorityLevel as String),
      scheduledState: scheduledState == _undefined || scheduledState == null
          ? _instance.scheduledState
          : (scheduledState
                as List<
                  Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes scheduledState(
    Iterable<
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
    >
    Function(
      Iterable<
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState<
          Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
        >
      >,
    )
    _fn,
  ) => call(
    scheduledState: _fn(
      _instance.scheduledState.map(
        (e) =>
            CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule<
  TRes
>
    implements
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule<
          TRes
        > {
  _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule(
    this._res,
  );

  TRes _res;

  call({
    String? priorityLevel,
    List<
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
    >?
    scheduledState,
    String? $__typename,
  }) => _res;

  scheduledState(_fn) => _res;
}

class Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState {
  Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState({
    required this.scheduleToken,
    required this.enterAction,
    this.$__typename = 'DoorScheduledState',
  });

  factory Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$scheduleToken = json['scheduleToken'];
    final l$enterAction = json['enterAction'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState(
      scheduleToken: (l$scheduleToken as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      enterAction: (l$enterAction as String),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> scheduleToken;

  final String enterAction;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scheduleToken = scheduleToken;
    _resultData['scheduleToken'] = l$scheduleToken.map((e) => e).toList();
    final l$enterAction = enterAction;
    _resultData['enterAction'] = l$enterAction;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scheduleToken = scheduleToken;
    final l$enterAction = enterAction;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$scheduleToken.map((v) => v)),
      l$enterAction,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scheduleToken = scheduleToken;
    final lOther$scheduleToken = other.scheduleToken;
    if (l$scheduleToken.length != lOther$scheduleToken.length) {
      return false;
    }
    for (int i = 0; i < l$scheduleToken.length; i++) {
      final l$scheduleToken$entry = l$scheduleToken[i];
      final lOther$scheduleToken$entry = lOther$scheduleToken[i];
      if (l$scheduleToken$entry != lOther$scheduleToken$entry) {
        return false;
      }
    }
    final l$enterAction = enterAction;
    final lOther$enterAction = other.enterAction;
    if (l$enterAction != lOther$enterAction) {
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

extension UtilityExtension$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
    on
        Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState {
  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState<
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
  >
  get copyWith =>
      CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState<
  TRes
> {
  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState(
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
    instance,
    TRes Function(
      Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState,
    )
    then,
  ) = _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState;

  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState;

  TRes call({
    List<String>? scheduleToken,
    String? enterAction,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState<
  TRes
>
    implements
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState<
          TRes
        > {
  _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState(
    this._instance,
    this._then,
  );

  final Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState
  _instance;

  final TRes Function(
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scheduleToken = _undefined,
    Object? enterAction = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState(
      scheduleToken: scheduleToken == _undefined || scheduleToken == null
          ? _instance.scheduleToken
          : (scheduleToken as List<String>),
      enterAction: enterAction == _undefined || enterAction == null
          ? _instance.enterAction
          : (enterAction as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState<
  TRes
>
    implements
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState<
          TRes
        > {
  _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$scheduleConfiguration$doorSchedule$scheduledState(
    this._res,
  );

  TRes _res;

  call({
    List<String>? scheduleToken,
    String? enterAction,
    String? $__typename,
  }) => _res;
}

class Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration {
  Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration({
    required this.externalId,
    required this.name,
    required this.defaultPriority,
    required this.doorPriorityAction,
    this.$__typename = 'DoorPriorityConfiguration',
  });

  factory Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$externalId = json['externalId'];
    final l$name = json['name'];
    final l$defaultPriority = json['defaultPriority'];
    final l$doorPriorityAction = json['doorPriorityAction'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration(
      externalId: (l$externalId as String),
      name: (l$name as String),
      defaultPriority: (l$defaultPriority as String),
      doorPriorityAction: (l$doorPriorityAction as List<dynamic>)
          .map(
            (e) =>
                Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String externalId;

  final String name;

  final String defaultPriority;

  final List<
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
  >
  doorPriorityAction;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$defaultPriority = defaultPriority;
    _resultData['defaultPriority'] = l$defaultPriority;
    final l$doorPriorityAction = doorPriorityAction;
    _resultData['doorPriorityAction'] = l$doorPriorityAction
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$externalId = externalId;
    final l$name = name;
    final l$defaultPriority = defaultPriority;
    final l$doorPriorityAction = doorPriorityAction;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$externalId,
      l$name,
      l$defaultPriority,
      Object.hashAll(l$doorPriorityAction.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$defaultPriority = defaultPriority;
    final lOther$defaultPriority = other.defaultPriority;
    if (l$defaultPriority != lOther$defaultPriority) {
      return false;
    }
    final l$doorPriorityAction = doorPriorityAction;
    final lOther$doorPriorityAction = other.doorPriorityAction;
    if (l$doorPriorityAction.length != lOther$doorPriorityAction.length) {
      return false;
    }
    for (int i = 0; i < l$doorPriorityAction.length; i++) {
      final l$doorPriorityAction$entry = l$doorPriorityAction[i];
      final lOther$doorPriorityAction$entry = lOther$doorPriorityAction[i];
      if (l$doorPriorityAction$entry != lOther$doorPriorityAction$entry) {
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

extension UtilityExtension$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration
    on Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration {
  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration<
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration
  >
  get copyWith =>
      CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration<
  TRes
> {
  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration(
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration
    instance,
    TRes Function(
      Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration,
    )
    then,
  ) = _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration;

  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration;

  TRes call({
    String? externalId,
    String? name,
    String? defaultPriority,
    List<
      Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
    >?
    doorPriorityAction,
    String? $__typename,
  });
  TRes doorPriorityAction(
    Iterable<
      Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
    >
    Function(
      Iterable<
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction<
          Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration<
  TRes
>
    implements
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration<
          TRes
        > {
  _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration(
    this._instance,
    this._then,
  );

  final Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration
  _instance;

  final TRes Function(
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? defaultPriority = _undefined,
    Object? doorPriorityAction = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration(
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      defaultPriority: defaultPriority == _undefined || defaultPriority == null
          ? _instance.defaultPriority
          : (defaultPriority as String),
      doorPriorityAction:
          doorPriorityAction == _undefined || doorPriorityAction == null
          ? _instance.doorPriorityAction
          : (doorPriorityAction
                as List<
                  Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes doorPriorityAction(
    Iterable<
      Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
    >
    Function(
      Iterable<
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction<
          Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
        >
      >,
    )
    _fn,
  ) => call(
    doorPriorityAction: _fn(
      _instance.doorPriorityAction.map(
        (e) =>
            CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration<
  TRes
>
    implements
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration<
          TRes
        > {
  _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration(
    this._res,
  );

  TRes _res;

  call({
    String? externalId,
    String? name,
    String? defaultPriority,
    List<
      Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
    >?
    doorPriorityAction,
    String? $__typename,
  }) => _res;

  doorPriorityAction(_fn) => _res;
}

class Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction {
  Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction({
    required this.priorityLevel,
    required this.doorAction,
    this.$__typename = 'DoorPriorityAction',
  });

  factory Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$priorityLevel = json['priorityLevel'];
    final l$doorAction = json['doorAction'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction(
      priorityLevel: (l$priorityLevel as String),
      doorAction: (l$doorAction as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String priorityLevel;

  final String doorAction;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$priorityLevel = priorityLevel;
    _resultData['priorityLevel'] = l$priorityLevel;
    final l$doorAction = doorAction;
    _resultData['doorAction'] = l$doorAction;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$priorityLevel = priorityLevel;
    final l$doorAction = doorAction;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priorityLevel, l$doorAction, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$priorityLevel = priorityLevel;
    final lOther$priorityLevel = other.priorityLevel;
    if (l$priorityLevel != lOther$priorityLevel) {
      return false;
    }
    final l$doorAction = doorAction;
    final lOther$doorAction = other.doorAction;
    if (l$doorAction != lOther$doorAction) {
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

extension UtilityExtension$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
    on
        Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction {
  CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction<
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
  >
  get copyWith =>
      CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction<
  TRes
> {
  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction(
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
    instance,
    TRes Function(
      Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction,
    )
    then,
  ) = _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction;

  factory CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction;

  TRes call({String? priorityLevel, String? doorAction, String? $__typename});
}

class _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction<
  TRes
>
    implements
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction<
          TRes
        > {
  _CopyWithImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction(
    this._instance,
    this._then,
  );

  final Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction
  _instance;

  final TRes Function(
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priorityLevel = _undefined,
    Object? doorAction = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction(
      priorityLevel: priorityLevel == _undefined || priorityLevel == null
          ? _instance.priorityLevel
          : (priorityLevel as String),
      doorAction: doorAction == _undefined || doorAction == null
          ? _instance.doorAction
          : (doorAction as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction<
  TRes
>
    implements
        CopyWith$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction<
          TRes
        > {
  _CopyWithStubImpl$Query$GetDoorDetails$allAccessControllers$doors$priorityConfiguration$doorPriorityAction(
    this._res,
  );

  TRes _res;

  call({String? priorityLevel, String? doorAction, String? $__typename}) =>
      _res;
}
