import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetWorkRequests {
  factory Variables$Query$GetWorkRequests(
          {required Input$WorkRequestQueryFilterInput filter}) =>
      Variables$Query$GetWorkRequests._({
        r'filter': filter,
      });

  Variables$Query$GetWorkRequests._(this._$data);

  factory Variables$Query$GetWorkRequests.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = Input$WorkRequestQueryFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$GetWorkRequests._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$WorkRequestQueryFilterInput get filter =>
      (_$data['filter'] as Input$WorkRequestQueryFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetWorkRequests<Variables$Query$GetWorkRequests>
      get copyWith => CopyWith$Variables$Query$GetWorkRequests(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetWorkRequests) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([l$filter]);
  }
}

abstract class CopyWith$Variables$Query$GetWorkRequests<TRes> {
  factory CopyWith$Variables$Query$GetWorkRequests(
    Variables$Query$GetWorkRequests instance,
    TRes Function(Variables$Query$GetWorkRequests) then,
  ) = _CopyWithImpl$Variables$Query$GetWorkRequests;

  factory CopyWith$Variables$Query$GetWorkRequests.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetWorkRequests;

  TRes call({Input$WorkRequestQueryFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$GetWorkRequests<TRes>
    implements CopyWith$Variables$Query$GetWorkRequests<TRes> {
  _CopyWithImpl$Variables$Query$GetWorkRequests(
    this._instance,
    this._then,
  );

  final Variables$Query$GetWorkRequests _instance;

  final TRes Function(Variables$Query$GetWorkRequests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$GetWorkRequests._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$WorkRequestQueryFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetWorkRequests<TRes>
    implements CopyWith$Variables$Query$GetWorkRequests<TRes> {
  _CopyWithStubImpl$Variables$Query$GetWorkRequests(this._res);

  TRes _res;

  call({Input$WorkRequestQueryFilterInput? filter}) => _res;
}

class Query$GetWorkRequests {
  Query$GetWorkRequests({
    required this.workRequests,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetWorkRequests.fromJson(Map<String, dynamic> json) {
    final l$workRequests = json['workRequests'];
    final l$$__typename = json['__typename'];
    return Query$GetWorkRequests(
      workRequests: (l$workRequests as List<dynamic>)
          .map((e) => Query$GetWorkRequests$workRequests.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetWorkRequests$workRequests> workRequests;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workRequests = workRequests;
    _resultData['workRequests'] =
        l$workRequests.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workRequests = workRequests;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$workRequests.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetWorkRequests) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$workRequests = workRequests;
    final lOther$workRequests = other.workRequests;
    if (l$workRequests.length != lOther$workRequests.length) {
      return false;
    }
    for (int i = 0; i < l$workRequests.length; i++) {
      final l$workRequests$entry = l$workRequests[i];
      final lOther$workRequests$entry = lOther$workRequests[i];
      if (l$workRequests$entry != lOther$workRequests$entry) {
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

extension UtilityExtension$Query$GetWorkRequests on Query$GetWorkRequests {
  CopyWith$Query$GetWorkRequests<Query$GetWorkRequests> get copyWith =>
      CopyWith$Query$GetWorkRequests(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWorkRequests<TRes> {
  factory CopyWith$Query$GetWorkRequests(
    Query$GetWorkRequests instance,
    TRes Function(Query$GetWorkRequests) then,
  ) = _CopyWithImpl$Query$GetWorkRequests;

  factory CopyWith$Query$GetWorkRequests.stub(TRes res) =
      _CopyWithStubImpl$Query$GetWorkRequests;

  TRes call({
    List<Query$GetWorkRequests$workRequests>? workRequests,
    String? $__typename,
  });
  TRes workRequests(
      Iterable<Query$GetWorkRequests$workRequests> Function(
              Iterable<
                  CopyWith$Query$GetWorkRequests$workRequests<
                      Query$GetWorkRequests$workRequests>>)
          _fn);
}

class _CopyWithImpl$Query$GetWorkRequests<TRes>
    implements CopyWith$Query$GetWorkRequests<TRes> {
  _CopyWithImpl$Query$GetWorkRequests(
    this._instance,
    this._then,
  );

  final Query$GetWorkRequests _instance;

  final TRes Function(Query$GetWorkRequests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workRequests = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetWorkRequests(
        workRequests: workRequests == _undefined || workRequests == null
            ? _instance.workRequests
            : (workRequests as List<Query$GetWorkRequests$workRequests>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes workRequests(
          Iterable<Query$GetWorkRequests$workRequests> Function(
                  Iterable<
                      CopyWith$Query$GetWorkRequests$workRequests<
                          Query$GetWorkRequests$workRequests>>)
              _fn) =>
      call(
          workRequests: _fn(_instance.workRequests
              .map((e) => CopyWith$Query$GetWorkRequests$workRequests(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetWorkRequests<TRes>
    implements CopyWith$Query$GetWorkRequests<TRes> {
  _CopyWithStubImpl$Query$GetWorkRequests(this._res);

  TRes _res;

  call({
    List<Query$GetWorkRequests$workRequests>? workRequests,
    String? $__typename,
  }) =>
      _res;

  workRequests(_fn) => _res;
}

const documentNodeQueryGetWorkRequests = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetWorkRequests'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'WorkRequestQueryFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'workRequests'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          )
        ],
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
            name: NameNode(value: 'actualStartDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'productionStopDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'requestState'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'startedByPersonnelNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'jobTypeVariant'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'actualEndDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'responsiblePersonnelNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'notes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'workOrderId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'jobType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'companyCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'jobTradeId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'faultSymptoms'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'depotNo'),
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
            name: NameNode(value: 'createdDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modifiedDate'),
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
            name: NameNode(value: 'workRequestId'),
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
            name: NameNode(value: 'additionalDescription'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'requestType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'serviceLevel'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'workerGroupId'),
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

class Query$GetWorkRequests$workRequests {
  Query$GetWorkRequests$workRequests({
    required this.id,
    required this.actualStartDate,
    this.productionStopDate,
    required this.requestState,
    this.startedByPersonnelNumber,
    this.jobTypeVariant,
    this.actualEndDate,
    required this.responsiblePersonnelNumber,
    required this.notes,
    required this.workOrderId,
    this.jobType,
    required this.companyCode,
    required this.jobTradeId,
    this.faultSymptoms,
    required this.depotNo,
    required this.yardCode,
    this.createdDate,
    this.modifiedDate,
    required this.isActive,
    required this.workRequestId,
    required this.description,
    required this.additionalDescription,
    required this.requestType,
    required this.serviceLevel,
    required this.assetId,
    required this.assetCode,
    this.workerGroupId,
    this.$__typename = 'WorkRequest',
  });

  factory Query$GetWorkRequests$workRequests.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$actualStartDate = json['actualStartDate'];
    final l$productionStopDate = json['productionStopDate'];
    final l$requestState = json['requestState'];
    final l$startedByPersonnelNumber = json['startedByPersonnelNumber'];
    final l$jobTypeVariant = json['jobTypeVariant'];
    final l$actualEndDate = json['actualEndDate'];
    final l$responsiblePersonnelNumber = json['responsiblePersonnelNumber'];
    final l$notes = json['notes'];
    final l$workOrderId = json['workOrderId'];
    final l$jobType = json['jobType'];
    final l$companyCode = json['companyCode'];
    final l$jobTradeId = json['jobTradeId'];
    final l$faultSymptoms = json['faultSymptoms'];
    final l$depotNo = json['depotNo'];
    final l$yardCode = json['yardCode'];
    final l$createdDate = json['createdDate'];
    final l$modifiedDate = json['modifiedDate'];
    final l$isActive = json['isActive'];
    final l$workRequestId = json['workRequestId'];
    final l$description = json['description'];
    final l$additionalDescription = json['additionalDescription'];
    final l$requestType = json['requestType'];
    final l$serviceLevel = json['serviceLevel'];
    final l$assetId = json['assetId'];
    final l$assetCode = json['assetCode'];
    final l$workerGroupId = json['workerGroupId'];
    final l$$__typename = json['__typename'];
    return Query$GetWorkRequests$workRequests(
      id: (l$id as int),
      actualStartDate: (l$actualStartDate as String),
      productionStopDate: (l$productionStopDate as String?),
      requestState: (l$requestState as String),
      startedByPersonnelNumber: (l$startedByPersonnelNumber as String?),
      jobTypeVariant: (l$jobTypeVariant as String?),
      actualEndDate: (l$actualEndDate as String?),
      responsiblePersonnelNumber: (l$responsiblePersonnelNumber as String),
      notes: (l$notes as String),
      workOrderId: (l$workOrderId as String),
      jobType: (l$jobType as String?),
      companyCode: (l$companyCode as String),
      jobTradeId: (l$jobTradeId as String),
      faultSymptoms: (l$faultSymptoms as String?),
      depotNo: (l$depotNo as String),
      yardCode: (l$yardCode as String),
      createdDate: (l$createdDate as String?),
      modifiedDate: (l$modifiedDate as String?),
      isActive: (l$isActive as bool),
      workRequestId: (l$workRequestId as String),
      description: (l$description as String),
      additionalDescription: (l$additionalDescription as String),
      requestType: (l$requestType as String),
      serviceLevel: (l$serviceLevel as String),
      assetId: (l$assetId as String),
      assetCode: (l$assetCode as String),
      workerGroupId: (l$workerGroupId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String actualStartDate;

  final String? productionStopDate;

  final String requestState;

  final String? startedByPersonnelNumber;

  final String? jobTypeVariant;

  final String? actualEndDate;

  final String responsiblePersonnelNumber;

  final String notes;

  final String workOrderId;

  final String? jobType;

  final String companyCode;

  final String jobTradeId;

  final String? faultSymptoms;

  final String depotNo;

  final String yardCode;

  final String? createdDate;

  final String? modifiedDate;

  final bool isActive;

  final String workRequestId;

  final String description;

  final String additionalDescription;

  final String requestType;

  final String serviceLevel;

  final String assetId;

  final String assetCode;

  final String? workerGroupId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$actualStartDate = actualStartDate;
    _resultData['actualStartDate'] = l$actualStartDate;
    final l$productionStopDate = productionStopDate;
    _resultData['productionStopDate'] = l$productionStopDate;
    final l$requestState = requestState;
    _resultData['requestState'] = l$requestState;
    final l$startedByPersonnelNumber = startedByPersonnelNumber;
    _resultData['startedByPersonnelNumber'] = l$startedByPersonnelNumber;
    final l$jobTypeVariant = jobTypeVariant;
    _resultData['jobTypeVariant'] = l$jobTypeVariant;
    final l$actualEndDate = actualEndDate;
    _resultData['actualEndDate'] = l$actualEndDate;
    final l$responsiblePersonnelNumber = responsiblePersonnelNumber;
    _resultData['responsiblePersonnelNumber'] = l$responsiblePersonnelNumber;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$workOrderId = workOrderId;
    _resultData['workOrderId'] = l$workOrderId;
    final l$jobType = jobType;
    _resultData['jobType'] = l$jobType;
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$jobTradeId = jobTradeId;
    _resultData['jobTradeId'] = l$jobTradeId;
    final l$faultSymptoms = faultSymptoms;
    _resultData['faultSymptoms'] = l$faultSymptoms;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate;
    final l$modifiedDate = modifiedDate;
    _resultData['modifiedDate'] = l$modifiedDate;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$workRequestId = workRequestId;
    _resultData['workRequestId'] = l$workRequestId;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$additionalDescription = additionalDescription;
    _resultData['additionalDescription'] = l$additionalDescription;
    final l$requestType = requestType;
    _resultData['requestType'] = l$requestType;
    final l$serviceLevel = serviceLevel;
    _resultData['serviceLevel'] = l$serviceLevel;
    final l$assetId = assetId;
    _resultData['assetId'] = l$assetId;
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$workerGroupId = workerGroupId;
    _resultData['workerGroupId'] = l$workerGroupId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$actualStartDate = actualStartDate;
    final l$productionStopDate = productionStopDate;
    final l$requestState = requestState;
    final l$startedByPersonnelNumber = startedByPersonnelNumber;
    final l$jobTypeVariant = jobTypeVariant;
    final l$actualEndDate = actualEndDate;
    final l$responsiblePersonnelNumber = responsiblePersonnelNumber;
    final l$notes = notes;
    final l$workOrderId = workOrderId;
    final l$jobType = jobType;
    final l$companyCode = companyCode;
    final l$jobTradeId = jobTradeId;
    final l$faultSymptoms = faultSymptoms;
    final l$depotNo = depotNo;
    final l$yardCode = yardCode;
    final l$createdDate = createdDate;
    final l$modifiedDate = modifiedDate;
    final l$isActive = isActive;
    final l$workRequestId = workRequestId;
    final l$description = description;
    final l$additionalDescription = additionalDescription;
    final l$requestType = requestType;
    final l$serviceLevel = serviceLevel;
    final l$assetId = assetId;
    final l$assetCode = assetCode;
    final l$workerGroupId = workerGroupId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$actualStartDate,
      l$productionStopDate,
      l$requestState,
      l$startedByPersonnelNumber,
      l$jobTypeVariant,
      l$actualEndDate,
      l$responsiblePersonnelNumber,
      l$notes,
      l$workOrderId,
      l$jobType,
      l$companyCode,
      l$jobTradeId,
      l$faultSymptoms,
      l$depotNo,
      l$yardCode,
      l$createdDate,
      l$modifiedDate,
      l$isActive,
      l$workRequestId,
      l$description,
      l$additionalDescription,
      l$requestType,
      l$serviceLevel,
      l$assetId,
      l$assetCode,
      l$workerGroupId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetWorkRequests$workRequests) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$actualStartDate = actualStartDate;
    final lOther$actualStartDate = other.actualStartDate;
    if (l$actualStartDate != lOther$actualStartDate) {
      return false;
    }
    final l$productionStopDate = productionStopDate;
    final lOther$productionStopDate = other.productionStopDate;
    if (l$productionStopDate != lOther$productionStopDate) {
      return false;
    }
    final l$requestState = requestState;
    final lOther$requestState = other.requestState;
    if (l$requestState != lOther$requestState) {
      return false;
    }
    final l$startedByPersonnelNumber = startedByPersonnelNumber;
    final lOther$startedByPersonnelNumber = other.startedByPersonnelNumber;
    if (l$startedByPersonnelNumber != lOther$startedByPersonnelNumber) {
      return false;
    }
    final l$jobTypeVariant = jobTypeVariant;
    final lOther$jobTypeVariant = other.jobTypeVariant;
    if (l$jobTypeVariant != lOther$jobTypeVariant) {
      return false;
    }
    final l$actualEndDate = actualEndDate;
    final lOther$actualEndDate = other.actualEndDate;
    if (l$actualEndDate != lOther$actualEndDate) {
      return false;
    }
    final l$responsiblePersonnelNumber = responsiblePersonnelNumber;
    final lOther$responsiblePersonnelNumber = other.responsiblePersonnelNumber;
    if (l$responsiblePersonnelNumber != lOther$responsiblePersonnelNumber) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$workOrderId = workOrderId;
    final lOther$workOrderId = other.workOrderId;
    if (l$workOrderId != lOther$workOrderId) {
      return false;
    }
    final l$jobType = jobType;
    final lOther$jobType = other.jobType;
    if (l$jobType != lOther$jobType) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$jobTradeId = jobTradeId;
    final lOther$jobTradeId = other.jobTradeId;
    if (l$jobTradeId != lOther$jobTradeId) {
      return false;
    }
    final l$faultSymptoms = faultSymptoms;
    final lOther$faultSymptoms = other.faultSymptoms;
    if (l$faultSymptoms != lOther$faultSymptoms) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$modifiedDate = modifiedDate;
    final lOther$modifiedDate = other.modifiedDate;
    if (l$modifiedDate != lOther$modifiedDate) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$workRequestId = workRequestId;
    final lOther$workRequestId = other.workRequestId;
    if (l$workRequestId != lOther$workRequestId) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$additionalDescription = additionalDescription;
    final lOther$additionalDescription = other.additionalDescription;
    if (l$additionalDescription != lOther$additionalDescription) {
      return false;
    }
    final l$requestType = requestType;
    final lOther$requestType = other.requestType;
    if (l$requestType != lOther$requestType) {
      return false;
    }
    final l$serviceLevel = serviceLevel;
    final lOther$serviceLevel = other.serviceLevel;
    if (l$serviceLevel != lOther$serviceLevel) {
      return false;
    }
    final l$assetId = assetId;
    final lOther$assetId = other.assetId;
    if (l$assetId != lOther$assetId) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$workerGroupId = workerGroupId;
    final lOther$workerGroupId = other.workerGroupId;
    if (l$workerGroupId != lOther$workerGroupId) {
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

extension UtilityExtension$Query$GetWorkRequests$workRequests
    on Query$GetWorkRequests$workRequests {
  CopyWith$Query$GetWorkRequests$workRequests<
          Query$GetWorkRequests$workRequests>
      get copyWith => CopyWith$Query$GetWorkRequests$workRequests(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetWorkRequests$workRequests<TRes> {
  factory CopyWith$Query$GetWorkRequests$workRequests(
    Query$GetWorkRequests$workRequests instance,
    TRes Function(Query$GetWorkRequests$workRequests) then,
  ) = _CopyWithImpl$Query$GetWorkRequests$workRequests;

  factory CopyWith$Query$GetWorkRequests$workRequests.stub(TRes res) =
      _CopyWithStubImpl$Query$GetWorkRequests$workRequests;

  TRes call({
    int? id,
    String? actualStartDate,
    String? productionStopDate,
    String? requestState,
    String? startedByPersonnelNumber,
    String? jobTypeVariant,
    String? actualEndDate,
    String? responsiblePersonnelNumber,
    String? notes,
    String? workOrderId,
    String? jobType,
    String? companyCode,
    String? jobTradeId,
    String? faultSymptoms,
    String? depotNo,
    String? yardCode,
    String? createdDate,
    String? modifiedDate,
    bool? isActive,
    String? workRequestId,
    String? description,
    String? additionalDescription,
    String? requestType,
    String? serviceLevel,
    String? assetId,
    String? assetCode,
    String? workerGroupId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetWorkRequests$workRequests<TRes>
    implements CopyWith$Query$GetWorkRequests$workRequests<TRes> {
  _CopyWithImpl$Query$GetWorkRequests$workRequests(
    this._instance,
    this._then,
  );

  final Query$GetWorkRequests$workRequests _instance;

  final TRes Function(Query$GetWorkRequests$workRequests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? actualStartDate = _undefined,
    Object? productionStopDate = _undefined,
    Object? requestState = _undefined,
    Object? startedByPersonnelNumber = _undefined,
    Object? jobTypeVariant = _undefined,
    Object? actualEndDate = _undefined,
    Object? responsiblePersonnelNumber = _undefined,
    Object? notes = _undefined,
    Object? workOrderId = _undefined,
    Object? jobType = _undefined,
    Object? companyCode = _undefined,
    Object? jobTradeId = _undefined,
    Object? faultSymptoms = _undefined,
    Object? depotNo = _undefined,
    Object? yardCode = _undefined,
    Object? createdDate = _undefined,
    Object? modifiedDate = _undefined,
    Object? isActive = _undefined,
    Object? workRequestId = _undefined,
    Object? description = _undefined,
    Object? additionalDescription = _undefined,
    Object? requestType = _undefined,
    Object? serviceLevel = _undefined,
    Object? assetId = _undefined,
    Object? assetCode = _undefined,
    Object? workerGroupId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetWorkRequests$workRequests(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        actualStartDate:
            actualStartDate == _undefined || actualStartDate == null
                ? _instance.actualStartDate
                : (actualStartDate as String),
        productionStopDate: productionStopDate == _undefined
            ? _instance.productionStopDate
            : (productionStopDate as String?),
        requestState: requestState == _undefined || requestState == null
            ? _instance.requestState
            : (requestState as String),
        startedByPersonnelNumber: startedByPersonnelNumber == _undefined
            ? _instance.startedByPersonnelNumber
            : (startedByPersonnelNumber as String?),
        jobTypeVariant: jobTypeVariant == _undefined
            ? _instance.jobTypeVariant
            : (jobTypeVariant as String?),
        actualEndDate: actualEndDate == _undefined
            ? _instance.actualEndDate
            : (actualEndDate as String?),
        responsiblePersonnelNumber: responsiblePersonnelNumber == _undefined ||
                responsiblePersonnelNumber == null
            ? _instance.responsiblePersonnelNumber
            : (responsiblePersonnelNumber as String),
        notes: notes == _undefined || notes == null
            ? _instance.notes
            : (notes as String),
        workOrderId: workOrderId == _undefined || workOrderId == null
            ? _instance.workOrderId
            : (workOrderId as String),
        jobType:
            jobType == _undefined ? _instance.jobType : (jobType as String?),
        companyCode: companyCode == _undefined || companyCode == null
            ? _instance.companyCode
            : (companyCode as String),
        jobTradeId: jobTradeId == _undefined || jobTradeId == null
            ? _instance.jobTradeId
            : (jobTradeId as String),
        faultSymptoms: faultSymptoms == _undefined
            ? _instance.faultSymptoms
            : (faultSymptoms as String?),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        createdDate: createdDate == _undefined
            ? _instance.createdDate
            : (createdDate as String?),
        modifiedDate: modifiedDate == _undefined
            ? _instance.modifiedDate
            : (modifiedDate as String?),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        workRequestId: workRequestId == _undefined || workRequestId == null
            ? _instance.workRequestId
            : (workRequestId as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        additionalDescription:
            additionalDescription == _undefined || additionalDescription == null
                ? _instance.additionalDescription
                : (additionalDescription as String),
        requestType: requestType == _undefined || requestType == null
            ? _instance.requestType
            : (requestType as String),
        serviceLevel: serviceLevel == _undefined || serviceLevel == null
            ? _instance.serviceLevel
            : (serviceLevel as String),
        assetId: assetId == _undefined || assetId == null
            ? _instance.assetId
            : (assetId as String),
        assetCode: assetCode == _undefined || assetCode == null
            ? _instance.assetCode
            : (assetCode as String),
        workerGroupId: workerGroupId == _undefined
            ? _instance.workerGroupId
            : (workerGroupId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetWorkRequests$workRequests<TRes>
    implements CopyWith$Query$GetWorkRequests$workRequests<TRes> {
  _CopyWithStubImpl$Query$GetWorkRequests$workRequests(this._res);

  TRes _res;

  call({
    int? id,
    String? actualStartDate,
    String? productionStopDate,
    String? requestState,
    String? startedByPersonnelNumber,
    String? jobTypeVariant,
    String? actualEndDate,
    String? responsiblePersonnelNumber,
    String? notes,
    String? workOrderId,
    String? jobType,
    String? companyCode,
    String? jobTradeId,
    String? faultSymptoms,
    String? depotNo,
    String? yardCode,
    String? createdDate,
    String? modifiedDate,
    bool? isActive,
    String? workRequestId,
    String? description,
    String? additionalDescription,
    String? requestType,
    String? serviceLevel,
    String? assetId,
    String? assetCode,
    String? workerGroupId,
    String? $__typename,
  }) =>
      _res;
}
