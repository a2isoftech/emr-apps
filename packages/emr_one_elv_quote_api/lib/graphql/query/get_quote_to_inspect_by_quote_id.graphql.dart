import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getQuoteToInspectByQuoteId {
  factory Variables$Query$getQuoteToInspectByQuoteId({required int quoteId}) =>
      Variables$Query$getQuoteToInspectByQuoteId._({
        r'quoteId': quoteId,
      });

  Variables$Query$getQuoteToInspectByQuoteId._(this._$data);

  factory Variables$Query$getQuoteToInspectByQuoteId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quoteId = data['quoteId'];
    result$data['quoteId'] = (l$quoteId as int);
    return Variables$Query$getQuoteToInspectByQuoteId._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quoteId => (_$data['quoteId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quoteId = quoteId;
    result$data['quoteId'] = l$quoteId;
    return result$data;
  }

  CopyWith$Variables$Query$getQuoteToInspectByQuoteId<
          Variables$Query$getQuoteToInspectByQuoteId>
      get copyWith => CopyWith$Variables$Query$getQuoteToInspectByQuoteId(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getQuoteToInspectByQuoteId ||
        runtimeType != other.runtimeType) {
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
    final l$quoteId = quoteId;
    return Object.hashAll([l$quoteId]);
  }
}

abstract class CopyWith$Variables$Query$getQuoteToInspectByQuoteId<TRes> {
  factory CopyWith$Variables$Query$getQuoteToInspectByQuoteId(
    Variables$Query$getQuoteToInspectByQuoteId instance,
    TRes Function(Variables$Query$getQuoteToInspectByQuoteId) then,
  ) = _CopyWithImpl$Variables$Query$getQuoteToInspectByQuoteId;

  factory CopyWith$Variables$Query$getQuoteToInspectByQuoteId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getQuoteToInspectByQuoteId;

  TRes call({int? quoteId});
}

class _CopyWithImpl$Variables$Query$getQuoteToInspectByQuoteId<TRes>
    implements CopyWith$Variables$Query$getQuoteToInspectByQuoteId<TRes> {
  _CopyWithImpl$Variables$Query$getQuoteToInspectByQuoteId(
    this._instance,
    this._then,
  );

  final Variables$Query$getQuoteToInspectByQuoteId _instance;

  final TRes Function(Variables$Query$getQuoteToInspectByQuoteId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? quoteId = _undefined}) =>
      _then(Variables$Query$getQuoteToInspectByQuoteId._({
        ..._instance._$data,
        if (quoteId != _undefined && quoteId != null)
          'quoteId': (quoteId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$getQuoteToInspectByQuoteId<TRes>
    implements CopyWith$Variables$Query$getQuoteToInspectByQuoteId<TRes> {
  _CopyWithStubImpl$Variables$Query$getQuoteToInspectByQuoteId(this._res);

  TRes _res;

  call({int? quoteId}) => _res;
}

class Query$getQuoteToInspectByQuoteId {
  Query$getQuoteToInspectByQuoteId({
    required this.quoteToInspect,
    this.$__typename = 'Query',
  });

  factory Query$getQuoteToInspectByQuoteId.fromJson(Map<String, dynamic> json) {
    final l$quoteToInspect = json['quoteToInspect'];
    final l$$__typename = json['__typename'];
    return Query$getQuoteToInspectByQuoteId(
      quoteToInspect: Query$getQuoteToInspectByQuoteId$quoteToInspect.fromJson(
          (l$quoteToInspect as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getQuoteToInspectByQuoteId$quoteToInspect quoteToInspect;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$quoteToInspect = quoteToInspect;
    _resultData['quoteToInspect'] = l$quoteToInspect.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$quoteToInspect = quoteToInspect;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$quoteToInspect,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getQuoteToInspectByQuoteId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quoteToInspect = quoteToInspect;
    final lOther$quoteToInspect = other.quoteToInspect;
    if (l$quoteToInspect != lOther$quoteToInspect) {
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

extension UtilityExtension$Query$getQuoteToInspectByQuoteId
    on Query$getQuoteToInspectByQuoteId {
  CopyWith$Query$getQuoteToInspectByQuoteId<Query$getQuoteToInspectByQuoteId>
      get copyWith => CopyWith$Query$getQuoteToInspectByQuoteId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getQuoteToInspectByQuoteId<TRes> {
  factory CopyWith$Query$getQuoteToInspectByQuoteId(
    Query$getQuoteToInspectByQuoteId instance,
    TRes Function(Query$getQuoteToInspectByQuoteId) then,
  ) = _CopyWithImpl$Query$getQuoteToInspectByQuoteId;

  factory CopyWith$Query$getQuoteToInspectByQuoteId.stub(TRes res) =
      _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId;

  TRes call({
    Query$getQuoteToInspectByQuoteId$quoteToInspect? quoteToInspect,
    String? $__typename,
  });
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect<TRes>
      get quoteToInspect;
}

class _CopyWithImpl$Query$getQuoteToInspectByQuoteId<TRes>
    implements CopyWith$Query$getQuoteToInspectByQuoteId<TRes> {
  _CopyWithImpl$Query$getQuoteToInspectByQuoteId(
    this._instance,
    this._then,
  );

  final Query$getQuoteToInspectByQuoteId _instance;

  final TRes Function(Query$getQuoteToInspectByQuoteId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quoteToInspect = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getQuoteToInspectByQuoteId(
        quoteToInspect: quoteToInspect == _undefined || quoteToInspect == null
            ? _instance.quoteToInspect
            : (quoteToInspect
                as Query$getQuoteToInspectByQuoteId$quoteToInspect),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect<TRes>
      get quoteToInspect {
    final local$quoteToInspect = _instance.quoteToInspect;
    return CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect(
        local$quoteToInspect, (e) => call(quoteToInspect: e));
  }
}

class _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId<TRes>
    implements CopyWith$Query$getQuoteToInspectByQuoteId<TRes> {
  _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId(this._res);

  TRes _res;

  call({
    Query$getQuoteToInspectByQuoteId$quoteToInspect? quoteToInspect,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect<TRes>
      get quoteToInspect =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect.stub(_res);
}

const documentNodeQuerygetQuoteToInspectByQuoteId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getQuoteToInspectByQuoteId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'quoteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'quoteToInspect'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'quoteId'),
            value: VariableNode(name: NameNode(value: 'quoteId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'batchQuoteId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'account'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'accountNumber'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'accountType'),
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
            name: NameNode(value: 'quoteSource'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'quoteStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'total'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'quoteId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'vehicleDescription'),
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
                name: NameNode(value: 'year'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'engineSize'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'curbWeight'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'curbWeightUom'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'make'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'model'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'fuelType'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'catValue'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'quoteLines'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'price'),
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
            name: NameNode(value: 'vehicleConfiguration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'vinUnreadable'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasOriginalCat'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'catDetails'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                    name: NameNode(value: 'isManual'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'vehicleCatId'),
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
                name: NameNode(value: 'vehicleDocuments'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'hasBattery'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'batteryImage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'alloyWheels'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'steelWheels'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'priceAdjustment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'componentName'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'leadSource'),
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

class Query$getQuoteToInspectByQuoteId$quoteToInspect {
  Query$getQuoteToInspectByQuoteId$quoteToInspect({
    required this.batchQuoteId,
    required this.account,
    required this.quoteSource,
    this.quoteStatus,
    required this.total,
    required this.quoteId,
    required this.vehicleDescription,
    required this.catValue,
    required this.quoteLines,
    this.vehicleConfiguration,
    this.leadSource,
    this.$__typename = 'InspectionQuoteModel',
  });

  factory Query$getQuoteToInspectByQuoteId$quoteToInspect.fromJson(
      Map<String, dynamic> json) {
    final l$batchQuoteId = json['batchQuoteId'];
    final l$account = json['account'];
    final l$quoteSource = json['quoteSource'];
    final l$quoteStatus = json['quoteStatus'];
    final l$total = json['total'];
    final l$quoteId = json['quoteId'];
    final l$vehicleDescription = json['vehicleDescription'];
    final l$catValue = json['catValue'];
    final l$quoteLines = json['quoteLines'];
    final l$vehicleConfiguration = json['vehicleConfiguration'];
    final l$leadSource = json['leadSource'];
    final l$$__typename = json['__typename'];
    return Query$getQuoteToInspectByQuoteId$quoteToInspect(
      batchQuoteId: (l$batchQuoteId as int),
      account: Query$getQuoteToInspectByQuoteId$quoteToInspect$account.fromJson(
          (l$account as Map<String, dynamic>)),
      quoteSource: fromJson$Enum$QuoteSourceEnum((l$quoteSource as String)),
      quoteStatus: l$quoteStatus == null
          ? null
          : fromJson$Enum$QuoteStatusEnum((l$quoteStatus as String)),
      total: (l$total as num).toDouble(),
      quoteId: (l$quoteId as int),
      vehicleDescription:
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription
              .fromJson((l$vehicleDescription as Map<String, dynamic>)),
      catValue: (l$catValue as num).toDouble(),
      quoteLines: (l$quoteLines as List<dynamic>)
          .map((e) => Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      vehicleConfiguration: l$vehicleConfiguration == null
          ? null
          : Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration
              .fromJson((l$vehicleConfiguration as Map<String, dynamic>)),
      leadSource: l$leadSource == null
          ? null
          : fromJson$Enum$LeadSourceEnum((l$leadSource as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int batchQuoteId;

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$account account;

  final Enum$QuoteSourceEnum quoteSource;

  final Enum$QuoteStatusEnum? quoteStatus;

  final double total;

  final int quoteId;

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription
      vehicleDescription;

  final double catValue;

  final List<Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines>
      quoteLines;

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration?
      vehicleConfiguration;

  final Enum$LeadSourceEnum? leadSource;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$batchQuoteId = batchQuoteId;
    _resultData['batchQuoteId'] = l$batchQuoteId;
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$quoteSource = quoteSource;
    _resultData['quoteSource'] = toJson$Enum$QuoteSourceEnum(l$quoteSource);
    final l$quoteStatus = quoteStatus;
    _resultData['quoteStatus'] = l$quoteStatus == null
        ? null
        : toJson$Enum$QuoteStatusEnum(l$quoteStatus);
    final l$total = total;
    _resultData['total'] = l$total;
    final l$quoteId = quoteId;
    _resultData['quoteId'] = l$quoteId;
    final l$vehicleDescription = vehicleDescription;
    _resultData['vehicleDescription'] = l$vehicleDescription.toJson();
    final l$catValue = catValue;
    _resultData['catValue'] = l$catValue;
    final l$quoteLines = quoteLines;
    _resultData['quoteLines'] = l$quoteLines.map((e) => e.toJson()).toList();
    final l$vehicleConfiguration = vehicleConfiguration;
    _resultData['vehicleConfiguration'] = l$vehicleConfiguration?.toJson();
    final l$leadSource = leadSource;
    _resultData['leadSource'] =
        l$leadSource == null ? null : toJson$Enum$LeadSourceEnum(l$leadSource);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$batchQuoteId = batchQuoteId;
    final l$account = account;
    final l$quoteSource = quoteSource;
    final l$quoteStatus = quoteStatus;
    final l$total = total;
    final l$quoteId = quoteId;
    final l$vehicleDescription = vehicleDescription;
    final l$catValue = catValue;
    final l$quoteLines = quoteLines;
    final l$vehicleConfiguration = vehicleConfiguration;
    final l$leadSource = leadSource;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$batchQuoteId,
      l$account,
      l$quoteSource,
      l$quoteStatus,
      l$total,
      l$quoteId,
      l$vehicleDescription,
      l$catValue,
      Object.hashAll(l$quoteLines.map((v) => v)),
      l$vehicleConfiguration,
      l$leadSource,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getQuoteToInspectByQuoteId$quoteToInspect ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$batchQuoteId = batchQuoteId;
    final lOther$batchQuoteId = other.batchQuoteId;
    if (l$batchQuoteId != lOther$batchQuoteId) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$quoteSource = quoteSource;
    final lOther$quoteSource = other.quoteSource;
    if (l$quoteSource != lOther$quoteSource) {
      return false;
    }
    final l$quoteStatus = quoteStatus;
    final lOther$quoteStatus = other.quoteStatus;
    if (l$quoteStatus != lOther$quoteStatus) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    final l$vehicleDescription = vehicleDescription;
    final lOther$vehicleDescription = other.vehicleDescription;
    if (l$vehicleDescription != lOther$vehicleDescription) {
      return false;
    }
    final l$catValue = catValue;
    final lOther$catValue = other.catValue;
    if (l$catValue != lOther$catValue) {
      return false;
    }
    final l$quoteLines = quoteLines;
    final lOther$quoteLines = other.quoteLines;
    if (l$quoteLines.length != lOther$quoteLines.length) {
      return false;
    }
    for (int i = 0; i < l$quoteLines.length; i++) {
      final l$quoteLines$entry = l$quoteLines[i];
      final lOther$quoteLines$entry = lOther$quoteLines[i];
      if (l$quoteLines$entry != lOther$quoteLines$entry) {
        return false;
      }
    }
    final l$vehicleConfiguration = vehicleConfiguration;
    final lOther$vehicleConfiguration = other.vehicleConfiguration;
    if (l$vehicleConfiguration != lOther$vehicleConfiguration) {
      return false;
    }
    final l$leadSource = leadSource;
    final lOther$leadSource = other.leadSource;
    if (l$leadSource != lOther$leadSource) {
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

extension UtilityExtension$Query$getQuoteToInspectByQuoteId$quoteToInspect
    on Query$getQuoteToInspectByQuoteId$quoteToInspect {
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect<
          Query$getQuoteToInspectByQuoteId$quoteToInspect>
      get copyWith => CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect<TRes> {
  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect(
    Query$getQuoteToInspectByQuoteId$quoteToInspect instance,
    TRes Function(Query$getQuoteToInspectByQuoteId$quoteToInspect) then,
  ) = _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect;

  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect;

  TRes call({
    int? batchQuoteId,
    Query$getQuoteToInspectByQuoteId$quoteToInspect$account? account,
    Enum$QuoteSourceEnum? quoteSource,
    Enum$QuoteStatusEnum? quoteStatus,
    double? total,
    int? quoteId,
    Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription?
        vehicleDescription,
    double? catValue,
    List<Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines>?
        quoteLines,
    Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration?
        vehicleConfiguration,
    Enum$LeadSourceEnum? leadSource,
    String? $__typename,
  });
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account<TRes>
      get account;
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription<
      TRes> get vehicleDescription;
  TRes quoteLines(
      Iterable<Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines> Function(
              Iterable<
                  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines<
                      Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines>>)
          _fn);
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration<
      TRes> get vehicleConfiguration;
}

class _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect<TRes>
    implements CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect<TRes> {
  _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect(
    this._instance,
    this._then,
  );

  final Query$getQuoteToInspectByQuoteId$quoteToInspect _instance;

  final TRes Function(Query$getQuoteToInspectByQuoteId$quoteToInspect) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? batchQuoteId = _undefined,
    Object? account = _undefined,
    Object? quoteSource = _undefined,
    Object? quoteStatus = _undefined,
    Object? total = _undefined,
    Object? quoteId = _undefined,
    Object? vehicleDescription = _undefined,
    Object? catValue = _undefined,
    Object? quoteLines = _undefined,
    Object? vehicleConfiguration = _undefined,
    Object? leadSource = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getQuoteToInspectByQuoteId$quoteToInspect(
        batchQuoteId: batchQuoteId == _undefined || batchQuoteId == null
            ? _instance.batchQuoteId
            : (batchQuoteId as int),
        account: account == _undefined || account == null
            ? _instance.account
            : (account
                as Query$getQuoteToInspectByQuoteId$quoteToInspect$account),
        quoteSource: quoteSource == _undefined || quoteSource == null
            ? _instance.quoteSource
            : (quoteSource as Enum$QuoteSourceEnum),
        quoteStatus: quoteStatus == _undefined
            ? _instance.quoteStatus
            : (quoteStatus as Enum$QuoteStatusEnum?),
        total: total == _undefined || total == null
            ? _instance.total
            : (total as double),
        quoteId: quoteId == _undefined || quoteId == null
            ? _instance.quoteId
            : (quoteId as int),
        vehicleDescription: vehicleDescription == _undefined ||
                vehicleDescription == null
            ? _instance.vehicleDescription
            : (vehicleDescription
                as Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription),
        catValue: catValue == _undefined || catValue == null
            ? _instance.catValue
            : (catValue as double),
        quoteLines: quoteLines == _undefined || quoteLines == null
            ? _instance.quoteLines
            : (quoteLines as List<
                Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines>),
        vehicleConfiguration: vehicleConfiguration == _undefined
            ? _instance.vehicleConfiguration
            : (vehicleConfiguration
                as Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration?),
        leadSource: leadSource == _undefined
            ? _instance.leadSource
            : (leadSource as Enum$LeadSourceEnum?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account<TRes>
      get account {
    final local$account = _instance.account;
    return CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account(
        local$account, (e) => call(account: e));
  }

  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription<
      TRes> get vehicleDescription {
    final local$vehicleDescription = _instance.vehicleDescription;
    return CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription(
        local$vehicleDescription, (e) => call(vehicleDescription: e));
  }

  TRes quoteLines(
          Iterable<Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines> Function(
                  Iterable<
                      CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines<
                          Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines>>)
              _fn) =>
      call(
          quoteLines: _fn(_instance.quoteLines.map((e) =>
              CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration<
      TRes> get vehicleConfiguration {
    final local$vehicleConfiguration = _instance.vehicleConfiguration;
    return local$vehicleConfiguration == null
        ? CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration
            .stub(_then(_instance))
        : CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration(
            local$vehicleConfiguration, (e) => call(vehicleConfiguration: e));
  }
}

class _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect<TRes>
    implements CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect<TRes> {
  _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect(this._res);

  TRes _res;

  call({
    int? batchQuoteId,
    Query$getQuoteToInspectByQuoteId$quoteToInspect$account? account,
    Enum$QuoteSourceEnum? quoteSource,
    Enum$QuoteStatusEnum? quoteStatus,
    double? total,
    int? quoteId,
    Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription?
        vehicleDescription,
    double? catValue,
    List<Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines>?
        quoteLines,
    Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration?
        vehicleConfiguration,
    Enum$LeadSourceEnum? leadSource,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account<TRes>
      get account =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account.stub(
              _res);

  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription<
          TRes>
      get vehicleDescription =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription
              .stub(_res);

  quoteLines(_fn) => _res;

  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration<
          TRes>
      get vehicleConfiguration =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration
              .stub(_res);
}

class Query$getQuoteToInspectByQuoteId$quoteToInspect$account {
  Query$getQuoteToInspectByQuoteId$quoteToInspect$account({
    required this.accountNumber,
    required this.accountType,
    this.$__typename = 'AccountModel',
  });

  factory Query$getQuoteToInspectByQuoteId$quoteToInspect$account.fromJson(
      Map<String, dynamic> json) {
    final l$accountNumber = json['accountNumber'];
    final l$accountType = json['accountType'];
    final l$$__typename = json['__typename'];
    return Query$getQuoteToInspectByQuoteId$quoteToInspect$account(
      accountNumber: (l$accountNumber as String),
      accountType: fromJson$Enum$QuoteAccountType((l$accountType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountNumber;

  final Enum$QuoteAccountType accountType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$accountType = accountType;
    _resultData['accountType'] = toJson$Enum$QuoteAccountType(l$accountType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$accountType = accountType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      l$accountType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getQuoteToInspectByQuoteId$quoteToInspect$account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$accountType = accountType;
    final lOther$accountType = other.accountType;
    if (l$accountType != lOther$accountType) {
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

extension UtilityExtension$Query$getQuoteToInspectByQuoteId$quoteToInspect$account
    on Query$getQuoteToInspectByQuoteId$quoteToInspect$account {
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$account>
      get copyWith =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account<
    TRes> {
  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account(
    Query$getQuoteToInspectByQuoteId$quoteToInspect$account instance,
    TRes Function(Query$getQuoteToInspectByQuoteId$quoteToInspect$account) then,
  ) = _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$account;

  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$account;

  TRes call({
    String? accountNumber,
    Enum$QuoteAccountType? accountType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$account<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account<TRes> {
  _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$account(
    this._instance,
    this._then,
  );

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$account _instance;

  final TRes Function(Query$getQuoteToInspectByQuoteId$quoteToInspect$account)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? accountType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getQuoteToInspectByQuoteId$quoteToInspect$account(
        accountNumber: accountNumber == _undefined || accountNumber == null
            ? _instance.accountNumber
            : (accountNumber as String),
        accountType: accountType == _undefined || accountType == null
            ? _instance.accountType
            : (accountType as Enum$QuoteAccountType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$account<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$account<TRes> {
  _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$account(
      this._res);

  TRes _res;

  call({
    String? accountNumber,
    Enum$QuoteAccountType? accountType,
    String? $__typename,
  }) =>
      _res;
}

class Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription {
  Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription({
    required this.id,
    this.year,
    this.engineSize,
    this.curbWeight,
    this.curbWeightUom,
    this.make,
    this.model,
    this.fuelType,
    this.vehicleReg,
    this.vin,
    this.$__typename = 'VehicleDescriptionModel',
  });

  factory Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$year = json['year'];
    final l$engineSize = json['engineSize'];
    final l$curbWeight = json['curbWeight'];
    final l$curbWeightUom = json['curbWeightUom'];
    final l$make = json['make'];
    final l$model = json['model'];
    final l$fuelType = json['fuelType'];
    final l$vehicleReg = json['vehicleReg'];
    final l$vin = json['vin'];
    final l$$__typename = json['__typename'];
    return Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription(
      id: (l$id as int),
      year: (l$year as int?),
      engineSize: (l$engineSize as num?)?.toDouble(),
      curbWeight: (l$curbWeight as num?)?.toDouble(),
      curbWeightUom: l$curbWeightUom == null
          ? null
          : fromJson$Enum$UomCode((l$curbWeightUom as String)),
      make: (l$make as String?),
      model: (l$model as String?),
      fuelType: (l$fuelType as String?),
      vehicleReg: (l$vehicleReg as String?),
      vin: (l$vin as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? year;

  final double? engineSize;

  final double? curbWeight;

  final Enum$UomCode? curbWeightUom;

  final String? make;

  final String? model;

  final String? fuelType;

  final String? vehicleReg;

  final String? vin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$engineSize = engineSize;
    _resultData['engineSize'] = l$engineSize;
    final l$curbWeight = curbWeight;
    _resultData['curbWeight'] = l$curbWeight;
    final l$curbWeightUom = curbWeightUom;
    _resultData['curbWeightUom'] =
        l$curbWeightUom == null ? null : toJson$Enum$UomCode(l$curbWeightUom);
    final l$make = make;
    _resultData['make'] = l$make;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$fuelType = fuelType;
    _resultData['fuelType'] = l$fuelType;
    final l$vehicleReg = vehicleReg;
    _resultData['vehicleReg'] = l$vehicleReg;
    final l$vin = vin;
    _resultData['vin'] = l$vin;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$year = year;
    final l$engineSize = engineSize;
    final l$curbWeight = curbWeight;
    final l$curbWeightUom = curbWeightUom;
    final l$make = make;
    final l$model = model;
    final l$fuelType = fuelType;
    final l$vehicleReg = vehicleReg;
    final l$vin = vin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$year,
      l$engineSize,
      l$curbWeight,
      l$curbWeightUom,
      l$make,
      l$model,
      l$fuelType,
      l$vehicleReg,
      l$vin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$engineSize = engineSize;
    final lOther$engineSize = other.engineSize;
    if (l$engineSize != lOther$engineSize) {
      return false;
    }
    final l$curbWeight = curbWeight;
    final lOther$curbWeight = other.curbWeight;
    if (l$curbWeight != lOther$curbWeight) {
      return false;
    }
    final l$curbWeightUom = curbWeightUom;
    final lOther$curbWeightUom = other.curbWeightUom;
    if (l$curbWeightUom != lOther$curbWeightUom) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$fuelType = fuelType;
    final lOther$fuelType = other.fuelType;
    if (l$fuelType != lOther$fuelType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription
    on Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription {
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription>
      get copyWith =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription<
    TRes> {
  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription(
    Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription instance,
    TRes Function(
            Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription)
        then,
  ) = _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription;

  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription;

  TRes call({
    int? id,
    int? year,
    double? engineSize,
    double? curbWeight,
    Enum$UomCode? curbWeightUom,
    String? make,
    String? model,
    String? fuelType,
    String? vehicleReg,
    String? vin,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription<
            TRes> {
  _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription(
    this._instance,
    this._then,
  );

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription
      _instance;

  final TRes Function(
      Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? year = _undefined,
    Object? engineSize = _undefined,
    Object? curbWeight = _undefined,
    Object? curbWeightUom = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? fuelType = _undefined,
    Object? vehicleReg = _undefined,
    Object? vin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        year: year == _undefined ? _instance.year : (year as int?),
        engineSize: engineSize == _undefined
            ? _instance.engineSize
            : (engineSize as double?),
        curbWeight: curbWeight == _undefined
            ? _instance.curbWeight
            : (curbWeight as double?),
        curbWeightUom: curbWeightUom == _undefined
            ? _instance.curbWeightUom
            : (curbWeightUom as Enum$UomCode?),
        make: make == _undefined ? _instance.make : (make as String?),
        model: model == _undefined ? _instance.model : (model as String?),
        fuelType:
            fuelType == _undefined ? _instance.fuelType : (fuelType as String?),
        vehicleReg: vehicleReg == _undefined
            ? _instance.vehicleReg
            : (vehicleReg as String?),
        vin: vin == _undefined ? _instance.vin : (vin as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription<
            TRes> {
  _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleDescription(
      this._res);

  TRes _res;

  call({
    int? id,
    int? year,
    double? engineSize,
    double? curbWeight,
    Enum$UomCode? curbWeightUom,
    String? make,
    String? model,
    String? fuelType,
    String? vehicleReg,
    String? vin,
    String? $__typename,
  }) =>
      _res;
}

class Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines {
  Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines({
    required this.description,
    required this.price,
    this.$__typename = 'QuoteLine',
  });

  factory Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines.fromJson(
      Map<String, dynamic> json) {
    final l$description = json['description'];
    final l$price = json['price'];
    final l$$__typename = json['__typename'];
    return Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines(
      description: (l$description as String),
      price: (l$price as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final double price;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$price = price;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$price,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
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

extension UtilityExtension$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines
    on Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines {
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines>
      get copyWith =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines<
    TRes> {
  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines(
    Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines instance,
    TRes Function(Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines)
        then,
  ) = _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines;

  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines;

  TRes call({
    String? description,
    double? price,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines<
            TRes> {
  _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines(
    this._instance,
    this._then,
  );

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines _instance;

  final TRes Function(
      Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? price = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines(
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines<
            TRes> {
  _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$quoteLines(
      this._res);

  TRes _res;

  call({
    String? description,
    double? price,
    String? $__typename,
  }) =>
      _res;
}

class Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration {
  Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration({
    required this.vinUnreadable,
    required this.hasOriginalCat,
    required this.catDetails,
    required this.nonConformingParts,
    required this.vehicleDocuments,
    required this.hasBattery,
    this.batteryImage,
    required this.alloyWheels,
    required this.steelWheels,
    this.priceAdjustment,
    this.$__typename = 'VehicleConfigurationModel',
  });

  factory Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration.fromJson(
      Map<String, dynamic> json) {
    final l$vinUnreadable = json['vinUnreadable'];
    final l$hasOriginalCat = json['hasOriginalCat'];
    final l$catDetails = json['catDetails'];
    final l$nonConformingParts = json['nonConformingParts'];
    final l$vehicleDocuments = json['vehicleDocuments'];
    final l$hasBattery = json['hasBattery'];
    final l$batteryImage = json['batteryImage'];
    final l$alloyWheels = json['alloyWheels'];
    final l$steelWheels = json['steelWheels'];
    final l$priceAdjustment = json['priceAdjustment'];
    final l$$__typename = json['__typename'];
    return Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration(
      vinUnreadable: (l$vinUnreadable as bool),
      hasOriginalCat: (l$hasOriginalCat as bool),
      catDetails: (l$catDetails as List<dynamic>)
          .map((e) =>
              Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      nonConformingParts: (l$nonConformingParts as List<dynamic>)
          .map((e) =>
              Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      vehicleDocuments: (l$vehicleDocuments as List<dynamic>)
          .map((e) =>
              Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      hasBattery: (l$hasBattery as bool),
      batteryImage: (l$batteryImage as String?),
      alloyWheels: (l$alloyWheels as int),
      steelWheels: (l$steelWheels as int),
      priceAdjustment: (l$priceAdjustment as List<dynamic>?)
          ?.map((e) =>
              Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool vinUnreadable;

  final bool hasOriginalCat;

  final List<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails>
      catDetails;

  final List<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts>
      nonConformingParts;

  final List<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments>
      vehicleDocuments;

  final bool hasBattery;

  final String? batteryImage;

  final int alloyWheels;

  final int steelWheels;

  final List<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment>?
      priceAdjustment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vinUnreadable = vinUnreadable;
    _resultData['vinUnreadable'] = l$vinUnreadable;
    final l$hasOriginalCat = hasOriginalCat;
    _resultData['hasOriginalCat'] = l$hasOriginalCat;
    final l$catDetails = catDetails;
    _resultData['catDetails'] = l$catDetails.map((e) => e.toJson()).toList();
    final l$nonConformingParts = nonConformingParts;
    _resultData['nonConformingParts'] =
        l$nonConformingParts.map((e) => e.toJson()).toList();
    final l$vehicleDocuments = vehicleDocuments;
    _resultData['vehicleDocuments'] =
        l$vehicleDocuments.map((e) => e.toJson()).toList();
    final l$hasBattery = hasBattery;
    _resultData['hasBattery'] = l$hasBattery;
    final l$batteryImage = batteryImage;
    _resultData['batteryImage'] = l$batteryImage;
    final l$alloyWheels = alloyWheels;
    _resultData['alloyWheels'] = l$alloyWheels;
    final l$steelWheels = steelWheels;
    _resultData['steelWheels'] = l$steelWheels;
    final l$priceAdjustment = priceAdjustment;
    _resultData['priceAdjustment'] =
        l$priceAdjustment?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vinUnreadable = vinUnreadable;
    final l$hasOriginalCat = hasOriginalCat;
    final l$catDetails = catDetails;
    final l$nonConformingParts = nonConformingParts;
    final l$vehicleDocuments = vehicleDocuments;
    final l$hasBattery = hasBattery;
    final l$batteryImage = batteryImage;
    final l$alloyWheels = alloyWheels;
    final l$steelWheels = steelWheels;
    final l$priceAdjustment = priceAdjustment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vinUnreadable,
      l$hasOriginalCat,
      Object.hashAll(l$catDetails.map((v) => v)),
      Object.hashAll(l$nonConformingParts.map((v) => v)),
      Object.hashAll(l$vehicleDocuments.map((v) => v)),
      l$hasBattery,
      l$batteryImage,
      l$alloyWheels,
      l$steelWheels,
      l$priceAdjustment == null
          ? null
          : Object.hashAll(l$priceAdjustment.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vinUnreadable = vinUnreadable;
    final lOther$vinUnreadable = other.vinUnreadable;
    if (l$vinUnreadable != lOther$vinUnreadable) {
      return false;
    }
    final l$hasOriginalCat = hasOriginalCat;
    final lOther$hasOriginalCat = other.hasOriginalCat;
    if (l$hasOriginalCat != lOther$hasOriginalCat) {
      return false;
    }
    final l$catDetails = catDetails;
    final lOther$catDetails = other.catDetails;
    if (l$catDetails.length != lOther$catDetails.length) {
      return false;
    }
    for (int i = 0; i < l$catDetails.length; i++) {
      final l$catDetails$entry = l$catDetails[i];
      final lOther$catDetails$entry = lOther$catDetails[i];
      if (l$catDetails$entry != lOther$catDetails$entry) {
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
    final l$vehicleDocuments = vehicleDocuments;
    final lOther$vehicleDocuments = other.vehicleDocuments;
    if (l$vehicleDocuments.length != lOther$vehicleDocuments.length) {
      return false;
    }
    for (int i = 0; i < l$vehicleDocuments.length; i++) {
      final l$vehicleDocuments$entry = l$vehicleDocuments[i];
      final lOther$vehicleDocuments$entry = lOther$vehicleDocuments[i];
      if (l$vehicleDocuments$entry != lOther$vehicleDocuments$entry) {
        return false;
      }
    }
    final l$hasBattery = hasBattery;
    final lOther$hasBattery = other.hasBattery;
    if (l$hasBattery != lOther$hasBattery) {
      return false;
    }
    final l$batteryImage = batteryImage;
    final lOther$batteryImage = other.batteryImage;
    if (l$batteryImage != lOther$batteryImage) {
      return false;
    }
    final l$alloyWheels = alloyWheels;
    final lOther$alloyWheels = other.alloyWheels;
    if (l$alloyWheels != lOther$alloyWheels) {
      return false;
    }
    final l$steelWheels = steelWheels;
    final lOther$steelWheels = other.steelWheels;
    if (l$steelWheels != lOther$steelWheels) {
      return false;
    }
    final l$priceAdjustment = priceAdjustment;
    final lOther$priceAdjustment = other.priceAdjustment;
    if (l$priceAdjustment != null && lOther$priceAdjustment != null) {
      if (l$priceAdjustment.length != lOther$priceAdjustment.length) {
        return false;
      }
      for (int i = 0; i < l$priceAdjustment.length; i++) {
        final l$priceAdjustment$entry = l$priceAdjustment[i];
        final lOther$priceAdjustment$entry = lOther$priceAdjustment[i];
        if (l$priceAdjustment$entry != lOther$priceAdjustment$entry) {
          return false;
        }
      }
    } else if (l$priceAdjustment != lOther$priceAdjustment) {
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

extension UtilityExtension$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration
    on Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration {
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration>
      get copyWith =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration<
    TRes> {
  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration(
    Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration
        instance,
    TRes Function(
            Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration)
        then,
  ) = _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration;

  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration;

  TRes call({
    bool? vinUnreadable,
    bool? hasOriginalCat,
    List<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails>?
        catDetails,
    List<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts>?
        nonConformingParts,
    List<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments>?
        vehicleDocuments,
    bool? hasBattery,
    String? batteryImage,
    int? alloyWheels,
    int? steelWheels,
    List<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment>?
        priceAdjustment,
    String? $__typename,
  });
  TRes catDetails(
      Iterable<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails> Function(
              Iterable<
                  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails<
                      Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails>>)
          _fn);
  TRes nonConformingParts(
      Iterable<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts> Function(
              Iterable<
                  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts<
                      Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts>>)
          _fn);
  TRes vehicleDocuments(
      Iterable<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments> Function(
              Iterable<
                  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments<
                      Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments>>)
          _fn);
  TRes priceAdjustment(
      Iterable<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment>? Function(
              Iterable<
                  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment<
                      Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment>>?)
          _fn);
}

class _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration<
            TRes> {
  _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration(
    this._instance,
    this._then,
  );

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration
      _instance;

  final TRes Function(
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vinUnreadable = _undefined,
    Object? hasOriginalCat = _undefined,
    Object? catDetails = _undefined,
    Object? nonConformingParts = _undefined,
    Object? vehicleDocuments = _undefined,
    Object? hasBattery = _undefined,
    Object? batteryImage = _undefined,
    Object? alloyWheels = _undefined,
    Object? steelWheels = _undefined,
    Object? priceAdjustment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration(
        vinUnreadable: vinUnreadable == _undefined || vinUnreadable == null
            ? _instance.vinUnreadable
            : (vinUnreadable as bool),
        hasOriginalCat: hasOriginalCat == _undefined || hasOriginalCat == null
            ? _instance.hasOriginalCat
            : (hasOriginalCat as bool),
        catDetails: catDetails == _undefined || catDetails == null
            ? _instance.catDetails
            : (catDetails as List<
                Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails>),
        nonConformingParts: nonConformingParts == _undefined ||
                nonConformingParts == null
            ? _instance.nonConformingParts
            : (nonConformingParts as List<
                Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts>),
        vehicleDocuments: vehicleDocuments == _undefined ||
                vehicleDocuments == null
            ? _instance.vehicleDocuments
            : (vehicleDocuments as List<
                Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments>),
        hasBattery: hasBattery == _undefined || hasBattery == null
            ? _instance.hasBattery
            : (hasBattery as bool),
        batteryImage: batteryImage == _undefined
            ? _instance.batteryImage
            : (batteryImage as String?),
        alloyWheels: alloyWheels == _undefined || alloyWheels == null
            ? _instance.alloyWheels
            : (alloyWheels as int),
        steelWheels: steelWheels == _undefined || steelWheels == null
            ? _instance.steelWheels
            : (steelWheels as int),
        priceAdjustment: priceAdjustment == _undefined
            ? _instance.priceAdjustment
            : (priceAdjustment as List<
                Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes catDetails(
          Iterable<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails> Function(
                  Iterable<
                      CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails<
                          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails>>)
              _fn) =>
      call(
          catDetails: _fn(_instance.catDetails.map((e) =>
              CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails(
                e,
                (i) => i,
              ))).toList());

  TRes nonConformingParts(
          Iterable<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts> Function(
                  Iterable<
                      CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts<
                          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts>>)
              _fn) =>
      call(
          nonConformingParts: _fn(_instance.nonConformingParts.map((e) =>
              CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts(
                e,
                (i) => i,
              ))).toList());

  TRes vehicleDocuments(
          Iterable<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments> Function(
                  Iterable<
                      CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments<
                          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments>>)
              _fn) =>
      call(
          vehicleDocuments: _fn(_instance.vehicleDocuments.map((e) =>
              CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments(
                e,
                (i) => i,
              ))).toList());

  TRes priceAdjustment(
          Iterable<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment>? Function(
                  Iterable<
                      CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment<
                          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment>>?)
              _fn) =>
      call(
          priceAdjustment: _fn(_instance.priceAdjustment?.map((e) =>
              CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration<
            TRes> {
  _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration(
      this._res);

  TRes _res;

  call({
    bool? vinUnreadable,
    bool? hasOriginalCat,
    List<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails>?
        catDetails,
    List<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts>?
        nonConformingParts,
    List<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments>?
        vehicleDocuments,
    bool? hasBattery,
    String? batteryImage,
    int? alloyWheels,
    int? steelWheels,
    List<Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment>?
        priceAdjustment,
    String? $__typename,
  }) =>
      _res;

  catDetails(_fn) => _res;

  nonConformingParts(_fn) => _res;

  vehicleDocuments(_fn) => _res;

  priceAdjustment(_fn) => _res;
}

class Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails {
  Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails({
    required this.location,
    required this.catClassification,
    this.serialNumber,
    this.sealNumber,
    required this.catValue,
    this.matchProbability,
    this.catalyticFill,
    this.imagePath,
    required this.isManual,
    this.vehicleCatId,
    this.catId,
    this.$__typename = 'VehicleCatDetailRequest',
  });

  factory Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails.fromJson(
      Map<String, dynamic> json) {
    final l$location = json['location'];
    final l$catClassification = json['catClassification'];
    final l$serialNumber = json['serialNumber'];
    final l$sealNumber = json['sealNumber'];
    final l$catValue = json['catValue'];
    final l$matchProbability = json['matchProbability'];
    final l$catalyticFill = json['catalyticFill'];
    final l$imagePath = json['imagePath'];
    final l$isManual = json['isManual'];
    final l$vehicleCatId = json['vehicleCatId'];
    final l$catId = json['catId'];
    final l$$__typename = json['__typename'];
    return Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails(
      location: (l$location as String),
      catClassification: (l$catClassification as String),
      serialNumber: (l$serialNumber as String?),
      sealNumber: (l$sealNumber as String?),
      catValue: (l$catValue as num).toDouble(),
      matchProbability: (l$matchProbability as int?),
      catalyticFill: (l$catalyticFill as num?)?.toDouble(),
      imagePath: (l$imagePath as String?),
      isManual: (l$isManual as bool),
      vehicleCatId: (l$vehicleCatId as int?),
      catId: (l$catId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String location;

  final String catClassification;

  final String? serialNumber;

  final String? sealNumber;

  final double catValue;

  final int? matchProbability;

  final double? catalyticFill;

  final String? imagePath;

  final bool isManual;

  final int? vehicleCatId;

  final String? catId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$isManual = isManual;
    _resultData['isManual'] = l$isManual;
    final l$vehicleCatId = vehicleCatId;
    _resultData['vehicleCatId'] = l$vehicleCatId;
    final l$catId = catId;
    _resultData['catId'] = l$catId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$location = location;
    final l$catClassification = catClassification;
    final l$serialNumber = serialNumber;
    final l$sealNumber = sealNumber;
    final l$catValue = catValue;
    final l$matchProbability = matchProbability;
    final l$catalyticFill = catalyticFill;
    final l$imagePath = imagePath;
    final l$isManual = isManual;
    final l$vehicleCatId = vehicleCatId;
    final l$catId = catId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$location,
      l$catClassification,
      l$serialNumber,
      l$sealNumber,
      l$catValue,
      l$matchProbability,
      l$catalyticFill,
      l$imagePath,
      l$isManual,
      l$vehicleCatId,
      l$catId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails ||
        runtimeType != other.runtimeType) {
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
    final l$isManual = isManual;
    final lOther$isManual = other.isManual;
    if (l$isManual != lOther$isManual) {
      return false;
    }
    final l$vehicleCatId = vehicleCatId;
    final lOther$vehicleCatId = other.vehicleCatId;
    if (l$vehicleCatId != lOther$vehicleCatId) {
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

extension UtilityExtension$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails
    on Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails {
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails>
      get copyWith =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails<
    TRes> {
  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails(
    Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails
        instance,
    TRes Function(
            Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails)
        then,
  ) = _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails;

  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails;

  TRes call({
    String? location,
    String? catClassification,
    String? serialNumber,
    String? sealNumber,
    double? catValue,
    int? matchProbability,
    double? catalyticFill,
    String? imagePath,
    bool? isManual,
    int? vehicleCatId,
    String? catId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails<
            TRes> {
  _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails(
    this._instance,
    this._then,
  );

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails
      _instance;

  final TRes Function(
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? location = _undefined,
    Object? catClassification = _undefined,
    Object? serialNumber = _undefined,
    Object? sealNumber = _undefined,
    Object? catValue = _undefined,
    Object? matchProbability = _undefined,
    Object? catalyticFill = _undefined,
    Object? imagePath = _undefined,
    Object? isManual = _undefined,
    Object? vehicleCatId = _undefined,
    Object? catId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails(
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
        isManual: isManual == _undefined || isManual == null
            ? _instance.isManual
            : (isManual as bool),
        vehicleCatId: vehicleCatId == _undefined
            ? _instance.vehicleCatId
            : (vehicleCatId as int?),
        catId: catId == _undefined ? _instance.catId : (catId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails<
            TRes> {
  _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$catDetails(
      this._res);

  TRes _res;

  call({
    String? location,
    String? catClassification,
    String? serialNumber,
    String? sealNumber,
    double? catValue,
    int? matchProbability,
    double? catalyticFill,
    String? imagePath,
    bool? isManual,
    int? vehicleCatId,
    String? catId,
    String? $__typename,
  }) =>
      _res;
}

class Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts {
  Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts({
    required this.partName,
    this.path,
    this.$__typename = 'NonConformingPartModel',
  });

  factory Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts.fromJson(
      Map<String, dynamic> json) {
    final l$partName = json['partName'];
    final l$path = json['path'];
    final l$$__typename = json['__typename'];
    return Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts(
      partName: (l$partName as String),
      path: (l$path as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String partName;

  final String? path;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$partName = partName;
    final l$path = path;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is! Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts
    on Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts {
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts>
      get copyWith =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts<
    TRes> {
  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts(
    Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts
        instance,
    TRes Function(
            Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts)
        then,
  ) = _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts;

  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts;

  TRes call({
    String? partName,
    String? path,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts<
            TRes> {
  _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts(
    this._instance,
    this._then,
  );

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts
      _instance;

  final TRes Function(
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partName = _undefined,
    Object? path = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts(
        partName: partName == _undefined || partName == null
            ? _instance.partName
            : (partName as String),
        path: path == _undefined ? _instance.path : (path as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts<
            TRes> {
  _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$nonConformingParts(
      this._res);

  TRes _res;

  call({
    String? partName,
    String? path,
    String? $__typename,
  }) =>
      _res;
}

class Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments {
  Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments({
    required this.imageType,
    this.path,
    required this.documentType,
    required this.documentSubType,
    this.$__typename = 'VehicleDocumentsModel',
  });

  factory Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments.fromJson(
      Map<String, dynamic> json) {
    final l$imageType = json['imageType'];
    final l$path = json['path'];
    final l$documentType = json['documentType'];
    final l$documentSubType = json['documentSubType'];
    final l$$__typename = json['__typename'];
    return Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments(
      imageType: fromJson$Enum$DocumentUploadTypeEnum((l$imageType as String)),
      path: (l$path as String?),
      documentType: fromJson$Enum$DocumentTypeEnum((l$documentType as String)),
      documentSubType:
          fromJson$Enum$DocumentSubTypeEnum((l$documentSubType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$DocumentUploadTypeEnum imageType;

  final String? path;

  final Enum$DocumentTypeEnum documentType;

  final Enum$DocumentSubTypeEnum documentSubType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$imageType = imageType;
    final l$path = path;
    final l$documentType = documentType;
    final l$documentSubType = documentSubType;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (other
            is! Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments
    on Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments {
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments>
      get copyWith =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments<
    TRes> {
  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments(
    Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments
        instance,
    TRes Function(
            Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments)
        then,
  ) = _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments;

  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments;

  TRes call({
    Enum$DocumentUploadTypeEnum? imageType,
    String? path,
    Enum$DocumentTypeEnum? documentType,
    Enum$DocumentSubTypeEnum? documentSubType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments<
            TRes> {
  _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments(
    this._instance,
    this._then,
  );

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments
      _instance;

  final TRes Function(
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? imageType = _undefined,
    Object? path = _undefined,
    Object? documentType = _undefined,
    Object? documentSubType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments(
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

class _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments<
            TRes> {
  _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$vehicleDocuments(
      this._res);

  TRes _res;

  call({
    Enum$DocumentUploadTypeEnum? imageType,
    String? path,
    Enum$DocumentTypeEnum? documentType,
    Enum$DocumentSubTypeEnum? documentSubType,
    String? $__typename,
  }) =>
      _res;
}

class Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment {
  Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment({
    required this.componentName,
    required this.value,
    this.$__typename = 'PriceAdjustmentComponentModel',
  });

  factory Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment.fromJson(
      Map<String, dynamic> json) {
    final l$componentName = json['componentName'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment(
      componentName: (l$componentName as String),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String componentName;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$componentName = componentName;
    _resultData['componentName'] = l$componentName;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$componentName = componentName;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$componentName,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$componentName = componentName;
    final lOther$componentName = other.componentName;
    if (l$componentName != lOther$componentName) {
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

extension UtilityExtension$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment
    on Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment {
  CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment<
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment>
      get copyWith =>
          CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment<
    TRes> {
  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment(
    Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment
        instance,
    TRes Function(
            Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment)
        then,
  ) = _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment;

  factory CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment;

  TRes call({
    String? componentName,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment<
            TRes> {
  _CopyWithImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment(
    this._instance,
    this._then,
  );

  final Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment
      _instance;

  final TRes Function(
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? componentName = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment(
        componentName: componentName == _undefined || componentName == null
            ? _instance.componentName
            : (componentName as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment<
        TRes>
    implements
        CopyWith$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment<
            TRes> {
  _CopyWithStubImpl$Query$getQuoteToInspectByQuoteId$quoteToInspect$vehicleConfiguration$priceAdjustment(
      this._res);

  TRes _res;

  call({
    String? componentName,
    double? value,
    String? $__typename,
  }) =>
      _res;
}
