import '../../fragments/user_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Query$GetUserInfo {
  Query$GetUserInfo({
    required this.me,
    required this.userInfo,
    this.$__typename = 'Query',
  });

  factory Query$GetUserInfo.fromJson(Map<String, dynamic> json) {
    final l$me = json['me'];
    final l$userInfo = json['userInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInfo(
      me: Fragment$UserFragment.fromJson((l$me as Map<String, dynamic>)),
      userInfo: Query$GetUserInfo$userInfo.fromJson(
          (l$userInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserFragment me;

  final Query$GetUserInfo$userInfo userInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$me = me;
    _resultData['me'] = l$me.toJson();
    final l$userInfo = userInfo;
    _resultData['userInfo'] = l$userInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$me = me;
    final l$userInfo = userInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$me,
      l$userInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserInfo || runtimeType != other.runtimeType) {
      return false;
    }
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) {
      return false;
    }
    final l$userInfo = userInfo;
    final lOther$userInfo = other.userInfo;
    if (l$userInfo != lOther$userInfo) {
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

extension UtilityExtension$Query$GetUserInfo on Query$GetUserInfo {
  CopyWith$Query$GetUserInfo<Query$GetUserInfo> get copyWith =>
      CopyWith$Query$GetUserInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserInfo<TRes> {
  factory CopyWith$Query$GetUserInfo(
    Query$GetUserInfo instance,
    TRes Function(Query$GetUserInfo) then,
  ) = _CopyWithImpl$Query$GetUserInfo;

  factory CopyWith$Query$GetUserInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInfo;

  TRes call({
    Fragment$UserFragment? me,
    Query$GetUserInfo$userInfo? userInfo,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get me;
  CopyWith$Query$GetUserInfo$userInfo<TRes> get userInfo;
}

class _CopyWithImpl$Query$GetUserInfo<TRes>
    implements CopyWith$Query$GetUserInfo<TRes> {
  _CopyWithImpl$Query$GetUserInfo(
    this._instance,
    this._then,
  );

  final Query$GetUserInfo _instance;

  final TRes Function(Query$GetUserInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? me = _undefined,
    Object? userInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserInfo(
        me: me == _undefined || me == null
            ? _instance.me
            : (me as Fragment$UserFragment),
        userInfo: userInfo == _undefined || userInfo == null
            ? _instance.userInfo
            : (userInfo as Query$GetUserInfo$userInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get me {
    final local$me = _instance.me;
    return CopyWith$Fragment$UserFragment(local$me, (e) => call(me: e));
  }

  CopyWith$Query$GetUserInfo$userInfo<TRes> get userInfo {
    final local$userInfo = _instance.userInfo;
    return CopyWith$Query$GetUserInfo$userInfo(
        local$userInfo, (e) => call(userInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetUserInfo<TRes>
    implements CopyWith$Query$GetUserInfo<TRes> {
  _CopyWithStubImpl$Query$GetUserInfo(this._res);

  TRes _res;

  call({
    Fragment$UserFragment? me,
    Query$GetUserInfo$userInfo? userInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get me =>
      CopyWith$Fragment$UserFragment.stub(_res);

  CopyWith$Query$GetUserInfo$userInfo<TRes> get userInfo =>
      CopyWith$Query$GetUserInfo$userInfo.stub(_res);
}

const documentNodeQueryGetUserInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserInfo'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'me'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFragment'),
            directives: [],
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
        name: NameNode(value: 'userInfo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'defaultTerritory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'defaultOrderBookTypeId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'defaultDepot'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userOrderBooks'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'orderBookTypeId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'orderBookName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gradeType'),
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
            name: NameNode(value: 'territories'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'territoryCode'),
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
                name: NameNode(value: 'depots'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'depotNo'),
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
                    name: NameNode(value: 'gradeType'),
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
                    name: NameNode(value: 'cmpCode'),
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
          FieldNode(
            name: NameNode(value: 'yards'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'yardCode'),
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
                name: NameNode(value: 'shortName'),
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
            name: NameNode(value: 'crmManagedBuyers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'azureUserId'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'companyAccess'),
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
  fragmentDefinitionUserFragment,
]);

class Query$GetUserInfo$userInfo {
  Query$GetUserInfo$userInfo({
    required this.defaultTerritory,
    this.defaultOrderBookTypeId,
    required this.defaultDepot,
    this.userOrderBooks,
    required this.territories,
    this.yards,
    required this.crmManagedBuyers,
    required this.companyAccess,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetUserInfo$userInfo.fromJson(Map<String, dynamic> json) {
    final l$defaultTerritory = json['defaultTerritory'];
    final l$defaultOrderBookTypeId = json['defaultOrderBookTypeId'];
    final l$defaultDepot = json['defaultDepot'];
    final l$userOrderBooks = json['userOrderBooks'];
    final l$territories = json['territories'];
    final l$yards = json['yards'];
    final l$crmManagedBuyers = json['crmManagedBuyers'];
    final l$companyAccess = json['companyAccess'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInfo$userInfo(
      defaultTerritory: (l$defaultTerritory as String),
      defaultOrderBookTypeId: (l$defaultOrderBookTypeId as int?),
      defaultDepot: (l$defaultDepot as String),
      userOrderBooks: (l$userOrderBooks as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUserInfo$userInfo$userOrderBooks.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      territories: (l$territories as List<dynamic>)
          .map((e) => Query$GetUserInfo$userInfo$territories.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      yards: (l$yards as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUserInfo$userInfo$yards.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      crmManagedBuyers: (l$crmManagedBuyers as List<dynamic>)
          .map((e) => Query$GetUserInfo$userInfo$crmManagedBuyers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      companyAccess:
          (l$companyAccess as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String defaultTerritory;

  final int? defaultOrderBookTypeId;

  final String defaultDepot;

  final List<Query$GetUserInfo$userInfo$userOrderBooks?>? userOrderBooks;

  final List<Query$GetUserInfo$userInfo$territories> territories;

  final List<Query$GetUserInfo$userInfo$yards?>? yards;

  final List<Query$GetUserInfo$userInfo$crmManagedBuyers> crmManagedBuyers;

  final List<String> companyAccess;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$defaultTerritory = defaultTerritory;
    _resultData['defaultTerritory'] = l$defaultTerritory;
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    _resultData['defaultOrderBookTypeId'] = l$defaultOrderBookTypeId;
    final l$defaultDepot = defaultDepot;
    _resultData['defaultDepot'] = l$defaultDepot;
    final l$userOrderBooks = userOrderBooks;
    _resultData['userOrderBooks'] =
        l$userOrderBooks?.map((e) => e?.toJson()).toList();
    final l$territories = territories;
    _resultData['territories'] = l$territories.map((e) => e.toJson()).toList();
    final l$yards = yards;
    _resultData['yards'] = l$yards?.map((e) => e?.toJson()).toList();
    final l$crmManagedBuyers = crmManagedBuyers;
    _resultData['crmManagedBuyers'] =
        l$crmManagedBuyers.map((e) => e.toJson()).toList();
    final l$companyAccess = companyAccess;
    _resultData['companyAccess'] = l$companyAccess.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$defaultTerritory = defaultTerritory;
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    final l$defaultDepot = defaultDepot;
    final l$userOrderBooks = userOrderBooks;
    final l$territories = territories;
    final l$yards = yards;
    final l$crmManagedBuyers = crmManagedBuyers;
    final l$companyAccess = companyAccess;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$defaultTerritory,
      l$defaultOrderBookTypeId,
      l$defaultDepot,
      l$userOrderBooks == null
          ? null
          : Object.hashAll(l$userOrderBooks.map((v) => v)),
      Object.hashAll(l$territories.map((v) => v)),
      l$yards == null ? null : Object.hashAll(l$yards.map((v) => v)),
      Object.hashAll(l$crmManagedBuyers.map((v) => v)),
      Object.hashAll(l$companyAccess.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserInfo$userInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$defaultTerritory = defaultTerritory;
    final lOther$defaultTerritory = other.defaultTerritory;
    if (l$defaultTerritory != lOther$defaultTerritory) {
      return false;
    }
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    final lOther$defaultOrderBookTypeId = other.defaultOrderBookTypeId;
    if (l$defaultOrderBookTypeId != lOther$defaultOrderBookTypeId) {
      return false;
    }
    final l$defaultDepot = defaultDepot;
    final lOther$defaultDepot = other.defaultDepot;
    if (l$defaultDepot != lOther$defaultDepot) {
      return false;
    }
    final l$userOrderBooks = userOrderBooks;
    final lOther$userOrderBooks = other.userOrderBooks;
    if (l$userOrderBooks != null && lOther$userOrderBooks != null) {
      if (l$userOrderBooks.length != lOther$userOrderBooks.length) {
        return false;
      }
      for (int i = 0; i < l$userOrderBooks.length; i++) {
        final l$userOrderBooks$entry = l$userOrderBooks[i];
        final lOther$userOrderBooks$entry = lOther$userOrderBooks[i];
        if (l$userOrderBooks$entry != lOther$userOrderBooks$entry) {
          return false;
        }
      }
    } else if (l$userOrderBooks != lOther$userOrderBooks) {
      return false;
    }
    final l$territories = territories;
    final lOther$territories = other.territories;
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
    final l$yards = yards;
    final lOther$yards = other.yards;
    if (l$yards != null && lOther$yards != null) {
      if (l$yards.length != lOther$yards.length) {
        return false;
      }
      for (int i = 0; i < l$yards.length; i++) {
        final l$yards$entry = l$yards[i];
        final lOther$yards$entry = lOther$yards[i];
        if (l$yards$entry != lOther$yards$entry) {
          return false;
        }
      }
    } else if (l$yards != lOther$yards) {
      return false;
    }
    final l$crmManagedBuyers = crmManagedBuyers;
    final lOther$crmManagedBuyers = other.crmManagedBuyers;
    if (l$crmManagedBuyers.length != lOther$crmManagedBuyers.length) {
      return false;
    }
    for (int i = 0; i < l$crmManagedBuyers.length; i++) {
      final l$crmManagedBuyers$entry = l$crmManagedBuyers[i];
      final lOther$crmManagedBuyers$entry = lOther$crmManagedBuyers[i];
      if (l$crmManagedBuyers$entry != lOther$crmManagedBuyers$entry) {
        return false;
      }
    }
    final l$companyAccess = companyAccess;
    final lOther$companyAccess = other.companyAccess;
    if (l$companyAccess.length != lOther$companyAccess.length) {
      return false;
    }
    for (int i = 0; i < l$companyAccess.length; i++) {
      final l$companyAccess$entry = l$companyAccess[i];
      final lOther$companyAccess$entry = lOther$companyAccess[i];
      if (l$companyAccess$entry != lOther$companyAccess$entry) {
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

extension UtilityExtension$Query$GetUserInfo$userInfo
    on Query$GetUserInfo$userInfo {
  CopyWith$Query$GetUserInfo$userInfo<Query$GetUserInfo$userInfo>
      get copyWith => CopyWith$Query$GetUserInfo$userInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserInfo$userInfo<TRes> {
  factory CopyWith$Query$GetUserInfo$userInfo(
    Query$GetUserInfo$userInfo instance,
    TRes Function(Query$GetUserInfo$userInfo) then,
  ) = _CopyWithImpl$Query$GetUserInfo$userInfo;

  factory CopyWith$Query$GetUserInfo$userInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInfo$userInfo;

  TRes call({
    String? defaultTerritory,
    int? defaultOrderBookTypeId,
    String? defaultDepot,
    List<Query$GetUserInfo$userInfo$userOrderBooks?>? userOrderBooks,
    List<Query$GetUserInfo$userInfo$territories>? territories,
    List<Query$GetUserInfo$userInfo$yards?>? yards,
    List<Query$GetUserInfo$userInfo$crmManagedBuyers>? crmManagedBuyers,
    List<String>? companyAccess,
    String? $__typename,
  });
  TRes userOrderBooks(
      Iterable<Query$GetUserInfo$userInfo$userOrderBooks?>? Function(
              Iterable<
                  CopyWith$Query$GetUserInfo$userInfo$userOrderBooks<
                      Query$GetUserInfo$userInfo$userOrderBooks>?>?)
          _fn);
  TRes territories(
      Iterable<Query$GetUserInfo$userInfo$territories> Function(
              Iterable<
                  CopyWith$Query$GetUserInfo$userInfo$territories<
                      Query$GetUserInfo$userInfo$territories>>)
          _fn);
  TRes yards(
      Iterable<Query$GetUserInfo$userInfo$yards?>? Function(
              Iterable<
                  CopyWith$Query$GetUserInfo$userInfo$yards<
                      Query$GetUserInfo$userInfo$yards>?>?)
          _fn);
  TRes crmManagedBuyers(
      Iterable<Query$GetUserInfo$userInfo$crmManagedBuyers> Function(
              Iterable<
                  CopyWith$Query$GetUserInfo$userInfo$crmManagedBuyers<
                      Query$GetUserInfo$userInfo$crmManagedBuyers>>)
          _fn);
}

class _CopyWithImpl$Query$GetUserInfo$userInfo<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo<TRes> {
  _CopyWithImpl$Query$GetUserInfo$userInfo(
    this._instance,
    this._then,
  );

  final Query$GetUserInfo$userInfo _instance;

  final TRes Function(Query$GetUserInfo$userInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? defaultTerritory = _undefined,
    Object? defaultOrderBookTypeId = _undefined,
    Object? defaultDepot = _undefined,
    Object? userOrderBooks = _undefined,
    Object? territories = _undefined,
    Object? yards = _undefined,
    Object? crmManagedBuyers = _undefined,
    Object? companyAccess = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserInfo$userInfo(
        defaultTerritory:
            defaultTerritory == _undefined || defaultTerritory == null
                ? _instance.defaultTerritory
                : (defaultTerritory as String),
        defaultOrderBookTypeId: defaultOrderBookTypeId == _undefined
            ? _instance.defaultOrderBookTypeId
            : (defaultOrderBookTypeId as int?),
        defaultDepot: defaultDepot == _undefined || defaultDepot == null
            ? _instance.defaultDepot
            : (defaultDepot as String),
        userOrderBooks: userOrderBooks == _undefined
            ? _instance.userOrderBooks
            : (userOrderBooks
                as List<Query$GetUserInfo$userInfo$userOrderBooks?>?),
        territories: territories == _undefined || territories == null
            ? _instance.territories
            : (territories as List<Query$GetUserInfo$userInfo$territories>),
        yards: yards == _undefined
            ? _instance.yards
            : (yards as List<Query$GetUserInfo$userInfo$yards?>?),
        crmManagedBuyers:
            crmManagedBuyers == _undefined || crmManagedBuyers == null
                ? _instance.crmManagedBuyers
                : (crmManagedBuyers
                    as List<Query$GetUserInfo$userInfo$crmManagedBuyers>),
        companyAccess: companyAccess == _undefined || companyAccess == null
            ? _instance.companyAccess
            : (companyAccess as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes userOrderBooks(
          Iterable<Query$GetUserInfo$userInfo$userOrderBooks?>? Function(
                  Iterable<
                      CopyWith$Query$GetUserInfo$userInfo$userOrderBooks<
                          Query$GetUserInfo$userInfo$userOrderBooks>?>?)
              _fn) =>
      call(
          userOrderBooks: _fn(_instance.userOrderBooks?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUserInfo$userInfo$userOrderBooks(
                  e,
                  (i) => i,
                )))?.toList());

  TRes territories(
          Iterable<Query$GetUserInfo$userInfo$territories> Function(
                  Iterable<
                      CopyWith$Query$GetUserInfo$userInfo$territories<
                          Query$GetUserInfo$userInfo$territories>>)
              _fn) =>
      call(
          territories: _fn(_instance.territories
              .map((e) => CopyWith$Query$GetUserInfo$userInfo$territories(
                    e,
                    (i) => i,
                  ))).toList());

  TRes yards(
          Iterable<Query$GetUserInfo$userInfo$yards?>? Function(
                  Iterable<
                      CopyWith$Query$GetUserInfo$userInfo$yards<
                          Query$GetUserInfo$userInfo$yards>?>?)
              _fn) =>
      call(
          yards: _fn(_instance.yards?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUserInfo$userInfo$yards(
                  e,
                  (i) => i,
                )))?.toList());

  TRes crmManagedBuyers(
          Iterable<Query$GetUserInfo$userInfo$crmManagedBuyers> Function(
                  Iterable<
                      CopyWith$Query$GetUserInfo$userInfo$crmManagedBuyers<
                          Query$GetUserInfo$userInfo$crmManagedBuyers>>)
              _fn) =>
      call(
          crmManagedBuyers: _fn(_instance.crmManagedBuyers
              .map((e) => CopyWith$Query$GetUserInfo$userInfo$crmManagedBuyers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetUserInfo$userInfo<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo<TRes> {
  _CopyWithStubImpl$Query$GetUserInfo$userInfo(this._res);

  TRes _res;

  call({
    String? defaultTerritory,
    int? defaultOrderBookTypeId,
    String? defaultDepot,
    List<Query$GetUserInfo$userInfo$userOrderBooks?>? userOrderBooks,
    List<Query$GetUserInfo$userInfo$territories>? territories,
    List<Query$GetUserInfo$userInfo$yards?>? yards,
    List<Query$GetUserInfo$userInfo$crmManagedBuyers>? crmManagedBuyers,
    List<String>? companyAccess,
    String? $__typename,
  }) =>
      _res;

  userOrderBooks(_fn) => _res;

  territories(_fn) => _res;

  yards(_fn) => _res;

  crmManagedBuyers(_fn) => _res;
}

class Query$GetUserInfo$userInfo$userOrderBooks {
  Query$GetUserInfo$userInfo$userOrderBooks({
    required this.orderBookTypeId,
    this.orderBookName,
    this.gradeType,
    this.$__typename = 'UserOrderBook',
  });

  factory Query$GetUserInfo$userInfo$userOrderBooks.fromJson(
      Map<String, dynamic> json) {
    final l$orderBookTypeId = json['orderBookTypeId'];
    final l$orderBookName = json['orderBookName'];
    final l$gradeType = json['gradeType'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInfo$userInfo$userOrderBooks(
      orderBookTypeId: (l$orderBookTypeId as int),
      orderBookName: (l$orderBookName as String?),
      gradeType: (l$gradeType as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int orderBookTypeId;

  final String? orderBookName;

  final String? gradeType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderBookTypeId = orderBookTypeId;
    _resultData['orderBookTypeId'] = l$orderBookTypeId;
    final l$orderBookName = orderBookName;
    _resultData['orderBookName'] = l$orderBookName;
    final l$gradeType = gradeType;
    _resultData['gradeType'] = l$gradeType;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderBookTypeId = orderBookTypeId;
    final l$orderBookName = orderBookName;
    final l$gradeType = gradeType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orderBookTypeId,
      l$orderBookName,
      l$gradeType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserInfo$userInfo$userOrderBooks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderBookTypeId = orderBookTypeId;
    final lOther$orderBookTypeId = other.orderBookTypeId;
    if (l$orderBookTypeId != lOther$orderBookTypeId) {
      return false;
    }
    final l$orderBookName = orderBookName;
    final lOther$orderBookName = other.orderBookName;
    if (l$orderBookName != lOther$orderBookName) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
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

extension UtilityExtension$Query$GetUserInfo$userInfo$userOrderBooks
    on Query$GetUserInfo$userInfo$userOrderBooks {
  CopyWith$Query$GetUserInfo$userInfo$userOrderBooks<
          Query$GetUserInfo$userInfo$userOrderBooks>
      get copyWith => CopyWith$Query$GetUserInfo$userInfo$userOrderBooks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserInfo$userInfo$userOrderBooks<TRes> {
  factory CopyWith$Query$GetUserInfo$userInfo$userOrderBooks(
    Query$GetUserInfo$userInfo$userOrderBooks instance,
    TRes Function(Query$GetUserInfo$userInfo$userOrderBooks) then,
  ) = _CopyWithImpl$Query$GetUserInfo$userInfo$userOrderBooks;

  factory CopyWith$Query$GetUserInfo$userInfo$userOrderBooks.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInfo$userInfo$userOrderBooks;

  TRes call({
    int? orderBookTypeId,
    String? orderBookName,
    String? gradeType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserInfo$userInfo$userOrderBooks<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo$userOrderBooks<TRes> {
  _CopyWithImpl$Query$GetUserInfo$userInfo$userOrderBooks(
    this._instance,
    this._then,
  );

  final Query$GetUserInfo$userInfo$userOrderBooks _instance;

  final TRes Function(Query$GetUserInfo$userInfo$userOrderBooks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderBookTypeId = _undefined,
    Object? orderBookName = _undefined,
    Object? gradeType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserInfo$userInfo$userOrderBooks(
        orderBookTypeId:
            orderBookTypeId == _undefined || orderBookTypeId == null
                ? _instance.orderBookTypeId
                : (orderBookTypeId as int),
        orderBookName: orderBookName == _undefined
            ? _instance.orderBookName
            : (orderBookName as String?),
        gradeType: gradeType == _undefined
            ? _instance.gradeType
            : (gradeType as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserInfo$userInfo$userOrderBooks<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo$userOrderBooks<TRes> {
  _CopyWithStubImpl$Query$GetUserInfo$userInfo$userOrderBooks(this._res);

  TRes _res;

  call({
    int? orderBookTypeId,
    String? orderBookName,
    String? gradeType,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserInfo$userInfo$territories {
  Query$GetUserInfo$userInfo$territories({
    required this.territoryCode,
    required this.name,
    required this.depots,
    this.$__typename = 'UserTerritory',
  });

  factory Query$GetUserInfo$userInfo$territories.fromJson(
      Map<String, dynamic> json) {
    final l$territoryCode = json['territoryCode'];
    final l$name = json['name'];
    final l$depots = json['depots'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInfo$userInfo$territories(
      territoryCode: (l$territoryCode as String),
      name: (l$name as String),
      depots: (l$depots as List<dynamic>)
          .map((e) => Query$GetUserInfo$userInfo$territories$depots.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String territoryCode;

  final String name;

  final List<Query$GetUserInfo$userInfo$territories$depots> depots;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$depots = depots;
    _resultData['depots'] = l$depots.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$territoryCode = territoryCode;
    final l$name = name;
    final l$depots = depots;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$territoryCode,
      l$name,
      Object.hashAll(l$depots.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserInfo$userInfo$territories ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$depots = depots;
    final lOther$depots = other.depots;
    if (l$depots.length != lOther$depots.length) {
      return false;
    }
    for (int i = 0; i < l$depots.length; i++) {
      final l$depots$entry = l$depots[i];
      final lOther$depots$entry = lOther$depots[i];
      if (l$depots$entry != lOther$depots$entry) {
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

extension UtilityExtension$Query$GetUserInfo$userInfo$territories
    on Query$GetUserInfo$userInfo$territories {
  CopyWith$Query$GetUserInfo$userInfo$territories<
          Query$GetUserInfo$userInfo$territories>
      get copyWith => CopyWith$Query$GetUserInfo$userInfo$territories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserInfo$userInfo$territories<TRes> {
  factory CopyWith$Query$GetUserInfo$userInfo$territories(
    Query$GetUserInfo$userInfo$territories instance,
    TRes Function(Query$GetUserInfo$userInfo$territories) then,
  ) = _CopyWithImpl$Query$GetUserInfo$userInfo$territories;

  factory CopyWith$Query$GetUserInfo$userInfo$territories.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInfo$userInfo$territories;

  TRes call({
    String? territoryCode,
    String? name,
    List<Query$GetUserInfo$userInfo$territories$depots>? depots,
    String? $__typename,
  });
  TRes depots(
      Iterable<Query$GetUserInfo$userInfo$territories$depots> Function(
              Iterable<
                  CopyWith$Query$GetUserInfo$userInfo$territories$depots<
                      Query$GetUserInfo$userInfo$territories$depots>>)
          _fn);
}

class _CopyWithImpl$Query$GetUserInfo$userInfo$territories<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo$territories<TRes> {
  _CopyWithImpl$Query$GetUserInfo$userInfo$territories(
    this._instance,
    this._then,
  );

  final Query$GetUserInfo$userInfo$territories _instance;

  final TRes Function(Query$GetUserInfo$userInfo$territories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? territoryCode = _undefined,
    Object? name = _undefined,
    Object? depots = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserInfo$userInfo$territories(
        territoryCode: territoryCode == _undefined || territoryCode == null
            ? _instance.territoryCode
            : (territoryCode as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        depots: depots == _undefined || depots == null
            ? _instance.depots
            : (depots as List<Query$GetUserInfo$userInfo$territories$depots>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes depots(
          Iterable<Query$GetUserInfo$userInfo$territories$depots> Function(
                  Iterable<
                      CopyWith$Query$GetUserInfo$userInfo$territories$depots<
                          Query$GetUserInfo$userInfo$territories$depots>>)
              _fn) =>
      call(
          depots: _fn(_instance.depots.map(
              (e) => CopyWith$Query$GetUserInfo$userInfo$territories$depots(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetUserInfo$userInfo$territories<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo$territories<TRes> {
  _CopyWithStubImpl$Query$GetUserInfo$userInfo$territories(this._res);

  TRes _res;

  call({
    String? territoryCode,
    String? name,
    List<Query$GetUserInfo$userInfo$territories$depots>? depots,
    String? $__typename,
  }) =>
      _res;

  depots(_fn) => _res;
}

class Query$GetUserInfo$userInfo$territories$depots {
  Query$GetUserInfo$userInfo$territories$depots({
    required this.depotNo,
    required this.shortName,
    required this.gradeType,
    required this.yardCode,
    required this.cmpCode,
    this.$__typename = 'UserDepot',
  });

  factory Query$GetUserInfo$userInfo$territories$depots.fromJson(
      Map<String, dynamic> json) {
    final l$depotNo = json['depotNo'];
    final l$shortName = json['shortName'];
    final l$gradeType = json['gradeType'];
    final l$yardCode = json['yardCode'];
    final l$cmpCode = json['cmpCode'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInfo$userInfo$territories$depots(
      depotNo: (l$depotNo as String),
      shortName: (l$shortName as String),
      gradeType: (l$gradeType as String),
      yardCode: (l$yardCode as String),
      cmpCode: (l$cmpCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String depotNo;

  final String shortName;

  final String gradeType;

  final String yardCode;

  final String cmpCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$gradeType = gradeType;
    _resultData['gradeType'] = l$gradeType;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$cmpCode = cmpCode;
    _resultData['cmpCode'] = l$cmpCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depotNo = depotNo;
    final l$shortName = shortName;
    final l$gradeType = gradeType;
    final l$yardCode = yardCode;
    final l$cmpCode = cmpCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$depotNo,
      l$shortName,
      l$gradeType,
      l$yardCode,
      l$cmpCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserInfo$userInfo$territories$depots ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$cmpCode = cmpCode;
    final lOther$cmpCode = other.cmpCode;
    if (l$cmpCode != lOther$cmpCode) {
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

extension UtilityExtension$Query$GetUserInfo$userInfo$territories$depots
    on Query$GetUserInfo$userInfo$territories$depots {
  CopyWith$Query$GetUserInfo$userInfo$territories$depots<
          Query$GetUserInfo$userInfo$territories$depots>
      get copyWith => CopyWith$Query$GetUserInfo$userInfo$territories$depots(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserInfo$userInfo$territories$depots<TRes> {
  factory CopyWith$Query$GetUserInfo$userInfo$territories$depots(
    Query$GetUserInfo$userInfo$territories$depots instance,
    TRes Function(Query$GetUserInfo$userInfo$territories$depots) then,
  ) = _CopyWithImpl$Query$GetUserInfo$userInfo$territories$depots;

  factory CopyWith$Query$GetUserInfo$userInfo$territories$depots.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUserInfo$userInfo$territories$depots;

  TRes call({
    String? depotNo,
    String? shortName,
    String? gradeType,
    String? yardCode,
    String? cmpCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserInfo$userInfo$territories$depots<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo$territories$depots<TRes> {
  _CopyWithImpl$Query$GetUserInfo$userInfo$territories$depots(
    this._instance,
    this._then,
  );

  final Query$GetUserInfo$userInfo$territories$depots _instance;

  final TRes Function(Query$GetUserInfo$userInfo$territories$depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNo = _undefined,
    Object? shortName = _undefined,
    Object? gradeType = _undefined,
    Object? yardCode = _undefined,
    Object? cmpCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserInfo$userInfo$territories$depots(
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        shortName: shortName == _undefined || shortName == null
            ? _instance.shortName
            : (shortName as String),
        gradeType: gradeType == _undefined || gradeType == null
            ? _instance.gradeType
            : (gradeType as String),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        cmpCode: cmpCode == _undefined || cmpCode == null
            ? _instance.cmpCode
            : (cmpCode as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserInfo$userInfo$territories$depots<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo$territories$depots<TRes> {
  _CopyWithStubImpl$Query$GetUserInfo$userInfo$territories$depots(this._res);

  TRes _res;

  call({
    String? depotNo,
    String? shortName,
    String? gradeType,
    String? yardCode,
    String? cmpCode,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserInfo$userInfo$yards {
  Query$GetUserInfo$userInfo$yards({
    required this.yardCode,
    required this.name,
    required this.shortName,
    this.$__typename = 'UserYard',
  });

  factory Query$GetUserInfo$userInfo$yards.fromJson(Map<String, dynamic> json) {
    final l$yardCode = json['yardCode'];
    final l$name = json['name'];
    final l$shortName = json['shortName'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInfo$userInfo$yards(
      yardCode: (l$yardCode as String),
      name: (l$name as String),
      shortName: (l$shortName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String name;

  final String shortName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$name = name;
    final l$shortName = shortName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$name,
      l$shortName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserInfo$userInfo$yards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
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

extension UtilityExtension$Query$GetUserInfo$userInfo$yards
    on Query$GetUserInfo$userInfo$yards {
  CopyWith$Query$GetUserInfo$userInfo$yards<Query$GetUserInfo$userInfo$yards>
      get copyWith => CopyWith$Query$GetUserInfo$userInfo$yards(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserInfo$userInfo$yards<TRes> {
  factory CopyWith$Query$GetUserInfo$userInfo$yards(
    Query$GetUserInfo$userInfo$yards instance,
    TRes Function(Query$GetUserInfo$userInfo$yards) then,
  ) = _CopyWithImpl$Query$GetUserInfo$userInfo$yards;

  factory CopyWith$Query$GetUserInfo$userInfo$yards.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInfo$userInfo$yards;

  TRes call({
    String? yardCode,
    String? name,
    String? shortName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserInfo$userInfo$yards<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo$yards<TRes> {
  _CopyWithImpl$Query$GetUserInfo$userInfo$yards(
    this._instance,
    this._then,
  );

  final Query$GetUserInfo$userInfo$yards _instance;

  final TRes Function(Query$GetUserInfo$userInfo$yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? shortName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserInfo$userInfo$yards(
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        shortName: shortName == _undefined || shortName == null
            ? _instance.shortName
            : (shortName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserInfo$userInfo$yards<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo$yards<TRes> {
  _CopyWithStubImpl$Query$GetUserInfo$userInfo$yards(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? name,
    String? shortName,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserInfo$userInfo$crmManagedBuyers {
  Query$GetUserInfo$userInfo$crmManagedBuyers({
    required this.azureUserId,
    required this.userName,
    this.$__typename = 'CrmManagedBuyer',
  });

  factory Query$GetUserInfo$userInfo$crmManagedBuyers.fromJson(
      Map<String, dynamic> json) {
    final l$azureUserId = json['azureUserId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInfo$userInfo$crmManagedBuyers(
      azureUserId: (l$azureUserId as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String azureUserId;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$azureUserId = azureUserId;
    _resultData['azureUserId'] = l$azureUserId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$azureUserId = azureUserId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$azureUserId,
      l$userName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserInfo$userInfo$crmManagedBuyers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$azureUserId = azureUserId;
    final lOther$azureUserId = other.azureUserId;
    if (l$azureUserId != lOther$azureUserId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$GetUserInfo$userInfo$crmManagedBuyers
    on Query$GetUserInfo$userInfo$crmManagedBuyers {
  CopyWith$Query$GetUserInfo$userInfo$crmManagedBuyers<
          Query$GetUserInfo$userInfo$crmManagedBuyers>
      get copyWith => CopyWith$Query$GetUserInfo$userInfo$crmManagedBuyers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserInfo$userInfo$crmManagedBuyers<TRes> {
  factory CopyWith$Query$GetUserInfo$userInfo$crmManagedBuyers(
    Query$GetUserInfo$userInfo$crmManagedBuyers instance,
    TRes Function(Query$GetUserInfo$userInfo$crmManagedBuyers) then,
  ) = _CopyWithImpl$Query$GetUserInfo$userInfo$crmManagedBuyers;

  factory CopyWith$Query$GetUserInfo$userInfo$crmManagedBuyers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInfo$userInfo$crmManagedBuyers;

  TRes call({
    String? azureUserId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserInfo$userInfo$crmManagedBuyers<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo$crmManagedBuyers<TRes> {
  _CopyWithImpl$Query$GetUserInfo$userInfo$crmManagedBuyers(
    this._instance,
    this._then,
  );

  final Query$GetUserInfo$userInfo$crmManagedBuyers _instance;

  final TRes Function(Query$GetUserInfo$userInfo$crmManagedBuyers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureUserId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserInfo$userInfo$crmManagedBuyers(
        azureUserId: azureUserId == _undefined || azureUserId == null
            ? _instance.azureUserId
            : (azureUserId as String),
        userName: userName == _undefined || userName == null
            ? _instance.userName
            : (userName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserInfo$userInfo$crmManagedBuyers<TRes>
    implements CopyWith$Query$GetUserInfo$userInfo$crmManagedBuyers<TRes> {
  _CopyWithStubImpl$Query$GetUserInfo$userInfo$crmManagedBuyers(this._res);

  TRes _res;

  call({
    String? azureUserId,
    String? userName,
    String? $__typename,
  }) =>
      _res;
}
