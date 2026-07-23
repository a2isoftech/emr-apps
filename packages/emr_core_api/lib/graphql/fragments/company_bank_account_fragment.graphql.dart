import 'company_fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'territory_fragment.graphql.dart';

class Fragment$CompanyBankAccountFragment {
  Fragment$CompanyBankAccountFragment({
    required this.bankName,
    required this.code,
    required this.companyCode,
    required this.companyId,
    required this.defaultAccount,
    required this.id,
    required this.territoryCode,
    required this.territoryId,
    this.company,
    this.territory,
    required this.sortCode,
    required this.accountNumber,
    required this.address,
    this.$__typename = 'CompanyBankAccount',
  });

  factory Fragment$CompanyBankAccountFragment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$bankName = json['bankName'];
    final l$code = json['code'];
    final l$companyCode = json['companyCode'];
    final l$companyId = json['companyId'];
    final l$defaultAccount = json['defaultAccount'];
    final l$id = json['id'];
    final l$territoryCode = json['territoryCode'];
    final l$territoryId = json['territoryId'];
    final l$company = json['company'];
    final l$territory = json['territory'];
    final l$sortCode = json['sortCode'];
    final l$accountNumber = json['accountNumber'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Fragment$CompanyBankAccountFragment(
      bankName: (l$bankName as String),
      code: (l$code as String),
      companyCode: (l$companyCode as String),
      companyId: (l$companyId as String),
      defaultAccount: (l$defaultAccount as String),
      id: (l$id as String),
      territoryCode: (l$territoryCode as String),
      territoryId: (l$territoryId as String),
      company: l$company == null
          ? null
          : Fragment$CompanyFragment.fromJson(
              (l$company as Map<String, dynamic>),
            ),
      territory: l$territory == null
          ? null
          : Fragment$TerritoryFragment.fromJson(
              (l$territory as Map<String, dynamic>),
            ),
      sortCode: (l$sortCode as String),
      accountNumber: (l$accountNumber as String),
      address: Fragment$CompanyBankAccountFragment$address.fromJson(
        (l$address as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String bankName;

  final String code;

  final String companyCode;

  final String companyId;

  final String defaultAccount;

  final String id;

  final String territoryCode;

  final String territoryId;

  final Fragment$CompanyFragment? company;

  final Fragment$TerritoryFragment? territory;

  final String sortCode;

  final String accountNumber;

  final Fragment$CompanyBankAccountFragment$address address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$companyId = companyId;
    _resultData['companyId'] = l$companyId;
    final l$defaultAccount = defaultAccount;
    _resultData['defaultAccount'] = l$defaultAccount;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$territoryId = territoryId;
    _resultData['territoryId'] = l$territoryId;
    final l$company = company;
    _resultData['company'] = l$company?.toJson();
    final l$territory = territory;
    _resultData['territory'] = l$territory?.toJson();
    final l$sortCode = sortCode;
    _resultData['sortCode'] = l$sortCode;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$address = address;
    _resultData['address'] = l$address.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankName = bankName;
    final l$code = code;
    final l$companyCode = companyCode;
    final l$companyId = companyId;
    final l$defaultAccount = defaultAccount;
    final l$id = id;
    final l$territoryCode = territoryCode;
    final l$territoryId = territoryId;
    final l$company = company;
    final l$territory = territory;
    final l$sortCode = sortCode;
    final l$accountNumber = accountNumber;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankName,
      l$code,
      l$companyCode,
      l$companyId,
      l$defaultAccount,
      l$id,
      l$territoryCode,
      l$territoryId,
      l$company,
      l$territory,
      l$sortCode,
      l$accountNumber,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CompanyBankAccountFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$companyId = companyId;
    final lOther$companyId = other.companyId;
    if (l$companyId != lOther$companyId) {
      return false;
    }
    final l$defaultAccount = defaultAccount;
    final lOther$defaultAccount = other.defaultAccount;
    if (l$defaultAccount != lOther$defaultAccount) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (l$territoryId != lOther$territoryId) {
      return false;
    }
    final l$company = company;
    final lOther$company = other.company;
    if (l$company != lOther$company) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
      return false;
    }
    final l$sortCode = sortCode;
    final lOther$sortCode = other.sortCode;
    if (l$sortCode != lOther$sortCode) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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

extension UtilityExtension$Fragment$CompanyBankAccountFragment
    on Fragment$CompanyBankAccountFragment {
  CopyWith$Fragment$CompanyBankAccountFragment<
    Fragment$CompanyBankAccountFragment
  >
  get copyWith => CopyWith$Fragment$CompanyBankAccountFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$CompanyBankAccountFragment<TRes> {
  factory CopyWith$Fragment$CompanyBankAccountFragment(
    Fragment$CompanyBankAccountFragment instance,
    TRes Function(Fragment$CompanyBankAccountFragment) then,
  ) = _CopyWithImpl$Fragment$CompanyBankAccountFragment;

  factory CopyWith$Fragment$CompanyBankAccountFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CompanyBankAccountFragment;

  TRes call({
    String? bankName,
    String? code,
    String? companyCode,
    String? companyId,
    String? defaultAccount,
    String? id,
    String? territoryCode,
    String? territoryId,
    Fragment$CompanyFragment? company,
    Fragment$TerritoryFragment? territory,
    String? sortCode,
    String? accountNumber,
    Fragment$CompanyBankAccountFragment$address? address,
    String? $__typename,
  });
  CopyWith$Fragment$CompanyFragment<TRes> get company;
  CopyWith$Fragment$TerritoryFragment<TRes> get territory;
  CopyWith$Fragment$CompanyBankAccountFragment$address<TRes> get address;
}

class _CopyWithImpl$Fragment$CompanyBankAccountFragment<TRes>
    implements CopyWith$Fragment$CompanyBankAccountFragment<TRes> {
  _CopyWithImpl$Fragment$CompanyBankAccountFragment(this._instance, this._then);

  final Fragment$CompanyBankAccountFragment _instance;

  final TRes Function(Fragment$CompanyBankAccountFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankName = _undefined,
    Object? code = _undefined,
    Object? companyCode = _undefined,
    Object? companyId = _undefined,
    Object? defaultAccount = _undefined,
    Object? id = _undefined,
    Object? territoryCode = _undefined,
    Object? territoryId = _undefined,
    Object? company = _undefined,
    Object? territory = _undefined,
    Object? sortCode = _undefined,
    Object? accountNumber = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$CompanyBankAccountFragment(
      bankName: bankName == _undefined || bankName == null
          ? _instance.bankName
          : (bankName as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      companyCode: companyCode == _undefined || companyCode == null
          ? _instance.companyCode
          : (companyCode as String),
      companyId: companyId == _undefined || companyId == null
          ? _instance.companyId
          : (companyId as String),
      defaultAccount: defaultAccount == _undefined || defaultAccount == null
          ? _instance.defaultAccount
          : (defaultAccount as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      territoryCode: territoryCode == _undefined || territoryCode == null
          ? _instance.territoryCode
          : (territoryCode as String),
      territoryId: territoryId == _undefined || territoryId == null
          ? _instance.territoryId
          : (territoryId as String),
      company: company == _undefined
          ? _instance.company
          : (company as Fragment$CompanyFragment?),
      territory: territory == _undefined
          ? _instance.territory
          : (territory as Fragment$TerritoryFragment?),
      sortCode: sortCode == _undefined || sortCode == null
          ? _instance.sortCode
          : (sortCode as String),
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      address: address == _undefined || address == null
          ? _instance.address
          : (address as Fragment$CompanyBankAccountFragment$address),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyFragment<TRes> get company {
    final local$company = _instance.company;
    return local$company == null
        ? CopyWith$Fragment$CompanyFragment.stub(_then(_instance))
        : CopyWith$Fragment$CompanyFragment(
            local$company,
            (e) => call(company: e),
          );
  }

  CopyWith$Fragment$TerritoryFragment<TRes> get territory {
    final local$territory = _instance.territory;
    return local$territory == null
        ? CopyWith$Fragment$TerritoryFragment.stub(_then(_instance))
        : CopyWith$Fragment$TerritoryFragment(
            local$territory,
            (e) => call(territory: e),
          );
  }

  CopyWith$Fragment$CompanyBankAccountFragment$address<TRes> get address {
    final local$address = _instance.address;
    return CopyWith$Fragment$CompanyBankAccountFragment$address(
      local$address,
      (e) => call(address: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$CompanyBankAccountFragment<TRes>
    implements CopyWith$Fragment$CompanyBankAccountFragment<TRes> {
  _CopyWithStubImpl$Fragment$CompanyBankAccountFragment(this._res);

  TRes _res;

  call({
    String? bankName,
    String? code,
    String? companyCode,
    String? companyId,
    String? defaultAccount,
    String? id,
    String? territoryCode,
    String? territoryId,
    Fragment$CompanyFragment? company,
    Fragment$TerritoryFragment? territory,
    String? sortCode,
    String? accountNumber,
    Fragment$CompanyBankAccountFragment$address? address,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CompanyFragment<TRes> get company =>
      CopyWith$Fragment$CompanyFragment.stub(_res);

  CopyWith$Fragment$TerritoryFragment<TRes> get territory =>
      CopyWith$Fragment$TerritoryFragment.stub(_res);

  CopyWith$Fragment$CompanyBankAccountFragment$address<TRes> get address =>
      CopyWith$Fragment$CompanyBankAccountFragment$address.stub(_res);
}

const fragmentDefinitionCompanyBankAccountFragment = FragmentDefinitionNode(
  name: NameNode(value: 'CompanyBankAccountFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'CompanyBankAccount'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'bankName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
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
        name: NameNode(value: 'companyId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'defaultAccount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'territoryCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'territoryId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'company'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'CompanyFragment'),
              directives: [],
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
      FieldNode(
        name: NameNode(value: 'territory'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'TerritoryFragment'),
              directives: [],
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
      FieldNode(
        name: NameNode(value: 'sortCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'accountNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'address1'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'address2'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'address3'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'address4'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'address5'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'address6'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'postCode'),
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
          ],
        ),
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
);
const documentNodeFragmentCompanyBankAccountFragment = DocumentNode(
  definitions: [
    fragmentDefinitionCompanyBankAccountFragment,
    fragmentDefinitionCompanyFragment,
    fragmentDefinitionTerritoryFragment,
  ],
);

class Fragment$CompanyBankAccountFragment$address {
  Fragment$CompanyBankAccountFragment$address({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.address4,
    required this.address5,
    required this.address6,
    required this.postCode,
    this.$__typename = 'Address',
  });

  factory Fragment$CompanyBankAccountFragment$address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$$__typename = json['__typename'];
    return Fragment$CompanyBankAccountFragment$address(
      address1: (l$address1 as String),
      address2: (l$address2 as String),
      address3: (l$address3 as String),
      address4: (l$address4 as String),
      address5: (l$address5 as String),
      address6: (l$address6 as String),
      postCode: (l$postCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String address1;

  final String address2;

  final String address3;

  final String address4;

  final String address5;

  final String address6;

  final String postCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$address2 = address2;
    _resultData['address2'] = l$address2;
    final l$address3 = address3;
    _resultData['address3'] = l$address3;
    final l$address4 = address4;
    _resultData['address4'] = l$address4;
    final l$address5 = address5;
    _resultData['address5'] = l$address5;
    final l$address6 = address6;
    _resultData['address6'] = l$address6;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address1 = address1;
    final l$address2 = address2;
    final l$address3 = address3;
    final l$address4 = address4;
    final l$address5 = address5;
    final l$address6 = address6;
    final l$postCode = postCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$postCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CompanyBankAccountFragment$address ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (l$address2 != lOther$address2) {
      return false;
    }
    final l$address3 = address3;
    final lOther$address3 = other.address3;
    if (l$address3 != lOther$address3) {
      return false;
    }
    final l$address4 = address4;
    final lOther$address4 = other.address4;
    if (l$address4 != lOther$address4) {
      return false;
    }
    final l$address5 = address5;
    final lOther$address5 = other.address5;
    if (l$address5 != lOther$address5) {
      return false;
    }
    final l$address6 = address6;
    final lOther$address6 = other.address6;
    if (l$address6 != lOther$address6) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
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

extension UtilityExtension$Fragment$CompanyBankAccountFragment$address
    on Fragment$CompanyBankAccountFragment$address {
  CopyWith$Fragment$CompanyBankAccountFragment$address<
    Fragment$CompanyBankAccountFragment$address
  >
  get copyWith =>
      CopyWith$Fragment$CompanyBankAccountFragment$address(this, (i) => i);
}

abstract class CopyWith$Fragment$CompanyBankAccountFragment$address<TRes> {
  factory CopyWith$Fragment$CompanyBankAccountFragment$address(
    Fragment$CompanyBankAccountFragment$address instance,
    TRes Function(Fragment$CompanyBankAccountFragment$address) then,
  ) = _CopyWithImpl$Fragment$CompanyBankAccountFragment$address;

  factory CopyWith$Fragment$CompanyBankAccountFragment$address.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CompanyBankAccountFragment$address;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CompanyBankAccountFragment$address<TRes>
    implements CopyWith$Fragment$CompanyBankAccountFragment$address<TRes> {
  _CopyWithImpl$Fragment$CompanyBankAccountFragment$address(
    this._instance,
    this._then,
  );

  final Fragment$CompanyBankAccountFragment$address _instance;

  final TRes Function(Fragment$CompanyBankAccountFragment$address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$CompanyBankAccountFragment$address(
      address1: address1 == _undefined || address1 == null
          ? _instance.address1
          : (address1 as String),
      address2: address2 == _undefined || address2 == null
          ? _instance.address2
          : (address2 as String),
      address3: address3 == _undefined || address3 == null
          ? _instance.address3
          : (address3 as String),
      address4: address4 == _undefined || address4 == null
          ? _instance.address4
          : (address4 as String),
      address5: address5 == _undefined || address5 == null
          ? _instance.address5
          : (address5 as String),
      address6: address6 == _undefined || address6 == null
          ? _instance.address6
          : (address6 as String),
      postCode: postCode == _undefined || postCode == null
          ? _instance.postCode
          : (postCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$CompanyBankAccountFragment$address<TRes>
    implements CopyWith$Fragment$CompanyBankAccountFragment$address<TRes> {
  _CopyWithStubImpl$Fragment$CompanyBankAccountFragment$address(this._res);

  TRes _res;

  call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? $__typename,
  }) => _res;
}
