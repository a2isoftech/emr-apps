import 'package:gql/ast.dart';

class Fragment$UserFragment {
  Fragment$UserFragment({
    required this.id,
    required this.active,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.employeeNumber,
    required this.jobTitle,
    required this.territoryIds,
    required this.defaultYardId,
    required this.jobRoleIds,
    this.territories,
    this.defaultYard,
    this.jobRoles,
    required this.created,
    required this.modified,
    required this.externalIds,
    this.permissions,
    this.$__typename = 'User',
  });

  factory Fragment$UserFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$active = json['active'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$emailAddress = json['emailAddress'];
    final l$employeeNumber = json['employeeNumber'];
    final l$jobTitle = json['jobTitle'];
    final l$territoryIds = json['territoryIds'];
    final l$defaultYardId = json['defaultYardId'];
    final l$jobRoleIds = json['jobRoleIds'];
    final l$territories = json['territories'];
    final l$defaultYard = json['defaultYard'];
    final l$jobRoles = json['jobRoles'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$externalIds = json['externalIds'];
    final l$permissions = json['permissions'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment(
      id: (l$id as String),
      active: (l$active as bool),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      emailAddress: (l$emailAddress as String),
      employeeNumber: (l$employeeNumber as String),
      jobTitle: (l$jobTitle as String),
      territoryIds:
          (l$territoryIds as List<dynamic>).map((e) => (e as String)).toList(),
      defaultYardId: (l$defaultYardId as String),
      jobRoleIds:
          (l$jobRoleIds as List<dynamic>).map((e) => (e as String)).toList(),
      territories: (l$territories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserFragment$territories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      defaultYard: l$defaultYard == null
          ? null
          : Fragment$UserFragment$defaultYard.fromJson(
              (l$defaultYard as Map<String, dynamic>)),
      jobRoles: (l$jobRoles as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserFragment$jobRoles.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      created: Fragment$UserFragment$created.fromJson(
          (l$created as Map<String, dynamic>)),
      modified: Fragment$UserFragment$modified.fromJson(
          (l$modified as Map<String, dynamic>)),
      externalIds: (l$externalIds as List<dynamic>)
          .map((e) => Fragment$UserFragment$externalIds.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      permissions: (l$permissions as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool active;

  final String firstName;

  final String lastName;

  final String emailAddress;

  final String employeeNumber;

  final String jobTitle;

  final List<String> territoryIds;

  final String defaultYardId;

  final List<String> jobRoleIds;

  final List<Fragment$UserFragment$territories?>? territories;

  final Fragment$UserFragment$defaultYard? defaultYard;

  final List<Fragment$UserFragment$jobRoles?>? jobRoles;

  final Fragment$UserFragment$created created;

  final Fragment$UserFragment$modified modified;

  final List<Fragment$UserFragment$externalIds> externalIds;

  final List<String?>? permissions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$employeeNumber = employeeNumber;
    _resultData['employeeNumber'] = l$employeeNumber;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$territoryIds = territoryIds;
    _resultData['territoryIds'] = l$territoryIds.map((e) => e).toList();
    final l$defaultYardId = defaultYardId;
    _resultData['defaultYardId'] = l$defaultYardId;
    final l$jobRoleIds = jobRoleIds;
    _resultData['jobRoleIds'] = l$jobRoleIds.map((e) => e).toList();
    final l$territories = territories;
    _resultData['territories'] =
        l$territories?.map((e) => e?.toJson()).toList();
    final l$defaultYard = defaultYard;
    _resultData['defaultYard'] = l$defaultYard?.toJson();
    final l$jobRoles = jobRoles;
    _resultData['jobRoles'] = l$jobRoles?.map((e) => e?.toJson()).toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$externalIds = externalIds;
    _resultData['externalIds'] = l$externalIds.map((e) => e.toJson()).toList();
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$active = active;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$emailAddress = emailAddress;
    final l$employeeNumber = employeeNumber;
    final l$jobTitle = jobTitle;
    final l$territoryIds = territoryIds;
    final l$defaultYardId = defaultYardId;
    final l$jobRoleIds = jobRoleIds;
    final l$territories = territories;
    final l$defaultYard = defaultYard;
    final l$jobRoles = jobRoles;
    final l$created = created;
    final l$modified = modified;
    final l$externalIds = externalIds;
    final l$permissions = permissions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$active,
      l$firstName,
      l$lastName,
      l$emailAddress,
      l$employeeNumber,
      l$jobTitle,
      Object.hashAll(l$territoryIds.map((v) => v)),
      l$defaultYardId,
      Object.hashAll(l$jobRoleIds.map((v) => v)),
      l$territories == null
          ? null
          : Object.hashAll(l$territories.map((v) => v)),
      l$defaultYard,
      l$jobRoles == null ? null : Object.hashAll(l$jobRoles.map((v) => v)),
      l$created,
      l$modified,
      Object.hashAll(l$externalIds.map((v) => v)),
      l$permissions == null
          ? null
          : Object.hashAll(l$permissions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserFragment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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
    final l$employeeNumber = employeeNumber;
    final lOther$employeeNumber = other.employeeNumber;
    if (l$employeeNumber != lOther$employeeNumber) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
      return false;
    }
    final l$territoryIds = territoryIds;
    final lOther$territoryIds = other.territoryIds;
    if (l$territoryIds.length != lOther$territoryIds.length) {
      return false;
    }
    for (int i = 0; i < l$territoryIds.length; i++) {
      final l$territoryIds$entry = l$territoryIds[i];
      final lOther$territoryIds$entry = lOther$territoryIds[i];
      if (l$territoryIds$entry != lOther$territoryIds$entry) {
        return false;
      }
    }
    final l$defaultYardId = defaultYardId;
    final lOther$defaultYardId = other.defaultYardId;
    if (l$defaultYardId != lOther$defaultYardId) {
      return false;
    }
    final l$jobRoleIds = jobRoleIds;
    final lOther$jobRoleIds = other.jobRoleIds;
    if (l$jobRoleIds.length != lOther$jobRoleIds.length) {
      return false;
    }
    for (int i = 0; i < l$jobRoleIds.length; i++) {
      final l$jobRoleIds$entry = l$jobRoleIds[i];
      final lOther$jobRoleIds$entry = lOther$jobRoleIds[i];
      if (l$jobRoleIds$entry != lOther$jobRoleIds$entry) {
        return false;
      }
    }
    final l$territories = territories;
    final lOther$territories = other.territories;
    if (l$territories != null && lOther$territories != null) {
      if (l$territories.length != lOther$territories.length) {
        return false;
      }
      for (int i = 0; i < l$territories.length; i++) {
        final l$territories$entry = l$territories[i];
        final lOther$territories$entry = lOther$territories[i];
        if (l$territories$entry != lOther$territories$entry) {
          return false;
        }
      }
    } else if (l$territories != lOther$territories) {
      return false;
    }
    final l$defaultYard = defaultYard;
    final lOther$defaultYard = other.defaultYard;
    if (l$defaultYard != lOther$defaultYard) {
      return false;
    }
    final l$jobRoles = jobRoles;
    final lOther$jobRoles = other.jobRoles;
    if (l$jobRoles != null && lOther$jobRoles != null) {
      if (l$jobRoles.length != lOther$jobRoles.length) {
        return false;
      }
      for (int i = 0; i < l$jobRoles.length; i++) {
        final l$jobRoles$entry = l$jobRoles[i];
        final lOther$jobRoles$entry = lOther$jobRoles[i];
        if (l$jobRoles$entry != lOther$jobRoles$entry) {
          return false;
        }
      }
    } else if (l$jobRoles != lOther$jobRoles) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$externalIds = externalIds;
    final lOther$externalIds = other.externalIds;
    if (l$externalIds.length != lOther$externalIds.length) {
      return false;
    }
    for (int i = 0; i < l$externalIds.length; i++) {
      final l$externalIds$entry = l$externalIds[i];
      final lOther$externalIds$entry = lOther$externalIds[i];
      if (l$externalIds$entry != lOther$externalIds$entry) {
        return false;
      }
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions != null && lOther$permissions != null) {
      if (l$permissions.length != lOther$permissions.length) {
        return false;
      }
      for (int i = 0; i < l$permissions.length; i++) {
        final l$permissions$entry = l$permissions[i];
        final lOther$permissions$entry = lOther$permissions[i];
        if (l$permissions$entry != lOther$permissions$entry) {
          return false;
        }
      }
    } else if (l$permissions != lOther$permissions) {
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

extension UtilityExtension$Fragment$UserFragment on Fragment$UserFragment {
  CopyWith$Fragment$UserFragment<Fragment$UserFragment> get copyWith =>
      CopyWith$Fragment$UserFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserFragment<TRes> {
  factory CopyWith$Fragment$UserFragment(
    Fragment$UserFragment instance,
    TRes Function(Fragment$UserFragment) then,
  ) = _CopyWithImpl$Fragment$UserFragment;

  factory CopyWith$Fragment$UserFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment;

  TRes call({
    String? id,
    bool? active,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? employeeNumber,
    String? jobTitle,
    List<String>? territoryIds,
    String? defaultYardId,
    List<String>? jobRoleIds,
    List<Fragment$UserFragment$territories?>? territories,
    Fragment$UserFragment$defaultYard? defaultYard,
    List<Fragment$UserFragment$jobRoles?>? jobRoles,
    Fragment$UserFragment$created? created,
    Fragment$UserFragment$modified? modified,
    List<Fragment$UserFragment$externalIds>? externalIds,
    List<String?>? permissions,
    String? $__typename,
  });
  TRes territories(
      Iterable<Fragment$UserFragment$territories?>? Function(
              Iterable<
                  CopyWith$Fragment$UserFragment$territories<
                      Fragment$UserFragment$territories>?>?)
          _fn);
  CopyWith$Fragment$UserFragment$defaultYard<TRes> get defaultYard;
  TRes jobRoles(
      Iterable<Fragment$UserFragment$jobRoles?>? Function(
              Iterable<
                  CopyWith$Fragment$UserFragment$jobRoles<
                      Fragment$UserFragment$jobRoles>?>?)
          _fn);
  CopyWith$Fragment$UserFragment$created<TRes> get created;
  CopyWith$Fragment$UserFragment$modified<TRes> get modified;
  TRes externalIds(
      Iterable<Fragment$UserFragment$externalIds> Function(
              Iterable<
                  CopyWith$Fragment$UserFragment$externalIds<
                      Fragment$UserFragment$externalIds>>)
          _fn);
}

class _CopyWithImpl$Fragment$UserFragment<TRes>
    implements CopyWith$Fragment$UserFragment<TRes> {
  _CopyWithImpl$Fragment$UserFragment(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment _instance;

  final TRes Function(Fragment$UserFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? active = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? employeeNumber = _undefined,
    Object? jobTitle = _undefined,
    Object? territoryIds = _undefined,
    Object? defaultYardId = _undefined,
    Object? jobRoleIds = _undefined,
    Object? territories = _undefined,
    Object? defaultYard = _undefined,
    Object? jobRoles = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? externalIds = _undefined,
    Object? permissions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        emailAddress: emailAddress == _undefined || emailAddress == null
            ? _instance.emailAddress
            : (emailAddress as String),
        employeeNumber: employeeNumber == _undefined || employeeNumber == null
            ? _instance.employeeNumber
            : (employeeNumber as String),
        jobTitle: jobTitle == _undefined || jobTitle == null
            ? _instance.jobTitle
            : (jobTitle as String),
        territoryIds: territoryIds == _undefined || territoryIds == null
            ? _instance.territoryIds
            : (territoryIds as List<String>),
        defaultYardId: defaultYardId == _undefined || defaultYardId == null
            ? _instance.defaultYardId
            : (defaultYardId as String),
        jobRoleIds: jobRoleIds == _undefined || jobRoleIds == null
            ? _instance.jobRoleIds
            : (jobRoleIds as List<String>),
        territories: territories == _undefined
            ? _instance.territories
            : (territories as List<Fragment$UserFragment$territories?>?),
        defaultYard: defaultYard == _undefined
            ? _instance.defaultYard
            : (defaultYard as Fragment$UserFragment$defaultYard?),
        jobRoles: jobRoles == _undefined
            ? _instance.jobRoles
            : (jobRoles as List<Fragment$UserFragment$jobRoles?>?),
        created: created == _undefined || created == null
            ? _instance.created
            : (created as Fragment$UserFragment$created),
        modified: modified == _undefined || modified == null
            ? _instance.modified
            : (modified as Fragment$UserFragment$modified),
        externalIds: externalIds == _undefined || externalIds == null
            ? _instance.externalIds
            : (externalIds as List<Fragment$UserFragment$externalIds>),
        permissions: permissions == _undefined
            ? _instance.permissions
            : (permissions as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes territories(
          Iterable<Fragment$UserFragment$territories?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserFragment$territories<
                          Fragment$UserFragment$territories>?>?)
              _fn) =>
      call(
          territories: _fn(_instance.territories?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserFragment$territories(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Fragment$UserFragment$defaultYard<TRes> get defaultYard {
    final local$defaultYard = _instance.defaultYard;
    return local$defaultYard == null
        ? CopyWith$Fragment$UserFragment$defaultYard.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment$defaultYard(
            local$defaultYard, (e) => call(defaultYard: e));
  }

  TRes jobRoles(
          Iterable<Fragment$UserFragment$jobRoles?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserFragment$jobRoles<
                          Fragment$UserFragment$jobRoles>?>?)
              _fn) =>
      call(
          jobRoles: _fn(_instance.jobRoles?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserFragment$jobRoles(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Fragment$UserFragment$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$UserFragment$created(
        local$created, (e) => call(created: e));
  }

  CopyWith$Fragment$UserFragment$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$UserFragment$modified(
        local$modified, (e) => call(modified: e));
  }

  TRes externalIds(
          Iterable<Fragment$UserFragment$externalIds> Function(
                  Iterable<
                      CopyWith$Fragment$UserFragment$externalIds<
                          Fragment$UserFragment$externalIds>>)
              _fn) =>
      call(
          externalIds: _fn(_instance.externalIds
              .map((e) => CopyWith$Fragment$UserFragment$externalIds(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$UserFragment<TRes>
    implements CopyWith$Fragment$UserFragment<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment(this._res);

  TRes _res;

  call({
    String? id,
    bool? active,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? employeeNumber,
    String? jobTitle,
    List<String>? territoryIds,
    String? defaultYardId,
    List<String>? jobRoleIds,
    List<Fragment$UserFragment$territories?>? territories,
    Fragment$UserFragment$defaultYard? defaultYard,
    List<Fragment$UserFragment$jobRoles?>? jobRoles,
    Fragment$UserFragment$created? created,
    Fragment$UserFragment$modified? modified,
    List<Fragment$UserFragment$externalIds>? externalIds,
    List<String?>? permissions,
    String? $__typename,
  }) =>
      _res;

  territories(_fn) => _res;

  CopyWith$Fragment$UserFragment$defaultYard<TRes> get defaultYard =>
      CopyWith$Fragment$UserFragment$defaultYard.stub(_res);

  jobRoles(_fn) => _res;

  CopyWith$Fragment$UserFragment$created<TRes> get created =>
      CopyWith$Fragment$UserFragment$created.stub(_res);

  CopyWith$Fragment$UserFragment$modified<TRes> get modified =>
      CopyWith$Fragment$UserFragment$modified.stub(_res);

  externalIds(_fn) => _res;
}

const fragmentDefinitionUserFragment = FragmentDefinitionNode(
  name: NameNode(value: 'UserFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'active'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
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
      name: NameNode(value: 'employeeNumber'),
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
      name: NameNode(value: 'territoryIds'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'defaultYardId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'jobRoleIds'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'territories'),
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
          name: NameNode(value: 'code'),
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
      name: NameNode(value: 'defaultYard'),
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
          name: NameNode(value: 'shortName'),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'jobRoles'),
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
      name: NameNode(value: 'created'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'userInfoId'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'userName'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'at'),
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
      name: NameNode(value: 'modified'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'userInfoId'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'userName'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'at'),
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
      name: NameNode(value: 'externalIds'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      name: NameNode(value: 'permissions'),
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
);
const documentNodeFragmentUserFragment = DocumentNode(definitions: [
  fragmentDefinitionUserFragment,
]);

class Fragment$UserFragment$territories {
  Fragment$UserFragment$territories({
    required this.id,
    required this.name,
    required this.code,
    this.$__typename = 'Territory',
  });

  factory Fragment$UserFragment$territories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment$territories(
      id: (l$id as String),
      name: (l$name as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserFragment$territories ||
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
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Fragment$UserFragment$territories
    on Fragment$UserFragment$territories {
  CopyWith$Fragment$UserFragment$territories<Fragment$UserFragment$territories>
      get copyWith => CopyWith$Fragment$UserFragment$territories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserFragment$territories<TRes> {
  factory CopyWith$Fragment$UserFragment$territories(
    Fragment$UserFragment$territories instance,
    TRes Function(Fragment$UserFragment$territories) then,
  ) = _CopyWithImpl$Fragment$UserFragment$territories;

  factory CopyWith$Fragment$UserFragment$territories.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment$territories;

  TRes call({
    String? id,
    String? name,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserFragment$territories<TRes>
    implements CopyWith$Fragment$UserFragment$territories<TRes> {
  _CopyWithImpl$Fragment$UserFragment$territories(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment$territories _instance;

  final TRes Function(Fragment$UserFragment$territories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment$territories(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserFragment$territories<TRes>
    implements CopyWith$Fragment$UserFragment$territories<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment$territories(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? code,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserFragment$defaultYard {
  Fragment$UserFragment$defaultYard({
    required this.id,
    required this.shortName,
    required this.yardCode,
    this.$__typename = 'Yard',
  });

  factory Fragment$UserFragment$defaultYard.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$shortName = json['shortName'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment$defaultYard(
      id: (l$id as String),
      shortName: (l$shortName as String),
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String shortName;

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$shortName = shortName;
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$shortName,
      l$yardCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserFragment$defaultYard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Fragment$UserFragment$defaultYard
    on Fragment$UserFragment$defaultYard {
  CopyWith$Fragment$UserFragment$defaultYard<Fragment$UserFragment$defaultYard>
      get copyWith => CopyWith$Fragment$UserFragment$defaultYard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserFragment$defaultYard<TRes> {
  factory CopyWith$Fragment$UserFragment$defaultYard(
    Fragment$UserFragment$defaultYard instance,
    TRes Function(Fragment$UserFragment$defaultYard) then,
  ) = _CopyWithImpl$Fragment$UserFragment$defaultYard;

  factory CopyWith$Fragment$UserFragment$defaultYard.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment$defaultYard;

  TRes call({
    String? id,
    String? shortName,
    String? yardCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserFragment$defaultYard<TRes>
    implements CopyWith$Fragment$UserFragment$defaultYard<TRes> {
  _CopyWithImpl$Fragment$UserFragment$defaultYard(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment$defaultYard _instance;

  final TRes Function(Fragment$UserFragment$defaultYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? shortName = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment$defaultYard(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        shortName: shortName == _undefined || shortName == null
            ? _instance.shortName
            : (shortName as String),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserFragment$defaultYard<TRes>
    implements CopyWith$Fragment$UserFragment$defaultYard<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment$defaultYard(this._res);

  TRes _res;

  call({
    String? id,
    String? shortName,
    String? yardCode,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserFragment$jobRoles {
  Fragment$UserFragment$jobRoles({
    required this.id,
    required this.name,
    required this.description,
    this.$__typename = 'JobRole',
  });

  factory Fragment$UserFragment$jobRoles.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment$jobRoles(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserFragment$jobRoles ||
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

extension UtilityExtension$Fragment$UserFragment$jobRoles
    on Fragment$UserFragment$jobRoles {
  CopyWith$Fragment$UserFragment$jobRoles<Fragment$UserFragment$jobRoles>
      get copyWith => CopyWith$Fragment$UserFragment$jobRoles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserFragment$jobRoles<TRes> {
  factory CopyWith$Fragment$UserFragment$jobRoles(
    Fragment$UserFragment$jobRoles instance,
    TRes Function(Fragment$UserFragment$jobRoles) then,
  ) = _CopyWithImpl$Fragment$UserFragment$jobRoles;

  factory CopyWith$Fragment$UserFragment$jobRoles.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment$jobRoles;

  TRes call({
    String? id,
    String? name,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserFragment$jobRoles<TRes>
    implements CopyWith$Fragment$UserFragment$jobRoles<TRes> {
  _CopyWithImpl$Fragment$UserFragment$jobRoles(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment$jobRoles _instance;

  final TRes Function(Fragment$UserFragment$jobRoles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment$jobRoles(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserFragment$jobRoles<TRes>
    implements CopyWith$Fragment$UserFragment$jobRoles<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment$jobRoles(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserFragment$created {
  Fragment$UserFragment$created({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Fragment$UserFragment$created.fromJson(Map<String, dynamic> json) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment$created(
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userInfoId,
      l$userName,
      l$at,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserFragment$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Fragment$UserFragment$created
    on Fragment$UserFragment$created {
  CopyWith$Fragment$UserFragment$created<Fragment$UserFragment$created>
      get copyWith => CopyWith$Fragment$UserFragment$created(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserFragment$created<TRes> {
  factory CopyWith$Fragment$UserFragment$created(
    Fragment$UserFragment$created instance,
    TRes Function(Fragment$UserFragment$created) then,
  ) = _CopyWithImpl$Fragment$UserFragment$created;

  factory CopyWith$Fragment$UserFragment$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment$created;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserFragment$created<TRes>
    implements CopyWith$Fragment$UserFragment$created<TRes> {
  _CopyWithImpl$Fragment$UserFragment$created(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment$created _instance;

  final TRes Function(Fragment$UserFragment$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment$created(
        userInfoId: userInfoId == _undefined || userInfoId == null
            ? _instance.userInfoId
            : (userInfoId as String),
        userName: userName == _undefined || userName == null
            ? _instance.userName
            : (userName as String),
        at: at == _undefined || at == null ? _instance.at : (at as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserFragment$created<TRes>
    implements CopyWith$Fragment$UserFragment$created<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment$created(this._res);

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserFragment$modified {
  Fragment$UserFragment$modified({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Modified',
  });

  factory Fragment$UserFragment$modified.fromJson(Map<String, dynamic> json) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment$modified(
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userInfoId,
      l$userName,
      l$at,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserFragment$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Fragment$UserFragment$modified
    on Fragment$UserFragment$modified {
  CopyWith$Fragment$UserFragment$modified<Fragment$UserFragment$modified>
      get copyWith => CopyWith$Fragment$UserFragment$modified(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserFragment$modified<TRes> {
  factory CopyWith$Fragment$UserFragment$modified(
    Fragment$UserFragment$modified instance,
    TRes Function(Fragment$UserFragment$modified) then,
  ) = _CopyWithImpl$Fragment$UserFragment$modified;

  factory CopyWith$Fragment$UserFragment$modified.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment$modified;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserFragment$modified<TRes>
    implements CopyWith$Fragment$UserFragment$modified<TRes> {
  _CopyWithImpl$Fragment$UserFragment$modified(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment$modified _instance;

  final TRes Function(Fragment$UserFragment$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment$modified(
        userInfoId: userInfoId == _undefined || userInfoId == null
            ? _instance.userInfoId
            : (userInfoId as String),
        userName: userName == _undefined || userName == null
            ? _instance.userName
            : (userName as String),
        at: at == _undefined || at == null ? _instance.at : (at as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserFragment$modified<TRes>
    implements CopyWith$Fragment$UserFragment$modified<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment$modified(this._res);

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserFragment$externalIds {
  Fragment$UserFragment$externalIds({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Fragment$UserFragment$externalIds.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment$externalIds(
      key: (l$key as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserFragment$externalIds ||
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

extension UtilityExtension$Fragment$UserFragment$externalIds
    on Fragment$UserFragment$externalIds {
  CopyWith$Fragment$UserFragment$externalIds<Fragment$UserFragment$externalIds>
      get copyWith => CopyWith$Fragment$UserFragment$externalIds(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserFragment$externalIds<TRes> {
  factory CopyWith$Fragment$UserFragment$externalIds(
    Fragment$UserFragment$externalIds instance,
    TRes Function(Fragment$UserFragment$externalIds) then,
  ) = _CopyWithImpl$Fragment$UserFragment$externalIds;

  factory CopyWith$Fragment$UserFragment$externalIds.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment$externalIds;

  TRes call({
    String? key,
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserFragment$externalIds<TRes>
    implements CopyWith$Fragment$UserFragment$externalIds<TRes> {
  _CopyWithImpl$Fragment$UserFragment$externalIds(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment$externalIds _instance;

  final TRes Function(Fragment$UserFragment$externalIds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment$externalIds(
        key: key == _undefined || key == null ? _instance.key : (key as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserFragment$externalIds<TRes>
    implements CopyWith$Fragment$UserFragment$externalIds<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment$externalIds(this._res);

  TRes _res;

  call({
    String? key,
    String? value,
    String? $__typename,
  }) =>
      _res;
}
