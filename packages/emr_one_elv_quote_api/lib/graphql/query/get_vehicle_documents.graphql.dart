import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetVehicleDocuments {
  factory Variables$Query$GetVehicleDocuments({
    required int batchQuoteId,
    required int quoteId,
  }) =>
      Variables$Query$GetVehicleDocuments._({
        r'batchQuoteId': batchQuoteId,
        r'quoteId': quoteId,
      });

  Variables$Query$GetVehicleDocuments._(this._$data);

  factory Variables$Query$GetVehicleDocuments.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$batchQuoteId = data['batchQuoteId'];
    result$data['batchQuoteId'] = (l$batchQuoteId as int);
    final l$quoteId = data['quoteId'];
    result$data['quoteId'] = (l$quoteId as int);
    return Variables$Query$GetVehicleDocuments._(result$data);
  }

  Map<String, dynamic> _$data;

  int get batchQuoteId => (_$data['batchQuoteId'] as int);

  int get quoteId => (_$data['quoteId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$batchQuoteId = batchQuoteId;
    result$data['batchQuoteId'] = l$batchQuoteId;
    final l$quoteId = quoteId;
    result$data['quoteId'] = l$quoteId;
    return result$data;
  }

  CopyWith$Variables$Query$GetVehicleDocuments<
          Variables$Query$GetVehicleDocuments>
      get copyWith => CopyWith$Variables$Query$GetVehicleDocuments(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetVehicleDocuments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$batchQuoteId = batchQuoteId;
    final lOther$batchQuoteId = other.batchQuoteId;
    if (l$batchQuoteId != lOther$batchQuoteId) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$batchQuoteId = batchQuoteId;
    final l$quoteId = quoteId;
    return Object.hashAll([
      l$batchQuoteId,
      l$quoteId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetVehicleDocuments<TRes> {
  factory CopyWith$Variables$Query$GetVehicleDocuments(
    Variables$Query$GetVehicleDocuments instance,
    TRes Function(Variables$Query$GetVehicleDocuments) then,
  ) = _CopyWithImpl$Variables$Query$GetVehicleDocuments;

  factory CopyWith$Variables$Query$GetVehicleDocuments.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetVehicleDocuments;

  TRes call({
    int? batchQuoteId,
    int? quoteId,
  });
}

class _CopyWithImpl$Variables$Query$GetVehicleDocuments<TRes>
    implements CopyWith$Variables$Query$GetVehicleDocuments<TRes> {
  _CopyWithImpl$Variables$Query$GetVehicleDocuments(
    this._instance,
    this._then,
  );

  final Variables$Query$GetVehicleDocuments _instance;

  final TRes Function(Variables$Query$GetVehicleDocuments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? batchQuoteId = _undefined,
    Object? quoteId = _undefined,
  }) =>
      _then(Variables$Query$GetVehicleDocuments._({
        ..._instance._$data,
        if (batchQuoteId != _undefined && batchQuoteId != null)
          'batchQuoteId': (batchQuoteId as int),
        if (quoteId != _undefined && quoteId != null)
          'quoteId': (quoteId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetVehicleDocuments<TRes>
    implements CopyWith$Variables$Query$GetVehicleDocuments<TRes> {
  _CopyWithStubImpl$Variables$Query$GetVehicleDocuments(this._res);

  TRes _res;

  call({
    int? batchQuoteId,
    int? quoteId,
  }) =>
      _res;
}

class Query$GetVehicleDocuments {
  Query$GetVehicleDocuments({
    required this.vehicleDocuments,
    this.$__typename = 'Query',
  });

  factory Query$GetVehicleDocuments.fromJson(Map<String, dynamic> json) {
    final l$vehicleDocuments = json['vehicleDocuments'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleDocuments(
      vehicleDocuments: Query$GetVehicleDocuments$vehicleDocuments.fromJson(
          (l$vehicleDocuments as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetVehicleDocuments$vehicleDocuments vehicleDocuments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vehicleDocuments = vehicleDocuments;
    _resultData['vehicleDocuments'] = l$vehicleDocuments.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vehicleDocuments = vehicleDocuments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vehicleDocuments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetVehicleDocuments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vehicleDocuments = vehicleDocuments;
    final lOther$vehicleDocuments = other.vehicleDocuments;
    if (l$vehicleDocuments != lOther$vehicleDocuments) {
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

extension UtilityExtension$Query$GetVehicleDocuments
    on Query$GetVehicleDocuments {
  CopyWith$Query$GetVehicleDocuments<Query$GetVehicleDocuments> get copyWith =>
      CopyWith$Query$GetVehicleDocuments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleDocuments<TRes> {
  factory CopyWith$Query$GetVehicleDocuments(
    Query$GetVehicleDocuments instance,
    TRes Function(Query$GetVehicleDocuments) then,
  ) = _CopyWithImpl$Query$GetVehicleDocuments;

  factory CopyWith$Query$GetVehicleDocuments.stub(TRes res) =
      _CopyWithStubImpl$Query$GetVehicleDocuments;

  TRes call({
    Query$GetVehicleDocuments$vehicleDocuments? vehicleDocuments,
    String? $__typename,
  });
  CopyWith$Query$GetVehicleDocuments$vehicleDocuments<TRes>
      get vehicleDocuments;
}

class _CopyWithImpl$Query$GetVehicleDocuments<TRes>
    implements CopyWith$Query$GetVehicleDocuments<TRes> {
  _CopyWithImpl$Query$GetVehicleDocuments(
    this._instance,
    this._then,
  );

  final Query$GetVehicleDocuments _instance;

  final TRes Function(Query$GetVehicleDocuments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vehicleDocuments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetVehicleDocuments(
        vehicleDocuments: vehicleDocuments == _undefined ||
                vehicleDocuments == null
            ? _instance.vehicleDocuments
            : (vehicleDocuments as Query$GetVehicleDocuments$vehicleDocuments),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetVehicleDocuments$vehicleDocuments<TRes>
      get vehicleDocuments {
    final local$vehicleDocuments = _instance.vehicleDocuments;
    return CopyWith$Query$GetVehicleDocuments$vehicleDocuments(
        local$vehicleDocuments, (e) => call(vehicleDocuments: e));
  }
}

class _CopyWithStubImpl$Query$GetVehicleDocuments<TRes>
    implements CopyWith$Query$GetVehicleDocuments<TRes> {
  _CopyWithStubImpl$Query$GetVehicleDocuments(this._res);

  TRes _res;

  call({
    Query$GetVehicleDocuments$vehicleDocuments? vehicleDocuments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetVehicleDocuments$vehicleDocuments<TRes>
      get vehicleDocuments =>
          CopyWith$Query$GetVehicleDocuments$vehicleDocuments.stub(_res);
}

const documentNodeQueryGetVehicleDocuments = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetVehicleDocuments'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'batchQuoteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'quoteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'vehicleDocuments'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'batchQuoteId'),
            value: VariableNode(name: NameNode(value: 'batchQuoteId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'quoteId'),
            value: VariableNode(name: NameNode(value: 'quoteId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'vehicleId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'vehicleReg'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'vin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'documents'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'updatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'imageType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'path'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'documentType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'documentSubType'),
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
            name: NameNode(value: 'vehicleCats'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'vehicleCatId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isManual'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updatedAt'),
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
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'catClassification'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'serialNumber'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sealNumber'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'catValue'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'matchProbability'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'catalyticFill'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'imagePath'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'catId'),
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
            name: NameNode(value: 'nonConformingParts'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'updatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'partName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'path'),
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

class Query$GetVehicleDocuments$vehicleDocuments {
  Query$GetVehicleDocuments$vehicleDocuments({
    this.vehicleId,
    this.vehicleReg,
    this.vin,
    required this.documents,
    required this.vehicleCats,
    required this.nonConformingParts,
    this.$__typename = 'InspectionDocumentsResponse',
  });

  factory Query$GetVehicleDocuments$vehicleDocuments.fromJson(
      Map<String, dynamic> json) {
    final l$vehicleId = json['vehicleId'];
    final l$vehicleReg = json['vehicleReg'];
    final l$vin = json['vin'];
    final l$documents = json['documents'];
    final l$vehicleCats = json['vehicleCats'];
    final l$nonConformingParts = json['nonConformingParts'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleDocuments$vehicleDocuments(
      vehicleId: (l$vehicleId as int?),
      vehicleReg: (l$vehicleReg as String?),
      vin: (l$vin as String?),
      documents: (l$documents as List<dynamic>)
          .map((e) =>
              Query$GetVehicleDocuments$vehicleDocuments$documents.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      vehicleCats: (l$vehicleCats as List<dynamic>)
          .map((e) =>
              Query$GetVehicleDocuments$vehicleDocuments$vehicleCats.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      nonConformingParts: (l$nonConformingParts as List<dynamic>)
          .map((e) =>
              Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? vehicleId;

  final String? vehicleReg;

  final String? vin;

  final List<Query$GetVehicleDocuments$vehicleDocuments$documents> documents;

  final List<Query$GetVehicleDocuments$vehicleDocuments$vehicleCats>
      vehicleCats;

  final List<Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts>
      nonConformingParts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vehicleId = vehicleId;
    _resultData['vehicleId'] = l$vehicleId;
    final l$vehicleReg = vehicleReg;
    _resultData['vehicleReg'] = l$vehicleReg;
    final l$vin = vin;
    _resultData['vin'] = l$vin;
    final l$documents = documents;
    _resultData['documents'] = l$documents.map((e) => e.toJson()).toList();
    final l$vehicleCats = vehicleCats;
    _resultData['vehicleCats'] = l$vehicleCats.map((e) => e.toJson()).toList();
    final l$nonConformingParts = nonConformingParts;
    _resultData['nonConformingParts'] =
        l$nonConformingParts.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vehicleId = vehicleId;
    final l$vehicleReg = vehicleReg;
    final l$vin = vin;
    final l$documents = documents;
    final l$vehicleCats = vehicleCats;
    final l$nonConformingParts = nonConformingParts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vehicleId,
      l$vehicleReg,
      l$vin,
      Object.hashAll(l$documents.map((v) => v)),
      Object.hashAll(l$vehicleCats.map((v) => v)),
      Object.hashAll(l$nonConformingParts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetVehicleDocuments$vehicleDocuments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vehicleId = vehicleId;
    final lOther$vehicleId = other.vehicleId;
    if (l$vehicleId != lOther$vehicleId) {
      return false;
    }
    final l$vehicleReg = vehicleReg;
    final lOther$vehicleReg = other.vehicleReg;
    if (l$vehicleReg != lOther$vehicleReg) {
      return false;
    }
    final l$vin = vin;
    final lOther$vin = other.vin;
    if (l$vin != lOther$vin) {
      return false;
    }
    final l$documents = documents;
    final lOther$documents = other.documents;
    if (l$documents.length != lOther$documents.length) {
      return false;
    }
    for (int i = 0; i < l$documents.length; i++) {
      final l$documents$entry = l$documents[i];
      final lOther$documents$entry = lOther$documents[i];
      if (l$documents$entry != lOther$documents$entry) {
        return false;
      }
    }
    final l$vehicleCats = vehicleCats;
    final lOther$vehicleCats = other.vehicleCats;
    if (l$vehicleCats.length != lOther$vehicleCats.length) {
      return false;
    }
    for (int i = 0; i < l$vehicleCats.length; i++) {
      final l$vehicleCats$entry = l$vehicleCats[i];
      final lOther$vehicleCats$entry = lOther$vehicleCats[i];
      if (l$vehicleCats$entry != lOther$vehicleCats$entry) {
        return false;
      }
    }
    final l$nonConformingParts = nonConformingParts;
    final lOther$nonConformingParts = other.nonConformingParts;
    if (l$nonConformingParts.length != lOther$nonConformingParts.length) {
      return false;
    }
    for (int i = 0; i < l$nonConformingParts.length; i++) {
      final l$nonConformingParts$entry = l$nonConformingParts[i];
      final lOther$nonConformingParts$entry = lOther$nonConformingParts[i];
      if (l$nonConformingParts$entry != lOther$nonConformingParts$entry) {
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

extension UtilityExtension$Query$GetVehicleDocuments$vehicleDocuments
    on Query$GetVehicleDocuments$vehicleDocuments {
  CopyWith$Query$GetVehicleDocuments$vehicleDocuments<
          Query$GetVehicleDocuments$vehicleDocuments>
      get copyWith => CopyWith$Query$GetVehicleDocuments$vehicleDocuments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetVehicleDocuments$vehicleDocuments<TRes> {
  factory CopyWith$Query$GetVehicleDocuments$vehicleDocuments(
    Query$GetVehicleDocuments$vehicleDocuments instance,
    TRes Function(Query$GetVehicleDocuments$vehicleDocuments) then,
  ) = _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments;

  factory CopyWith$Query$GetVehicleDocuments$vehicleDocuments.stub(TRes res) =
      _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments;

  TRes call({
    int? vehicleId,
    String? vehicleReg,
    String? vin,
    List<Query$GetVehicleDocuments$vehicleDocuments$documents>? documents,
    List<Query$GetVehicleDocuments$vehicleDocuments$vehicleCats>? vehicleCats,
    List<Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts>?
        nonConformingParts,
    String? $__typename,
  });
  TRes documents(
      Iterable<Query$GetVehicleDocuments$vehicleDocuments$documents> Function(
              Iterable<
                  CopyWith$Query$GetVehicleDocuments$vehicleDocuments$documents<
                      Query$GetVehicleDocuments$vehicleDocuments$documents>>)
          _fn);
  TRes vehicleCats(
      Iterable<Query$GetVehicleDocuments$vehicleDocuments$vehicleCats> Function(
              Iterable<
                  CopyWith$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats<
                      Query$GetVehicleDocuments$vehicleDocuments$vehicleCats>>)
          _fn);
  TRes nonConformingParts(
      Iterable<Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts> Function(
              Iterable<
                  CopyWith$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts<
                      Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts>>)
          _fn);
}

class _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments<TRes>
    implements CopyWith$Query$GetVehicleDocuments$vehicleDocuments<TRes> {
  _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments(
    this._instance,
    this._then,
  );

  final Query$GetVehicleDocuments$vehicleDocuments _instance;

  final TRes Function(Query$GetVehicleDocuments$vehicleDocuments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vehicleId = _undefined,
    Object? vehicleReg = _undefined,
    Object? vin = _undefined,
    Object? documents = _undefined,
    Object? vehicleCats = _undefined,
    Object? nonConformingParts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetVehicleDocuments$vehicleDocuments(
        vehicleId:
            vehicleId == _undefined ? _instance.vehicleId : (vehicleId as int?),
        vehicleReg: vehicleReg == _undefined
            ? _instance.vehicleReg
            : (vehicleReg as String?),
        vin: vin == _undefined ? _instance.vin : (vin as String?),
        documents: documents == _undefined || documents == null
            ? _instance.documents
            : (documents
                as List<Query$GetVehicleDocuments$vehicleDocuments$documents>),
        vehicleCats: vehicleCats == _undefined || vehicleCats == null
            ? _instance.vehicleCats
            : (vehicleCats as List<
                Query$GetVehicleDocuments$vehicleDocuments$vehicleCats>),
        nonConformingParts: nonConformingParts == _undefined ||
                nonConformingParts == null
            ? _instance.nonConformingParts
            : (nonConformingParts as List<
                Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes documents(
          Iterable<Query$GetVehicleDocuments$vehicleDocuments$documents> Function(
                  Iterable<
                      CopyWith$Query$GetVehicleDocuments$vehicleDocuments$documents<
                          Query$GetVehicleDocuments$vehicleDocuments$documents>>)
              _fn) =>
      call(
          documents: _fn(_instance.documents.map((e) =>
              CopyWith$Query$GetVehicleDocuments$vehicleDocuments$documents(
                e,
                (i) => i,
              ))).toList());

  TRes vehicleCats(
          Iterable<Query$GetVehicleDocuments$vehicleDocuments$vehicleCats> Function(
                  Iterable<
                      CopyWith$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats<
                          Query$GetVehicleDocuments$vehicleDocuments$vehicleCats>>)
              _fn) =>
      call(
          vehicleCats: _fn(_instance.vehicleCats.map((e) =>
              CopyWith$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats(
                e,
                (i) => i,
              ))).toList());

  TRes nonConformingParts(
          Iterable<Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts> Function(
                  Iterable<
                      CopyWith$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts<
                          Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts>>)
              _fn) =>
      call(
          nonConformingParts: _fn(_instance.nonConformingParts.map((e) =>
              CopyWith$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments<TRes>
    implements CopyWith$Query$GetVehicleDocuments$vehicleDocuments<TRes> {
  _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments(this._res);

  TRes _res;

  call({
    int? vehicleId,
    String? vehicleReg,
    String? vin,
    List<Query$GetVehicleDocuments$vehicleDocuments$documents>? documents,
    List<Query$GetVehicleDocuments$vehicleDocuments$vehicleCats>? vehicleCats,
    List<Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts>?
        nonConformingParts,
    String? $__typename,
  }) =>
      _res;

  documents(_fn) => _res;

  vehicleCats(_fn) => _res;

  nonConformingParts(_fn) => _res;
}

class Query$GetVehicleDocuments$vehicleDocuments$documents {
  Query$GetVehicleDocuments$vehicleDocuments$documents({
    required this.updatedAt,
    required this.imageType,
    this.path,
    required this.documentType,
    required this.documentSubType,
    this.$__typename = 'VehicleDocumentsResponse',
  });

  factory Query$GetVehicleDocuments$vehicleDocuments$documents.fromJson(
      Map<String, dynamic> json) {
    final l$updatedAt = json['updatedAt'];
    final l$imageType = json['imageType'];
    final l$path = json['path'];
    final l$documentType = json['documentType'];
    final l$documentSubType = json['documentSubType'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleDocuments$vehicleDocuments$documents(
      updatedAt: DateTime.parse((l$updatedAt as String)),
      imageType: fromJson$Enum$DocumentUploadTypeEnum((l$imageType as String)),
      path: (l$path as String?),
      documentType: fromJson$Enum$DocumentTypeEnum((l$documentType as String)),
      documentSubType:
          fromJson$Enum$DocumentSubTypeEnum((l$documentSubType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime updatedAt;

  final Enum$DocumentUploadTypeEnum imageType;

  final String? path;

  final Enum$DocumentTypeEnum documentType;

  final Enum$DocumentSubTypeEnum documentSubType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$imageType = imageType;
    _resultData['imageType'] = toJson$Enum$DocumentUploadTypeEnum(l$imageType);
    final l$path = path;
    _resultData['path'] = l$path;
    final l$documentType = documentType;
    _resultData['documentType'] = toJson$Enum$DocumentTypeEnum(l$documentType);
    final l$documentSubType = documentSubType;
    _resultData['documentSubType'] =
        toJson$Enum$DocumentSubTypeEnum(l$documentSubType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatedAt = updatedAt;
    final l$imageType = imageType;
    final l$path = path;
    final l$documentType = documentType;
    final l$documentSubType = documentSubType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatedAt,
      l$imageType,
      l$path,
      l$documentType,
      l$documentSubType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetVehicleDocuments$vehicleDocuments$documents ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$imageType = imageType;
    final lOther$imageType = other.imageType;
    if (l$imageType != lOther$imageType) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (l$path != lOther$path) {
      return false;
    }
    final l$documentType = documentType;
    final lOther$documentType = other.documentType;
    if (l$documentType != lOther$documentType) {
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

extension UtilityExtension$Query$GetVehicleDocuments$vehicleDocuments$documents
    on Query$GetVehicleDocuments$vehicleDocuments$documents {
  CopyWith$Query$GetVehicleDocuments$vehicleDocuments$documents<
          Query$GetVehicleDocuments$vehicleDocuments$documents>
      get copyWith =>
          CopyWith$Query$GetVehicleDocuments$vehicleDocuments$documents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetVehicleDocuments$vehicleDocuments$documents<
    TRes> {
  factory CopyWith$Query$GetVehicleDocuments$vehicleDocuments$documents(
    Query$GetVehicleDocuments$vehicleDocuments$documents instance,
    TRes Function(Query$GetVehicleDocuments$vehicleDocuments$documents) then,
  ) = _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments$documents;

  factory CopyWith$Query$GetVehicleDocuments$vehicleDocuments$documents.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments$documents;

  TRes call({
    DateTime? updatedAt,
    Enum$DocumentUploadTypeEnum? imageType,
    String? path,
    Enum$DocumentTypeEnum? documentType,
    Enum$DocumentSubTypeEnum? documentSubType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments$documents<TRes>
    implements
        CopyWith$Query$GetVehicleDocuments$vehicleDocuments$documents<TRes> {
  _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments$documents(
    this._instance,
    this._then,
  );

  final Query$GetVehicleDocuments$vehicleDocuments$documents _instance;

  final TRes Function(Query$GetVehicleDocuments$vehicleDocuments$documents)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatedAt = _undefined,
    Object? imageType = _undefined,
    Object? path = _undefined,
    Object? documentType = _undefined,
    Object? documentSubType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetVehicleDocuments$vehicleDocuments$documents(
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        imageType: imageType == _undefined || imageType == null
            ? _instance.imageType
            : (imageType as Enum$DocumentUploadTypeEnum),
        path: path == _undefined ? _instance.path : (path as String?),
        documentType: documentType == _undefined || documentType == null
            ? _instance.documentType
            : (documentType as Enum$DocumentTypeEnum),
        documentSubType:
            documentSubType == _undefined || documentSubType == null
                ? _instance.documentSubType
                : (documentSubType as Enum$DocumentSubTypeEnum),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments$documents<
        TRes>
    implements
        CopyWith$Query$GetVehicleDocuments$vehicleDocuments$documents<TRes> {
  _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments$documents(
      this._res);

  TRes _res;

  call({
    DateTime? updatedAt,
    Enum$DocumentUploadTypeEnum? imageType,
    String? path,
    Enum$DocumentTypeEnum? documentType,
    Enum$DocumentSubTypeEnum? documentSubType,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetVehicleDocuments$vehicleDocuments$vehicleCats {
  Query$GetVehicleDocuments$vehicleDocuments$vehicleCats({
    this.vehicleCatId,
    required this.isManual,
    required this.updatedAt,
    required this.location,
    required this.catClassification,
    this.serialNumber,
    this.sealNumber,
    required this.catValue,
    this.matchProbability,
    this.catalyticFill,
    this.imagePath,
    this.catId,
    this.$__typename = 'VehicleCatDetailResponse',
  });

  factory Query$GetVehicleDocuments$vehicleDocuments$vehicleCats.fromJson(
      Map<String, dynamic> json) {
    final l$vehicleCatId = json['vehicleCatId'];
    final l$isManual = json['isManual'];
    final l$updatedAt = json['updatedAt'];
    final l$location = json['location'];
    final l$catClassification = json['catClassification'];
    final l$serialNumber = json['serialNumber'];
    final l$sealNumber = json['sealNumber'];
    final l$catValue = json['catValue'];
    final l$matchProbability = json['matchProbability'];
    final l$catalyticFill = json['catalyticFill'];
    final l$imagePath = json['imagePath'];
    final l$catId = json['catId'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleDocuments$vehicleDocuments$vehicleCats(
      vehicleCatId: (l$vehicleCatId as int?),
      isManual: (l$isManual as bool),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      location: (l$location as String),
      catClassification: (l$catClassification as String),
      serialNumber: (l$serialNumber as String?),
      sealNumber: (l$sealNumber as String?),
      catValue: (l$catValue as num).toDouble(),
      matchProbability: (l$matchProbability as int?),
      catalyticFill: (l$catalyticFill as num?)?.toDouble(),
      imagePath: (l$imagePath as String?),
      catId: (l$catId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? vehicleCatId;

  final bool isManual;

  final DateTime updatedAt;

  final String location;

  final String catClassification;

  final String? serialNumber;

  final String? sealNumber;

  final double catValue;

  final int? matchProbability;

  final double? catalyticFill;

  final String? imagePath;

  final String? catId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vehicleCatId = vehicleCatId;
    _resultData['vehicleCatId'] = l$vehicleCatId;
    final l$isManual = isManual;
    _resultData['isManual'] = l$isManual;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$location = location;
    _resultData['location'] = l$location;
    final l$catClassification = catClassification;
    _resultData['catClassification'] = l$catClassification;
    final l$serialNumber = serialNumber;
    _resultData['serialNumber'] = l$serialNumber;
    final l$sealNumber = sealNumber;
    _resultData['sealNumber'] = l$sealNumber;
    final l$catValue = catValue;
    _resultData['catValue'] = l$catValue;
    final l$matchProbability = matchProbability;
    _resultData['matchProbability'] = l$matchProbability;
    final l$catalyticFill = catalyticFill;
    _resultData['catalyticFill'] = l$catalyticFill;
    final l$imagePath = imagePath;
    _resultData['imagePath'] = l$imagePath;
    final l$catId = catId;
    _resultData['catId'] = l$catId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vehicleCatId = vehicleCatId;
    final l$isManual = isManual;
    final l$updatedAt = updatedAt;
    final l$location = location;
    final l$catClassification = catClassification;
    final l$serialNumber = serialNumber;
    final l$sealNumber = sealNumber;
    final l$catValue = catValue;
    final l$matchProbability = matchProbability;
    final l$catalyticFill = catalyticFill;
    final l$imagePath = imagePath;
    final l$catId = catId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vehicleCatId,
      l$isManual,
      l$updatedAt,
      l$location,
      l$catClassification,
      l$serialNumber,
      l$sealNumber,
      l$catValue,
      l$matchProbability,
      l$catalyticFill,
      l$imagePath,
      l$catId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetVehicleDocuments$vehicleDocuments$vehicleCats ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vehicleCatId = vehicleCatId;
    final lOther$vehicleCatId = other.vehicleCatId;
    if (l$vehicleCatId != lOther$vehicleCatId) {
      return false;
    }
    final l$isManual = isManual;
    final lOther$isManual = other.isManual;
    if (l$isManual != lOther$isManual) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$catClassification = catClassification;
    final lOther$catClassification = other.catClassification;
    if (l$catClassification != lOther$catClassification) {
      return false;
    }
    final l$serialNumber = serialNumber;
    final lOther$serialNumber = other.serialNumber;
    if (l$serialNumber != lOther$serialNumber) {
      return false;
    }
    final l$sealNumber = sealNumber;
    final lOther$sealNumber = other.sealNumber;
    if (l$sealNumber != lOther$sealNumber) {
      return false;
    }
    final l$catValue = catValue;
    final lOther$catValue = other.catValue;
    if (l$catValue != lOther$catValue) {
      return false;
    }
    final l$matchProbability = matchProbability;
    final lOther$matchProbability = other.matchProbability;
    if (l$matchProbability != lOther$matchProbability) {
      return false;
    }
    final l$catalyticFill = catalyticFill;
    final lOther$catalyticFill = other.catalyticFill;
    if (l$catalyticFill != lOther$catalyticFill) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$catId = catId;
    final lOther$catId = other.catId;
    if (l$catId != lOther$catId) {
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

extension UtilityExtension$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats
    on Query$GetVehicleDocuments$vehicleDocuments$vehicleCats {
  CopyWith$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats<
          Query$GetVehicleDocuments$vehicleDocuments$vehicleCats>
      get copyWith =>
          CopyWith$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats<
    TRes> {
  factory CopyWith$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats(
    Query$GetVehicleDocuments$vehicleDocuments$vehicleCats instance,
    TRes Function(Query$GetVehicleDocuments$vehicleDocuments$vehicleCats) then,
  ) = _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats;

  factory CopyWith$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats;

  TRes call({
    int? vehicleCatId,
    bool? isManual,
    DateTime? updatedAt,
    String? location,
    String? catClassification,
    String? serialNumber,
    String? sealNumber,
    double? catValue,
    int? matchProbability,
    double? catalyticFill,
    String? imagePath,
    String? catId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats<TRes>
    implements
        CopyWith$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats<TRes> {
  _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats(
    this._instance,
    this._then,
  );

  final Query$GetVehicleDocuments$vehicleDocuments$vehicleCats _instance;

  final TRes Function(Query$GetVehicleDocuments$vehicleDocuments$vehicleCats)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vehicleCatId = _undefined,
    Object? isManual = _undefined,
    Object? updatedAt = _undefined,
    Object? location = _undefined,
    Object? catClassification = _undefined,
    Object? serialNumber = _undefined,
    Object? sealNumber = _undefined,
    Object? catValue = _undefined,
    Object? matchProbability = _undefined,
    Object? catalyticFill = _undefined,
    Object? imagePath = _undefined,
    Object? catId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetVehicleDocuments$vehicleDocuments$vehicleCats(
        vehicleCatId: vehicleCatId == _undefined
            ? _instance.vehicleCatId
            : (vehicleCatId as int?),
        isManual: isManual == _undefined || isManual == null
            ? _instance.isManual
            : (isManual as bool),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as String),
        catClassification:
            catClassification == _undefined || catClassification == null
                ? _instance.catClassification
                : (catClassification as String),
        serialNumber: serialNumber == _undefined
            ? _instance.serialNumber
            : (serialNumber as String?),
        sealNumber: sealNumber == _undefined
            ? _instance.sealNumber
            : (sealNumber as String?),
        catValue: catValue == _undefined || catValue == null
            ? _instance.catValue
            : (catValue as double),
        matchProbability: matchProbability == _undefined
            ? _instance.matchProbability
            : (matchProbability as int?),
        catalyticFill: catalyticFill == _undefined
            ? _instance.catalyticFill
            : (catalyticFill as double?),
        imagePath: imagePath == _undefined
            ? _instance.imagePath
            : (imagePath as String?),
        catId: catId == _undefined ? _instance.catId : (catId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats<
        TRes>
    implements
        CopyWith$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats<TRes> {
  _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments$vehicleCats(
      this._res);

  TRes _res;

  call({
    int? vehicleCatId,
    bool? isManual,
    DateTime? updatedAt,
    String? location,
    String? catClassification,
    String? serialNumber,
    String? sealNumber,
    double? catValue,
    int? matchProbability,
    double? catalyticFill,
    String? imagePath,
    String? catId,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts {
  Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts({
    required this.updatedAt,
    required this.partName,
    this.path,
    this.$__typename = 'NonConformingPartDocuments',
  });

  factory Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts.fromJson(
      Map<String, dynamic> json) {
    final l$updatedAt = json['updatedAt'];
    final l$partName = json['partName'];
    final l$path = json['path'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts(
      updatedAt: DateTime.parse((l$updatedAt as String)),
      partName: (l$partName as String),
      path: (l$path as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime updatedAt;

  final String partName;

  final String? path;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$partName = partName;
    _resultData['partName'] = l$partName;
    final l$path = path;
    _resultData['path'] = l$path;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatedAt = updatedAt;
    final l$partName = partName;
    final l$path = path;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatedAt,
      l$partName,
      l$path,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$partName = partName;
    final lOther$partName = other.partName;
    if (l$partName != lOther$partName) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (l$path != lOther$path) {
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

extension UtilityExtension$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts
    on Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts {
  CopyWith$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts<
          Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts>
      get copyWith =>
          CopyWith$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts<
    TRes> {
  factory CopyWith$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts(
    Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts instance,
    TRes Function(Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts)
        then,
  ) = _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts;

  factory CopyWith$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts;

  TRes call({
    DateTime? updatedAt,
    String? partName,
    String? path,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts<
        TRes>
    implements
        CopyWith$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts<
            TRes> {
  _CopyWithImpl$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts(
    this._instance,
    this._then,
  );

  final Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts _instance;

  final TRes Function(
      Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatedAt = _undefined,
    Object? partName = _undefined,
    Object? path = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts(
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        partName: partName == _undefined || partName == null
            ? _instance.partName
            : (partName as String),
        path: path == _undefined ? _instance.path : (path as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts<
        TRes>
    implements
        CopyWith$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts<
            TRes> {
  _CopyWithStubImpl$Query$GetVehicleDocuments$vehicleDocuments$nonConformingParts(
      this._res);

  TRes _res;

  call({
    DateTime? updatedAt,
    String? partName,
    String? path,
    String? $__typename,
  }) =>
      _res;
}
