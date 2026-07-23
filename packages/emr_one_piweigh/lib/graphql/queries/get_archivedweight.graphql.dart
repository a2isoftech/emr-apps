import 'package:gql/ast.dart';

class Query$getArchivedWeight {
  Query$getArchivedWeight({
    this.archivedWeight,
    this.$__typename = 'Query',
  });

  factory Query$getArchivedWeight.fromJson(Map<String, dynamic> json) {
    final l$archivedWeight = json['archivedWeight'];
    final l$$__typename = json['__typename'];
    return Query$getArchivedWeight(
      archivedWeight: l$archivedWeight == null
          ? null
          : Query$getArchivedWeight$archivedWeight.fromJson(
              (l$archivedWeight as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getArchivedWeight$archivedWeight? archivedWeight;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$archivedWeight = archivedWeight;
    _resultData['archivedWeight'] = l$archivedWeight?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$archivedWeight = archivedWeight;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$archivedWeight,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getArchivedWeight) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$archivedWeight = archivedWeight;
    final lOther$archivedWeight = other.archivedWeight;
    if (l$archivedWeight != lOther$archivedWeight) {
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

extension UtilityExtension$Query$getArchivedWeight on Query$getArchivedWeight {
  CopyWith$Query$getArchivedWeight<Query$getArchivedWeight> get copyWith =>
      CopyWith$Query$getArchivedWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getArchivedWeight<TRes> {
  factory CopyWith$Query$getArchivedWeight(
    Query$getArchivedWeight instance,
    TRes Function(Query$getArchivedWeight) then,
  ) = _CopyWithImpl$Query$getArchivedWeight;

  factory CopyWith$Query$getArchivedWeight.stub(TRes res) =
      _CopyWithStubImpl$Query$getArchivedWeight;

  TRes call({
    Query$getArchivedWeight$archivedWeight? archivedWeight,
    String? $__typename,
  });
  CopyWith$Query$getArchivedWeight$archivedWeight<TRes> get archivedWeight;
}

class _CopyWithImpl$Query$getArchivedWeight<TRes>
    implements CopyWith$Query$getArchivedWeight<TRes> {
  _CopyWithImpl$Query$getArchivedWeight(
    this._instance,
    this._then,
  );

  final Query$getArchivedWeight _instance;

  final TRes Function(Query$getArchivedWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? archivedWeight = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getArchivedWeight(
        archivedWeight: archivedWeight == _undefined
            ? _instance.archivedWeight
            : (archivedWeight as Query$getArchivedWeight$archivedWeight?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getArchivedWeight$archivedWeight<TRes> get archivedWeight {
    final local$archivedWeight = _instance.archivedWeight;
    return local$archivedWeight == null
        ? CopyWith$Query$getArchivedWeight$archivedWeight.stub(_then(_instance))
        : CopyWith$Query$getArchivedWeight$archivedWeight(
            local$archivedWeight, (e) => call(archivedWeight: e));
  }
}

class _CopyWithStubImpl$Query$getArchivedWeight<TRes>
    implements CopyWith$Query$getArchivedWeight<TRes> {
  _CopyWithStubImpl$Query$getArchivedWeight(this._res);

  TRes _res;

  call({
    Query$getArchivedWeight$archivedWeight? archivedWeight,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getArchivedWeight$archivedWeight<TRes> get archivedWeight =>
      CopyWith$Query$getArchivedWeight$archivedWeight.stub(_res);
}

const documentNodeQuerygetArchivedWeight = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getArchivedWeight'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'archivedWeight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'scaleIdentifier'),
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
            name: NameNode(value: 'isSteady'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'uomCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'serialNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'uomId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errMsg'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isArchivedWeight'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'serialNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isPersistentError'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'hasSeenZero'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'consecutiveWeighingNumber'),
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

class Query$getArchivedWeight$archivedWeight {
  Query$getArchivedWeight$archivedWeight({
    this.scaleIdentifier,
    required this.value,
    required this.isSteady,
    this.uomCode,
    this.serialNo,
    required this.uomId,
    this.errMsg,
    required this.isArchivedWeight,
    required this.isPersistentError,
    required this.hasSeenZero,
    required this.consecutiveWeighingNumber,
    this.$__typename = 'WeightRecord',
  });

  factory Query$getArchivedWeight$archivedWeight.fromJson(
      Map<String, dynamic> json) {
    final l$scaleIdentifier = json['scaleIdentifier'];
    final l$value = json['value'];
    final l$isSteady = json['isSteady'];
    final l$uomCode = json['uomCode'];
    final l$serialNo = json['serialNo'];
    final l$uomId = json['uomId'];
    final l$errMsg = json['errMsg'];
    final l$isArchivedWeight = json['isArchivedWeight'];
    final l$isPersistentError = json['isPersistentError'];
    final l$hasSeenZero = json['hasSeenZero'];
    final l$consecutiveWeighingNumber = json['consecutiveWeighingNumber'];
    final l$$__typename = json['__typename'];
    return Query$getArchivedWeight$archivedWeight(
      scaleIdentifier: (l$scaleIdentifier as String?),
      value: (l$value as num).toDouble(),
      isSteady: (l$isSteady as bool),
      uomCode: (l$uomCode as String?),
      serialNo: (l$serialNo as String?),
      uomId: (l$uomId as int),
      errMsg: (l$errMsg as String?),
      isArchivedWeight: (l$isArchivedWeight as bool),
      isPersistentError: (l$isPersistentError as bool),
      hasSeenZero: (l$hasSeenZero as bool),
      consecutiveWeighingNumber: (l$consecutiveWeighingNumber as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? scaleIdentifier;

  final double value;

  final bool isSteady;

  final String? uomCode;

  final String? serialNo;

  final int uomId;

  final String? errMsg;

  final bool isArchivedWeight;

  final bool isPersistentError;

  final bool hasSeenZero;

  final int consecutiveWeighingNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scaleIdentifier = scaleIdentifier;
    _resultData['scaleIdentifier'] = l$scaleIdentifier;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$isSteady = isSteady;
    _resultData['isSteady'] = l$isSteady;
    final l$uomCode = uomCode;
    _resultData['uomCode'] = l$uomCode;
    final l$serialNo = serialNo;
    _resultData['serialNo'] = l$serialNo;
    final l$uomId = uomId;
    _resultData['uomId'] = l$uomId;
    final l$errMsg = errMsg;
    _resultData['errMsg'] = l$errMsg;
    final l$isArchivedWeight = isArchivedWeight;
    _resultData['isArchivedWeight'] = l$isArchivedWeight;
    final l$isPersistentError = isPersistentError;
    _resultData['isPersistentError'] = l$isPersistentError;
    final l$hasSeenZero = hasSeenZero;
    _resultData['hasSeenZero'] = l$hasSeenZero;
    final l$consecutiveWeighingNumber = consecutiveWeighingNumber;
    _resultData['consecutiveWeighingNumber'] = l$consecutiveWeighingNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scaleIdentifier = scaleIdentifier;
    final l$value = value;
    final l$isSteady = isSteady;
    final l$uomCode = uomCode;
    final l$serialNo = serialNo;
    final l$uomId = uomId;
    final l$errMsg = errMsg;
    final l$isArchivedWeight = isArchivedWeight;
    final l$isPersistentError = isPersistentError;
    final l$hasSeenZero = hasSeenZero;
    final l$consecutiveWeighingNumber = consecutiveWeighingNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scaleIdentifier,
      l$value,
      l$isSteady,
      l$uomCode,
      l$serialNo,
      l$uomId,
      l$errMsg,
      l$isArchivedWeight,
      l$isPersistentError,
      l$hasSeenZero,
      l$consecutiveWeighingNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getArchivedWeight$archivedWeight) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scaleIdentifier = scaleIdentifier;
    final lOther$scaleIdentifier = other.scaleIdentifier;
    if (l$scaleIdentifier != lOther$scaleIdentifier) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$isSteady = isSteady;
    final lOther$isSteady = other.isSteady;
    if (l$isSteady != lOther$isSteady) {
      return false;
    }
    final l$uomCode = uomCode;
    final lOther$uomCode = other.uomCode;
    if (l$uomCode != lOther$uomCode) {
      return false;
    }
    final l$serialNo = serialNo;
    final lOther$serialNo = other.serialNo;
    if (l$serialNo != lOther$serialNo) {
      return false;
    }
    final l$uomId = uomId;
    final lOther$uomId = other.uomId;
    if (l$uomId != lOther$uomId) {
      return false;
    }
    final l$errMsg = errMsg;
    final lOther$errMsg = other.errMsg;
    if (l$errMsg != lOther$errMsg) {
      return false;
    }
    final l$isArchivedWeight = isArchivedWeight;
    final lOther$isArchivedWeight = other.isArchivedWeight;
    if (l$isArchivedWeight != lOther$isArchivedWeight) {
      return false;
    }
    final l$isPersistentError = isPersistentError;
    final lOther$isPersistentError = other.isPersistentError;
    if (l$isPersistentError != lOther$isPersistentError) {
      return false;
    }
    final l$hasSeenZero = hasSeenZero;
    final lOther$hasSeenZero = other.hasSeenZero;
    if (l$hasSeenZero != lOther$hasSeenZero) {
      return false;
    }
    final l$consecutiveWeighingNumber = consecutiveWeighingNumber;
    final lOther$consecutiveWeighingNumber = other.consecutiveWeighingNumber;
    if (l$consecutiveWeighingNumber != lOther$consecutiveWeighingNumber) {
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

extension UtilityExtension$Query$getArchivedWeight$archivedWeight
    on Query$getArchivedWeight$archivedWeight {
  CopyWith$Query$getArchivedWeight$archivedWeight<
          Query$getArchivedWeight$archivedWeight>
      get copyWith => CopyWith$Query$getArchivedWeight$archivedWeight(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getArchivedWeight$archivedWeight<TRes> {
  factory CopyWith$Query$getArchivedWeight$archivedWeight(
    Query$getArchivedWeight$archivedWeight instance,
    TRes Function(Query$getArchivedWeight$archivedWeight) then,
  ) = _CopyWithImpl$Query$getArchivedWeight$archivedWeight;

  factory CopyWith$Query$getArchivedWeight$archivedWeight.stub(TRes res) =
      _CopyWithStubImpl$Query$getArchivedWeight$archivedWeight;

  TRes call({
    String? scaleIdentifier,
    double? value,
    bool? isSteady,
    String? uomCode,
    String? serialNo,
    int? uomId,
    String? errMsg,
    bool? isArchivedWeight,
    bool? isPersistentError,
    bool? hasSeenZero,
    int? consecutiveWeighingNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getArchivedWeight$archivedWeight<TRes>
    implements CopyWith$Query$getArchivedWeight$archivedWeight<TRes> {
  _CopyWithImpl$Query$getArchivedWeight$archivedWeight(
    this._instance,
    this._then,
  );

  final Query$getArchivedWeight$archivedWeight _instance;

  final TRes Function(Query$getArchivedWeight$archivedWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scaleIdentifier = _undefined,
    Object? value = _undefined,
    Object? isSteady = _undefined,
    Object? uomCode = _undefined,
    Object? serialNo = _undefined,
    Object? uomId = _undefined,
    Object? errMsg = _undefined,
    Object? isArchivedWeight = _undefined,
    Object? isPersistentError = _undefined,
    Object? hasSeenZero = _undefined,
    Object? consecutiveWeighingNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getArchivedWeight$archivedWeight(
        scaleIdentifier: scaleIdentifier == _undefined
            ? _instance.scaleIdentifier
            : (scaleIdentifier as String?),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        isSteady: isSteady == _undefined || isSteady == null
            ? _instance.isSteady
            : (isSteady as bool),
        uomCode:
            uomCode == _undefined ? _instance.uomCode : (uomCode as String?),
        serialNo:
            serialNo == _undefined ? _instance.serialNo : (serialNo as String?),
        uomId: uomId == _undefined || uomId == null
            ? _instance.uomId
            : (uomId as int),
        errMsg: errMsg == _undefined ? _instance.errMsg : (errMsg as String?),
        isArchivedWeight:
            isArchivedWeight == _undefined || isArchivedWeight == null
                ? _instance.isArchivedWeight
                : (isArchivedWeight as bool),
        isPersistentError:
            isPersistentError == _undefined || isPersistentError == null
                ? _instance.isPersistentError
                : (isPersistentError as bool),
        hasSeenZero: hasSeenZero == _undefined || hasSeenZero == null
            ? _instance.hasSeenZero
            : (hasSeenZero as bool),
        consecutiveWeighingNumber: consecutiveWeighingNumber == _undefined ||
                consecutiveWeighingNumber == null
            ? _instance.consecutiveWeighingNumber
            : (consecutiveWeighingNumber as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getArchivedWeight$archivedWeight<TRes>
    implements CopyWith$Query$getArchivedWeight$archivedWeight<TRes> {
  _CopyWithStubImpl$Query$getArchivedWeight$archivedWeight(this._res);

  TRes _res;

  call({
    String? scaleIdentifier,
    double? value,
    bool? isSteady,
    String? uomCode,
    String? serialNo,
    int? uomId,
    String? errMsg,
    bool? isArchivedWeight,
    bool? isPersistentError,
    bool? hasSeenZero,
    int? consecutiveWeighingNumber,
    String? $__typename,
  }) =>
      _res;
}
