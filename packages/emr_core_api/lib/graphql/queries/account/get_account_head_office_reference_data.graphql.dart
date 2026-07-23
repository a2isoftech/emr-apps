import 'package:gql/ast.dart';

class Query$GetAccountReferenceData {
  Query$GetAccountReferenceData({
    this.financialSupplierGroups,
    this.financialCustomerGroups,
    this.paymentTerms,
    this.financialPaymentMethod,
    this.invoicePeriodicityDays,
    this.namesToUseOn1099,
    this.depots,
    this.$__typename = 'Query',
  });

  factory Query$GetAccountReferenceData.fromJson(Map<String, dynamic> json) {
    final l$financialSupplierGroups = json['financialSupplierGroups'];
    final l$financialCustomerGroups = json['financialCustomerGroups'];
    final l$paymentTerms = json['paymentTerms'];
    final l$financialPaymentMethod = json['financialPaymentMethod'];
    final l$invoicePeriodicityDays = json['invoicePeriodicityDays'];
    final l$namesToUseOn1099 = json['namesToUseOn1099'];
    final l$depots = json['depots'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountReferenceData(
      financialSupplierGroups:
          (l$financialSupplierGroups as Map<String, dynamic>?),
      financialCustomerGroups:
          (l$financialCustomerGroups as Map<String, dynamic>?),
      paymentTerms: (l$paymentTerms as Map<String, dynamic>?),
      financialPaymentMethod:
          (l$financialPaymentMethod as Map<String, dynamic>?),
      invoicePeriodicityDays:
          (l$invoicePeriodicityDays as Map<String, dynamic>?),
      namesToUseOn1099: (l$namesToUseOn1099 as Map<String, dynamic>?),
      depots: (l$depots as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final Map<String, dynamic>? financialSupplierGroups;

  final Map<String, dynamic>? financialCustomerGroups;

  final Map<String, dynamic>? paymentTerms;

  final Map<String, dynamic>? financialPaymentMethod;

  final Map<String, dynamic>? invoicePeriodicityDays;

  final Map<String, dynamic>? namesToUseOn1099;

  final Map<String, dynamic>? depots;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$financialSupplierGroups = financialSupplierGroups;
    _resultData['financialSupplierGroups'] = l$financialSupplierGroups;
    final l$financialCustomerGroups = financialCustomerGroups;
    _resultData['financialCustomerGroups'] = l$financialCustomerGroups;
    final l$paymentTerms = paymentTerms;
    _resultData['paymentTerms'] = l$paymentTerms;
    final l$financialPaymentMethod = financialPaymentMethod;
    _resultData['financialPaymentMethod'] = l$financialPaymentMethod;
    final l$invoicePeriodicityDays = invoicePeriodicityDays;
    _resultData['invoicePeriodicityDays'] = l$invoicePeriodicityDays;
    final l$namesToUseOn1099 = namesToUseOn1099;
    _resultData['namesToUseOn1099'] = l$namesToUseOn1099;
    final l$depots = depots;
    _resultData['depots'] = l$depots;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$financialSupplierGroups = financialSupplierGroups;
    final l$financialCustomerGroups = financialCustomerGroups;
    final l$paymentTerms = paymentTerms;
    final l$financialPaymentMethod = financialPaymentMethod;
    final l$invoicePeriodicityDays = invoicePeriodicityDays;
    final l$namesToUseOn1099 = namesToUseOn1099;
    final l$depots = depots;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$financialSupplierGroups,
      l$financialCustomerGroups,
      l$paymentTerms,
      l$financialPaymentMethod,
      l$invoicePeriodicityDays,
      l$namesToUseOn1099,
      l$depots,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountReferenceData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$financialSupplierGroups = financialSupplierGroups;
    final lOther$financialSupplierGroups = other.financialSupplierGroups;
    if (l$financialSupplierGroups != lOther$financialSupplierGroups) {
      return false;
    }
    final l$financialCustomerGroups = financialCustomerGroups;
    final lOther$financialCustomerGroups = other.financialCustomerGroups;
    if (l$financialCustomerGroups != lOther$financialCustomerGroups) {
      return false;
    }
    final l$paymentTerms = paymentTerms;
    final lOther$paymentTerms = other.paymentTerms;
    if (l$paymentTerms != lOther$paymentTerms) {
      return false;
    }
    final l$financialPaymentMethod = financialPaymentMethod;
    final lOther$financialPaymentMethod = other.financialPaymentMethod;
    if (l$financialPaymentMethod != lOther$financialPaymentMethod) {
      return false;
    }
    final l$invoicePeriodicityDays = invoicePeriodicityDays;
    final lOther$invoicePeriodicityDays = other.invoicePeriodicityDays;
    if (l$invoicePeriodicityDays != lOther$invoicePeriodicityDays) {
      return false;
    }
    final l$namesToUseOn1099 = namesToUseOn1099;
    final lOther$namesToUseOn1099 = other.namesToUseOn1099;
    if (l$namesToUseOn1099 != lOther$namesToUseOn1099) {
      return false;
    }
    final l$depots = depots;
    final lOther$depots = other.depots;
    if (l$depots != lOther$depots) {
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

extension UtilityExtension$Query$GetAccountReferenceData
    on Query$GetAccountReferenceData {
  CopyWith$Query$GetAccountReferenceData<Query$GetAccountReferenceData>
  get copyWith => CopyWith$Query$GetAccountReferenceData(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountReferenceData<TRes> {
  factory CopyWith$Query$GetAccountReferenceData(
    Query$GetAccountReferenceData instance,
    TRes Function(Query$GetAccountReferenceData) then,
  ) = _CopyWithImpl$Query$GetAccountReferenceData;

  factory CopyWith$Query$GetAccountReferenceData.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountReferenceData;

  TRes call({
    Map<String, dynamic>? financialSupplierGroups,
    Map<String, dynamic>? financialCustomerGroups,
    Map<String, dynamic>? paymentTerms,
    Map<String, dynamic>? financialPaymentMethod,
    Map<String, dynamic>? invoicePeriodicityDays,
    Map<String, dynamic>? namesToUseOn1099,
    Map<String, dynamic>? depots,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountReferenceData<TRes>
    implements CopyWith$Query$GetAccountReferenceData<TRes> {
  _CopyWithImpl$Query$GetAccountReferenceData(this._instance, this._then);

  final Query$GetAccountReferenceData _instance;

  final TRes Function(Query$GetAccountReferenceData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? financialSupplierGroups = _undefined,
    Object? financialCustomerGroups = _undefined,
    Object? paymentTerms = _undefined,
    Object? financialPaymentMethod = _undefined,
    Object? invoicePeriodicityDays = _undefined,
    Object? namesToUseOn1099 = _undefined,
    Object? depots = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountReferenceData(
      financialSupplierGroups: financialSupplierGroups == _undefined
          ? _instance.financialSupplierGroups
          : (financialSupplierGroups as Map<String, dynamic>?),
      financialCustomerGroups: financialCustomerGroups == _undefined
          ? _instance.financialCustomerGroups
          : (financialCustomerGroups as Map<String, dynamic>?),
      paymentTerms: paymentTerms == _undefined
          ? _instance.paymentTerms
          : (paymentTerms as Map<String, dynamic>?),
      financialPaymentMethod: financialPaymentMethod == _undefined
          ? _instance.financialPaymentMethod
          : (financialPaymentMethod as Map<String, dynamic>?),
      invoicePeriodicityDays: invoicePeriodicityDays == _undefined
          ? _instance.invoicePeriodicityDays
          : (invoicePeriodicityDays as Map<String, dynamic>?),
      namesToUseOn1099: namesToUseOn1099 == _undefined
          ? _instance.namesToUseOn1099
          : (namesToUseOn1099 as Map<String, dynamic>?),
      depots: depots == _undefined
          ? _instance.depots
          : (depots as Map<String, dynamic>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountReferenceData<TRes>
    implements CopyWith$Query$GetAccountReferenceData<TRes> {
  _CopyWithStubImpl$Query$GetAccountReferenceData(this._res);

  TRes _res;

  call({
    Map<String, dynamic>? financialSupplierGroups,
    Map<String, dynamic>? financialCustomerGroups,
    Map<String, dynamic>? paymentTerms,
    Map<String, dynamic>? financialPaymentMethod,
    Map<String, dynamic>? invoicePeriodicityDays,
    Map<String, dynamic>? namesToUseOn1099,
    Map<String, dynamic>? depots,
    String? $__typename,
  }) => _res;
}

const documentNodeQueryGetAccountReferenceData = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAccountReferenceData'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'referenceData'),
            alias: NameNode(value: 'financialSupplierGroups'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'name'),
                value: StringValueNode(
                  value: 'financialSupplierGroups',
                  isBlock: false,
                ),
              ),
            ],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'referenceData'),
            alias: NameNode(value: 'financialCustomerGroups'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'name'),
                value: StringValueNode(
                  value: 'financialCustomerGroups',
                  isBlock: false,
                ),
              ),
            ],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'referenceData'),
            alias: NameNode(value: 'paymentTerms'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'name'),
                value: StringValueNode(value: 'paymentTerms', isBlock: false),
              ),
            ],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'referenceData'),
            alias: NameNode(value: 'financialPaymentMethod'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'name'),
                value: StringValueNode(
                  value: 'FinancialPaymentMethods',
                  isBlock: false,
                ),
              ),
            ],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'referenceData'),
            alias: NameNode(value: 'invoicePeriodicityDays'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'name'),
                value: StringValueNode(
                  value: 'invoicePeriodicityDays',
                  isBlock: false,
                ),
              ),
            ],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'referenceData'),
            alias: NameNode(value: 'namesToUseOn1099'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'name'),
                value: StringValueNode(
                  value: 'namesToUseOn1099',
                  isBlock: false,
                ),
              ),
            ],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'referenceData'),
            alias: NameNode(value: 'depots'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'name'),
                value: StringValueNode(value: 'depots', isBlock: false),
              ),
            ],
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
        ],
      ),
    ),
  ],
);
