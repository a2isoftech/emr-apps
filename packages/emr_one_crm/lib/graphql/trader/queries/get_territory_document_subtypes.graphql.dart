import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetTerritoryDocumentSubTypes {
  factory Variables$Query$GetTerritoryDocumentSubTypes(
          {Enum$TerritoryId? territoryId}) =>
      Variables$Query$GetTerritoryDocumentSubTypes._({
        if (territoryId != null) r'territoryId': territoryId,
      });

  Variables$Query$GetTerritoryDocumentSubTypes._(this._$data);

  factory Variables$Query$GetTerritoryDocumentSubTypes.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('territoryId')) {
      final l$territoryId = data['territoryId'];
      result$data['territoryId'] = l$territoryId == null
          ? null
          : fromJson$Enum$TerritoryId((l$territoryId as String));
    }
    return Variables$Query$GetTerritoryDocumentSubTypes._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$TerritoryId? get territoryId =>
      (_$data['territoryId'] as Enum$TerritoryId?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('territoryId')) {
      final l$territoryId = territoryId;
      result$data['territoryId'] =
          l$territoryId == null ? null : toJson$Enum$TerritoryId(l$territoryId);
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetTerritoryDocumentSubTypes<
          Variables$Query$GetTerritoryDocumentSubTypes>
      get copyWith => CopyWith$Variables$Query$GetTerritoryDocumentSubTypes(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTerritoryDocumentSubTypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (_$data.containsKey('territoryId') !=
        other._$data.containsKey('territoryId')) {
      return false;
    }
    if (l$territoryId != lOther$territoryId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$territoryId = territoryId;
    return Object.hashAll(
        [_$data.containsKey('territoryId') ? l$territoryId : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetTerritoryDocumentSubTypes<TRes> {
  factory CopyWith$Variables$Query$GetTerritoryDocumentSubTypes(
    Variables$Query$GetTerritoryDocumentSubTypes instance,
    TRes Function(Variables$Query$GetTerritoryDocumentSubTypes) then,
  ) = _CopyWithImpl$Variables$Query$GetTerritoryDocumentSubTypes;

  factory CopyWith$Variables$Query$GetTerritoryDocumentSubTypes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTerritoryDocumentSubTypes;

  TRes call({Enum$TerritoryId? territoryId});
}

class _CopyWithImpl$Variables$Query$GetTerritoryDocumentSubTypes<TRes>
    implements CopyWith$Variables$Query$GetTerritoryDocumentSubTypes<TRes> {
  _CopyWithImpl$Variables$Query$GetTerritoryDocumentSubTypes(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTerritoryDocumentSubTypes _instance;

  final TRes Function(Variables$Query$GetTerritoryDocumentSubTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? territoryId = _undefined}) =>
      _then(Variables$Query$GetTerritoryDocumentSubTypes._({
        ..._instance._$data,
        if (territoryId != _undefined)
          'territoryId': (territoryId as Enum$TerritoryId?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTerritoryDocumentSubTypes<TRes>
    implements CopyWith$Variables$Query$GetTerritoryDocumentSubTypes<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTerritoryDocumentSubTypes(this._res);

  TRes _res;

  call({Enum$TerritoryId? territoryId}) => _res;
}

class Query$GetTerritoryDocumentSubTypes {
  Query$GetTerritoryDocumentSubTypes({
    this.territoryDocumentSubType,
    this.$__typename = 'Query',
  });

  factory Query$GetTerritoryDocumentSubTypes.fromJson(
      Map<String, dynamic> json) {
    final l$territoryDocumentSubType = json['territoryDocumentSubType'];
    final l$$__typename = json['__typename'];
    return Query$GetTerritoryDocumentSubTypes(
      territoryDocumentSubType: (l$territoryDocumentSubType as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType?>?
      territoryDocumentSubType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$territoryDocumentSubType = territoryDocumentSubType;
    _resultData['territoryDocumentSubType'] =
        l$territoryDocumentSubType?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$territoryDocumentSubType = territoryDocumentSubType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$territoryDocumentSubType == null
          ? null
          : Object.hashAll(l$territoryDocumentSubType.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTerritoryDocumentSubTypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$territoryDocumentSubType = territoryDocumentSubType;
    final lOther$territoryDocumentSubType = other.territoryDocumentSubType;
    if (l$territoryDocumentSubType != null &&
        lOther$territoryDocumentSubType != null) {
      if (l$territoryDocumentSubType.length !=
          lOther$territoryDocumentSubType.length) {
        return false;
      }
      for (int i = 0; i < l$territoryDocumentSubType.length; i++) {
        final l$territoryDocumentSubType$entry = l$territoryDocumentSubType[i];
        final lOther$territoryDocumentSubType$entry =
            lOther$territoryDocumentSubType[i];
        if (l$territoryDocumentSubType$entry !=
            lOther$territoryDocumentSubType$entry) {
          return false;
        }
      }
    } else if (l$territoryDocumentSubType != lOther$territoryDocumentSubType) {
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

extension UtilityExtension$Query$GetTerritoryDocumentSubTypes
    on Query$GetTerritoryDocumentSubTypes {
  CopyWith$Query$GetTerritoryDocumentSubTypes<
          Query$GetTerritoryDocumentSubTypes>
      get copyWith => CopyWith$Query$GetTerritoryDocumentSubTypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTerritoryDocumentSubTypes<TRes> {
  factory CopyWith$Query$GetTerritoryDocumentSubTypes(
    Query$GetTerritoryDocumentSubTypes instance,
    TRes Function(Query$GetTerritoryDocumentSubTypes) then,
  ) = _CopyWithImpl$Query$GetTerritoryDocumentSubTypes;

  factory CopyWith$Query$GetTerritoryDocumentSubTypes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTerritoryDocumentSubTypes;

  TRes call({
    List<Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType?>?
        territoryDocumentSubType,
    String? $__typename,
  });
  TRes territoryDocumentSubType(
      Iterable<Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType?>? Function(
              Iterable<
                  CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType<
                      Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetTerritoryDocumentSubTypes<TRes>
    implements CopyWith$Query$GetTerritoryDocumentSubTypes<TRes> {
  _CopyWithImpl$Query$GetTerritoryDocumentSubTypes(
    this._instance,
    this._then,
  );

  final Query$GetTerritoryDocumentSubTypes _instance;

  final TRes Function(Query$GetTerritoryDocumentSubTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? territoryDocumentSubType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTerritoryDocumentSubTypes(
        territoryDocumentSubType: territoryDocumentSubType == _undefined
            ? _instance.territoryDocumentSubType
            : (territoryDocumentSubType as List<
                Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes territoryDocumentSubType(
          Iterable<Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType?>? Function(
                  Iterable<
                      CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType<
                          Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType>?>?)
              _fn) =>
      call(
          territoryDocumentSubType:
              _fn(_instance.territoryDocumentSubType?.map((e) => e == null
                  ? null
                  : CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$GetTerritoryDocumentSubTypes<TRes>
    implements CopyWith$Query$GetTerritoryDocumentSubTypes<TRes> {
  _CopyWithStubImpl$Query$GetTerritoryDocumentSubTypes(this._res);

  TRes _res;

  call({
    List<Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType?>?
        territoryDocumentSubType,
    String? $__typename,
  }) =>
      _res;

  territoryDocumentSubType(_fn) => _res;
}

const documentNodeQueryGetTerritoryDocumentSubTypes =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTerritoryDocumentSubTypes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'territoryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'TerritoryId'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'territoryDocumentSubType'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'territoryId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'territoryId')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'documentSubType'),
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

class Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType {
  Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType({
    this.documentSubType,
    this.$__typename = 'DocumentSubTypeTerritory',
  });

  factory Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType.fromJson(
      Map<String, dynamic> json) {
    final l$documentSubType = json['documentSubType'];
    final l$$__typename = json['__typename'];
    return Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType(
      documentSubType: l$documentSubType == null
          ? null
          : Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType
              .fromJson((l$documentSubType as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType?
      documentSubType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$documentSubType = documentSubType;
    _resultData['documentSubType'] = l$documentSubType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$documentSubType = documentSubType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$documentSubType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$documentSubType = documentSubType;
    final lOther$documentSubType = other.documentSubType;
    if (l$documentSubType != lOther$documentSubType) {
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

extension UtilityExtension$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType
    on Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType {
  CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType<
          Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType>
      get copyWith =>
          CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType<
    TRes> {
  factory CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType(
    Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType instance,
    TRes Function(Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType)
        then,
  ) = _CopyWithImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType;

  factory CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType;

  TRes call({
    Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType?
        documentSubType,
    String? $__typename,
  });
  CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType<
      TRes> get documentSubType;
}

class _CopyWithImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType<
        TRes>
    implements
        CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType<
            TRes> {
  _CopyWithImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType(
    this._instance,
    this._then,
  );

  final Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType _instance;

  final TRes Function(
      Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? documentSubType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType(
        documentSubType: documentSubType == _undefined
            ? _instance.documentSubType
            : (documentSubType
                as Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType<
      TRes> get documentSubType {
    final local$documentSubType = _instance.documentSubType;
    return local$documentSubType == null
        ? CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType
            .stub(_then(_instance))
        : CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType(
            local$documentSubType, (e) => call(documentSubType: e));
  }
}

class _CopyWithStubImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType<
        TRes>
    implements
        CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType<
            TRes> {
  _CopyWithStubImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType(
      this._res);

  TRes _res;

  call({
    Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType?
        documentSubType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType<
          TRes>
      get documentSubType =>
          CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType
              .stub(_res);
}

class Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType {
  Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType({
    required this.id,
    this.description,
    this.$__typename = 'DocumentSubType',
  });

  factory Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType(
      id: fromJson$Enum$DocumentSubTypeId((l$id as String)),
      description: (l$description as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$DocumentSubTypeId id;

  final String? description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = toJson$Enum$DocumentSubTypeId(l$id);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType
    on Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType {
  CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType<
          Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType>
      get copyWith =>
          CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType<
    TRes> {
  factory CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType(
    Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType
        instance,
    TRes Function(
            Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType)
        then,
  ) = _CopyWithImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType;

  factory CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType;

  TRes call({
    Enum$DocumentSubTypeId? id,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType<
        TRes>
    implements
        CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType<
            TRes> {
  _CopyWithImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType(
    this._instance,
    this._then,
  );

  final Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType
      _instance;

  final TRes Function(
          Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType(
        id: id == _undefined || id == null
            ? _instance.id
            : (id as Enum$DocumentSubTypeId),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType<
        TRes>
    implements
        CopyWith$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType<
            TRes> {
  _CopyWithStubImpl$Query$GetTerritoryDocumentSubTypes$territoryDocumentSubType$documentSubType(
      this._res);

  TRes _res;

  call({
    Enum$DocumentSubTypeId? id,
    String? description,
    String? $__typename,
  }) =>
      _res;
}
