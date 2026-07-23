import 'package:gql/ast.dart';

class Variables$Query$GetYardDetails {
  factory Variables$Query$GetYardDetails({required String code}) =>
      Variables$Query$GetYardDetails._({
        r'code': code,
      });

  Variables$Query$GetYardDetails._(this._$data);

  factory Variables$Query$GetYardDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Query$GetYardDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Query$GetYardDetails<Variables$Query$GetYardDetails>
      get copyWith => CopyWith$Variables$Query$GetYardDetails(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetYardDetails) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Variables$Query$GetYardDetails<TRes> {
  factory CopyWith$Variables$Query$GetYardDetails(
    Variables$Query$GetYardDetails instance,
    TRes Function(Variables$Query$GetYardDetails) then,
  ) = _CopyWithImpl$Variables$Query$GetYardDetails;

  factory CopyWith$Variables$Query$GetYardDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetYardDetails;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Query$GetYardDetails<TRes>
    implements CopyWith$Variables$Query$GetYardDetails<TRes> {
  _CopyWithImpl$Variables$Query$GetYardDetails(
    this._instance,
    this._then,
  );

  final Variables$Query$GetYardDetails _instance;

  final TRes Function(Variables$Query$GetYardDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) =>
      _then(Variables$Query$GetYardDetails._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetYardDetails<TRes>
    implements CopyWith$Variables$Query$GetYardDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$GetYardDetails(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Query$GetYardDetails {
  Query$GetYardDetails({
    required this.yardDetails,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetYardDetails.fromJson(Map<String, dynamic> json) {
    final l$yardDetails = json['yardDetails'];
    final l$$__typename = json['__typename'];
    return Query$GetYardDetails(
      yardDetails: Query$GetYardDetails$yardDetails.fromJson(
          (l$yardDetails as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetYardDetails$yardDetails yardDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardDetails = yardDetails;
    _resultData['yardDetails'] = l$yardDetails.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardDetails = yardDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardDetails,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetYardDetails) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardDetails = yardDetails;
    final lOther$yardDetails = other.yardDetails;
    if (l$yardDetails != lOther$yardDetails) {
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

extension UtilityExtension$Query$GetYardDetails on Query$GetYardDetails {
  CopyWith$Query$GetYardDetails<Query$GetYardDetails> get copyWith =>
      CopyWith$Query$GetYardDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardDetails<TRes> {
  factory CopyWith$Query$GetYardDetails(
    Query$GetYardDetails instance,
    TRes Function(Query$GetYardDetails) then,
  ) = _CopyWithImpl$Query$GetYardDetails;

  factory CopyWith$Query$GetYardDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardDetails;

  TRes call({
    Query$GetYardDetails$yardDetails? yardDetails,
    String? $__typename,
  });
  CopyWith$Query$GetYardDetails$yardDetails<TRes> get yardDetails;
}

class _CopyWithImpl$Query$GetYardDetails<TRes>
    implements CopyWith$Query$GetYardDetails<TRes> {
  _CopyWithImpl$Query$GetYardDetails(
    this._instance,
    this._then,
  );

  final Query$GetYardDetails _instance;

  final TRes Function(Query$GetYardDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardDetails = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardDetails(
        yardDetails: yardDetails == _undefined || yardDetails == null
            ? _instance.yardDetails
            : (yardDetails as Query$GetYardDetails$yardDetails),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetYardDetails$yardDetails<TRes> get yardDetails {
    final local$yardDetails = _instance.yardDetails;
    return CopyWith$Query$GetYardDetails$yardDetails(
        local$yardDetails, (e) => call(yardDetails: e));
  }
}

class _CopyWithStubImpl$Query$GetYardDetails<TRes>
    implements CopyWith$Query$GetYardDetails<TRes> {
  _CopyWithStubImpl$Query$GetYardDetails(this._res);

  TRes _res;

  call({
    Query$GetYardDetails$yardDetails? yardDetails,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetYardDetails$yardDetails<TRes> get yardDetails =>
      CopyWith$Query$GetYardDetails$yardDetails.stub(_res);
}

const documentNodeQueryGetYardDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetYardDetails'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'yardDetails'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'territory'),
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
            name: NameNode(value: 'yardCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'yardName'),
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

class Query$GetYardDetails$yardDetails {
  Query$GetYardDetails$yardDetails({
    required this.territory,
    required this.companyCode,
    required this.yardCode,
    required this.yardName,
    this.$__typename = 'YardDetails',
  });

  factory Query$GetYardDetails$yardDetails.fromJson(Map<String, dynamic> json) {
    final l$territory = json['territory'];
    final l$companyCode = json['companyCode'];
    final l$yardCode = json['yardCode'];
    final l$yardName = json['yardName'];
    final l$$__typename = json['__typename'];
    return Query$GetYardDetails$yardDetails(
      territory: (l$territory as String),
      companyCode: (l$companyCode as String),
      yardCode: (l$yardCode as String),
      yardName: (l$yardName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String territory;

  final String companyCode;

  final String yardCode;

  final String yardName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$territory = territory;
    _resultData['territory'] = l$territory;
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$yardName = yardName;
    _resultData['yardName'] = l$yardName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$territory = territory;
    final l$companyCode = companyCode;
    final l$yardCode = yardCode;
    final l$yardName = yardName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$territory,
      l$companyCode,
      l$yardCode,
      l$yardName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetYardDetails$yardDetails) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$yardName = yardName;
    final lOther$yardName = other.yardName;
    if (l$yardName != lOther$yardName) {
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

extension UtilityExtension$Query$GetYardDetails$yardDetails
    on Query$GetYardDetails$yardDetails {
  CopyWith$Query$GetYardDetails$yardDetails<Query$GetYardDetails$yardDetails>
      get copyWith => CopyWith$Query$GetYardDetails$yardDetails(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetYardDetails$yardDetails<TRes> {
  factory CopyWith$Query$GetYardDetails$yardDetails(
    Query$GetYardDetails$yardDetails instance,
    TRes Function(Query$GetYardDetails$yardDetails) then,
  ) = _CopyWithImpl$Query$GetYardDetails$yardDetails;

  factory CopyWith$Query$GetYardDetails$yardDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardDetails$yardDetails;

  TRes call({
    String? territory,
    String? companyCode,
    String? yardCode,
    String? yardName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardDetails$yardDetails<TRes>
    implements CopyWith$Query$GetYardDetails$yardDetails<TRes> {
  _CopyWithImpl$Query$GetYardDetails$yardDetails(
    this._instance,
    this._then,
  );

  final Query$GetYardDetails$yardDetails _instance;

  final TRes Function(Query$GetYardDetails$yardDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? territory = _undefined,
    Object? companyCode = _undefined,
    Object? yardCode = _undefined,
    Object? yardName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardDetails$yardDetails(
        territory: territory == _undefined || territory == null
            ? _instance.territory
            : (territory as String),
        companyCode: companyCode == _undefined || companyCode == null
            ? _instance.companyCode
            : (companyCode as String),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        yardName: yardName == _undefined || yardName == null
            ? _instance.yardName
            : (yardName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetYardDetails$yardDetails<TRes>
    implements CopyWith$Query$GetYardDetails$yardDetails<TRes> {
  _CopyWithStubImpl$Query$GetYardDetails$yardDetails(this._res);

  TRes _res;

  call({
    String? territory,
    String? companyCode,
    String? yardCode,
    String? yardName,
    String? $__typename,
  }) =>
      _res;
}
