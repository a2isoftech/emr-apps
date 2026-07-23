import 'package:gql/ast.dart';

class Query$GetAllCompanyPreferences {
  Query$GetAllCompanyPreferences({
    required this.allCompanyPreferences,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetAllCompanyPreferences.fromJson(Map<String, dynamic> json) {
    final l$allCompanyPreferences = json['allCompanyPreferences'];
    final l$$__typename = json['__typename'];
    return Query$GetAllCompanyPreferences(
      allCompanyPreferences: (l$allCompanyPreferences as List<dynamic>)
          .map((e) =>
              Query$GetAllCompanyPreferences$allCompanyPreferences.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllCompanyPreferences$allCompanyPreferences>
      allCompanyPreferences;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allCompanyPreferences = allCompanyPreferences;
    _resultData['allCompanyPreferences'] =
        l$allCompanyPreferences.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allCompanyPreferences = allCompanyPreferences;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allCompanyPreferences.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllCompanyPreferences) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allCompanyPreferences = allCompanyPreferences;
    final lOther$allCompanyPreferences = other.allCompanyPreferences;
    if (l$allCompanyPreferences.length != lOther$allCompanyPreferences.length) {
      return false;
    }
    for (int i = 0; i < l$allCompanyPreferences.length; i++) {
      final l$allCompanyPreferences$entry = l$allCompanyPreferences[i];
      final lOther$allCompanyPreferences$entry =
          lOther$allCompanyPreferences[i];
      if (l$allCompanyPreferences$entry != lOther$allCompanyPreferences$entry) {
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

extension UtilityExtension$Query$GetAllCompanyPreferences
    on Query$GetAllCompanyPreferences {
  CopyWith$Query$GetAllCompanyPreferences<Query$GetAllCompanyPreferences>
      get copyWith => CopyWith$Query$GetAllCompanyPreferences(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllCompanyPreferences<TRes> {
  factory CopyWith$Query$GetAllCompanyPreferences(
    Query$GetAllCompanyPreferences instance,
    TRes Function(Query$GetAllCompanyPreferences) then,
  ) = _CopyWithImpl$Query$GetAllCompanyPreferences;

  factory CopyWith$Query$GetAllCompanyPreferences.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCompanyPreferences;

  TRes call({
    List<Query$GetAllCompanyPreferences$allCompanyPreferences>?
        allCompanyPreferences,
    String? $__typename,
  });
  TRes allCompanyPreferences(
      Iterable<Query$GetAllCompanyPreferences$allCompanyPreferences> Function(
              Iterable<
                  CopyWith$Query$GetAllCompanyPreferences$allCompanyPreferences<
                      Query$GetAllCompanyPreferences$allCompanyPreferences>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllCompanyPreferences<TRes>
    implements CopyWith$Query$GetAllCompanyPreferences<TRes> {
  _CopyWithImpl$Query$GetAllCompanyPreferences(
    this._instance,
    this._then,
  );

  final Query$GetAllCompanyPreferences _instance;

  final TRes Function(Query$GetAllCompanyPreferences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allCompanyPreferences = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllCompanyPreferences(
        allCompanyPreferences: allCompanyPreferences == _undefined ||
                allCompanyPreferences == null
            ? _instance.allCompanyPreferences
            : (allCompanyPreferences
                as List<Query$GetAllCompanyPreferences$allCompanyPreferences>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes allCompanyPreferences(
          Iterable<Query$GetAllCompanyPreferences$allCompanyPreferences> Function(
                  Iterable<
                      CopyWith$Query$GetAllCompanyPreferences$allCompanyPreferences<
                          Query$GetAllCompanyPreferences$allCompanyPreferences>>)
              _fn) =>
      call(
          allCompanyPreferences: _fn(_instance.allCompanyPreferences.map((e) =>
              CopyWith$Query$GetAllCompanyPreferences$allCompanyPreferences(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetAllCompanyPreferences<TRes>
    implements CopyWith$Query$GetAllCompanyPreferences<TRes> {
  _CopyWithStubImpl$Query$GetAllCompanyPreferences(this._res);

  TRes _res;

  call({
    List<Query$GetAllCompanyPreferences$allCompanyPreferences>?
        allCompanyPreferences,
    String? $__typename,
  }) =>
      _res;

  allCompanyPreferences(_fn) => _res;
}

const documentNodeQueryGetAllCompanyPreferences = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllCompanyPreferences'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allCompanyPreferences'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'companyCode'),
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
            name: NameNode(value: 'preferenceJson'),
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

class Query$GetAllCompanyPreferences$allCompanyPreferences {
  Query$GetAllCompanyPreferences$allCompanyPreferences({
    required this.companyCode,
    required this.isActive,
    required this.preferenceJson,
    this.$__typename = 'CompanyPreference',
  });

  factory Query$GetAllCompanyPreferences$allCompanyPreferences.fromJson(
      Map<String, dynamic> json) {
    final l$companyCode = json['companyCode'];
    final l$isActive = json['isActive'];
    final l$preferenceJson = json['preferenceJson'];
    final l$$__typename = json['__typename'];
    return Query$GetAllCompanyPreferences$allCompanyPreferences(
      companyCode: (l$companyCode as String),
      isActive: (l$isActive as bool),
      preferenceJson: (l$preferenceJson as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String companyCode;

  final bool isActive;

  final String preferenceJson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$preferenceJson = preferenceJson;
    _resultData['preferenceJson'] = l$preferenceJson;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyCode = companyCode;
    final l$isActive = isActive;
    final l$preferenceJson = preferenceJson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$companyCode,
      l$isActive,
      l$preferenceJson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllCompanyPreferences$allCompanyPreferences) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$preferenceJson = preferenceJson;
    final lOther$preferenceJson = other.preferenceJson;
    if (l$preferenceJson != lOther$preferenceJson) {
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

extension UtilityExtension$Query$GetAllCompanyPreferences$allCompanyPreferences
    on Query$GetAllCompanyPreferences$allCompanyPreferences {
  CopyWith$Query$GetAllCompanyPreferences$allCompanyPreferences<
          Query$GetAllCompanyPreferences$allCompanyPreferences>
      get copyWith =>
          CopyWith$Query$GetAllCompanyPreferences$allCompanyPreferences(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllCompanyPreferences$allCompanyPreferences<
    TRes> {
  factory CopyWith$Query$GetAllCompanyPreferences$allCompanyPreferences(
    Query$GetAllCompanyPreferences$allCompanyPreferences instance,
    TRes Function(Query$GetAllCompanyPreferences$allCompanyPreferences) then,
  ) = _CopyWithImpl$Query$GetAllCompanyPreferences$allCompanyPreferences;

  factory CopyWith$Query$GetAllCompanyPreferences$allCompanyPreferences.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllCompanyPreferences$allCompanyPreferences;

  TRes call({
    String? companyCode,
    bool? isActive,
    String? preferenceJson,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllCompanyPreferences$allCompanyPreferences<TRes>
    implements
        CopyWith$Query$GetAllCompanyPreferences$allCompanyPreferences<TRes> {
  _CopyWithImpl$Query$GetAllCompanyPreferences$allCompanyPreferences(
    this._instance,
    this._then,
  );

  final Query$GetAllCompanyPreferences$allCompanyPreferences _instance;

  final TRes Function(Query$GetAllCompanyPreferences$allCompanyPreferences)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyCode = _undefined,
    Object? isActive = _undefined,
    Object? preferenceJson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllCompanyPreferences$allCompanyPreferences(
        companyCode: companyCode == _undefined || companyCode == null
            ? _instance.companyCode
            : (companyCode as String),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        preferenceJson: preferenceJson == _undefined || preferenceJson == null
            ? _instance.preferenceJson
            : (preferenceJson as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAllCompanyPreferences$allCompanyPreferences<
        TRes>
    implements
        CopyWith$Query$GetAllCompanyPreferences$allCompanyPreferences<TRes> {
  _CopyWithStubImpl$Query$GetAllCompanyPreferences$allCompanyPreferences(
      this._res);

  TRes _res;

  call({
    String? companyCode,
    bool? isActive,
    String? preferenceJson,
    String? $__typename,
  }) =>
      _res;
}
