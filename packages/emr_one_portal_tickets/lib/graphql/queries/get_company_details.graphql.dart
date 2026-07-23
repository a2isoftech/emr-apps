import 'package:gql/ast.dart';

class Variables$Query$CompanyDetails {
  factory Variables$Query$CompanyDetails({required String companyId}) =>
      Variables$Query$CompanyDetails._({
        r'companyId': companyId,
      });

  Variables$Query$CompanyDetails._(this._$data);

  factory Variables$Query$CompanyDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$companyId = data['companyId'];
    result$data['companyId'] = (l$companyId as String);
    return Variables$Query$CompanyDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get companyId => (_$data['companyId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$companyId = companyId;
    result$data['companyId'] = l$companyId;
    return result$data;
  }

  CopyWith$Variables$Query$CompanyDetails<Variables$Query$CompanyDetails>
      get copyWith => CopyWith$Variables$Query$CompanyDetails(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CompanyDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyId = companyId;
    final lOther$companyId = other.companyId;
    if (l$companyId != lOther$companyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$companyId = companyId;
    return Object.hashAll([l$companyId]);
  }
}

abstract class CopyWith$Variables$Query$CompanyDetails<TRes> {
  factory CopyWith$Variables$Query$CompanyDetails(
    Variables$Query$CompanyDetails instance,
    TRes Function(Variables$Query$CompanyDetails) then,
  ) = _CopyWithImpl$Variables$Query$CompanyDetails;

  factory CopyWith$Variables$Query$CompanyDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CompanyDetails;

  TRes call({String? companyId});
}

class _CopyWithImpl$Variables$Query$CompanyDetails<TRes>
    implements CopyWith$Variables$Query$CompanyDetails<TRes> {
  _CopyWithImpl$Variables$Query$CompanyDetails(
    this._instance,
    this._then,
  );

  final Variables$Query$CompanyDetails _instance;

  final TRes Function(Variables$Query$CompanyDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? companyId = _undefined}) =>
      _then(Variables$Query$CompanyDetails._({
        ..._instance._$data,
        if (companyId != _undefined && companyId != null)
          'companyId': (companyId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$CompanyDetails<TRes>
    implements CopyWith$Variables$Query$CompanyDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$CompanyDetails(this._res);

  TRes _res;

  call({String? companyId}) => _res;
}

class Query$CompanyDetails {
  Query$CompanyDetails({
    required this.company,
    this.$__typename = 'Query',
  });

  factory Query$CompanyDetails.fromJson(Map<String, dynamic> json) {
    final l$company = json['company'];
    final l$$__typename = json['__typename'];
    return Query$CompanyDetails(
      company: Query$CompanyDetails$company.fromJson(
          (l$company as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CompanyDetails$company company;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$company = company;
    _resultData['company'] = l$company.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$company = company;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$company,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CompanyDetails || runtimeType != other.runtimeType) {
      return false;
    }
    final l$company = company;
    final lOther$company = other.company;
    if (l$company != lOther$company) {
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

extension UtilityExtension$Query$CompanyDetails on Query$CompanyDetails {
  CopyWith$Query$CompanyDetails<Query$CompanyDetails> get copyWith =>
      CopyWith$Query$CompanyDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompanyDetails<TRes> {
  factory CopyWith$Query$CompanyDetails(
    Query$CompanyDetails instance,
    TRes Function(Query$CompanyDetails) then,
  ) = _CopyWithImpl$Query$CompanyDetails;

  factory CopyWith$Query$CompanyDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$CompanyDetails;

  TRes call({
    Query$CompanyDetails$company? company,
    String? $__typename,
  });
  CopyWith$Query$CompanyDetails$company<TRes> get company;
}

class _CopyWithImpl$Query$CompanyDetails<TRes>
    implements CopyWith$Query$CompanyDetails<TRes> {
  _CopyWithImpl$Query$CompanyDetails(
    this._instance,
    this._then,
  );

  final Query$CompanyDetails _instance;

  final TRes Function(Query$CompanyDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? company = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CompanyDetails(
        company: company == _undefined || company == null
            ? _instance.company
            : (company as Query$CompanyDetails$company),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CompanyDetails$company<TRes> get company {
    final local$company = _instance.company;
    return CopyWith$Query$CompanyDetails$company(
        local$company, (e) => call(company: e));
  }
}

class _CopyWithStubImpl$Query$CompanyDetails<TRes>
    implements CopyWith$Query$CompanyDetails<TRes> {
  _CopyWithStubImpl$Query$CompanyDetails(this._res);

  TRes _res;

  call({
    Query$CompanyDetails$company? company,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CompanyDetails$company<TRes> get company =>
      CopyWith$Query$CompanyDetails$company.stub(_res);
}

const documentNodeQueryCompanyDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CompanyDetails'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'companyId')),
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
        name: NameNode(value: 'company'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'companyId'),
            value: VariableNode(name: NameNode(value: 'companyId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'fullName'),
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

class Query$CompanyDetails$company {
  Query$CompanyDetails$company({
    required this.fullName,
    this.$__typename = 'Company',
  });

  factory Query$CompanyDetails$company.fromJson(Map<String, dynamic> json) {
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Query$CompanyDetails$company(
      fullName: (l$fullName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String fullName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fullName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CompanyDetails$company ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
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

extension UtilityExtension$Query$CompanyDetails$company
    on Query$CompanyDetails$company {
  CopyWith$Query$CompanyDetails$company<Query$CompanyDetails$company>
      get copyWith => CopyWith$Query$CompanyDetails$company(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CompanyDetails$company<TRes> {
  factory CopyWith$Query$CompanyDetails$company(
    Query$CompanyDetails$company instance,
    TRes Function(Query$CompanyDetails$company) then,
  ) = _CopyWithImpl$Query$CompanyDetails$company;

  factory CopyWith$Query$CompanyDetails$company.stub(TRes res) =
      _CopyWithStubImpl$Query$CompanyDetails$company;

  TRes call({
    String? fullName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CompanyDetails$company<TRes>
    implements CopyWith$Query$CompanyDetails$company<TRes> {
  _CopyWithImpl$Query$CompanyDetails$company(
    this._instance,
    this._then,
  );

  final Query$CompanyDetails$company _instance;

  final TRes Function(Query$CompanyDetails$company) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CompanyDetails$company(
        fullName: fullName == _undefined || fullName == null
            ? _instance.fullName
            : (fullName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CompanyDetails$company<TRes>
    implements CopyWith$Query$CompanyDetails$company<TRes> {
  _CopyWithStubImpl$Query$CompanyDetails$company(this._res);

  TRes _res;

  call({
    String? fullName,
    String? $__typename,
  }) =>
      _res;
}
