import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetTerritoryDocumentTypes {
  factory Variables$Query$GetTerritoryDocumentTypes(
          {required Enum$TerritoryId territoryId}) =>
      Variables$Query$GetTerritoryDocumentTypes._({
        r'territoryId': territoryId,
      });

  Variables$Query$GetTerritoryDocumentTypes._(this._$data);

  factory Variables$Query$GetTerritoryDocumentTypes.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$territoryId = data['territoryId'];
    result$data['territoryId'] =
        fromJson$Enum$TerritoryId((l$territoryId as String));
    return Variables$Query$GetTerritoryDocumentTypes._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$TerritoryId get territoryId =>
      (_$data['territoryId'] as Enum$TerritoryId);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$territoryId = territoryId;
    result$data['territoryId'] = toJson$Enum$TerritoryId(l$territoryId);
    return result$data;
  }

  CopyWith$Variables$Query$GetTerritoryDocumentTypes<
          Variables$Query$GetTerritoryDocumentTypes>
      get copyWith => CopyWith$Variables$Query$GetTerritoryDocumentTypes(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTerritoryDocumentTypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (l$territoryId != lOther$territoryId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$territoryId = territoryId;
    return Object.hashAll([l$territoryId]);
  }
}

abstract class CopyWith$Variables$Query$GetTerritoryDocumentTypes<TRes> {
  factory CopyWith$Variables$Query$GetTerritoryDocumentTypes(
    Variables$Query$GetTerritoryDocumentTypes instance,
    TRes Function(Variables$Query$GetTerritoryDocumentTypes) then,
  ) = _CopyWithImpl$Variables$Query$GetTerritoryDocumentTypes;

  factory CopyWith$Variables$Query$GetTerritoryDocumentTypes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTerritoryDocumentTypes;

  TRes call({Enum$TerritoryId? territoryId});
}

class _CopyWithImpl$Variables$Query$GetTerritoryDocumentTypes<TRes>
    implements CopyWith$Variables$Query$GetTerritoryDocumentTypes<TRes> {
  _CopyWithImpl$Variables$Query$GetTerritoryDocumentTypes(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTerritoryDocumentTypes _instance;

  final TRes Function(Variables$Query$GetTerritoryDocumentTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? territoryId = _undefined}) =>
      _then(Variables$Query$GetTerritoryDocumentTypes._({
        ..._instance._$data,
        if (territoryId != _undefined && territoryId != null)
          'territoryId': (territoryId as Enum$TerritoryId),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTerritoryDocumentTypes<TRes>
    implements CopyWith$Variables$Query$GetTerritoryDocumentTypes<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTerritoryDocumentTypes(this._res);

  TRes _res;

  call({Enum$TerritoryId? territoryId}) => _res;
}

class Query$GetTerritoryDocumentTypes {
  Query$GetTerritoryDocumentTypes({
    this.territoryDocumentType,
    this.$__typename = 'Query',
  });

  factory Query$GetTerritoryDocumentTypes.fromJson(Map<String, dynamic> json) {
    final l$territoryDocumentType = json['territoryDocumentType'];
    final l$$__typename = json['__typename'];
    return Query$GetTerritoryDocumentTypes(
      territoryDocumentType: (l$territoryDocumentType as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetTerritoryDocumentTypes$territoryDocumentType.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetTerritoryDocumentTypes$territoryDocumentType?>?
      territoryDocumentType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$territoryDocumentType = territoryDocumentType;
    _resultData['territoryDocumentType'] =
        l$territoryDocumentType?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$territoryDocumentType = territoryDocumentType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$territoryDocumentType == null
          ? null
          : Object.hashAll(l$territoryDocumentType.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTerritoryDocumentTypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$territoryDocumentType = territoryDocumentType;
    final lOther$territoryDocumentType = other.territoryDocumentType;
    if (l$territoryDocumentType != null &&
        lOther$territoryDocumentType != null) {
      if (l$territoryDocumentType.length !=
          lOther$territoryDocumentType.length) {
        return false;
      }
      for (int i = 0; i < l$territoryDocumentType.length; i++) {
        final l$territoryDocumentType$entry = l$territoryDocumentType[i];
        final lOther$territoryDocumentType$entry =
            lOther$territoryDocumentType[i];
        if (l$territoryDocumentType$entry !=
            lOther$territoryDocumentType$entry) {
          return false;
        }
      }
    } else if (l$territoryDocumentType != lOther$territoryDocumentType) {
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

extension UtilityExtension$Query$GetTerritoryDocumentTypes
    on Query$GetTerritoryDocumentTypes {
  CopyWith$Query$GetTerritoryDocumentTypes<Query$GetTerritoryDocumentTypes>
      get copyWith => CopyWith$Query$GetTerritoryDocumentTypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTerritoryDocumentTypes<TRes> {
  factory CopyWith$Query$GetTerritoryDocumentTypes(
    Query$GetTerritoryDocumentTypes instance,
    TRes Function(Query$GetTerritoryDocumentTypes) then,
  ) = _CopyWithImpl$Query$GetTerritoryDocumentTypes;

  factory CopyWith$Query$GetTerritoryDocumentTypes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTerritoryDocumentTypes;

  TRes call({
    List<Query$GetTerritoryDocumentTypes$territoryDocumentType?>?
        territoryDocumentType,
    String? $__typename,
  });
  TRes territoryDocumentType(
      Iterable<Query$GetTerritoryDocumentTypes$territoryDocumentType?>? Function(
              Iterable<
                  CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType<
                      Query$GetTerritoryDocumentTypes$territoryDocumentType>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetTerritoryDocumentTypes<TRes>
    implements CopyWith$Query$GetTerritoryDocumentTypes<TRes> {
  _CopyWithImpl$Query$GetTerritoryDocumentTypes(
    this._instance,
    this._then,
  );

  final Query$GetTerritoryDocumentTypes _instance;

  final TRes Function(Query$GetTerritoryDocumentTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? territoryDocumentType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTerritoryDocumentTypes(
        territoryDocumentType: territoryDocumentType == _undefined
            ? _instance.territoryDocumentType
            : (territoryDocumentType as List<
                Query$GetTerritoryDocumentTypes$territoryDocumentType?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes territoryDocumentType(
          Iterable<Query$GetTerritoryDocumentTypes$territoryDocumentType?>? Function(
                  Iterable<
                      CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType<
                          Query$GetTerritoryDocumentTypes$territoryDocumentType>?>?)
              _fn) =>
      call(
          territoryDocumentType:
              _fn(_instance.territoryDocumentType?.map((e) => e == null
                  ? null
                  : CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$GetTerritoryDocumentTypes<TRes>
    implements CopyWith$Query$GetTerritoryDocumentTypes<TRes> {
  _CopyWithStubImpl$Query$GetTerritoryDocumentTypes(this._res);

  TRes _res;

  call({
    List<Query$GetTerritoryDocumentTypes$territoryDocumentType?>?
        territoryDocumentType,
    String? $__typename,
  }) =>
      _res;

  territoryDocumentType(_fn) => _res;
}

const documentNodeQueryGetTerritoryDocumentTypes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTerritoryDocumentTypes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'territoryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'TerritoryId'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'territoryDocumentType'),
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
            name: NameNode(value: 'documentType'),
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

class Query$GetTerritoryDocumentTypes$territoryDocumentType {
  Query$GetTerritoryDocumentTypes$territoryDocumentType({
    this.documentType,
    this.$__typename = 'DocumentTypeTerritory',
  });

  factory Query$GetTerritoryDocumentTypes$territoryDocumentType.fromJson(
      Map<String, dynamic> json) {
    final l$documentType = json['documentType'];
    final l$$__typename = json['__typename'];
    return Query$GetTerritoryDocumentTypes$territoryDocumentType(
      documentType: l$documentType == null
          ? null
          : Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType
              .fromJson((l$documentType as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType?
      documentType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$documentType = documentType;
    _resultData['documentType'] = l$documentType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$documentType = documentType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$documentType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTerritoryDocumentTypes$territoryDocumentType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$documentType = documentType;
    final lOther$documentType = other.documentType;
    if (l$documentType != lOther$documentType) {
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

extension UtilityExtension$Query$GetTerritoryDocumentTypes$territoryDocumentType
    on Query$GetTerritoryDocumentTypes$territoryDocumentType {
  CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType<
          Query$GetTerritoryDocumentTypes$territoryDocumentType>
      get copyWith =>
          CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType<
    TRes> {
  factory CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType(
    Query$GetTerritoryDocumentTypes$territoryDocumentType instance,
    TRes Function(Query$GetTerritoryDocumentTypes$territoryDocumentType) then,
  ) = _CopyWithImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType;

  factory CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType;

  TRes call({
    Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType?
        documentType,
    String? $__typename,
  });
  CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType<
      TRes> get documentType;
}

class _CopyWithImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType<TRes>
    implements
        CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType<TRes> {
  _CopyWithImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType(
    this._instance,
    this._then,
  );

  final Query$GetTerritoryDocumentTypes$territoryDocumentType _instance;

  final TRes Function(Query$GetTerritoryDocumentTypes$territoryDocumentType)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? documentType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTerritoryDocumentTypes$territoryDocumentType(
        documentType: documentType == _undefined
            ? _instance.documentType
            : (documentType
                as Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType<
      TRes> get documentType {
    final local$documentType = _instance.documentType;
    return local$documentType == null
        ? CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType
            .stub(_then(_instance))
        : CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType(
            local$documentType, (e) => call(documentType: e));
  }
}

class _CopyWithStubImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType<
        TRes>
    implements
        CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType<TRes> {
  _CopyWithStubImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType(
      this._res);

  TRes _res;

  call({
    Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType?
        documentType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType<
          TRes>
      get documentType =>
          CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType
              .stub(_res);
}

class Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType {
  Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType({
    required this.id,
    this.description,
    this.$__typename = 'DocumentType',
  });

  factory Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType(
      id: fromJson$Enum$DocumentTypeId((l$id as String)),
      description: (l$description as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$DocumentTypeId id;

  final String? description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = toJson$Enum$DocumentTypeId(l$id);
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
            is! Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType ||
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

extension UtilityExtension$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType
    on Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType {
  CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType<
          Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType>
      get copyWith =>
          CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType<
    TRes> {
  factory CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType(
    Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType instance,
    TRes Function(
            Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType)
        then,
  ) = _CopyWithImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType;

  factory CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType;

  TRes call({
    Enum$DocumentTypeId? id,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType<
        TRes>
    implements
        CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType<
            TRes> {
  _CopyWithImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType(
    this._instance,
    this._then,
  );

  final Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType
      _instance;

  final TRes Function(
      Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType(
        id: id == _undefined || id == null
            ? _instance.id
            : (id as Enum$DocumentTypeId),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType<
        TRes>
    implements
        CopyWith$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType<
            TRes> {
  _CopyWithStubImpl$Query$GetTerritoryDocumentTypes$territoryDocumentType$documentType(
      this._res);

  TRes _res;

  call({
    Enum$DocumentTypeId? id,
    String? description,
    String? $__typename,
  }) =>
      _res;
}
