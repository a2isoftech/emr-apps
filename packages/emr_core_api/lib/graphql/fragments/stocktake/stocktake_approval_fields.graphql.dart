import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$StocktakeApprovalFields {
  Fragment$StocktakeApprovalFields({
    required this.stocktakeId,
    required this.active,
    required this.stocktakeStatus,
    this.levelUsers,
    required this.created,
    required this.completed,
    required this.yardCode,
    required this.levels,
    required this.currentLevel,
    required this.id,
    required this.modified,
    this.$__typename = 'StocktakeApproval',
  });

  factory Fragment$StocktakeApprovalFields.fromJson(Map<String, dynamic> json) {
    final l$stocktakeId = json['stocktakeId'];
    final l$active = json['active'];
    final l$stocktakeStatus = json['stocktakeStatus'];
    final l$levelUsers = json['levelUsers'];
    final l$created = json['created'];
    final l$completed = json['completed'];
    final l$yardCode = json['yardCode'];
    final l$levels = json['levels'];
    final l$currentLevel = json['currentLevel'];
    final l$id = json['id'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields(
      stocktakeId: (l$stocktakeId as String),
      active: (l$active as bool),
      stocktakeStatus: fromJson$Enum$StocktakeApprovalStatus(
        (l$stocktakeStatus as String),
      ),
      levelUsers: (l$levelUsers as List<dynamic>?)
          ?.map(
            (e) => Fragment$StocktakeApprovalFields$levelUsers.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      created: Fragment$StocktakeApprovalFields$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      completed: (l$completed as bool),
      yardCode: (l$yardCode as String),
      levels: (l$levels as List<dynamic>)
          .map(
            (e) => Fragment$StocktakeApprovalFields$levels.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      currentLevel: (l$currentLevel as int),
      id: (l$id as String),
      modified: Fragment$StocktakeApprovalFields$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String stocktakeId;

  final bool active;

  final Enum$StocktakeApprovalStatus stocktakeStatus;

  final List<Fragment$StocktakeApprovalFields$levelUsers>? levelUsers;

  final Fragment$StocktakeApprovalFields$created created;

  final bool completed;

  final String yardCode;

  final List<Fragment$StocktakeApprovalFields$levels> levels;

  final int currentLevel;

  final String id;

  final Fragment$StocktakeApprovalFields$modified modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stocktakeId = stocktakeId;
    _resultData['stocktakeId'] = l$stocktakeId;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$stocktakeStatus = stocktakeStatus;
    _resultData['stocktakeStatus'] = toJson$Enum$StocktakeApprovalStatus(
      l$stocktakeStatus,
    );
    final l$levelUsers = levelUsers;
    _resultData['levelUsers'] = l$levelUsers?.map((e) => e.toJson()).toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$completed = completed;
    _resultData['completed'] = l$completed;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$levels = levels;
    _resultData['levels'] = l$levels.map((e) => e.toJson()).toList();
    final l$currentLevel = currentLevel;
    _resultData['currentLevel'] = l$currentLevel;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stocktakeId = stocktakeId;
    final l$active = active;
    final l$stocktakeStatus = stocktakeStatus;
    final l$levelUsers = levelUsers;
    final l$created = created;
    final l$completed = completed;
    final l$yardCode = yardCode;
    final l$levels = levels;
    final l$currentLevel = currentLevel;
    final l$id = id;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stocktakeId,
      l$active,
      l$stocktakeStatus,
      l$levelUsers == null ? null : Object.hashAll(l$levelUsers.map((v) => v)),
      l$created,
      l$completed,
      l$yardCode,
      Object.hashAll(l$levels.map((v) => v)),
      l$currentLevel,
      l$id,
      l$modified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeApprovalFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stocktakeId = stocktakeId;
    final lOther$stocktakeId = other.stocktakeId;
    if (l$stocktakeId != lOther$stocktakeId) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$stocktakeStatus = stocktakeStatus;
    final lOther$stocktakeStatus = other.stocktakeStatus;
    if (l$stocktakeStatus != lOther$stocktakeStatus) {
      return false;
    }
    final l$levelUsers = levelUsers;
    final lOther$levelUsers = other.levelUsers;
    if (l$levelUsers != null && lOther$levelUsers != null) {
      if (l$levelUsers.length != lOther$levelUsers.length) {
        return false;
      }
      for (int i = 0; i < l$levelUsers.length; i++) {
        final l$levelUsers$entry = l$levelUsers[i];
        final lOther$levelUsers$entry = lOther$levelUsers[i];
        if (l$levelUsers$entry != lOther$levelUsers$entry) {
          return false;
        }
      }
    } else if (l$levelUsers != lOther$levelUsers) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$completed = completed;
    final lOther$completed = other.completed;
    if (l$completed != lOther$completed) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$levels = levels;
    final lOther$levels = other.levels;
    if (l$levels.length != lOther$levels.length) {
      return false;
    }
    for (int i = 0; i < l$levels.length; i++) {
      final l$levels$entry = l$levels[i];
      final lOther$levels$entry = lOther$levels[i];
      if (l$levels$entry != lOther$levels$entry) {
        return false;
      }
    }
    final l$currentLevel = currentLevel;
    final lOther$currentLevel = other.currentLevel;
    if (l$currentLevel != lOther$currentLevel) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields
    on Fragment$StocktakeApprovalFields {
  CopyWith$Fragment$StocktakeApprovalFields<Fragment$StocktakeApprovalFields>
  get copyWith => CopyWith$Fragment$StocktakeApprovalFields(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeApprovalFields<TRes> {
  factory CopyWith$Fragment$StocktakeApprovalFields(
    Fragment$StocktakeApprovalFields instance,
    TRes Function(Fragment$StocktakeApprovalFields) then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields;

  factory CopyWith$Fragment$StocktakeApprovalFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeApprovalFields;

  TRes call({
    String? stocktakeId,
    bool? active,
    Enum$StocktakeApprovalStatus? stocktakeStatus,
    List<Fragment$StocktakeApprovalFields$levelUsers>? levelUsers,
    Fragment$StocktakeApprovalFields$created? created,
    bool? completed,
    String? yardCode,
    List<Fragment$StocktakeApprovalFields$levels>? levels,
    int? currentLevel,
    String? id,
    Fragment$StocktakeApprovalFields$modified? modified,
    String? $__typename,
  });
  TRes levelUsers(
    Iterable<Fragment$StocktakeApprovalFields$levelUsers>? Function(
      Iterable<
        CopyWith$Fragment$StocktakeApprovalFields$levelUsers<
          Fragment$StocktakeApprovalFields$levelUsers
        >
      >?,
    )
    _fn,
  );
  CopyWith$Fragment$StocktakeApprovalFields$created<TRes> get created;
  TRes levels(
    Iterable<Fragment$StocktakeApprovalFields$levels> Function(
      Iterable<
        CopyWith$Fragment$StocktakeApprovalFields$levels<
          Fragment$StocktakeApprovalFields$levels
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$StocktakeApprovalFields$modified<TRes> get modified;
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields<TRes> {
  _CopyWithImpl$Fragment$StocktakeApprovalFields(this._instance, this._then);

  final Fragment$StocktakeApprovalFields _instance;

  final TRes Function(Fragment$StocktakeApprovalFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stocktakeId = _undefined,
    Object? active = _undefined,
    Object? stocktakeStatus = _undefined,
    Object? levelUsers = _undefined,
    Object? created = _undefined,
    Object? completed = _undefined,
    Object? yardCode = _undefined,
    Object? levels = _undefined,
    Object? currentLevel = _undefined,
    Object? id = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields(
      stocktakeId: stocktakeId == _undefined || stocktakeId == null
          ? _instance.stocktakeId
          : (stocktakeId as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      stocktakeStatus: stocktakeStatus == _undefined || stocktakeStatus == null
          ? _instance.stocktakeStatus
          : (stocktakeStatus as Enum$StocktakeApprovalStatus),
      levelUsers: levelUsers == _undefined
          ? _instance.levelUsers
          : (levelUsers as List<Fragment$StocktakeApprovalFields$levelUsers>?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$StocktakeApprovalFields$created),
      completed: completed == _undefined || completed == null
          ? _instance.completed
          : (completed as bool),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      levels: levels == _undefined || levels == null
          ? _instance.levels
          : (levels as List<Fragment$StocktakeApprovalFields$levels>),
      currentLevel: currentLevel == _undefined || currentLevel == null
          ? _instance.currentLevel
          : (currentLevel as int),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Fragment$StocktakeApprovalFields$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes levelUsers(
    Iterable<Fragment$StocktakeApprovalFields$levelUsers>? Function(
      Iterable<
        CopyWith$Fragment$StocktakeApprovalFields$levelUsers<
          Fragment$StocktakeApprovalFields$levelUsers
        >
      >?,
    )
    _fn,
  ) => call(
    levelUsers: _fn(
      _instance.levelUsers?.map(
        (e) =>
            CopyWith$Fragment$StocktakeApprovalFields$levelUsers(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Fragment$StocktakeApprovalFields$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$StocktakeApprovalFields$created(
      local$created,
      (e) => call(created: e),
    );
  }

  TRes levels(
    Iterable<Fragment$StocktakeApprovalFields$levels> Function(
      Iterable<
        CopyWith$Fragment$StocktakeApprovalFields$levels<
          Fragment$StocktakeApprovalFields$levels
        >
      >,
    )
    _fn,
  ) => call(
    levels: _fn(
      _instance.levels.map(
        (e) => CopyWith$Fragment$StocktakeApprovalFields$levels(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Fragment$StocktakeApprovalFields$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$StocktakeApprovalFields$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields(this._res);

  TRes _res;

  call({
    String? stocktakeId,
    bool? active,
    Enum$StocktakeApprovalStatus? stocktakeStatus,
    List<Fragment$StocktakeApprovalFields$levelUsers>? levelUsers,
    Fragment$StocktakeApprovalFields$created? created,
    bool? completed,
    String? yardCode,
    List<Fragment$StocktakeApprovalFields$levels>? levels,
    int? currentLevel,
    String? id,
    Fragment$StocktakeApprovalFields$modified? modified,
    String? $__typename,
  }) => _res;

  levelUsers(_fn) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$created<TRes> get created =>
      CopyWith$Fragment$StocktakeApprovalFields$created.stub(_res);

  levels(_fn) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$modified<TRes> get modified =>
      CopyWith$Fragment$StocktakeApprovalFields$modified.stub(_res);
}

const fragmentDefinitionStocktakeApprovalFields = FragmentDefinitionNode(
  name: NameNode(value: 'StocktakeApprovalFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'StocktakeApproval'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'stocktakeId'),
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
        name: NameNode(value: 'stocktakeStatus'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'levelUsers'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'firstName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'lastName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'emailAddress'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'jobTitle'),
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
        name: NameNode(value: 'created'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'user'),
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
                    name: NameNode(value: 'emailAddress'),
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
        name: NameNode(value: 'completed'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'yardCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'levels'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'key'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'value'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'userEmails'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'status'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'notifiedOn'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'approvers'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'key'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'value'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(
                            selections: [
                              FieldNode(
                                name: NameNode(value: 'content'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'created'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(
                                  selections: [
                                    FieldNode(
                                      name: NameNode(value: 'at'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null,
                                    ),
                                    FieldNode(
                                      name: NameNode(value: 'user'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: SelectionSetNode(
                                        selections: [
                                          FieldNode(
                                            name: NameNode(
                                              value: 'emailAddress',
                                            ),
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
                    name: NameNode(value: 'rejectors'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'key'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'value'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(
                            selections: [
                              FieldNode(
                                name: NameNode(value: 'content'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'created'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(
                                  selections: [
                                    FieldNode(
                                      name: NameNode(value: 'at'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null,
                                    ),
                                    FieldNode(
                                      name: NameNode(value: 'user'),
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
                                            name: NameNode(
                                              value: 'emailAddress',
                                            ),
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
        name: NameNode(value: 'currentLevel'),
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
        name: NameNode(value: 'created'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'user'),
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
                    name: NameNode(value: 'emailAddress'),
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
        name: NameNode(value: 'modified'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'user'),
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
                    name: NameNode(value: 'emailAddress'),
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
);
const documentNodeFragmentStocktakeApprovalFields = DocumentNode(
  definitions: [fragmentDefinitionStocktakeApprovalFields],
);

class Fragment$StocktakeApprovalFields$levelUsers {
  Fragment$StocktakeApprovalFields$levelUsers({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.jobTitle,
    this.$__typename = 'User',
  });

  factory Fragment$StocktakeApprovalFields$levelUsers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$emailAddress = json['emailAddress'];
    final l$jobTitle = json['jobTitle'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levelUsers(
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      emailAddress: (l$emailAddress as String),
      jobTitle: (l$jobTitle as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String firstName;

  final String lastName;

  final String emailAddress;

  final String jobTitle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$emailAddress = emailAddress;
    final l$jobTitle = jobTitle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      l$emailAddress,
      l$jobTitle,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeApprovalFields$levelUsers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levelUsers
    on Fragment$StocktakeApprovalFields$levelUsers {
  CopyWith$Fragment$StocktakeApprovalFields$levelUsers<
    Fragment$StocktakeApprovalFields$levelUsers
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levelUsers(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levelUsers<TRes> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levelUsers(
    Fragment$StocktakeApprovalFields$levelUsers instance,
    TRes Function(Fragment$StocktakeApprovalFields$levelUsers) then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levelUsers;

  factory CopyWith$Fragment$StocktakeApprovalFields$levelUsers.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levelUsers;

  TRes call({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? jobTitle,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levelUsers<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$levelUsers<TRes> {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levelUsers(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levelUsers _instance;

  final TRes Function(Fragment$StocktakeApprovalFields$levelUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? jobTitle = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levelUsers(
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      jobTitle: jobTitle == _undefined || jobTitle == null
          ? _instance.jobTitle
          : (jobTitle as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levelUsers<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$levelUsers<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levelUsers(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? jobTitle,
    String? $__typename,
  }) => _res;
}

class Fragment$StocktakeApprovalFields$created {
  Fragment$StocktakeApprovalFields$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Fragment$StocktakeApprovalFields$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Fragment$StocktakeApprovalFields$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Fragment$StocktakeApprovalFields$created$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeApprovalFields$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$created
    on Fragment$StocktakeApprovalFields$created {
  CopyWith$Fragment$StocktakeApprovalFields$created<
    Fragment$StocktakeApprovalFields$created
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$created(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$created<TRes> {
  factory CopyWith$Fragment$StocktakeApprovalFields$created(
    Fragment$StocktakeApprovalFields$created instance,
    TRes Function(Fragment$StocktakeApprovalFields$created) then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$created;

  factory CopyWith$Fragment$StocktakeApprovalFields$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeApprovalFields$created;

  TRes call({
    DateTime? at,
    Fragment$StocktakeApprovalFields$created$user? user,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeApprovalFields$created$user<TRes> get user;
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$created<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$created<TRes> {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$created(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$created _instance;

  final TRes Function(Fragment$StocktakeApprovalFields$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user as Fragment$StocktakeApprovalFields$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeApprovalFields$created$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$StocktakeApprovalFields$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeApprovalFields$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$created<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$created<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    Fragment$StocktakeApprovalFields$created$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$created$user<TRes> get user =>
      CopyWith$Fragment$StocktakeApprovalFields$created$user.stub(_res);
}

class Fragment$StocktakeApprovalFields$created$user {
  Fragment$StocktakeApprovalFields$created$user({
    required this.name,
    required this.emailAddress,
    this.$__typename = 'UserInfo',
  });

  factory Fragment$StocktakeApprovalFields$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$created$user(
      name: (l$name as String),
      emailAddress: (l$emailAddress as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$emailAddress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeApprovalFields$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$created$user
    on Fragment$StocktakeApprovalFields$created$user {
  CopyWith$Fragment$StocktakeApprovalFields$created$user<
    Fragment$StocktakeApprovalFields$created$user
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$created$user(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$created$user<TRes> {
  factory CopyWith$Fragment$StocktakeApprovalFields$created$user(
    Fragment$StocktakeApprovalFields$created$user instance,
    TRes Function(Fragment$StocktakeApprovalFields$created$user) then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$created$user;

  factory CopyWith$Fragment$StocktakeApprovalFields$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$created$user;

  TRes call({String? name, String? emailAddress, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$created$user<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$created$user<TRes> {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$created$user(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$created$user _instance;

  final TRes Function(Fragment$StocktakeApprovalFields$created$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$created$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$created$user<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$created$user<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$created$user(this._res);

  TRes _res;

  call({String? name, String? emailAddress, String? $__typename}) => _res;
}

class Fragment$StocktakeApprovalFields$levels {
  Fragment$StocktakeApprovalFields$levels({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfInt32AndStocktakeRuleLevel',
  });

  factory Fragment$StocktakeApprovalFields$levels.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levels(
      key: (l$key as int),
      value: Fragment$StocktakeApprovalFields$levels$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int key;

  final Fragment$StocktakeApprovalFields$levels$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeApprovalFields$levels ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levels
    on Fragment$StocktakeApprovalFields$levels {
  CopyWith$Fragment$StocktakeApprovalFields$levels<
    Fragment$StocktakeApprovalFields$levels
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levels(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levels<TRes> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levels(
    Fragment$StocktakeApprovalFields$levels instance,
    TRes Function(Fragment$StocktakeApprovalFields$levels) then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levels;

  factory CopyWith$Fragment$StocktakeApprovalFields$levels.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels;

  TRes call({
    int? key,
    Fragment$StocktakeApprovalFields$levels$value? value,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeApprovalFields$levels$value<TRes> get value;
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levels<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$levels<TRes> {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levels(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levels _instance;

  final TRes Function(Fragment$StocktakeApprovalFields$levels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levels(
      key: key == _undefined || key == null ? _instance.key : (key as int),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Fragment$StocktakeApprovalFields$levels$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeApprovalFields$levels$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Fragment$StocktakeApprovalFields$levels$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$levels<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels(this._res);

  TRes _res;

  call({
    int? key,
    Fragment$StocktakeApprovalFields$levels$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$levels$value<TRes> get value =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value.stub(_res);
}

class Fragment$StocktakeApprovalFields$levels$value {
  Fragment$StocktakeApprovalFields$levels$value({
    required this.userEmails,
    required this.status,
    required this.notifiedOn,
    required this.approvers,
    required this.rejectors,
    this.$__typename = 'StocktakeRuleLevel',
  });

  factory Fragment$StocktakeApprovalFields$levels$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userEmails = json['userEmails'];
    final l$status = json['status'];
    final l$notifiedOn = json['notifiedOn'];
    final l$approvers = json['approvers'];
    final l$rejectors = json['rejectors'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levels$value(
      userEmails: (l$userEmails as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      status: fromJson$Enum$StocktakeApprovalStatus((l$status as String)),
      notifiedOn: (l$notifiedOn as List<dynamic>)
          .map((e) => DateTime.parse((e as String)))
          .toList(),
      approvers: (l$approvers as List<dynamic>)
          .map(
            (e) =>
                Fragment$StocktakeApprovalFields$levels$value$approvers.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      rejectors: (l$rejectors as List<dynamic>)
          .map(
            (e) =>
                Fragment$StocktakeApprovalFields$levels$value$rejectors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> userEmails;

  final Enum$StocktakeApprovalStatus status;

  final List<DateTime> notifiedOn;

  final List<Fragment$StocktakeApprovalFields$levels$value$approvers> approvers;

  final List<Fragment$StocktakeApprovalFields$levels$value$rejectors> rejectors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userEmails = userEmails;
    _resultData['userEmails'] = l$userEmails.map((e) => e).toList();
    final l$status = status;
    _resultData['status'] = toJson$Enum$StocktakeApprovalStatus(l$status);
    final l$notifiedOn = notifiedOn;
    _resultData['notifiedOn'] = l$notifiedOn
        .map((e) => e.toIso8601String())
        .toList();
    final l$approvers = approvers;
    _resultData['approvers'] = l$approvers.map((e) => e.toJson()).toList();
    final l$rejectors = rejectors;
    _resultData['rejectors'] = l$rejectors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userEmails = userEmails;
    final l$status = status;
    final l$notifiedOn = notifiedOn;
    final l$approvers = approvers;
    final l$rejectors = rejectors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$userEmails.map((v) => v)),
      l$status,
      Object.hashAll(l$notifiedOn.map((v) => v)),
      Object.hashAll(l$approvers.map((v) => v)),
      Object.hashAll(l$rejectors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeApprovalFields$levels$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userEmails = userEmails;
    final lOther$userEmails = other.userEmails;
    if (l$userEmails.length != lOther$userEmails.length) {
      return false;
    }
    for (int i = 0; i < l$userEmails.length; i++) {
      final l$userEmails$entry = l$userEmails[i];
      final lOther$userEmails$entry = lOther$userEmails[i];
      if (l$userEmails$entry != lOther$userEmails$entry) {
        return false;
      }
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$notifiedOn = notifiedOn;
    final lOther$notifiedOn = other.notifiedOn;
    if (l$notifiedOn.length != lOther$notifiedOn.length) {
      return false;
    }
    for (int i = 0; i < l$notifiedOn.length; i++) {
      final l$notifiedOn$entry = l$notifiedOn[i];
      final lOther$notifiedOn$entry = lOther$notifiedOn[i];
      if (l$notifiedOn$entry != lOther$notifiedOn$entry) {
        return false;
      }
    }
    final l$approvers = approvers;
    final lOther$approvers = other.approvers;
    if (l$approvers.length != lOther$approvers.length) {
      return false;
    }
    for (int i = 0; i < l$approvers.length; i++) {
      final l$approvers$entry = l$approvers[i];
      final lOther$approvers$entry = lOther$approvers[i];
      if (l$approvers$entry != lOther$approvers$entry) {
        return false;
      }
    }
    final l$rejectors = rejectors;
    final lOther$rejectors = other.rejectors;
    if (l$rejectors.length != lOther$rejectors.length) {
      return false;
    }
    for (int i = 0; i < l$rejectors.length; i++) {
      final l$rejectors$entry = l$rejectors[i];
      final lOther$rejectors$entry = lOther$rejectors[i];
      if (l$rejectors$entry != lOther$rejectors$entry) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levels$value
    on Fragment$StocktakeApprovalFields$levels$value {
  CopyWith$Fragment$StocktakeApprovalFields$levels$value<
    Fragment$StocktakeApprovalFields$levels$value
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levels$value<TRes> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value(
    Fragment$StocktakeApprovalFields$levels$value instance,
    TRes Function(Fragment$StocktakeApprovalFields$levels$value) then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value;

  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value;

  TRes call({
    List<String>? userEmails,
    Enum$StocktakeApprovalStatus? status,
    List<DateTime>? notifiedOn,
    List<Fragment$StocktakeApprovalFields$levels$value$approvers>? approvers,
    List<Fragment$StocktakeApprovalFields$levels$value$rejectors>? rejectors,
    String? $__typename,
  });
  TRes approvers(
    Iterable<Fragment$StocktakeApprovalFields$levels$value$approvers> Function(
      Iterable<
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers<
          Fragment$StocktakeApprovalFields$levels$value$approvers
        >
      >,
    )
    _fn,
  );
  TRes rejectors(
    Iterable<Fragment$StocktakeApprovalFields$levels$value$rejectors> Function(
      Iterable<
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors<
          Fragment$StocktakeApprovalFields$levels$value$rejectors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$levels$value<TRes> {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levels$value _instance;

  final TRes Function(Fragment$StocktakeApprovalFields$levels$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userEmails = _undefined,
    Object? status = _undefined,
    Object? notifiedOn = _undefined,
    Object? approvers = _undefined,
    Object? rejectors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levels$value(
      userEmails: userEmails == _undefined || userEmails == null
          ? _instance.userEmails
          : (userEmails as List<String>),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$StocktakeApprovalStatus),
      notifiedOn: notifiedOn == _undefined || notifiedOn == null
          ? _instance.notifiedOn
          : (notifiedOn as List<DateTime>),
      approvers: approvers == _undefined || approvers == null
          ? _instance.approvers
          : (approvers
                as List<
                  Fragment$StocktakeApprovalFields$levels$value$approvers
                >),
      rejectors: rejectors == _undefined || rejectors == null
          ? _instance.rejectors
          : (rejectors
                as List<
                  Fragment$StocktakeApprovalFields$levels$value$rejectors
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes approvers(
    Iterable<Fragment$StocktakeApprovalFields$levels$value$approvers> Function(
      Iterable<
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers<
          Fragment$StocktakeApprovalFields$levels$value$approvers
        >
      >,
    )
    _fn,
  ) => call(
    approvers: _fn(
      _instance.approvers.map(
        (e) => CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes rejectors(
    Iterable<Fragment$StocktakeApprovalFields$levels$value$rejectors> Function(
      Iterable<
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors<
          Fragment$StocktakeApprovalFields$levels$value$rejectors
        >
      >,
    )
    _fn,
  ) => call(
    rejectors: _fn(
      _instance.rejectors.map(
        (e) => CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$levels$value<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value(this._res);

  TRes _res;

  call({
    List<String>? userEmails,
    Enum$StocktakeApprovalStatus? status,
    List<DateTime>? notifiedOn,
    List<Fragment$StocktakeApprovalFields$levels$value$approvers>? approvers,
    List<Fragment$StocktakeApprovalFields$levels$value$rejectors>? rejectors,
    String? $__typename,
  }) => _res;

  approvers(_fn) => _res;

  rejectors(_fn) => _res;
}

class Fragment$StocktakeApprovalFields$levels$value$approvers {
  Fragment$StocktakeApprovalFields$levels$value$approvers({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndComment',
  });

  factory Fragment$StocktakeApprovalFields$levels$value$approvers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levels$value$approvers(
      key: (l$key as String),
      value:
          Fragment$StocktakeApprovalFields$levels$value$approvers$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Fragment$StocktakeApprovalFields$levels$value$approvers$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeApprovalFields$levels$value$approvers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levels$value$approvers
    on Fragment$StocktakeApprovalFields$levels$value$approvers {
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers<
    Fragment$StocktakeApprovalFields$levels$value$approvers
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers<
  TRes
> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers(
    Fragment$StocktakeApprovalFields$levels$value$approvers instance,
    TRes Function(Fragment$StocktakeApprovalFields$levels$value$approvers) then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers;

  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers;

  TRes call({
    String? key,
    Fragment$StocktakeApprovalFields$levels$value$approvers$value? value,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value<TRes>
  get value;
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers<TRes> {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levels$value$approvers _instance;

  final TRes Function(Fragment$StocktakeApprovalFields$levels$value$approvers)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levels$value$approvers(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Fragment$StocktakeApprovalFields$levels$value$approvers$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Fragment$StocktakeApprovalFields$levels$value$approvers$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value<TRes>
  get value =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value.stub(
        _res,
      );
}

class Fragment$StocktakeApprovalFields$levels$value$approvers$value {
  Fragment$StocktakeApprovalFields$levels$value$approvers$value({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Fragment$StocktakeApprovalFields$levels$value$approvers$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levels$value$approvers$value(
      content: (l$content as String),
      created:
          Fragment$StocktakeApprovalFields$levels$value$approvers$value$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Fragment$StocktakeApprovalFields$levels$value$approvers$value$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$StocktakeApprovalFields$levels$value$approvers$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levels$value$approvers$value
    on Fragment$StocktakeApprovalFields$levels$value$approvers$value {
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value<
    Fragment$StocktakeApprovalFields$levels$value$approvers$value
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value<
  TRes
> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value(
    Fragment$StocktakeApprovalFields$levels$value$approvers$value instance,
    TRes Function(Fragment$StocktakeApprovalFields$levels$value$approvers$value)
    then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value;

  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value;

  TRes call({
    String? content,
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created?
    created,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levels$value$approvers$value _instance;

  final TRes Function(
    Fragment$StocktakeApprovalFields$levels$value$approvers$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levels$value$approvers$value(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Fragment$StocktakeApprovalFields$levels$value$approvers$value$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created<
    TRes
  >
  get created =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created.stub(
        _res,
      );
}

class Fragment$StocktakeApprovalFields$levels$value$approvers$value$created {
  Fragment$StocktakeApprovalFields$levels$value$approvers$value$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Fragment$StocktakeApprovalFields$levels$value$approvers$value$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levels$value$approvers$value$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user?
  user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$StocktakeApprovalFields$levels$value$approvers$value$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created
    on Fragment$StocktakeApprovalFields$levels$value$approvers$value$created {
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created<
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created<
  TRes
> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created(
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created
    instance,
    TRes Function(
      Fragment$StocktakeApprovalFields$levels$value$approvers$value$created,
    )
    then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created;

  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created;

  TRes call({
    DateTime? at,
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user?
    user,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levels$value$approvers$value$created
  _instance;

  final TRes Function(
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user
                as Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user?
    user,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user<
    TRes
  >
  get user =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user.stub(
        _res,
      );
}

class Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user {
  Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user({
    required this.emailAddress,
    required this.name,
    this.$__typename = 'UserInfo',
  });

  factory Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$emailAddress = json['emailAddress'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user(
      emailAddress: (l$emailAddress as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String emailAddress;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$emailAddress = emailAddress;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$emailAddress, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user
    on Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user {
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user<
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user<
  TRes
> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user(
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user
    instance,
    TRes Function(
      Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user,
    )
    then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user;

  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user;

  TRes call({String? emailAddress, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user
  _instance;

  final TRes Function(
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? emailAddress = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user(
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user(
    this._res,
  );

  TRes _res;

  call({String? emailAddress, String? name, String? $__typename}) => _res;
}

class Fragment$StocktakeApprovalFields$levels$value$rejectors {
  Fragment$StocktakeApprovalFields$levels$value$rejectors({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndComment',
  });

  factory Fragment$StocktakeApprovalFields$levels$value$rejectors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levels$value$rejectors(
      key: (l$key as String),
      value:
          Fragment$StocktakeApprovalFields$levels$value$rejectors$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Fragment$StocktakeApprovalFields$levels$value$rejectors$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeApprovalFields$levels$value$rejectors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levels$value$rejectors
    on Fragment$StocktakeApprovalFields$levels$value$rejectors {
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors<
    Fragment$StocktakeApprovalFields$levels$value$rejectors
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors<
  TRes
> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors(
    Fragment$StocktakeApprovalFields$levels$value$rejectors instance,
    TRes Function(Fragment$StocktakeApprovalFields$levels$value$rejectors) then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors;

  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors;

  TRes call({
    String? key,
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value? value,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value<TRes>
  get value;
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors<TRes> {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levels$value$rejectors _instance;

  final TRes Function(Fragment$StocktakeApprovalFields$levels$value$rejectors)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levels$value$rejectors(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Fragment$StocktakeApprovalFields$levels$value$rejectors$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value<TRes>
  get value =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value.stub(
        _res,
      );
}

class Fragment$StocktakeApprovalFields$levels$value$rejectors$value {
  Fragment$StocktakeApprovalFields$levels$value$rejectors$value({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Fragment$StocktakeApprovalFields$levels$value$rejectors$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levels$value$rejectors$value(
      content: (l$content as String),
      created:
          Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$StocktakeApprovalFields$levels$value$rejectors$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levels$value$rejectors$value
    on Fragment$StocktakeApprovalFields$levels$value$rejectors$value {
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value<
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value<
  TRes
> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value(
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value instance,
    TRes Function(Fragment$StocktakeApprovalFields$levels$value$rejectors$value)
    then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value;

  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value;

  TRes call({
    String? content,
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created?
    created,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levels$value$rejectors$value _instance;

  final TRes Function(
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created<
    TRes
  >
  get created =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created.stub(
        _res,
      );
}

class Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created {
  Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user?
  user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created
    on Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created {
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created<
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created<
  TRes
> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created(
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created
    instance,
    TRes Function(
      Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created,
    )
    then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created;

  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created;

  TRes call({
    DateTime? at,
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user?
    user,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created
  _instance;

  final TRes Function(
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user
                as Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user?
    user,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user<
    TRes
  >
  get user =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user.stub(
        _res,
      );
}

class Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user {
  Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user({
    required this.name,
    required this.emailAddress,
    this.$__typename = 'UserInfo',
  });

  factory Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user(
      name: (l$name as String),
      emailAddress: (l$emailAddress as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$emailAddress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user
    on Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user {
  CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user<
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user<
  TRes
> {
  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user(
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user
    instance,
    TRes Function(
      Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user,
    )
    then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user;

  factory CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user;

  TRes call({String? name, String? emailAddress, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user
  _instance;

  final TRes Function(
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? emailAddress, String? $__typename}) => _res;
}

class Fragment$StocktakeApprovalFields$modified {
  Fragment$StocktakeApprovalFields$modified({
    required this.at,
    this.user,
    this.$__typename = 'Modified',
  });

  factory Fragment$StocktakeApprovalFields$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$modified(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Fragment$StocktakeApprovalFields$modified$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Fragment$StocktakeApprovalFields$modified$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeApprovalFields$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$modified
    on Fragment$StocktakeApprovalFields$modified {
  CopyWith$Fragment$StocktakeApprovalFields$modified<
    Fragment$StocktakeApprovalFields$modified
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$modified(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$modified<TRes> {
  factory CopyWith$Fragment$StocktakeApprovalFields$modified(
    Fragment$StocktakeApprovalFields$modified instance,
    TRes Function(Fragment$StocktakeApprovalFields$modified) then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$modified;

  factory CopyWith$Fragment$StocktakeApprovalFields$modified.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeApprovalFields$modified;

  TRes call({
    DateTime? at,
    Fragment$StocktakeApprovalFields$modified$user? user,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeApprovalFields$modified$user<TRes> get user;
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$modified<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$modified<TRes> {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$modified(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$modified _instance;

  final TRes Function(Fragment$StocktakeApprovalFields$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user as Fragment$StocktakeApprovalFields$modified$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeApprovalFields$modified$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$StocktakeApprovalFields$modified$user.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeApprovalFields$modified$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$modified<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$modified<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$modified(this._res);

  TRes _res;

  call({
    DateTime? at,
    Fragment$StocktakeApprovalFields$modified$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeApprovalFields$modified$user<TRes> get user =>
      CopyWith$Fragment$StocktakeApprovalFields$modified$user.stub(_res);
}

class Fragment$StocktakeApprovalFields$modified$user {
  Fragment$StocktakeApprovalFields$modified$user({
    required this.name,
    required this.emailAddress,
    this.$__typename = 'UserInfo',
  });

  factory Fragment$StocktakeApprovalFields$modified$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeApprovalFields$modified$user(
      name: (l$name as String),
      emailAddress: (l$emailAddress as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$emailAddress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeApprovalFields$modified$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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

extension UtilityExtension$Fragment$StocktakeApprovalFields$modified$user
    on Fragment$StocktakeApprovalFields$modified$user {
  CopyWith$Fragment$StocktakeApprovalFields$modified$user<
    Fragment$StocktakeApprovalFields$modified$user
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeApprovalFields$modified$user(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeApprovalFields$modified$user<TRes> {
  factory CopyWith$Fragment$StocktakeApprovalFields$modified$user(
    Fragment$StocktakeApprovalFields$modified$user instance,
    TRes Function(Fragment$StocktakeApprovalFields$modified$user) then,
  ) = _CopyWithImpl$Fragment$StocktakeApprovalFields$modified$user;

  factory CopyWith$Fragment$StocktakeApprovalFields$modified$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeApprovalFields$modified$user;

  TRes call({String? name, String? emailAddress, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeApprovalFields$modified$user<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$modified$user<TRes> {
  _CopyWithImpl$Fragment$StocktakeApprovalFields$modified$user(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeApprovalFields$modified$user _instance;

  final TRes Function(Fragment$StocktakeApprovalFields$modified$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeApprovalFields$modified$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeApprovalFields$modified$user<TRes>
    implements CopyWith$Fragment$StocktakeApprovalFields$modified$user<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeApprovalFields$modified$user(this._res);

  TRes _res;

  call({String? name, String? emailAddress, String? $__typename}) => _res;
}
