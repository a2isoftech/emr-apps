import '../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAccountInfo {
  factory Variables$Query$GetAccountInfo({
    required String accountId,
    bool? includePublicationData,
  }) => Variables$Query$GetAccountInfo._({
    r'accountId': accountId,
    if (includePublicationData != null)
      r'includePublicationData': includePublicationData,
  });

  Variables$Query$GetAccountInfo._(this._$data);

  factory Variables$Query$GetAccountInfo.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accountId = data['accountId'];
    result$data['accountId'] = (l$accountId as String);
    if (data.containsKey('includePublicationData')) {
      final l$includePublicationData = data['includePublicationData'];
      result$data['includePublicationData'] =
          (l$includePublicationData as bool?);
    }
    return Variables$Query$GetAccountInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountId => (_$data['accountId'] as String);

  bool? get includePublicationData =>
      (_$data['includePublicationData'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountId = accountId;
    result$data['accountId'] = l$accountId;
    if (_$data.containsKey('includePublicationData')) {
      final l$includePublicationData = includePublicationData;
      result$data['includePublicationData'] = l$includePublicationData;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAccountInfo<Variables$Query$GetAccountInfo>
  get copyWith => CopyWith$Variables$Query$GetAccountInfo(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccountInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$includePublicationData = includePublicationData;
    final lOther$includePublicationData = other.includePublicationData;
    if (_$data.containsKey('includePublicationData') !=
        other._$data.containsKey('includePublicationData')) {
      return false;
    }
    if (l$includePublicationData != lOther$includePublicationData) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$includePublicationData = includePublicationData;
    return Object.hashAll([
      l$accountId,
      _$data.containsKey('includePublicationData')
          ? l$includePublicationData
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAccountInfo<TRes> {
  factory CopyWith$Variables$Query$GetAccountInfo(
    Variables$Query$GetAccountInfo instance,
    TRes Function(Variables$Query$GetAccountInfo) then,
  ) = _CopyWithImpl$Variables$Query$GetAccountInfo;

  factory CopyWith$Variables$Query$GetAccountInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccountInfo;

  TRes call({String? accountId, bool? includePublicationData});
}

class _CopyWithImpl$Variables$Query$GetAccountInfo<TRes>
    implements CopyWith$Variables$Query$GetAccountInfo<TRes> {
  _CopyWithImpl$Variables$Query$GetAccountInfo(this._instance, this._then);

  final Variables$Query$GetAccountInfo _instance;

  final TRes Function(Variables$Query$GetAccountInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountId = _undefined,
    Object? includePublicationData = _undefined,
  }) => _then(
    Variables$Query$GetAccountInfo._({
      ..._instance._$data,
      if (accountId != _undefined && accountId != null)
        'accountId': (accountId as String),
      if (includePublicationData != _undefined)
        'includePublicationData': (includePublicationData as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAccountInfo<TRes>
    implements CopyWith$Variables$Query$GetAccountInfo<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccountInfo(this._res);

  TRes _res;

  call({String? accountId, bool? includePublicationData}) => _res;
}

class Query$GetAccountInfo {
  Query$GetAccountInfo({required this.accountById, this.$__typename = 'Query'});

  factory Query$GetAccountInfo.fromJson(Map<String, dynamic> json) {
    final l$accountById = json['accountById'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo(
      accountById: Query$GetAccountInfo$accountById.fromJson(
        (l$accountById as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  @Deprecated(
    'This usage is obsolete. Consumers must send AccountId instead of AccountCode.',
  )
  final Query$GetAccountInfo$accountById accountById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountById = accountById;
    _resultData['accountById'] = l$accountById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountById = accountById;
    final l$$__typename = $__typename;
    return Object.hashAll([l$accountById, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo || runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountById = accountById;
    final lOther$accountById = other.accountById;
    if (l$accountById != lOther$accountById) {
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

extension UtilityExtension$Query$GetAccountInfo on Query$GetAccountInfo {
  CopyWith$Query$GetAccountInfo<Query$GetAccountInfo> get copyWith =>
      CopyWith$Query$GetAccountInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo<TRes> {
  factory CopyWith$Query$GetAccountInfo(
    Query$GetAccountInfo instance,
    TRes Function(Query$GetAccountInfo) then,
  ) = _CopyWithImpl$Query$GetAccountInfo;

  factory CopyWith$Query$GetAccountInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountInfo;

  TRes call({
    Query$GetAccountInfo$accountById? accountById,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById<TRes> get accountById;
}

class _CopyWithImpl$Query$GetAccountInfo<TRes>
    implements CopyWith$Query$GetAccountInfo<TRes> {
  _CopyWithImpl$Query$GetAccountInfo(this._instance, this._then);

  final Query$GetAccountInfo _instance;

  final TRes Function(Query$GetAccountInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountById = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo(
      accountById: accountById == _undefined || accountById == null
          ? _instance.accountById
          : (accountById as Query$GetAccountInfo$accountById),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById<TRes> get accountById {
    final local$accountById = _instance.accountById;
    return CopyWith$Query$GetAccountInfo$accountById(
      local$accountById,
      (e) => call(accountById: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo<TRes>
    implements CopyWith$Query$GetAccountInfo<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo(this._res);

  TRes _res;

  call({Query$GetAccountInfo$accountById? accountById, String? $__typename}) =>
      _res;

  CopyWith$Query$GetAccountInfo$accountById<TRes> get accountById =>
      CopyWith$Query$GetAccountInfo$accountById.stub(_res);
}

const documentNodeQueryGetAccountInfo = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAccountInfo'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accountId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'includePublicationData'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'accountById'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accountId'),
                value: VariableNode(name: NameNode(value: 'accountId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'accountStatus'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'currencyId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'productEWC'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'code'),
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
                          ],
                        ),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'sicCodeId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'prospectId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'originatingCountry'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'preferredPaymentMethod'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'customerVatGroupType'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'supplierVatGroupType'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'financialCustomerGroupId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'financialSupplierGroupId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'parentAccount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'vihbNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'linkedPublications'),
                  alias: null,
                  arguments: [],
                  directives: [
                    DirectiveNode(
                      name: NameNode(value: 'include'),
                      arguments: [
                        ArgumentNode(
                          name: NameNode(value: 'if'),
                          value: VariableNode(
                            name: NameNode(value: 'includePublicationData'),
                          ),
                        ),
                      ],
                    ),
                  ],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'publicationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'allowedProductIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'allowedYardIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'publication'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'availableProducts'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'id'),
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
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(value: 'availableYards'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'name'),
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
                  name: NameNode(value: 'loyaltyCards'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'locationCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'issueDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'provider'),
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
                  name: NameNode(value: 'prepaymentCards'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'panDigits'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'issuerType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'issueDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'active'),
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
                  name: NameNode(value: 'settings'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'stateReportingEnabled'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'negativeInwardsEnabled'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transformationEnabled'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'validFrom'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'validTo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'marketIndicatorEnabled'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isWasteProducer'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isWasteImporter'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isWasteTransporter'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isWasteRegisteredCarrier'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'annualWtnSsaRequired'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'wtnSsaExpiryDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isDigitalWalletActivated'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'hasHazardousWasteConsignmentNote',
                        ),
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
                  name: NameNode(value: 'industryGroups'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'trader'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'supplier'),
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
                  name: NameNode(value: 'pricingControl'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'priceChangesRestricted'),
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
                  name: NameNode(value: 'territory'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'active'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'currencyCode'),
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
                        name: NameNode(value: 'defaultCompanyId'),
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
                  name: NameNode(value: 'locations'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'addressKey'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'primaryContactId'),
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
                        name: NameNode(value: 'active'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sitePermitHolder'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sitePermitOrExemptionNumber'),
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
                  name: NameNode(value: 'bankAccounts'),
                  alias: null,
                  arguments: [],
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
                        name: NameNode(value: 'accountHolderName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                        name: NameNode(value: 'currencyId'),
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
                              name: NameNode(value: 'countryCode'),
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
                        name: NameNode(value: 'ibanCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'reference'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'swiftCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'countryCurrencyId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'bankAccountType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'verificationType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'comments'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'content'),
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
                        name: NameNode(value: 'fasterPaymentSupported'),
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
                  name: NameNode(value: 'businessDetail'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'vatNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'eoriNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'companyRegistrationNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isTradingCompany'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'website'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'paymentTerm'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'taxMethod'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'documentHoldStatusType'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'financialPaymentMethod'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'paymentTermTypeId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'paymentTermTypeName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'defaultMedia'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'discountType'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'adjustTax'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'discountTerms'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'discountPercentage'),
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
                        name: NameNode(value: 'creditTerm'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'vatClass'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'paymentTermTypeId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'paymentTermTypeName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'dueDateFrom'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'limitDecisionType'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'invoicePeriodicity'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'invoicePeriodicityDays'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'onStop'),
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
                        name: NameNode(value: 'invoicingOptions'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'bulkPod'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'multiLoad'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'multiDepot'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'multiGrade'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'multiTicketDate'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'multiLocation'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'useDeliveryAddress'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'suppressInvoice'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'suppressStatement'),
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
                        name: NameNode(value: 'selfBilling'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'selfBillingDate'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'frequency'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'autoApprove'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'doNotPayTicketsOlderThan'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'payTicketsOlderThan'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'payCentre'),
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
                        name: NameNode(value: 'creditControl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'contraAgreed'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'insurerPolicyName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'creditLimit'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'overrideLimit'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'decisionLimit'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'creditReportDate'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'creditReportValue'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'creditLimitReviewDate'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'currencyId'),
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
                        name: NameNode(value: 'licenseExemption'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'wasteTransferLicense'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'media'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'url'),
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
                                    name: NameNode(value: 'documentType'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'validFrom'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'validTo'),
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
                              name: NameNode(value: 'annualWasteTransferNote'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'wasteProducer'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'wasteImporter'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'wasteTransporter'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'wasteRegCarrier'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'wasteRegCarrierNumber'),
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
                ),
                FieldNode(
                  name: NameNode(value: 'celAgreement'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'agreementDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'expiryDate'),
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
                  name: NameNode(value: 'cfcAgreement'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'agreementDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'expiryDate'),
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
                  name: NameNode(value: 'accountManagers'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'serviceType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'type'),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'priority'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userInfo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'emailAddress'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'permissions'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'yards'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'yardCode'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'shortName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'name'),
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
                              name: NameNode(value: 'territories'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'name'),
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
                              name: NameNode(value: 'defaultDepot'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'defaultTerritory'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'defaultOrderBookTypeId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userOrderBooks'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'orderBookTypeId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'orderBookName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'gradeType'),
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
                              name: NameNode(value: 't2UserId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'allAccountAccess'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'azureUserId'),
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
                ),
                FieldNode(
                  name: NameNode(value: 'primaryManager'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'type'),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'priority'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userInfo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'emailAddress'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'permissions'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'yards'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'yardCode'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'shortName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'name'),
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
                              name: NameNode(value: 'territories'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'name'),
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
                              name: NameNode(value: 'defaultDepot'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'defaultTerritory'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'defaultOrderBookTypeId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userOrderBooks'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'orderBookTypeId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'orderBookName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'gradeType'),
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
                              name: NameNode(value: 't2UserId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'allAccountAccess'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'azureUserId'),
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
                ),
                FieldNode(
                  name: NameNode(value: 'accountContacts'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
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
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'addressKey'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'contactTypes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'title'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'jobTitle'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'dateOfBirth'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'firstName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'middleName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'lastName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'contactPreferences'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'mobile'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'value'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'enabled'),
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
                                    name: NameNode(value: 'email'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'value'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'enabled'),
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
                                    name: NameNode(value: 'phone'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'value'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'enabled'),
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
                                    name: NameNode(value: 'fax'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'value'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'enabled'),
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
                                    name: NameNode(value: 'post'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'value'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'enabled'),
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
                                    name: NameNode(
                                      value: 'otherContactMethods',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'key'),
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
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'value'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'enabled',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                              name: NameNode(value: 'proofOfAddress'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'validFrom'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'validTo'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'type'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'subType'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'fileId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'filePath'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'tradeDocumentId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'identificationNumber',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sasUrl'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'media'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'url'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'created'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'userInfoId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(value: 'at'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'userName',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                              name: NameNode(value: 'proofOfIdentification'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'validFrom'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'validTo'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'type'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'subType'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'fileId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'filePath'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'tradeDocumentId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'identificationNumber',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sasUrl'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'media'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'url'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'created'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'userInfoId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(value: 'at'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'userName',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                              name: NameNode(value: 'signature'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'url'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sasUrl'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'created'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'userInfoId'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'at'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'userName'),
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
                            ),
                            FieldNode(
                              name: NameNode(value: 'signatureSasUrl'),
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
                ),
                FieldNode(
                  name: NameNode(value: 'industryGroup'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'accountAddresses'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                        name: NameNode(value: 'countryCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'what3Words'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'geoLocation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'latitude'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'longitude'),
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
                ),
                FieldNode(
                  name: NameNode(value: 'defaultYardCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'amiceCompanyNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'reportingFrequency'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'visitFrequency'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'validTerritoryIds'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'portalEnabledContacts'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'taxSettings'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'taxId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'w9Received'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'checkForW9'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'nameFor1099'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'doingBusinessAs'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'foreignEntityIndicator'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'secondTin'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'reportingDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'cashPaymentLimitExemptionDate'),
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
                  name: NameNode(value: 'accountSubTypes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'managingTeams'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'teamId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'teamName'),
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

class Query$GetAccountInfo$accountById {
  Query$GetAccountInfo$accountById({
    required this.id,
    required this.code,
    required this.name,
    required this.type,
    required this.accountStatus,
    required this.currencyId,
    this.productEWC,
    this.sicCodeId,
    required this.prospectId,
    required this.originatingCountry,
    required this.preferredPaymentMethod,
    required this.customerVatGroupType,
    required this.supplierVatGroupType,
    this.financialCustomerGroupId,
    this.financialSupplierGroupId,
    this.parentAccount,
    this.vihbNumber,
    this.linkedPublications,
    required this.loyaltyCards,
    required this.prepaymentCards,
    required this.settings,
    required this.industryGroups,
    required this.pricingControl,
    this.territory,
    required this.locations,
    required this.bankAccounts,
    this.businessDetail,
    this.celAgreement,
    this.cfcAgreement,
    this.accountManagers,
    required this.primaryManager,
    this.accountContacts,
    this.industryGroup,
    this.accountAddresses,
    this.defaultYardCode,
    this.amiceCompanyNumber,
    this.reportingFrequency,
    this.visitFrequency,
    required this.validTerritoryIds,
    required this.portalEnabledContacts,
    this.taxSettings,
    required this.accountSubTypes,
    required this.managingTeams,
    this.$__typename = 'Account',
  });

  factory Query$GetAccountInfo$accountById.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$accountStatus = json['accountStatus'];
    final l$currencyId = json['currencyId'];
    final l$productEWC = json['productEWC'];
    final l$sicCodeId = json['sicCodeId'];
    final l$prospectId = json['prospectId'];
    final l$originatingCountry = json['originatingCountry'];
    final l$preferredPaymentMethod = json['preferredPaymentMethod'];
    final l$customerVatGroupType = json['customerVatGroupType'];
    final l$supplierVatGroupType = json['supplierVatGroupType'];
    final l$financialCustomerGroupId = json['financialCustomerGroupId'];
    final l$financialSupplierGroupId = json['financialSupplierGroupId'];
    final l$parentAccount = json['parentAccount'];
    final l$vihbNumber = json['vihbNumber'];
    final l$linkedPublications = json['linkedPublications'];
    final l$loyaltyCards = json['loyaltyCards'];
    final l$prepaymentCards = json['prepaymentCards'];
    final l$settings = json['settings'];
    final l$industryGroups = json['industryGroups'];
    final l$pricingControl = json['pricingControl'];
    final l$territory = json['territory'];
    final l$locations = json['locations'];
    final l$bankAccounts = json['bankAccounts'];
    final l$businessDetail = json['businessDetail'];
    final l$celAgreement = json['celAgreement'];
    final l$cfcAgreement = json['cfcAgreement'];
    final l$accountManagers = json['accountManagers'];
    final l$primaryManager = json['primaryManager'];
    final l$accountContacts = json['accountContacts'];
    final l$industryGroup = json['industryGroup'];
    final l$accountAddresses = json['accountAddresses'];
    final l$defaultYardCode = json['defaultYardCode'];
    final l$amiceCompanyNumber = json['amiceCompanyNumber'];
    final l$reportingFrequency = json['reportingFrequency'];
    final l$visitFrequency = json['visitFrequency'];
    final l$validTerritoryIds = json['validTerritoryIds'];
    final l$portalEnabledContacts = json['portalEnabledContacts'];
    final l$taxSettings = json['taxSettings'];
    final l$accountSubTypes = json['accountSubTypes'];
    final l$managingTeams = json['managingTeams'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById(
      id: (l$id as String),
      code: (l$code as String),
      name: (l$name as String),
      type: fromJson$Enum$AccountType((l$type as String)),
      accountStatus: fromJson$Enum$AccountStatus((l$accountStatus as String)),
      currencyId: (l$currencyId as String),
      productEWC: (l$productEWC as List<dynamic>?)
          ?.map(
            (e) => Query$GetAccountInfo$accountById$productEWC.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      sicCodeId: (l$sicCodeId as String?),
      prospectId: (l$prospectId as String),
      originatingCountry: (l$originatingCountry as String),
      preferredPaymentMethod: fromJson$Enum$PaymentMethod(
        (l$preferredPaymentMethod as String),
      ),
      customerVatGroupType: fromJson$Enum$VatGroupType(
        (l$customerVatGroupType as String),
      ),
      supplierVatGroupType: fromJson$Enum$VatGroupType(
        (l$supplierVatGroupType as String),
      ),
      financialCustomerGroupId: (l$financialCustomerGroupId as String?),
      financialSupplierGroupId: (l$financialSupplierGroupId as String?),
      parentAccount: (l$parentAccount as String?),
      vihbNumber: (l$vihbNumber as String?),
      linkedPublications: (l$linkedPublications as List<dynamic>?)
          ?.map(
            (e) => Query$GetAccountInfo$accountById$linkedPublications.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      loyaltyCards: (l$loyaltyCards as List<dynamic>)
          .map(
            (e) => Query$GetAccountInfo$accountById$loyaltyCards.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      prepaymentCards: (l$prepaymentCards as List<dynamic>)
          .map(
            (e) => Query$GetAccountInfo$accountById$prepaymentCards.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      settings: Query$GetAccountInfo$accountById$settings.fromJson(
        (l$settings as Map<String, dynamic>),
      ),
      industryGroups: Query$GetAccountInfo$accountById$industryGroups.fromJson(
        (l$industryGroups as Map<String, dynamic>),
      ),
      pricingControl: Query$GetAccountInfo$accountById$pricingControl.fromJson(
        (l$pricingControl as Map<String, dynamic>),
      ),
      territory: l$territory == null
          ? null
          : Query$GetAccountInfo$accountById$territory.fromJson(
              (l$territory as Map<String, dynamic>),
            ),
      locations: (l$locations as List<dynamic>)
          .map(
            (e) => Query$GetAccountInfo$accountById$locations.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      bankAccounts: (l$bankAccounts as List<dynamic>)
          .map(
            (e) => Query$GetAccountInfo$accountById$bankAccounts.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      businessDetail: l$businessDetail == null
          ? null
          : Query$GetAccountInfo$accountById$businessDetail.fromJson(
              (l$businessDetail as Map<String, dynamic>),
            ),
      celAgreement: l$celAgreement == null
          ? null
          : Query$GetAccountInfo$accountById$celAgreement.fromJson(
              (l$celAgreement as Map<String, dynamic>),
            ),
      cfcAgreement: l$cfcAgreement == null
          ? null
          : Query$GetAccountInfo$accountById$cfcAgreement.fromJson(
              (l$cfcAgreement as Map<String, dynamic>),
            ),
      accountManagers: (l$accountManagers as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAccountInfo$accountById$accountManagers.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      primaryManager: Query$GetAccountInfo$accountById$primaryManager.fromJson(
        (l$primaryManager as Map<String, dynamic>),
      ),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAccountInfo$accountById$accountContacts.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      industryGroup: (l$industryGroup as String?),
      accountAddresses: (l$accountAddresses as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAccountInfo$accountById$accountAddresses.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      defaultYardCode: (l$defaultYardCode as String?),
      amiceCompanyNumber: (l$amiceCompanyNumber as int?),
      reportingFrequency: (l$reportingFrequency as String?),
      visitFrequency: (l$visitFrequency as String?),
      validTerritoryIds: (l$validTerritoryIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      portalEnabledContacts: (l$portalEnabledContacts as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      taxSettings: l$taxSettings == null
          ? null
          : Query$GetAccountInfo$accountById$taxSettings.fromJson(
              (l$taxSettings as Map<String, dynamic>),
            ),
      accountSubTypes: (l$accountSubTypes as List<dynamic>)
          .map(
            (e) => Query$GetAccountInfo$accountById$accountSubTypes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      managingTeams: (l$managingTeams as List<dynamic>)
          .map(
            (e) => Query$GetAccountInfo$accountById$managingTeams.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String name;

  final Enum$AccountType type;

  final Enum$AccountStatus accountStatus;

  final String currencyId;

  final List<Query$GetAccountInfo$accountById$productEWC>? productEWC;

  final String? sicCodeId;

  final String prospectId;

  final String originatingCountry;

  final Enum$PaymentMethod preferredPaymentMethod;

  final Enum$VatGroupType customerVatGroupType;

  final Enum$VatGroupType supplierVatGroupType;

  final String? financialCustomerGroupId;

  final String? financialSupplierGroupId;

  final String? parentAccount;

  final String? vihbNumber;

  final List<Query$GetAccountInfo$accountById$linkedPublications>?
  linkedPublications;

  final List<Query$GetAccountInfo$accountById$loyaltyCards> loyaltyCards;

  final List<Query$GetAccountInfo$accountById$prepaymentCards> prepaymentCards;

  final Query$GetAccountInfo$accountById$settings settings;

  final Query$GetAccountInfo$accountById$industryGroups industryGroups;

  final Query$GetAccountInfo$accountById$pricingControl pricingControl;

  final Query$GetAccountInfo$accountById$territory? territory;

  final List<Query$GetAccountInfo$accountById$locations> locations;

  final List<Query$GetAccountInfo$accountById$bankAccounts> bankAccounts;

  final Query$GetAccountInfo$accountById$businessDetail? businessDetail;

  final Query$GetAccountInfo$accountById$celAgreement? celAgreement;

  final Query$GetAccountInfo$accountById$cfcAgreement? cfcAgreement;

  final List<Query$GetAccountInfo$accountById$accountManagers?>?
  accountManagers;

  final Query$GetAccountInfo$accountById$primaryManager primaryManager;

  final List<Query$GetAccountInfo$accountById$accountContacts?>?
  accountContacts;

  final String? industryGroup;

  final List<Query$GetAccountInfo$accountById$accountAddresses?>?
  accountAddresses;

  final String? defaultYardCode;

  final int? amiceCompanyNumber;

  final String? reportingFrequency;

  final String? visitFrequency;

  final List<String> validTerritoryIds;

  final List<String> portalEnabledContacts;

  final Query$GetAccountInfo$accountById$taxSettings? taxSettings;

  final List<Query$GetAccountInfo$accountById$accountSubTypes> accountSubTypes;

  final List<Query$GetAccountInfo$accountById$managingTeams> managingTeams;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = toJson$Enum$AccountType(l$type);
    final l$accountStatus = accountStatus;
    _resultData['accountStatus'] = toJson$Enum$AccountStatus(l$accountStatus);
    final l$currencyId = currencyId;
    _resultData['currencyId'] = l$currencyId;
    final l$productEWC = productEWC;
    _resultData['productEWC'] = l$productEWC?.map((e) => e.toJson()).toList();
    final l$sicCodeId = sicCodeId;
    _resultData['sicCodeId'] = l$sicCodeId;
    final l$prospectId = prospectId;
    _resultData['prospectId'] = l$prospectId;
    final l$originatingCountry = originatingCountry;
    _resultData['originatingCountry'] = l$originatingCountry;
    final l$preferredPaymentMethod = preferredPaymentMethod;
    _resultData['preferredPaymentMethod'] = toJson$Enum$PaymentMethod(
      l$preferredPaymentMethod,
    );
    final l$customerVatGroupType = customerVatGroupType;
    _resultData['customerVatGroupType'] = toJson$Enum$VatGroupType(
      l$customerVatGroupType,
    );
    final l$supplierVatGroupType = supplierVatGroupType;
    _resultData['supplierVatGroupType'] = toJson$Enum$VatGroupType(
      l$supplierVatGroupType,
    );
    final l$financialCustomerGroupId = financialCustomerGroupId;
    _resultData['financialCustomerGroupId'] = l$financialCustomerGroupId;
    final l$financialSupplierGroupId = financialSupplierGroupId;
    _resultData['financialSupplierGroupId'] = l$financialSupplierGroupId;
    final l$parentAccount = parentAccount;
    _resultData['parentAccount'] = l$parentAccount;
    final l$vihbNumber = vihbNumber;
    _resultData['vihbNumber'] = l$vihbNumber;
    final l$linkedPublications = linkedPublications;
    _resultData['linkedPublications'] = l$linkedPublications
        ?.map((e) => e.toJson())
        .toList();
    final l$loyaltyCards = loyaltyCards;
    _resultData['loyaltyCards'] = l$loyaltyCards
        .map((e) => e.toJson())
        .toList();
    final l$prepaymentCards = prepaymentCards;
    _resultData['prepaymentCards'] = l$prepaymentCards
        .map((e) => e.toJson())
        .toList();
    final l$settings = settings;
    _resultData['settings'] = l$settings.toJson();
    final l$industryGroups = industryGroups;
    _resultData['industryGroups'] = l$industryGroups.toJson();
    final l$pricingControl = pricingControl;
    _resultData['pricingControl'] = l$pricingControl.toJson();
    final l$territory = territory;
    _resultData['territory'] = l$territory?.toJson();
    final l$locations = locations;
    _resultData['locations'] = l$locations.map((e) => e.toJson()).toList();
    final l$bankAccounts = bankAccounts;
    _resultData['bankAccounts'] = l$bankAccounts
        .map((e) => e.toJson())
        .toList();
    final l$businessDetail = businessDetail;
    _resultData['businessDetail'] = l$businessDetail?.toJson();
    final l$celAgreement = celAgreement;
    _resultData['celAgreement'] = l$celAgreement?.toJson();
    final l$cfcAgreement = cfcAgreement;
    _resultData['cfcAgreement'] = l$cfcAgreement?.toJson();
    final l$accountManagers = accountManagers;
    _resultData['accountManagers'] = l$accountManagers
        ?.map((e) => e?.toJson())
        .toList();
    final l$primaryManager = primaryManager;
    _resultData['primaryManager'] = l$primaryManager.toJson();
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] = l$accountContacts
        ?.map((e) => e?.toJson())
        .toList();
    final l$industryGroup = industryGroup;
    _resultData['industryGroup'] = l$industryGroup;
    final l$accountAddresses = accountAddresses;
    _resultData['accountAddresses'] = l$accountAddresses
        ?.map((e) => e?.toJson())
        .toList();
    final l$defaultYardCode = defaultYardCode;
    _resultData['defaultYardCode'] = l$defaultYardCode;
    final l$amiceCompanyNumber = amiceCompanyNumber;
    _resultData['amiceCompanyNumber'] = l$amiceCompanyNumber;
    final l$reportingFrequency = reportingFrequency;
    _resultData['reportingFrequency'] = l$reportingFrequency;
    final l$visitFrequency = visitFrequency;
    _resultData['visitFrequency'] = l$visitFrequency;
    final l$validTerritoryIds = validTerritoryIds;
    _resultData['validTerritoryIds'] = l$validTerritoryIds
        .map((e) => e)
        .toList();
    final l$portalEnabledContacts = portalEnabledContacts;
    _resultData['portalEnabledContacts'] = l$portalEnabledContacts
        .map((e) => e)
        .toList();
    final l$taxSettings = taxSettings;
    _resultData['taxSettings'] = l$taxSettings?.toJson();
    final l$accountSubTypes = accountSubTypes;
    _resultData['accountSubTypes'] = l$accountSubTypes
        .map((e) => e.toJson())
        .toList();
    final l$managingTeams = managingTeams;
    _resultData['managingTeams'] = l$managingTeams
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$name = name;
    final l$type = type;
    final l$accountStatus = accountStatus;
    final l$currencyId = currencyId;
    final l$productEWC = productEWC;
    final l$sicCodeId = sicCodeId;
    final l$prospectId = prospectId;
    final l$originatingCountry = originatingCountry;
    final l$preferredPaymentMethod = preferredPaymentMethod;
    final l$customerVatGroupType = customerVatGroupType;
    final l$supplierVatGroupType = supplierVatGroupType;
    final l$financialCustomerGroupId = financialCustomerGroupId;
    final l$financialSupplierGroupId = financialSupplierGroupId;
    final l$parentAccount = parentAccount;
    final l$vihbNumber = vihbNumber;
    final l$linkedPublications = linkedPublications;
    final l$loyaltyCards = loyaltyCards;
    final l$prepaymentCards = prepaymentCards;
    final l$settings = settings;
    final l$industryGroups = industryGroups;
    final l$pricingControl = pricingControl;
    final l$territory = territory;
    final l$locations = locations;
    final l$bankAccounts = bankAccounts;
    final l$businessDetail = businessDetail;
    final l$celAgreement = celAgreement;
    final l$cfcAgreement = cfcAgreement;
    final l$accountManagers = accountManagers;
    final l$primaryManager = primaryManager;
    final l$accountContacts = accountContacts;
    final l$industryGroup = industryGroup;
    final l$accountAddresses = accountAddresses;
    final l$defaultYardCode = defaultYardCode;
    final l$amiceCompanyNumber = amiceCompanyNumber;
    final l$reportingFrequency = reportingFrequency;
    final l$visitFrequency = visitFrequency;
    final l$validTerritoryIds = validTerritoryIds;
    final l$portalEnabledContacts = portalEnabledContacts;
    final l$taxSettings = taxSettings;
    final l$accountSubTypes = accountSubTypes;
    final l$managingTeams = managingTeams;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$name,
      l$type,
      l$accountStatus,
      l$currencyId,
      l$productEWC == null ? null : Object.hashAll(l$productEWC.map((v) => v)),
      l$sicCodeId,
      l$prospectId,
      l$originatingCountry,
      l$preferredPaymentMethod,
      l$customerVatGroupType,
      l$supplierVatGroupType,
      l$financialCustomerGroupId,
      l$financialSupplierGroupId,
      l$parentAccount,
      l$vihbNumber,
      l$linkedPublications == null
          ? null
          : Object.hashAll(l$linkedPublications.map((v) => v)),
      Object.hashAll(l$loyaltyCards.map((v) => v)),
      Object.hashAll(l$prepaymentCards.map((v) => v)),
      l$settings,
      l$industryGroups,
      l$pricingControl,
      l$territory,
      Object.hashAll(l$locations.map((v) => v)),
      Object.hashAll(l$bankAccounts.map((v) => v)),
      l$businessDetail,
      l$celAgreement,
      l$cfcAgreement,
      l$accountManagers == null
          ? null
          : Object.hashAll(l$accountManagers.map((v) => v)),
      l$primaryManager,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$industryGroup,
      l$accountAddresses == null
          ? null
          : Object.hashAll(l$accountAddresses.map((v) => v)),
      l$defaultYardCode,
      l$amiceCompanyNumber,
      l$reportingFrequency,
      l$visitFrequency,
      Object.hashAll(l$validTerritoryIds.map((v) => v)),
      Object.hashAll(l$portalEnabledContacts.map((v) => v)),
      l$taxSettings,
      Object.hashAll(l$accountSubTypes.map((v) => v)),
      Object.hashAll(l$managingTeams.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$accountStatus = accountStatus;
    final lOther$accountStatus = other.accountStatus;
    if (l$accountStatus != lOther$accountStatus) {
      return false;
    }
    final l$currencyId = currencyId;
    final lOther$currencyId = other.currencyId;
    if (l$currencyId != lOther$currencyId) {
      return false;
    }
    final l$productEWC = productEWC;
    final lOther$productEWC = other.productEWC;
    if (l$productEWC != null && lOther$productEWC != null) {
      if (l$productEWC.length != lOther$productEWC.length) {
        return false;
      }
      for (int i = 0; i < l$productEWC.length; i++) {
        final l$productEWC$entry = l$productEWC[i];
        final lOther$productEWC$entry = lOther$productEWC[i];
        if (l$productEWC$entry != lOther$productEWC$entry) {
          return false;
        }
      }
    } else if (l$productEWC != lOther$productEWC) {
      return false;
    }
    final l$sicCodeId = sicCodeId;
    final lOther$sicCodeId = other.sicCodeId;
    if (l$sicCodeId != lOther$sicCodeId) {
      return false;
    }
    final l$prospectId = prospectId;
    final lOther$prospectId = other.prospectId;
    if (l$prospectId != lOther$prospectId) {
      return false;
    }
    final l$originatingCountry = originatingCountry;
    final lOther$originatingCountry = other.originatingCountry;
    if (l$originatingCountry != lOther$originatingCountry) {
      return false;
    }
    final l$preferredPaymentMethod = preferredPaymentMethod;
    final lOther$preferredPaymentMethod = other.preferredPaymentMethod;
    if (l$preferredPaymentMethod != lOther$preferredPaymentMethod) {
      return false;
    }
    final l$customerVatGroupType = customerVatGroupType;
    final lOther$customerVatGroupType = other.customerVatGroupType;
    if (l$customerVatGroupType != lOther$customerVatGroupType) {
      return false;
    }
    final l$supplierVatGroupType = supplierVatGroupType;
    final lOther$supplierVatGroupType = other.supplierVatGroupType;
    if (l$supplierVatGroupType != lOther$supplierVatGroupType) {
      return false;
    }
    final l$financialCustomerGroupId = financialCustomerGroupId;
    final lOther$financialCustomerGroupId = other.financialCustomerGroupId;
    if (l$financialCustomerGroupId != lOther$financialCustomerGroupId) {
      return false;
    }
    final l$financialSupplierGroupId = financialSupplierGroupId;
    final lOther$financialSupplierGroupId = other.financialSupplierGroupId;
    if (l$financialSupplierGroupId != lOther$financialSupplierGroupId) {
      return false;
    }
    final l$parentAccount = parentAccount;
    final lOther$parentAccount = other.parentAccount;
    if (l$parentAccount != lOther$parentAccount) {
      return false;
    }
    final l$vihbNumber = vihbNumber;
    final lOther$vihbNumber = other.vihbNumber;
    if (l$vihbNumber != lOther$vihbNumber) {
      return false;
    }
    final l$linkedPublications = linkedPublications;
    final lOther$linkedPublications = other.linkedPublications;
    if (l$linkedPublications != null && lOther$linkedPublications != null) {
      if (l$linkedPublications.length != lOther$linkedPublications.length) {
        return false;
      }
      for (int i = 0; i < l$linkedPublications.length; i++) {
        final l$linkedPublications$entry = l$linkedPublications[i];
        final lOther$linkedPublications$entry = lOther$linkedPublications[i];
        if (l$linkedPublications$entry != lOther$linkedPublications$entry) {
          return false;
        }
      }
    } else if (l$linkedPublications != lOther$linkedPublications) {
      return false;
    }
    final l$loyaltyCards = loyaltyCards;
    final lOther$loyaltyCards = other.loyaltyCards;
    if (l$loyaltyCards.length != lOther$loyaltyCards.length) {
      return false;
    }
    for (int i = 0; i < l$loyaltyCards.length; i++) {
      final l$loyaltyCards$entry = l$loyaltyCards[i];
      final lOther$loyaltyCards$entry = lOther$loyaltyCards[i];
      if (l$loyaltyCards$entry != lOther$loyaltyCards$entry) {
        return false;
      }
    }
    final l$prepaymentCards = prepaymentCards;
    final lOther$prepaymentCards = other.prepaymentCards;
    if (l$prepaymentCards.length != lOther$prepaymentCards.length) {
      return false;
    }
    for (int i = 0; i < l$prepaymentCards.length; i++) {
      final l$prepaymentCards$entry = l$prepaymentCards[i];
      final lOther$prepaymentCards$entry = lOther$prepaymentCards[i];
      if (l$prepaymentCards$entry != lOther$prepaymentCards$entry) {
        return false;
      }
    }
    final l$settings = settings;
    final lOther$settings = other.settings;
    if (l$settings != lOther$settings) {
      return false;
    }
    final l$industryGroups = industryGroups;
    final lOther$industryGroups = other.industryGroups;
    if (l$industryGroups != lOther$industryGroups) {
      return false;
    }
    final l$pricingControl = pricingControl;
    final lOther$pricingControl = other.pricingControl;
    if (l$pricingControl != lOther$pricingControl) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
      return false;
    }
    final l$locations = locations;
    final lOther$locations = other.locations;
    if (l$locations.length != lOther$locations.length) {
      return false;
    }
    for (int i = 0; i < l$locations.length; i++) {
      final l$locations$entry = l$locations[i];
      final lOther$locations$entry = lOther$locations[i];
      if (l$locations$entry != lOther$locations$entry) {
        return false;
      }
    }
    final l$bankAccounts = bankAccounts;
    final lOther$bankAccounts = other.bankAccounts;
    if (l$bankAccounts.length != lOther$bankAccounts.length) {
      return false;
    }
    for (int i = 0; i < l$bankAccounts.length; i++) {
      final l$bankAccounts$entry = l$bankAccounts[i];
      final lOther$bankAccounts$entry = lOther$bankAccounts[i];
      if (l$bankAccounts$entry != lOther$bankAccounts$entry) {
        return false;
      }
    }
    final l$businessDetail = businessDetail;
    final lOther$businessDetail = other.businessDetail;
    if (l$businessDetail != lOther$businessDetail) {
      return false;
    }
    final l$celAgreement = celAgreement;
    final lOther$celAgreement = other.celAgreement;
    if (l$celAgreement != lOther$celAgreement) {
      return false;
    }
    final l$cfcAgreement = cfcAgreement;
    final lOther$cfcAgreement = other.cfcAgreement;
    if (l$cfcAgreement != lOther$cfcAgreement) {
      return false;
    }
    final l$accountManagers = accountManagers;
    final lOther$accountManagers = other.accountManagers;
    if (l$accountManagers != null && lOther$accountManagers != null) {
      if (l$accountManagers.length != lOther$accountManagers.length) {
        return false;
      }
      for (int i = 0; i < l$accountManagers.length; i++) {
        final l$accountManagers$entry = l$accountManagers[i];
        final lOther$accountManagers$entry = lOther$accountManagers[i];
        if (l$accountManagers$entry != lOther$accountManagers$entry) {
          return false;
        }
      }
    } else if (l$accountManagers != lOther$accountManagers) {
      return false;
    }
    final l$primaryManager = primaryManager;
    final lOther$primaryManager = other.primaryManager;
    if (l$primaryManager != lOther$primaryManager) {
      return false;
    }
    final l$accountContacts = accountContacts;
    final lOther$accountContacts = other.accountContacts;
    if (l$accountContacts != null && lOther$accountContacts != null) {
      if (l$accountContacts.length != lOther$accountContacts.length) {
        return false;
      }
      for (int i = 0; i < l$accountContacts.length; i++) {
        final l$accountContacts$entry = l$accountContacts[i];
        final lOther$accountContacts$entry = lOther$accountContacts[i];
        if (l$accountContacts$entry != lOther$accountContacts$entry) {
          return false;
        }
      }
    } else if (l$accountContacts != lOther$accountContacts) {
      return false;
    }
    final l$industryGroup = industryGroup;
    final lOther$industryGroup = other.industryGroup;
    if (l$industryGroup != lOther$industryGroup) {
      return false;
    }
    final l$accountAddresses = accountAddresses;
    final lOther$accountAddresses = other.accountAddresses;
    if (l$accountAddresses != null && lOther$accountAddresses != null) {
      if (l$accountAddresses.length != lOther$accountAddresses.length) {
        return false;
      }
      for (int i = 0; i < l$accountAddresses.length; i++) {
        final l$accountAddresses$entry = l$accountAddresses[i];
        final lOther$accountAddresses$entry = lOther$accountAddresses[i];
        if (l$accountAddresses$entry != lOther$accountAddresses$entry) {
          return false;
        }
      }
    } else if (l$accountAddresses != lOther$accountAddresses) {
      return false;
    }
    final l$defaultYardCode = defaultYardCode;
    final lOther$defaultYardCode = other.defaultYardCode;
    if (l$defaultYardCode != lOther$defaultYardCode) {
      return false;
    }
    final l$amiceCompanyNumber = amiceCompanyNumber;
    final lOther$amiceCompanyNumber = other.amiceCompanyNumber;
    if (l$amiceCompanyNumber != lOther$amiceCompanyNumber) {
      return false;
    }
    final l$reportingFrequency = reportingFrequency;
    final lOther$reportingFrequency = other.reportingFrequency;
    if (l$reportingFrequency != lOther$reportingFrequency) {
      return false;
    }
    final l$visitFrequency = visitFrequency;
    final lOther$visitFrequency = other.visitFrequency;
    if (l$visitFrequency != lOther$visitFrequency) {
      return false;
    }
    final l$validTerritoryIds = validTerritoryIds;
    final lOther$validTerritoryIds = other.validTerritoryIds;
    if (l$validTerritoryIds.length != lOther$validTerritoryIds.length) {
      return false;
    }
    for (int i = 0; i < l$validTerritoryIds.length; i++) {
      final l$validTerritoryIds$entry = l$validTerritoryIds[i];
      final lOther$validTerritoryIds$entry = lOther$validTerritoryIds[i];
      if (l$validTerritoryIds$entry != lOther$validTerritoryIds$entry) {
        return false;
      }
    }
    final l$portalEnabledContacts = portalEnabledContacts;
    final lOther$portalEnabledContacts = other.portalEnabledContacts;
    if (l$portalEnabledContacts.length != lOther$portalEnabledContacts.length) {
      return false;
    }
    for (int i = 0; i < l$portalEnabledContacts.length; i++) {
      final l$portalEnabledContacts$entry = l$portalEnabledContacts[i];
      final lOther$portalEnabledContacts$entry =
          lOther$portalEnabledContacts[i];
      if (l$portalEnabledContacts$entry != lOther$portalEnabledContacts$entry) {
        return false;
      }
    }
    final l$taxSettings = taxSettings;
    final lOther$taxSettings = other.taxSettings;
    if (l$taxSettings != lOther$taxSettings) {
      return false;
    }
    final l$accountSubTypes = accountSubTypes;
    final lOther$accountSubTypes = other.accountSubTypes;
    if (l$accountSubTypes.length != lOther$accountSubTypes.length) {
      return false;
    }
    for (int i = 0; i < l$accountSubTypes.length; i++) {
      final l$accountSubTypes$entry = l$accountSubTypes[i];
      final lOther$accountSubTypes$entry = lOther$accountSubTypes[i];
      if (l$accountSubTypes$entry != lOther$accountSubTypes$entry) {
        return false;
      }
    }
    final l$managingTeams = managingTeams;
    final lOther$managingTeams = other.managingTeams;
    if (l$managingTeams.length != lOther$managingTeams.length) {
      return false;
    }
    for (int i = 0; i < l$managingTeams.length; i++) {
      final l$managingTeams$entry = l$managingTeams[i];
      final lOther$managingTeams$entry = lOther$managingTeams[i];
      if (l$managingTeams$entry != lOther$managingTeams$entry) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById
    on Query$GetAccountInfo$accountById {
  CopyWith$Query$GetAccountInfo$accountById<Query$GetAccountInfo$accountById>
  get copyWith => CopyWith$Query$GetAccountInfo$accountById(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById(
    Query$GetAccountInfo$accountById instance,
    TRes Function(Query$GetAccountInfo$accountById) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById;

  factory CopyWith$Query$GetAccountInfo$accountById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountInfo$accountById;

  TRes call({
    String? id,
    String? code,
    String? name,
    Enum$AccountType? type,
    Enum$AccountStatus? accountStatus,
    String? currencyId,
    List<Query$GetAccountInfo$accountById$productEWC>? productEWC,
    String? sicCodeId,
    String? prospectId,
    String? originatingCountry,
    Enum$PaymentMethod? preferredPaymentMethod,
    Enum$VatGroupType? customerVatGroupType,
    Enum$VatGroupType? supplierVatGroupType,
    String? financialCustomerGroupId,
    String? financialSupplierGroupId,
    String? parentAccount,
    String? vihbNumber,
    List<Query$GetAccountInfo$accountById$linkedPublications>?
    linkedPublications,
    List<Query$GetAccountInfo$accountById$loyaltyCards>? loyaltyCards,
    List<Query$GetAccountInfo$accountById$prepaymentCards>? prepaymentCards,
    Query$GetAccountInfo$accountById$settings? settings,
    Query$GetAccountInfo$accountById$industryGroups? industryGroups,
    Query$GetAccountInfo$accountById$pricingControl? pricingControl,
    Query$GetAccountInfo$accountById$territory? territory,
    List<Query$GetAccountInfo$accountById$locations>? locations,
    List<Query$GetAccountInfo$accountById$bankAccounts>? bankAccounts,
    Query$GetAccountInfo$accountById$businessDetail? businessDetail,
    Query$GetAccountInfo$accountById$celAgreement? celAgreement,
    Query$GetAccountInfo$accountById$cfcAgreement? cfcAgreement,
    List<Query$GetAccountInfo$accountById$accountManagers?>? accountManagers,
    Query$GetAccountInfo$accountById$primaryManager? primaryManager,
    List<Query$GetAccountInfo$accountById$accountContacts?>? accountContacts,
    String? industryGroup,
    List<Query$GetAccountInfo$accountById$accountAddresses?>? accountAddresses,
    String? defaultYardCode,
    int? amiceCompanyNumber,
    String? reportingFrequency,
    String? visitFrequency,
    List<String>? validTerritoryIds,
    List<String>? portalEnabledContacts,
    Query$GetAccountInfo$accountById$taxSettings? taxSettings,
    List<Query$GetAccountInfo$accountById$accountSubTypes>? accountSubTypes,
    List<Query$GetAccountInfo$accountById$managingTeams>? managingTeams,
    String? $__typename,
  });
  TRes productEWC(
    Iterable<Query$GetAccountInfo$accountById$productEWC>? Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$productEWC<
          Query$GetAccountInfo$accountById$productEWC
        >
      >?,
    )
    _fn,
  );
  TRes linkedPublications(
    Iterable<Query$GetAccountInfo$accountById$linkedPublications>? Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications<
          Query$GetAccountInfo$accountById$linkedPublications
        >
      >?,
    )
    _fn,
  );
  TRes loyaltyCards(
    Iterable<Query$GetAccountInfo$accountById$loyaltyCards> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$loyaltyCards<
          Query$GetAccountInfo$accountById$loyaltyCards
        >
      >,
    )
    _fn,
  );
  TRes prepaymentCards(
    Iterable<Query$GetAccountInfo$accountById$prepaymentCards> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$prepaymentCards<
          Query$GetAccountInfo$accountById$prepaymentCards
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetAccountInfo$accountById$settings<TRes> get settings;
  CopyWith$Query$GetAccountInfo$accountById$industryGroups<TRes>
  get industryGroups;
  CopyWith$Query$GetAccountInfo$accountById$pricingControl<TRes>
  get pricingControl;
  CopyWith$Query$GetAccountInfo$accountById$territory<TRes> get territory;
  TRes locations(
    Iterable<Query$GetAccountInfo$accountById$locations> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$locations<
          Query$GetAccountInfo$accountById$locations
        >
      >,
    )
    _fn,
  );
  TRes bankAccounts(
    Iterable<Query$GetAccountInfo$accountById$bankAccounts> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$bankAccounts<
          Query$GetAccountInfo$accountById$bankAccounts
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetAccountInfo$accountById$businessDetail<TRes>
  get businessDetail;
  CopyWith$Query$GetAccountInfo$accountById$celAgreement<TRes> get celAgreement;
  CopyWith$Query$GetAccountInfo$accountById$cfcAgreement<TRes> get cfcAgreement;
  TRes accountManagers(
    Iterable<Query$GetAccountInfo$accountById$accountManagers?>? Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountManagers<
          Query$GetAccountInfo$accountById$accountManagers
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Query$GetAccountInfo$accountById$primaryManager<TRes>
  get primaryManager;
  TRes accountContacts(
    Iterable<Query$GetAccountInfo$accountById$accountContacts?>? Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountContacts<
          Query$GetAccountInfo$accountById$accountContacts
        >?
      >?,
    )
    _fn,
  );
  TRes accountAddresses(
    Iterable<Query$GetAccountInfo$accountById$accountAddresses?>? Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountAddresses<
          Query$GetAccountInfo$accountById$accountAddresses
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Query$GetAccountInfo$accountById$taxSettings<TRes> get taxSettings;
  TRes accountSubTypes(
    Iterable<Query$GetAccountInfo$accountById$accountSubTypes> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountSubTypes<
          Query$GetAccountInfo$accountById$accountSubTypes
        >
      >,
    )
    _fn,
  );
  TRes managingTeams(
    Iterable<Query$GetAccountInfo$accountById$managingTeams> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$managingTeams<
          Query$GetAccountInfo$accountById$managingTeams
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccountInfo$accountById<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById(this._instance, this._then);

  final Query$GetAccountInfo$accountById _instance;

  final TRes Function(Query$GetAccountInfo$accountById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? accountStatus = _undefined,
    Object? currencyId = _undefined,
    Object? productEWC = _undefined,
    Object? sicCodeId = _undefined,
    Object? prospectId = _undefined,
    Object? originatingCountry = _undefined,
    Object? preferredPaymentMethod = _undefined,
    Object? customerVatGroupType = _undefined,
    Object? supplierVatGroupType = _undefined,
    Object? financialCustomerGroupId = _undefined,
    Object? financialSupplierGroupId = _undefined,
    Object? parentAccount = _undefined,
    Object? vihbNumber = _undefined,
    Object? linkedPublications = _undefined,
    Object? loyaltyCards = _undefined,
    Object? prepaymentCards = _undefined,
    Object? settings = _undefined,
    Object? industryGroups = _undefined,
    Object? pricingControl = _undefined,
    Object? territory = _undefined,
    Object? locations = _undefined,
    Object? bankAccounts = _undefined,
    Object? businessDetail = _undefined,
    Object? celAgreement = _undefined,
    Object? cfcAgreement = _undefined,
    Object? accountManagers = _undefined,
    Object? primaryManager = _undefined,
    Object? accountContacts = _undefined,
    Object? industryGroup = _undefined,
    Object? accountAddresses = _undefined,
    Object? defaultYardCode = _undefined,
    Object? amiceCompanyNumber = _undefined,
    Object? reportingFrequency = _undefined,
    Object? visitFrequency = _undefined,
    Object? validTerritoryIds = _undefined,
    Object? portalEnabledContacts = _undefined,
    Object? taxSettings = _undefined,
    Object? accountSubTypes = _undefined,
    Object? managingTeams = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$AccountType),
      accountStatus: accountStatus == _undefined || accountStatus == null
          ? _instance.accountStatus
          : (accountStatus as Enum$AccountStatus),
      currencyId: currencyId == _undefined || currencyId == null
          ? _instance.currencyId
          : (currencyId as String),
      productEWC: productEWC == _undefined
          ? _instance.productEWC
          : (productEWC as List<Query$GetAccountInfo$accountById$productEWC>?),
      sicCodeId: sicCodeId == _undefined
          ? _instance.sicCodeId
          : (sicCodeId as String?),
      prospectId: prospectId == _undefined || prospectId == null
          ? _instance.prospectId
          : (prospectId as String),
      originatingCountry:
          originatingCountry == _undefined || originatingCountry == null
          ? _instance.originatingCountry
          : (originatingCountry as String),
      preferredPaymentMethod:
          preferredPaymentMethod == _undefined || preferredPaymentMethod == null
          ? _instance.preferredPaymentMethod
          : (preferredPaymentMethod as Enum$PaymentMethod),
      customerVatGroupType:
          customerVatGroupType == _undefined || customerVatGroupType == null
          ? _instance.customerVatGroupType
          : (customerVatGroupType as Enum$VatGroupType),
      supplierVatGroupType:
          supplierVatGroupType == _undefined || supplierVatGroupType == null
          ? _instance.supplierVatGroupType
          : (supplierVatGroupType as Enum$VatGroupType),
      financialCustomerGroupId: financialCustomerGroupId == _undefined
          ? _instance.financialCustomerGroupId
          : (financialCustomerGroupId as String?),
      financialSupplierGroupId: financialSupplierGroupId == _undefined
          ? _instance.financialSupplierGroupId
          : (financialSupplierGroupId as String?),
      parentAccount: parentAccount == _undefined
          ? _instance.parentAccount
          : (parentAccount as String?),
      vihbNumber: vihbNumber == _undefined
          ? _instance.vihbNumber
          : (vihbNumber as String?),
      linkedPublications: linkedPublications == _undefined
          ? _instance.linkedPublications
          : (linkedPublications
                as List<Query$GetAccountInfo$accountById$linkedPublications>?),
      loyaltyCards: loyaltyCards == _undefined || loyaltyCards == null
          ? _instance.loyaltyCards
          : (loyaltyCards
                as List<Query$GetAccountInfo$accountById$loyaltyCards>),
      prepaymentCards: prepaymentCards == _undefined || prepaymentCards == null
          ? _instance.prepaymentCards
          : (prepaymentCards
                as List<Query$GetAccountInfo$accountById$prepaymentCards>),
      settings: settings == _undefined || settings == null
          ? _instance.settings
          : (settings as Query$GetAccountInfo$accountById$settings),
      industryGroups: industryGroups == _undefined || industryGroups == null
          ? _instance.industryGroups
          : (industryGroups as Query$GetAccountInfo$accountById$industryGroups),
      pricingControl: pricingControl == _undefined || pricingControl == null
          ? _instance.pricingControl
          : (pricingControl as Query$GetAccountInfo$accountById$pricingControl),
      territory: territory == _undefined
          ? _instance.territory
          : (territory as Query$GetAccountInfo$accountById$territory?),
      locations: locations == _undefined || locations == null
          ? _instance.locations
          : (locations as List<Query$GetAccountInfo$accountById$locations>),
      bankAccounts: bankAccounts == _undefined || bankAccounts == null
          ? _instance.bankAccounts
          : (bankAccounts
                as List<Query$GetAccountInfo$accountById$bankAccounts>),
      businessDetail: businessDetail == _undefined
          ? _instance.businessDetail
          : (businessDetail
                as Query$GetAccountInfo$accountById$businessDetail?),
      celAgreement: celAgreement == _undefined
          ? _instance.celAgreement
          : (celAgreement as Query$GetAccountInfo$accountById$celAgreement?),
      cfcAgreement: cfcAgreement == _undefined
          ? _instance.cfcAgreement
          : (cfcAgreement as Query$GetAccountInfo$accountById$cfcAgreement?),
      accountManagers: accountManagers == _undefined
          ? _instance.accountManagers
          : (accountManagers
                as List<Query$GetAccountInfo$accountById$accountManagers?>?),
      primaryManager: primaryManager == _undefined || primaryManager == null
          ? _instance.primaryManager
          : (primaryManager as Query$GetAccountInfo$accountById$primaryManager),
      accountContacts: accountContacts == _undefined
          ? _instance.accountContacts
          : (accountContacts
                as List<Query$GetAccountInfo$accountById$accountContacts?>?),
      industryGroup: industryGroup == _undefined
          ? _instance.industryGroup
          : (industryGroup as String?),
      accountAddresses: accountAddresses == _undefined
          ? _instance.accountAddresses
          : (accountAddresses
                as List<Query$GetAccountInfo$accountById$accountAddresses?>?),
      defaultYardCode: defaultYardCode == _undefined
          ? _instance.defaultYardCode
          : (defaultYardCode as String?),
      amiceCompanyNumber: amiceCompanyNumber == _undefined
          ? _instance.amiceCompanyNumber
          : (amiceCompanyNumber as int?),
      reportingFrequency: reportingFrequency == _undefined
          ? _instance.reportingFrequency
          : (reportingFrequency as String?),
      visitFrequency: visitFrequency == _undefined
          ? _instance.visitFrequency
          : (visitFrequency as String?),
      validTerritoryIds:
          validTerritoryIds == _undefined || validTerritoryIds == null
          ? _instance.validTerritoryIds
          : (validTerritoryIds as List<String>),
      portalEnabledContacts:
          portalEnabledContacts == _undefined || portalEnabledContacts == null
          ? _instance.portalEnabledContacts
          : (portalEnabledContacts as List<String>),
      taxSettings: taxSettings == _undefined
          ? _instance.taxSettings
          : (taxSettings as Query$GetAccountInfo$accountById$taxSettings?),
      accountSubTypes: accountSubTypes == _undefined || accountSubTypes == null
          ? _instance.accountSubTypes
          : (accountSubTypes
                as List<Query$GetAccountInfo$accountById$accountSubTypes>),
      managingTeams: managingTeams == _undefined || managingTeams == null
          ? _instance.managingTeams
          : (managingTeams
                as List<Query$GetAccountInfo$accountById$managingTeams>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes productEWC(
    Iterable<Query$GetAccountInfo$accountById$productEWC>? Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$productEWC<
          Query$GetAccountInfo$accountById$productEWC
        >
      >?,
    )
    _fn,
  ) => call(
    productEWC: _fn(
      _instance.productEWC?.map(
        (e) =>
            CopyWith$Query$GetAccountInfo$accountById$productEWC(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes linkedPublications(
    Iterable<Query$GetAccountInfo$accountById$linkedPublications>? Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications<
          Query$GetAccountInfo$accountById$linkedPublications
        >
      >?,
    )
    _fn,
  ) => call(
    linkedPublications: _fn(
      _instance.linkedPublications?.map(
        (e) => CopyWith$Query$GetAccountInfo$accountById$linkedPublications(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  TRes loyaltyCards(
    Iterable<Query$GetAccountInfo$accountById$loyaltyCards> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$loyaltyCards<
          Query$GetAccountInfo$accountById$loyaltyCards
        >
      >,
    )
    _fn,
  ) => call(
    loyaltyCards: _fn(
      _instance.loyaltyCards.map(
        (e) =>
            CopyWith$Query$GetAccountInfo$accountById$loyaltyCards(e, (i) => i),
      ),
    ).toList(),
  );

  TRes prepaymentCards(
    Iterable<Query$GetAccountInfo$accountById$prepaymentCards> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$prepaymentCards<
          Query$GetAccountInfo$accountById$prepaymentCards
        >
      >,
    )
    _fn,
  ) => call(
    prepaymentCards: _fn(
      _instance.prepaymentCards.map(
        (e) => CopyWith$Query$GetAccountInfo$accountById$prepaymentCards(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetAccountInfo$accountById$settings<TRes> get settings {
    final local$settings = _instance.settings;
    return CopyWith$Query$GetAccountInfo$accountById$settings(
      local$settings,
      (e) => call(settings: e),
    );
  }

  CopyWith$Query$GetAccountInfo$accountById$industryGroups<TRes>
  get industryGroups {
    final local$industryGroups = _instance.industryGroups;
    return CopyWith$Query$GetAccountInfo$accountById$industryGroups(
      local$industryGroups,
      (e) => call(industryGroups: e),
    );
  }

  CopyWith$Query$GetAccountInfo$accountById$pricingControl<TRes>
  get pricingControl {
    final local$pricingControl = _instance.pricingControl;
    return CopyWith$Query$GetAccountInfo$accountById$pricingControl(
      local$pricingControl,
      (e) => call(pricingControl: e),
    );
  }

  CopyWith$Query$GetAccountInfo$accountById$territory<TRes> get territory {
    final local$territory = _instance.territory;
    return local$territory == null
        ? CopyWith$Query$GetAccountInfo$accountById$territory.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$territory(
            local$territory,
            (e) => call(territory: e),
          );
  }

  TRes locations(
    Iterable<Query$GetAccountInfo$accountById$locations> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$locations<
          Query$GetAccountInfo$accountById$locations
        >
      >,
    )
    _fn,
  ) => call(
    locations: _fn(
      _instance.locations.map(
        (e) => CopyWith$Query$GetAccountInfo$accountById$locations(e, (i) => i),
      ),
    ).toList(),
  );

  TRes bankAccounts(
    Iterable<Query$GetAccountInfo$accountById$bankAccounts> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$bankAccounts<
          Query$GetAccountInfo$accountById$bankAccounts
        >
      >,
    )
    _fn,
  ) => call(
    bankAccounts: _fn(
      _instance.bankAccounts.map(
        (e) =>
            CopyWith$Query$GetAccountInfo$accountById$bankAccounts(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$GetAccountInfo$accountById$businessDetail<TRes>
  get businessDetail {
    final local$businessDetail = _instance.businessDetail;
    return local$businessDetail == null
        ? CopyWith$Query$GetAccountInfo$accountById$businessDetail.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$businessDetail(
            local$businessDetail,
            (e) => call(businessDetail: e),
          );
  }

  CopyWith$Query$GetAccountInfo$accountById$celAgreement<TRes>
  get celAgreement {
    final local$celAgreement = _instance.celAgreement;
    return local$celAgreement == null
        ? CopyWith$Query$GetAccountInfo$accountById$celAgreement.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$celAgreement(
            local$celAgreement,
            (e) => call(celAgreement: e),
          );
  }

  CopyWith$Query$GetAccountInfo$accountById$cfcAgreement<TRes>
  get cfcAgreement {
    final local$cfcAgreement = _instance.cfcAgreement;
    return local$cfcAgreement == null
        ? CopyWith$Query$GetAccountInfo$accountById$cfcAgreement.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$cfcAgreement(
            local$cfcAgreement,
            (e) => call(cfcAgreement: e),
          );
  }

  TRes accountManagers(
    Iterable<Query$GetAccountInfo$accountById$accountManagers?>? Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountManagers<
          Query$GetAccountInfo$accountById$accountManagers
        >?
      >?,
    )
    _fn,
  ) => call(
    accountManagers: _fn(
      _instance.accountManagers?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAccountInfo$accountById$accountManagers(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  CopyWith$Query$GetAccountInfo$accountById$primaryManager<TRes>
  get primaryManager {
    final local$primaryManager = _instance.primaryManager;
    return CopyWith$Query$GetAccountInfo$accountById$primaryManager(
      local$primaryManager,
      (e) => call(primaryManager: e),
    );
  }

  TRes accountContacts(
    Iterable<Query$GetAccountInfo$accountById$accountContacts?>? Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountContacts<
          Query$GetAccountInfo$accountById$accountContacts
        >?
      >?,
    )
    _fn,
  ) => call(
    accountContacts: _fn(
      _instance.accountContacts?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAccountInfo$accountById$accountContacts(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  TRes accountAddresses(
    Iterable<Query$GetAccountInfo$accountById$accountAddresses?>? Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountAddresses<
          Query$GetAccountInfo$accountById$accountAddresses
        >?
      >?,
    )
    _fn,
  ) => call(
    accountAddresses: _fn(
      _instance.accountAddresses?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAccountInfo$accountById$accountAddresses(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  CopyWith$Query$GetAccountInfo$accountById$taxSettings<TRes> get taxSettings {
    final local$taxSettings = _instance.taxSettings;
    return local$taxSettings == null
        ? CopyWith$Query$GetAccountInfo$accountById$taxSettings.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$taxSettings(
            local$taxSettings,
            (e) => call(taxSettings: e),
          );
  }

  TRes accountSubTypes(
    Iterable<Query$GetAccountInfo$accountById$accountSubTypes> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountSubTypes<
          Query$GetAccountInfo$accountById$accountSubTypes
        >
      >,
    )
    _fn,
  ) => call(
    accountSubTypes: _fn(
      _instance.accountSubTypes.map(
        (e) => CopyWith$Query$GetAccountInfo$accountById$accountSubTypes(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes managingTeams(
    Iterable<Query$GetAccountInfo$accountById$managingTeams> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$managingTeams<
          Query$GetAccountInfo$accountById$managingTeams
        >
      >,
    )
    _fn,
  ) => call(
    managingTeams: _fn(
      _instance.managingTeams.map(
        (e) => CopyWith$Query$GetAccountInfo$accountById$managingTeams(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? name,
    Enum$AccountType? type,
    Enum$AccountStatus? accountStatus,
    String? currencyId,
    List<Query$GetAccountInfo$accountById$productEWC>? productEWC,
    String? sicCodeId,
    String? prospectId,
    String? originatingCountry,
    Enum$PaymentMethod? preferredPaymentMethod,
    Enum$VatGroupType? customerVatGroupType,
    Enum$VatGroupType? supplierVatGroupType,
    String? financialCustomerGroupId,
    String? financialSupplierGroupId,
    String? parentAccount,
    String? vihbNumber,
    List<Query$GetAccountInfo$accountById$linkedPublications>?
    linkedPublications,
    List<Query$GetAccountInfo$accountById$loyaltyCards>? loyaltyCards,
    List<Query$GetAccountInfo$accountById$prepaymentCards>? prepaymentCards,
    Query$GetAccountInfo$accountById$settings? settings,
    Query$GetAccountInfo$accountById$industryGroups? industryGroups,
    Query$GetAccountInfo$accountById$pricingControl? pricingControl,
    Query$GetAccountInfo$accountById$territory? territory,
    List<Query$GetAccountInfo$accountById$locations>? locations,
    List<Query$GetAccountInfo$accountById$bankAccounts>? bankAccounts,
    Query$GetAccountInfo$accountById$businessDetail? businessDetail,
    Query$GetAccountInfo$accountById$celAgreement? celAgreement,
    Query$GetAccountInfo$accountById$cfcAgreement? cfcAgreement,
    List<Query$GetAccountInfo$accountById$accountManagers?>? accountManagers,
    Query$GetAccountInfo$accountById$primaryManager? primaryManager,
    List<Query$GetAccountInfo$accountById$accountContacts?>? accountContacts,
    String? industryGroup,
    List<Query$GetAccountInfo$accountById$accountAddresses?>? accountAddresses,
    String? defaultYardCode,
    int? amiceCompanyNumber,
    String? reportingFrequency,
    String? visitFrequency,
    List<String>? validTerritoryIds,
    List<String>? portalEnabledContacts,
    Query$GetAccountInfo$accountById$taxSettings? taxSettings,
    List<Query$GetAccountInfo$accountById$accountSubTypes>? accountSubTypes,
    List<Query$GetAccountInfo$accountById$managingTeams>? managingTeams,
    String? $__typename,
  }) => _res;

  productEWC(_fn) => _res;

  linkedPublications(_fn) => _res;

  loyaltyCards(_fn) => _res;

  prepaymentCards(_fn) => _res;

  CopyWith$Query$GetAccountInfo$accountById$settings<TRes> get settings =>
      CopyWith$Query$GetAccountInfo$accountById$settings.stub(_res);

  CopyWith$Query$GetAccountInfo$accountById$industryGroups<TRes>
  get industryGroups =>
      CopyWith$Query$GetAccountInfo$accountById$industryGroups.stub(_res);

  CopyWith$Query$GetAccountInfo$accountById$pricingControl<TRes>
  get pricingControl =>
      CopyWith$Query$GetAccountInfo$accountById$pricingControl.stub(_res);

  CopyWith$Query$GetAccountInfo$accountById$territory<TRes> get territory =>
      CopyWith$Query$GetAccountInfo$accountById$territory.stub(_res);

  locations(_fn) => _res;

  bankAccounts(_fn) => _res;

  CopyWith$Query$GetAccountInfo$accountById$businessDetail<TRes>
  get businessDetail =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail.stub(_res);

  CopyWith$Query$GetAccountInfo$accountById$celAgreement<TRes>
  get celAgreement =>
      CopyWith$Query$GetAccountInfo$accountById$celAgreement.stub(_res);

  CopyWith$Query$GetAccountInfo$accountById$cfcAgreement<TRes>
  get cfcAgreement =>
      CopyWith$Query$GetAccountInfo$accountById$cfcAgreement.stub(_res);

  accountManagers(_fn) => _res;

  CopyWith$Query$GetAccountInfo$accountById$primaryManager<TRes>
  get primaryManager =>
      CopyWith$Query$GetAccountInfo$accountById$primaryManager.stub(_res);

  accountContacts(_fn) => _res;

  accountAddresses(_fn) => _res;

  CopyWith$Query$GetAccountInfo$accountById$taxSettings<TRes> get taxSettings =>
      CopyWith$Query$GetAccountInfo$accountById$taxSettings.stub(_res);

  accountSubTypes(_fn) => _res;

  managingTeams(_fn) => _res;
}

class Query$GetAccountInfo$accountById$productEWC {
  Query$GetAccountInfo$accountById$productEWC({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfProductAndString',
  });

  factory Query$GetAccountInfo$accountById$productEWC.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$productEWC(
      key: Query$GetAccountInfo$accountById$productEWC$key.fromJson(
        (l$key as Map<String, dynamic>),
      ),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountInfo$accountById$productEWC$key key;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key.toJson();
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$productEWC ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$productEWC
    on Query$GetAccountInfo$accountById$productEWC {
  CopyWith$Query$GetAccountInfo$accountById$productEWC<
    Query$GetAccountInfo$accountById$productEWC
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$productEWC(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$productEWC<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$productEWC(
    Query$GetAccountInfo$accountById$productEWC instance,
    TRes Function(Query$GetAccountInfo$accountById$productEWC) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$productEWC;

  factory CopyWith$Query$GetAccountInfo$accountById$productEWC.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountInfo$accountById$productEWC;

  TRes call({
    Query$GetAccountInfo$accountById$productEWC$key? key,
    String? value,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$productEWC$key<TRes> get key;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$productEWC<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$productEWC<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$productEWC(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$productEWC _instance;

  final TRes Function(Query$GetAccountInfo$accountById$productEWC) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$productEWC(
      key: key == _undefined || key == null
          ? _instance.key
          : (key as Query$GetAccountInfo$accountById$productEWC$key),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$productEWC$key<TRes> get key {
    final local$key = _instance.key;
    return CopyWith$Query$GetAccountInfo$accountById$productEWC$key(
      local$key,
      (e) => call(key: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$productEWC<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$productEWC<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$productEWC(this._res);

  TRes _res;

  call({
    Query$GetAccountInfo$accountById$productEWC$key? key,
    String? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$productEWC$key<TRes> get key =>
      CopyWith$Query$GetAccountInfo$accountById$productEWC$key.stub(_res);
}

class Query$GetAccountInfo$accountById$productEWC$key {
  Query$GetAccountInfo$accountById$productEWC$key({
    required this.code,
    required this.id,
    required this.description,
    this.$__typename = 'Product',
  });

  factory Query$GetAccountInfo$accountById$productEWC$key.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$id = json['id'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$productEWC$key(
      code: (l$code as String),
      id: (l$id as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String id;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$id = id;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$id, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$productEWC$key ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$productEWC$key
    on Query$GetAccountInfo$accountById$productEWC$key {
  CopyWith$Query$GetAccountInfo$accountById$productEWC$key<
    Query$GetAccountInfo$accountById$productEWC$key
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$productEWC$key(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$productEWC$key<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$productEWC$key(
    Query$GetAccountInfo$accountById$productEWC$key instance,
    TRes Function(Query$GetAccountInfo$accountById$productEWC$key) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$productEWC$key;

  factory CopyWith$Query$GetAccountInfo$accountById$productEWC$key.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$productEWC$key;

  TRes call({
    String? code,
    String? id,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$productEWC$key<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$productEWC$key<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$productEWC$key(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$productEWC$key _instance;

  final TRes Function(Query$GetAccountInfo$accountById$productEWC$key) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? id = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$productEWC$key(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$productEWC$key<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$productEWC$key<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$productEWC$key(this._res);

  TRes _res;

  call({String? code, String? id, String? description, String? $__typename}) =>
      _res;
}

class Query$GetAccountInfo$accountById$linkedPublications {
  Query$GetAccountInfo$accountById$linkedPublications({
    required this.publicationId,
    required this.allowedProductIds,
    required this.allowedYardIds,
    required this.publication,
    this.$__typename = 'AccountPublication',
  });

  factory Query$GetAccountInfo$accountById$linkedPublications.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$publicationId = json['publicationId'];
    final l$allowedProductIds = json['allowedProductIds'];
    final l$allowedYardIds = json['allowedYardIds'];
    final l$publication = json['publication'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$linkedPublications(
      publicationId: (l$publicationId as String),
      allowedProductIds: (l$allowedProductIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      allowedYardIds: (l$allowedYardIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      publication:
          Query$GetAccountInfo$accountById$linkedPublications$publication.fromJson(
            (l$publication as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String publicationId;

  final List<String> allowedProductIds;

  final List<String> allowedYardIds;

  final Query$GetAccountInfo$accountById$linkedPublications$publication
  publication;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$publicationId = publicationId;
    _resultData['publicationId'] = l$publicationId;
    final l$allowedProductIds = allowedProductIds;
    _resultData['allowedProductIds'] = l$allowedProductIds
        .map((e) => e)
        .toList();
    final l$allowedYardIds = allowedYardIds;
    _resultData['allowedYardIds'] = l$allowedYardIds.map((e) => e).toList();
    final l$publication = publication;
    _resultData['publication'] = l$publication.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$publicationId = publicationId;
    final l$allowedProductIds = allowedProductIds;
    final l$allowedYardIds = allowedYardIds;
    final l$publication = publication;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$publicationId,
      Object.hashAll(l$allowedProductIds.map((v) => v)),
      Object.hashAll(l$allowedYardIds.map((v) => v)),
      l$publication,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$linkedPublications ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$publicationId = publicationId;
    final lOther$publicationId = other.publicationId;
    if (l$publicationId != lOther$publicationId) {
      return false;
    }
    final l$allowedProductIds = allowedProductIds;
    final lOther$allowedProductIds = other.allowedProductIds;
    if (l$allowedProductIds.length != lOther$allowedProductIds.length) {
      return false;
    }
    for (int i = 0; i < l$allowedProductIds.length; i++) {
      final l$allowedProductIds$entry = l$allowedProductIds[i];
      final lOther$allowedProductIds$entry = lOther$allowedProductIds[i];
      if (l$allowedProductIds$entry != lOther$allowedProductIds$entry) {
        return false;
      }
    }
    final l$allowedYardIds = allowedYardIds;
    final lOther$allowedYardIds = other.allowedYardIds;
    if (l$allowedYardIds.length != lOther$allowedYardIds.length) {
      return false;
    }
    for (int i = 0; i < l$allowedYardIds.length; i++) {
      final l$allowedYardIds$entry = l$allowedYardIds[i];
      final lOther$allowedYardIds$entry = lOther$allowedYardIds[i];
      if (l$allowedYardIds$entry != lOther$allowedYardIds$entry) {
        return false;
      }
    }
    final l$publication = publication;
    final lOther$publication = other.publication;
    if (l$publication != lOther$publication) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$linkedPublications
    on Query$GetAccountInfo$accountById$linkedPublications {
  CopyWith$Query$GetAccountInfo$accountById$linkedPublications<
    Query$GetAccountInfo$accountById$linkedPublications
  >
  get copyWith => CopyWith$Query$GetAccountInfo$accountById$linkedPublications(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$linkedPublications<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$linkedPublications(
    Query$GetAccountInfo$accountById$linkedPublications instance,
    TRes Function(Query$GetAccountInfo$accountById$linkedPublications) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications;

  factory CopyWith$Query$GetAccountInfo$accountById$linkedPublications.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications;

  TRes call({
    String? publicationId,
    List<String>? allowedProductIds,
    List<String>? allowedYardIds,
    Query$GetAccountInfo$accountById$linkedPublications$publication?
    publication,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication<TRes>
  get publication;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications<TRes>
    implements
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$linkedPublications _instance;

  final TRes Function(Query$GetAccountInfo$accountById$linkedPublications)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? publicationId = _undefined,
    Object? allowedProductIds = _undefined,
    Object? allowedYardIds = _undefined,
    Object? publication = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$linkedPublications(
      publicationId: publicationId == _undefined || publicationId == null
          ? _instance.publicationId
          : (publicationId as String),
      allowedProductIds:
          allowedProductIds == _undefined || allowedProductIds == null
          ? _instance.allowedProductIds
          : (allowedProductIds as List<String>),
      allowedYardIds: allowedYardIds == _undefined || allowedYardIds == null
          ? _instance.allowedYardIds
          : (allowedYardIds as List<String>),
      publication: publication == _undefined || publication == null
          ? _instance.publication
          : (publication
                as Query$GetAccountInfo$accountById$linkedPublications$publication),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication<TRes>
  get publication {
    final local$publication = _instance.publication;
    return CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication(
      local$publication,
      (e) => call(publication: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications(
    this._res,
  );

  TRes _res;

  call({
    String? publicationId,
    List<String>? allowedProductIds,
    List<String>? allowedYardIds,
    Query$GetAccountInfo$accountById$linkedPublications$publication?
    publication,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication<TRes>
  get publication =>
      CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$linkedPublications$publication {
  Query$GetAccountInfo$accountById$linkedPublications$publication({
    required this.id,
    required this.name,
    required this.availableProducts,
    required this.availableYards,
    this.$__typename = 'Publication',
  });

  factory Query$GetAccountInfo$accountById$linkedPublications$publication.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$availableProducts = json['availableProducts'];
    final l$availableYards = json['availableYards'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$linkedPublications$publication(
      id: (l$id as String),
      name: (l$name as String),
      availableProducts: (l$availableProducts as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      availableYards: (l$availableYards as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final List<
    Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
  >
  availableProducts;

  final List<
    Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
  >
  availableYards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$availableProducts = availableProducts;
    _resultData['availableProducts'] = l$availableProducts
        .map((e) => e.toJson())
        .toList();
    final l$availableYards = availableYards;
    _resultData['availableYards'] = l$availableYards
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$availableProducts = availableProducts;
    final l$availableYards = availableYards;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$availableProducts.map((v) => v)),
      Object.hashAll(l$availableYards.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$linkedPublications$publication ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$availableProducts = availableProducts;
    final lOther$availableProducts = other.availableProducts;
    if (l$availableProducts.length != lOther$availableProducts.length) {
      return false;
    }
    for (int i = 0; i < l$availableProducts.length; i++) {
      final l$availableProducts$entry = l$availableProducts[i];
      final lOther$availableProducts$entry = lOther$availableProducts[i];
      if (l$availableProducts$entry != lOther$availableProducts$entry) {
        return false;
      }
    }
    final l$availableYards = availableYards;
    final lOther$availableYards = other.availableYards;
    if (l$availableYards.length != lOther$availableYards.length) {
      return false;
    }
    for (int i = 0; i < l$availableYards.length; i++) {
      final l$availableYards$entry = l$availableYards[i];
      final lOther$availableYards$entry = lOther$availableYards[i];
      if (l$availableYards$entry != lOther$availableYards$entry) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$linkedPublications$publication
    on Query$GetAccountInfo$accountById$linkedPublications$publication {
  CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication<
    Query$GetAccountInfo$accountById$linkedPublications$publication
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication(
    Query$GetAccountInfo$accountById$linkedPublications$publication instance,
    TRes Function(
      Query$GetAccountInfo$accountById$linkedPublications$publication,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications$publication;

  factory CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications$publication;

  TRes call({
    String? id,
    String? name,
    List<
      Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
    >?
    availableProducts,
    List<
      Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
    >?
    availableYards,
    String? $__typename,
  });
  TRes availableProducts(
    Iterable<
      Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts<
          Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
        >
      >,
    )
    _fn,
  );
  TRes availableYards(
    Iterable<
      Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards<
          Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications$publication<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications$publication(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$linkedPublications$publication
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$linkedPublications$publication,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? availableProducts = _undefined,
    Object? availableYards = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$linkedPublications$publication(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      availableProducts:
          availableProducts == _undefined || availableProducts == null
          ? _instance.availableProducts
          : (availableProducts
                as List<
                  Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
                >),
      availableYards: availableYards == _undefined || availableYards == null
          ? _instance.availableYards
          : (availableYards
                as List<
                  Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes availableProducts(
    Iterable<
      Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts<
          Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
        >
      >,
    )
    _fn,
  ) => call(
    availableProducts: _fn(
      _instance.availableProducts.map(
        (e) =>
            CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes availableYards(
    Iterable<
      Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards<
          Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
        >
      >,
    )
    _fn,
  ) => call(
    availableYards: _fn(
      _instance.availableYards.map(
        (e) =>
            CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications$publication<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications$publication(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    List<
      Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
    >?
    availableProducts,
    List<
      Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
    >?
    availableYards,
    String? $__typename,
  }) => _res;

  availableProducts(_fn) => _res;

  availableYards(_fn) => _res;
}

class Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts {
  Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts({
    required this.id,
    required this.code,
    required this.description,
    this.$__typename = 'Product',
  });

  factory Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts(
      id: (l$id as String),
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$code, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
    on
        Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts {
  CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts<
    Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts(
    Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts;

  factory CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts;

  TRes call({
    String? id,
    String? code,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableProducts(
    this._res,
  );

  TRes _res;

  call({String? id, String? code, String? description, String? $__typename}) =>
      _res;
}

class Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards {
  Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards({
    required this.id,
    required this.name,
    required this.yardCode,
    this.$__typename = 'Yard',
  });

  factory Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards(
      id: (l$id as String),
      name: (l$name as String),
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$yardCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
    on Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards {
  CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards<
    Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards(
    Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards;

  factory CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards;

  TRes call({String? id, String? name, String? yardCode, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$linkedPublications$publication$availableYards(
    this._res,
  );

  TRes _res;

  call({String? id, String? name, String? yardCode, String? $__typename}) =>
      _res;
}

class Query$GetAccountInfo$accountById$loyaltyCards {
  Query$GetAccountInfo$accountById$loyaltyCards({
    required this.code,
    required this.locationCode,
    required this.issueDate,
    required this.provider,
    this.$__typename = 'LoyaltyCard',
  });

  factory Query$GetAccountInfo$accountById$loyaltyCards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$locationCode = json['locationCode'];
    final l$issueDate = json['issueDate'];
    final l$provider = json['provider'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$loyaltyCards(
      code: (l$code as String),
      locationCode: (l$locationCode as String),
      issueDate: DateTime.parse((l$issueDate as String)),
      provider: (l$provider as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String locationCode;

  final DateTime issueDate;

  final String provider;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$locationCode = locationCode;
    _resultData['locationCode'] = l$locationCode;
    final l$issueDate = issueDate;
    _resultData['issueDate'] = l$issueDate.toIso8601String();
    final l$provider = provider;
    _resultData['provider'] = l$provider;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$locationCode = locationCode;
    final l$issueDate = issueDate;
    final l$provider = provider;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$locationCode,
      l$issueDate,
      l$provider,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$loyaltyCards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$locationCode = locationCode;
    final lOther$locationCode = other.locationCode;
    if (l$locationCode != lOther$locationCode) {
      return false;
    }
    final l$issueDate = issueDate;
    final lOther$issueDate = other.issueDate;
    if (l$issueDate != lOther$issueDate) {
      return false;
    }
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (l$provider != lOther$provider) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$loyaltyCards
    on Query$GetAccountInfo$accountById$loyaltyCards {
  CopyWith$Query$GetAccountInfo$accountById$loyaltyCards<
    Query$GetAccountInfo$accountById$loyaltyCards
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$loyaltyCards(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$loyaltyCards<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$loyaltyCards(
    Query$GetAccountInfo$accountById$loyaltyCards instance,
    TRes Function(Query$GetAccountInfo$accountById$loyaltyCards) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$loyaltyCards;

  factory CopyWith$Query$GetAccountInfo$accountById$loyaltyCards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$loyaltyCards;

  TRes call({
    String? code,
    String? locationCode,
    DateTime? issueDate,
    String? provider,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$loyaltyCards<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$loyaltyCards<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$loyaltyCards(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$loyaltyCards _instance;

  final TRes Function(Query$GetAccountInfo$accountById$loyaltyCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? locationCode = _undefined,
    Object? issueDate = _undefined,
    Object? provider = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$loyaltyCards(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      locationCode: locationCode == _undefined || locationCode == null
          ? _instance.locationCode
          : (locationCode as String),
      issueDate: issueDate == _undefined || issueDate == null
          ? _instance.issueDate
          : (issueDate as DateTime),
      provider: provider == _undefined || provider == null
          ? _instance.provider
          : (provider as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$loyaltyCards<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$loyaltyCards<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$loyaltyCards(this._res);

  TRes _res;

  call({
    String? code,
    String? locationCode,
    DateTime? issueDate,
    String? provider,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$prepaymentCards {
  Query$GetAccountInfo$accountById$prepaymentCards({
    required this.code,
    required this.panDigits,
    required this.issuerType,
    required this.issueDate,
    required this.active,
    this.$__typename = 'PrepaymentCard',
  });

  factory Query$GetAccountInfo$accountById$prepaymentCards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$panDigits = json['panDigits'];
    final l$issuerType = json['issuerType'];
    final l$issueDate = json['issueDate'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$prepaymentCards(
      code: (l$code as String),
      panDigits: (l$panDigits as int),
      issuerType: fromJson$Enum$PrepayCardIssuer((l$issuerType as String)),
      issueDate: DateTime.parse((l$issueDate as String)),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final int panDigits;

  final Enum$PrepayCardIssuer issuerType;

  final DateTime issueDate;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$panDigits = panDigits;
    _resultData['panDigits'] = l$panDigits;
    final l$issuerType = issuerType;
    _resultData['issuerType'] = toJson$Enum$PrepayCardIssuer(l$issuerType);
    final l$issueDate = issueDate;
    _resultData['issueDate'] = l$issueDate.toIso8601String();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$panDigits = panDigits;
    final l$issuerType = issuerType;
    final l$issueDate = issueDate;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$panDigits,
      l$issuerType,
      l$issueDate,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$prepaymentCards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$panDigits = panDigits;
    final lOther$panDigits = other.panDigits;
    if (l$panDigits != lOther$panDigits) {
      return false;
    }
    final l$issuerType = issuerType;
    final lOther$issuerType = other.issuerType;
    if (l$issuerType != lOther$issuerType) {
      return false;
    }
    final l$issueDate = issueDate;
    final lOther$issueDate = other.issueDate;
    if (l$issueDate != lOther$issueDate) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$prepaymentCards
    on Query$GetAccountInfo$accountById$prepaymentCards {
  CopyWith$Query$GetAccountInfo$accountById$prepaymentCards<
    Query$GetAccountInfo$accountById$prepaymentCards
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$prepaymentCards(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$prepaymentCards<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$prepaymentCards(
    Query$GetAccountInfo$accountById$prepaymentCards instance,
    TRes Function(Query$GetAccountInfo$accountById$prepaymentCards) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$prepaymentCards;

  factory CopyWith$Query$GetAccountInfo$accountById$prepaymentCards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$prepaymentCards;

  TRes call({
    String? code,
    int? panDigits,
    Enum$PrepayCardIssuer? issuerType,
    DateTime? issueDate,
    bool? active,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$prepaymentCards<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$prepaymentCards<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$prepaymentCards(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$prepaymentCards _instance;

  final TRes Function(Query$GetAccountInfo$accountById$prepaymentCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? panDigits = _undefined,
    Object? issuerType = _undefined,
    Object? issueDate = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$prepaymentCards(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      panDigits: panDigits == _undefined || panDigits == null
          ? _instance.panDigits
          : (panDigits as int),
      issuerType: issuerType == _undefined || issuerType == null
          ? _instance.issuerType
          : (issuerType as Enum$PrepayCardIssuer),
      issueDate: issueDate == _undefined || issueDate == null
          ? _instance.issueDate
          : (issueDate as DateTime),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$prepaymentCards<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$prepaymentCards<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$prepaymentCards(this._res);

  TRes _res;

  call({
    String? code,
    int? panDigits,
    Enum$PrepayCardIssuer? issuerType,
    DateTime? issueDate,
    bool? active,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$settings {
  Query$GetAccountInfo$accountById$settings({
    required this.stateReportingEnabled,
    required this.negativeInwardsEnabled,
    required this.transformationEnabled,
    this.validFrom,
    this.validTo,
    required this.marketIndicatorEnabled,
    required this.isWasteProducer,
    required this.isWasteImporter,
    required this.isWasteTransporter,
    required this.isWasteRegisteredCarrier,
    required this.annualWtnSsaRequired,
    this.wtnSsaExpiryDate,
    required this.isDigitalWalletActivated,
    required this.hasHazardousWasteConsignmentNote,
    this.$__typename = 'AccountSettings',
  });

  factory Query$GetAccountInfo$accountById$settings.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$stateReportingEnabled = json['stateReportingEnabled'];
    final l$negativeInwardsEnabled = json['negativeInwardsEnabled'];
    final l$transformationEnabled = json['transformationEnabled'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$marketIndicatorEnabled = json['marketIndicatorEnabled'];
    final l$isWasteProducer = json['isWasteProducer'];
    final l$isWasteImporter = json['isWasteImporter'];
    final l$isWasteTransporter = json['isWasteTransporter'];
    final l$isWasteRegisteredCarrier = json['isWasteRegisteredCarrier'];
    final l$annualWtnSsaRequired = json['annualWtnSsaRequired'];
    final l$wtnSsaExpiryDate = json['wtnSsaExpiryDate'];
    final l$isDigitalWalletActivated = json['isDigitalWalletActivated'];
    final l$hasHazardousWasteConsignmentNote =
        json['hasHazardousWasteConsignmentNote'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$settings(
      stateReportingEnabled: (l$stateReportingEnabled as bool),
      negativeInwardsEnabled: (l$negativeInwardsEnabled as bool),
      transformationEnabled: (l$transformationEnabled as bool),
      validFrom: l$validFrom == null
          ? null
          : DateTime.parse((l$validFrom as String)),
      validTo: l$validTo == null ? null : DateTime.parse((l$validTo as String)),
      marketIndicatorEnabled: (l$marketIndicatorEnabled as bool),
      isWasteProducer: (l$isWasteProducer as bool),
      isWasteImporter: (l$isWasteImporter as bool),
      isWasteTransporter: (l$isWasteTransporter as bool),
      isWasteRegisteredCarrier: (l$isWasteRegisteredCarrier as bool),
      annualWtnSsaRequired: (l$annualWtnSsaRequired as bool),
      wtnSsaExpiryDate: l$wtnSsaExpiryDate == null
          ? null
          : DateTime.parse((l$wtnSsaExpiryDate as String)),
      isDigitalWalletActivated: (l$isDigitalWalletActivated as bool),
      hasHazardousWasteConsignmentNote:
          (l$hasHazardousWasteConsignmentNote as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool stateReportingEnabled;

  final bool negativeInwardsEnabled;

  final bool transformationEnabled;

  final DateTime? validFrom;

  final DateTime? validTo;

  final bool marketIndicatorEnabled;

  final bool isWasteProducer;

  final bool isWasteImporter;

  final bool isWasteTransporter;

  final bool isWasteRegisteredCarrier;

  final bool annualWtnSsaRequired;

  final DateTime? wtnSsaExpiryDate;

  final bool isDigitalWalletActivated;

  final bool hasHazardousWasteConsignmentNote;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stateReportingEnabled = stateReportingEnabled;
    _resultData['stateReportingEnabled'] = l$stateReportingEnabled;
    final l$negativeInwardsEnabled = negativeInwardsEnabled;
    _resultData['negativeInwardsEnabled'] = l$negativeInwardsEnabled;
    final l$transformationEnabled = transformationEnabled;
    _resultData['transformationEnabled'] = l$transformationEnabled;
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom?.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo?.toIso8601String();
    final l$marketIndicatorEnabled = marketIndicatorEnabled;
    _resultData['marketIndicatorEnabled'] = l$marketIndicatorEnabled;
    final l$isWasteProducer = isWasteProducer;
    _resultData['isWasteProducer'] = l$isWasteProducer;
    final l$isWasteImporter = isWasteImporter;
    _resultData['isWasteImporter'] = l$isWasteImporter;
    final l$isWasteTransporter = isWasteTransporter;
    _resultData['isWasteTransporter'] = l$isWasteTransporter;
    final l$isWasteRegisteredCarrier = isWasteRegisteredCarrier;
    _resultData['isWasteRegisteredCarrier'] = l$isWasteRegisteredCarrier;
    final l$annualWtnSsaRequired = annualWtnSsaRequired;
    _resultData['annualWtnSsaRequired'] = l$annualWtnSsaRequired;
    final l$wtnSsaExpiryDate = wtnSsaExpiryDate;
    _resultData['wtnSsaExpiryDate'] = l$wtnSsaExpiryDate?.toIso8601String();
    final l$isDigitalWalletActivated = isDigitalWalletActivated;
    _resultData['isDigitalWalletActivated'] = l$isDigitalWalletActivated;
    final l$hasHazardousWasteConsignmentNote = hasHazardousWasteConsignmentNote;
    _resultData['hasHazardousWasteConsignmentNote'] =
        l$hasHazardousWasteConsignmentNote;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stateReportingEnabled = stateReportingEnabled;
    final l$negativeInwardsEnabled = negativeInwardsEnabled;
    final l$transformationEnabled = transformationEnabled;
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$marketIndicatorEnabled = marketIndicatorEnabled;
    final l$isWasteProducer = isWasteProducer;
    final l$isWasteImporter = isWasteImporter;
    final l$isWasteTransporter = isWasteTransporter;
    final l$isWasteRegisteredCarrier = isWasteRegisteredCarrier;
    final l$annualWtnSsaRequired = annualWtnSsaRequired;
    final l$wtnSsaExpiryDate = wtnSsaExpiryDate;
    final l$isDigitalWalletActivated = isDigitalWalletActivated;
    final l$hasHazardousWasteConsignmentNote = hasHazardousWasteConsignmentNote;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stateReportingEnabled,
      l$negativeInwardsEnabled,
      l$transformationEnabled,
      l$validFrom,
      l$validTo,
      l$marketIndicatorEnabled,
      l$isWasteProducer,
      l$isWasteImporter,
      l$isWasteTransporter,
      l$isWasteRegisteredCarrier,
      l$annualWtnSsaRequired,
      l$wtnSsaExpiryDate,
      l$isDigitalWalletActivated,
      l$hasHazardousWasteConsignmentNote,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$settings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stateReportingEnabled = stateReportingEnabled;
    final lOther$stateReportingEnabled = other.stateReportingEnabled;
    if (l$stateReportingEnabled != lOther$stateReportingEnabled) {
      return false;
    }
    final l$negativeInwardsEnabled = negativeInwardsEnabled;
    final lOther$negativeInwardsEnabled = other.negativeInwardsEnabled;
    if (l$negativeInwardsEnabled != lOther$negativeInwardsEnabled) {
      return false;
    }
    final l$transformationEnabled = transformationEnabled;
    final lOther$transformationEnabled = other.transformationEnabled;
    if (l$transformationEnabled != lOther$transformationEnabled) {
      return false;
    }
    final l$validFrom = validFrom;
    final lOther$validFrom = other.validFrom;
    if (l$validFrom != lOther$validFrom) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
      return false;
    }
    final l$marketIndicatorEnabled = marketIndicatorEnabled;
    final lOther$marketIndicatorEnabled = other.marketIndicatorEnabled;
    if (l$marketIndicatorEnabled != lOther$marketIndicatorEnabled) {
      return false;
    }
    final l$isWasteProducer = isWasteProducer;
    final lOther$isWasteProducer = other.isWasteProducer;
    if (l$isWasteProducer != lOther$isWasteProducer) {
      return false;
    }
    final l$isWasteImporter = isWasteImporter;
    final lOther$isWasteImporter = other.isWasteImporter;
    if (l$isWasteImporter != lOther$isWasteImporter) {
      return false;
    }
    final l$isWasteTransporter = isWasteTransporter;
    final lOther$isWasteTransporter = other.isWasteTransporter;
    if (l$isWasteTransporter != lOther$isWasteTransporter) {
      return false;
    }
    final l$isWasteRegisteredCarrier = isWasteRegisteredCarrier;
    final lOther$isWasteRegisteredCarrier = other.isWasteRegisteredCarrier;
    if (l$isWasteRegisteredCarrier != lOther$isWasteRegisteredCarrier) {
      return false;
    }
    final l$annualWtnSsaRequired = annualWtnSsaRequired;
    final lOther$annualWtnSsaRequired = other.annualWtnSsaRequired;
    if (l$annualWtnSsaRequired != lOther$annualWtnSsaRequired) {
      return false;
    }
    final l$wtnSsaExpiryDate = wtnSsaExpiryDate;
    final lOther$wtnSsaExpiryDate = other.wtnSsaExpiryDate;
    if (l$wtnSsaExpiryDate != lOther$wtnSsaExpiryDate) {
      return false;
    }
    final l$isDigitalWalletActivated = isDigitalWalletActivated;
    final lOther$isDigitalWalletActivated = other.isDigitalWalletActivated;
    if (l$isDigitalWalletActivated != lOther$isDigitalWalletActivated) {
      return false;
    }
    final l$hasHazardousWasteConsignmentNote = hasHazardousWasteConsignmentNote;
    final lOther$hasHazardousWasteConsignmentNote =
        other.hasHazardousWasteConsignmentNote;
    if (l$hasHazardousWasteConsignmentNote !=
        lOther$hasHazardousWasteConsignmentNote) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$settings
    on Query$GetAccountInfo$accountById$settings {
  CopyWith$Query$GetAccountInfo$accountById$settings<
    Query$GetAccountInfo$accountById$settings
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$settings(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$settings<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$settings(
    Query$GetAccountInfo$accountById$settings instance,
    TRes Function(Query$GetAccountInfo$accountById$settings) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$settings;

  factory CopyWith$Query$GetAccountInfo$accountById$settings.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountInfo$accountById$settings;

  TRes call({
    bool? stateReportingEnabled,
    bool? negativeInwardsEnabled,
    bool? transformationEnabled,
    DateTime? validFrom,
    DateTime? validTo,
    bool? marketIndicatorEnabled,
    bool? isWasteProducer,
    bool? isWasteImporter,
    bool? isWasteTransporter,
    bool? isWasteRegisteredCarrier,
    bool? annualWtnSsaRequired,
    DateTime? wtnSsaExpiryDate,
    bool? isDigitalWalletActivated,
    bool? hasHazardousWasteConsignmentNote,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$settings<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$settings<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$settings(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$settings _instance;

  final TRes Function(Query$GetAccountInfo$accountById$settings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stateReportingEnabled = _undefined,
    Object? negativeInwardsEnabled = _undefined,
    Object? transformationEnabled = _undefined,
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? marketIndicatorEnabled = _undefined,
    Object? isWasteProducer = _undefined,
    Object? isWasteImporter = _undefined,
    Object? isWasteTransporter = _undefined,
    Object? isWasteRegisteredCarrier = _undefined,
    Object? annualWtnSsaRequired = _undefined,
    Object? wtnSsaExpiryDate = _undefined,
    Object? isDigitalWalletActivated = _undefined,
    Object? hasHazardousWasteConsignmentNote = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$settings(
      stateReportingEnabled:
          stateReportingEnabled == _undefined || stateReportingEnabled == null
          ? _instance.stateReportingEnabled
          : (stateReportingEnabled as bool),
      negativeInwardsEnabled:
          negativeInwardsEnabled == _undefined || negativeInwardsEnabled == null
          ? _instance.negativeInwardsEnabled
          : (negativeInwardsEnabled as bool),
      transformationEnabled:
          transformationEnabled == _undefined || transformationEnabled == null
          ? _instance.transformationEnabled
          : (transformationEnabled as bool),
      validFrom: validFrom == _undefined
          ? _instance.validFrom
          : (validFrom as DateTime?),
      validTo: validTo == _undefined
          ? _instance.validTo
          : (validTo as DateTime?),
      marketIndicatorEnabled:
          marketIndicatorEnabled == _undefined || marketIndicatorEnabled == null
          ? _instance.marketIndicatorEnabled
          : (marketIndicatorEnabled as bool),
      isWasteProducer: isWasteProducer == _undefined || isWasteProducer == null
          ? _instance.isWasteProducer
          : (isWasteProducer as bool),
      isWasteImporter: isWasteImporter == _undefined || isWasteImporter == null
          ? _instance.isWasteImporter
          : (isWasteImporter as bool),
      isWasteTransporter:
          isWasteTransporter == _undefined || isWasteTransporter == null
          ? _instance.isWasteTransporter
          : (isWasteTransporter as bool),
      isWasteRegisteredCarrier:
          isWasteRegisteredCarrier == _undefined ||
              isWasteRegisteredCarrier == null
          ? _instance.isWasteRegisteredCarrier
          : (isWasteRegisteredCarrier as bool),
      annualWtnSsaRequired:
          annualWtnSsaRequired == _undefined || annualWtnSsaRequired == null
          ? _instance.annualWtnSsaRequired
          : (annualWtnSsaRequired as bool),
      wtnSsaExpiryDate: wtnSsaExpiryDate == _undefined
          ? _instance.wtnSsaExpiryDate
          : (wtnSsaExpiryDate as DateTime?),
      isDigitalWalletActivated:
          isDigitalWalletActivated == _undefined ||
              isDigitalWalletActivated == null
          ? _instance.isDigitalWalletActivated
          : (isDigitalWalletActivated as bool),
      hasHazardousWasteConsignmentNote:
          hasHazardousWasteConsignmentNote == _undefined ||
              hasHazardousWasteConsignmentNote == null
          ? _instance.hasHazardousWasteConsignmentNote
          : (hasHazardousWasteConsignmentNote as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$settings<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$settings<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$settings(this._res);

  TRes _res;

  call({
    bool? stateReportingEnabled,
    bool? negativeInwardsEnabled,
    bool? transformationEnabled,
    DateTime? validFrom,
    DateTime? validTo,
    bool? marketIndicatorEnabled,
    bool? isWasteProducer,
    bool? isWasteImporter,
    bool? isWasteTransporter,
    bool? isWasteRegisteredCarrier,
    bool? annualWtnSsaRequired,
    DateTime? wtnSsaExpiryDate,
    bool? isDigitalWalletActivated,
    bool? hasHazardousWasteConsignmentNote,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$industryGroups {
  Query$GetAccountInfo$accountById$industryGroups({
    this.trader,
    this.supplier,
    this.$__typename = 'IndustryGroups',
  });

  factory Query$GetAccountInfo$accountById$industryGroups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$trader = json['trader'];
    final l$supplier = json['supplier'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$industryGroups(
      trader: (l$trader as String?),
      supplier: (l$supplier as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? trader;

  final String? supplier;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trader = trader;
    _resultData['trader'] = l$trader;
    final l$supplier = supplier;
    _resultData['supplier'] = l$supplier;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trader = trader;
    final l$supplier = supplier;
    final l$$__typename = $__typename;
    return Object.hashAll([l$trader, l$supplier, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$industryGroups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$trader = trader;
    final lOther$trader = other.trader;
    if (l$trader != lOther$trader) {
      return false;
    }
    final l$supplier = supplier;
    final lOther$supplier = other.supplier;
    if (l$supplier != lOther$supplier) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$industryGroups
    on Query$GetAccountInfo$accountById$industryGroups {
  CopyWith$Query$GetAccountInfo$accountById$industryGroups<
    Query$GetAccountInfo$accountById$industryGroups
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$industryGroups(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$industryGroups<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$industryGroups(
    Query$GetAccountInfo$accountById$industryGroups instance,
    TRes Function(Query$GetAccountInfo$accountById$industryGroups) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$industryGroups;

  factory CopyWith$Query$GetAccountInfo$accountById$industryGroups.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$industryGroups;

  TRes call({String? trader, String? supplier, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$industryGroups<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$industryGroups<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$industryGroups(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$industryGroups _instance;

  final TRes Function(Query$GetAccountInfo$accountById$industryGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trader = _undefined,
    Object? supplier = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$industryGroups(
      trader: trader == _undefined ? _instance.trader : (trader as String?),
      supplier: supplier == _undefined
          ? _instance.supplier
          : (supplier as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$industryGroups<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$industryGroups<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$industryGroups(this._res);

  TRes _res;

  call({String? trader, String? supplier, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$pricingControl {
  Query$GetAccountInfo$accountById$pricingControl({
    required this.priceChangesRestricted,
    this.$__typename = 'PricingControl',
  });

  factory Query$GetAccountInfo$accountById$pricingControl.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$priceChangesRestricted = json['priceChangesRestricted'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$pricingControl(
      priceChangesRestricted: (l$priceChangesRestricted as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool priceChangesRestricted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$priceChangesRestricted = priceChangesRestricted;
    _resultData['priceChangesRestricted'] = l$priceChangesRestricted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$priceChangesRestricted = priceChangesRestricted;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priceChangesRestricted, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$pricingControl ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$priceChangesRestricted = priceChangesRestricted;
    final lOther$priceChangesRestricted = other.priceChangesRestricted;
    if (l$priceChangesRestricted != lOther$priceChangesRestricted) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$pricingControl
    on Query$GetAccountInfo$accountById$pricingControl {
  CopyWith$Query$GetAccountInfo$accountById$pricingControl<
    Query$GetAccountInfo$accountById$pricingControl
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$pricingControl(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$pricingControl<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$pricingControl(
    Query$GetAccountInfo$accountById$pricingControl instance,
    TRes Function(Query$GetAccountInfo$accountById$pricingControl) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$pricingControl;

  factory CopyWith$Query$GetAccountInfo$accountById$pricingControl.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$pricingControl;

  TRes call({bool? priceChangesRestricted, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$pricingControl<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$pricingControl<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$pricingControl(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$pricingControl _instance;

  final TRes Function(Query$GetAccountInfo$accountById$pricingControl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priceChangesRestricted = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$pricingControl(
      priceChangesRestricted:
          priceChangesRestricted == _undefined || priceChangesRestricted == null
          ? _instance.priceChangesRestricted
          : (priceChangesRestricted as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$pricingControl<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$pricingControl<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$pricingControl(this._res);

  TRes _res;

  call({bool? priceChangesRestricted, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$territory {
  Query$GetAccountInfo$accountById$territory({
    required this.id,
    required this.code,
    required this.name,
    required this.active,
    required this.currencyCode,
    required this.uomId,
    required this.defaultCompanyId,
    this.$__typename = 'Territory',
  });

  factory Query$GetAccountInfo$accountById$territory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$active = json['active'];
    final l$currencyCode = json['currencyCode'];
    final l$uomId = json['uomId'];
    final l$defaultCompanyId = json['defaultCompanyId'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$territory(
      id: (l$id as String),
      code: (l$code as String),
      name: (l$name as String),
      active: (l$active as bool),
      currencyCode: (l$currencyCode as String),
      uomId: (l$uomId as int),
      defaultCompanyId: (l$defaultCompanyId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String name;

  final bool active;

  final String currencyCode;

  final int uomId;

  final String defaultCompanyId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$uomId = uomId;
    _resultData['uomId'] = l$uomId;
    final l$defaultCompanyId = defaultCompanyId;
    _resultData['defaultCompanyId'] = l$defaultCompanyId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$name = name;
    final l$active = active;
    final l$currencyCode = currencyCode;
    final l$uomId = uomId;
    final l$defaultCompanyId = defaultCompanyId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$name,
      l$active,
      l$currencyCode,
      l$uomId,
      l$defaultCompanyId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$territory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$uomId = uomId;
    final lOther$uomId = other.uomId;
    if (l$uomId != lOther$uomId) {
      return false;
    }
    final l$defaultCompanyId = defaultCompanyId;
    final lOther$defaultCompanyId = other.defaultCompanyId;
    if (l$defaultCompanyId != lOther$defaultCompanyId) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$territory
    on Query$GetAccountInfo$accountById$territory {
  CopyWith$Query$GetAccountInfo$accountById$territory<
    Query$GetAccountInfo$accountById$territory
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$territory(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$territory<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$territory(
    Query$GetAccountInfo$accountById$territory instance,
    TRes Function(Query$GetAccountInfo$accountById$territory) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$territory;

  factory CopyWith$Query$GetAccountInfo$accountById$territory.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountInfo$accountById$territory;

  TRes call({
    String? id,
    String? code,
    String? name,
    bool? active,
    String? currencyCode,
    int? uomId,
    String? defaultCompanyId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$territory<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$territory<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$territory(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$territory _instance;

  final TRes Function(Query$GetAccountInfo$accountById$territory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? active = _undefined,
    Object? currencyCode = _undefined,
    Object? uomId = _undefined,
    Object? defaultCompanyId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$territory(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      currencyCode: currencyCode == _undefined || currencyCode == null
          ? _instance.currencyCode
          : (currencyCode as String),
      uomId: uomId == _undefined || uomId == null
          ? _instance.uomId
          : (uomId as int),
      defaultCompanyId:
          defaultCompanyId == _undefined || defaultCompanyId == null
          ? _instance.defaultCompanyId
          : (defaultCompanyId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$territory<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$territory<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$territory(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? name,
    bool? active,
    String? currencyCode,
    int? uomId,
    String? defaultCompanyId,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$locations {
  Query$GetAccountInfo$accountById$locations({
    required this.name,
    required this.code,
    required this.addressKey,
    required this.primaryContactId,
    required this.description,
    required this.active,
    required this.sitePermitHolder,
    required this.sitePermitOrExemptionNumber,
    this.$__typename = 'Location',
  });

  factory Query$GetAccountInfo$accountById$locations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$code = json['code'];
    final l$addressKey = json['addressKey'];
    final l$primaryContactId = json['primaryContactId'];
    final l$description = json['description'];
    final l$active = json['active'];
    final l$sitePermitHolder = json['sitePermitHolder'];
    final l$sitePermitOrExemptionNumber = json['sitePermitOrExemptionNumber'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$locations(
      name: (l$name as String),
      code: (l$code as String),
      addressKey: (l$addressKey as String),
      primaryContactId: (l$primaryContactId as String),
      description: (l$description as String),
      active: (l$active as bool),
      sitePermitHolder: (l$sitePermitHolder as bool),
      sitePermitOrExemptionNumber: (l$sitePermitOrExemptionNumber as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String code;

  final String addressKey;

  final String primaryContactId;

  final String description;

  final bool active;

  final bool sitePermitHolder;

  final String sitePermitOrExemptionNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$addressKey = addressKey;
    _resultData['addressKey'] = l$addressKey;
    final l$primaryContactId = primaryContactId;
    _resultData['primaryContactId'] = l$primaryContactId;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$sitePermitHolder = sitePermitHolder;
    _resultData['sitePermitHolder'] = l$sitePermitHolder;
    final l$sitePermitOrExemptionNumber = sitePermitOrExemptionNumber;
    _resultData['sitePermitOrExemptionNumber'] = l$sitePermitOrExemptionNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$code = code;
    final l$addressKey = addressKey;
    final l$primaryContactId = primaryContactId;
    final l$description = description;
    final l$active = active;
    final l$sitePermitHolder = sitePermitHolder;
    final l$sitePermitOrExemptionNumber = sitePermitOrExemptionNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$code,
      l$addressKey,
      l$primaryContactId,
      l$description,
      l$active,
      l$sitePermitHolder,
      l$sitePermitOrExemptionNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$locations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$addressKey = addressKey;
    final lOther$addressKey = other.addressKey;
    if (l$addressKey != lOther$addressKey) {
      return false;
    }
    final l$primaryContactId = primaryContactId;
    final lOther$primaryContactId = other.primaryContactId;
    if (l$primaryContactId != lOther$primaryContactId) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$sitePermitHolder = sitePermitHolder;
    final lOther$sitePermitHolder = other.sitePermitHolder;
    if (l$sitePermitHolder != lOther$sitePermitHolder) {
      return false;
    }
    final l$sitePermitOrExemptionNumber = sitePermitOrExemptionNumber;
    final lOther$sitePermitOrExemptionNumber =
        other.sitePermitOrExemptionNumber;
    if (l$sitePermitOrExemptionNumber != lOther$sitePermitOrExemptionNumber) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$locations
    on Query$GetAccountInfo$accountById$locations {
  CopyWith$Query$GetAccountInfo$accountById$locations<
    Query$GetAccountInfo$accountById$locations
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$locations(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$locations<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$locations(
    Query$GetAccountInfo$accountById$locations instance,
    TRes Function(Query$GetAccountInfo$accountById$locations) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$locations;

  factory CopyWith$Query$GetAccountInfo$accountById$locations.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountInfo$accountById$locations;

  TRes call({
    String? name,
    String? code,
    String? addressKey,
    String? primaryContactId,
    String? description,
    bool? active,
    bool? sitePermitHolder,
    String? sitePermitOrExemptionNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$locations<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$locations<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$locations(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$locations _instance;

  final TRes Function(Query$GetAccountInfo$accountById$locations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? code = _undefined,
    Object? addressKey = _undefined,
    Object? primaryContactId = _undefined,
    Object? description = _undefined,
    Object? active = _undefined,
    Object? sitePermitHolder = _undefined,
    Object? sitePermitOrExemptionNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$locations(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      addressKey: addressKey == _undefined || addressKey == null
          ? _instance.addressKey
          : (addressKey as String),
      primaryContactId:
          primaryContactId == _undefined || primaryContactId == null
          ? _instance.primaryContactId
          : (primaryContactId as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      sitePermitHolder:
          sitePermitHolder == _undefined || sitePermitHolder == null
          ? _instance.sitePermitHolder
          : (sitePermitHolder as bool),
      sitePermitOrExemptionNumber:
          sitePermitOrExemptionNumber == _undefined ||
              sitePermitOrExemptionNumber == null
          ? _instance.sitePermitOrExemptionNumber
          : (sitePermitOrExemptionNumber as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$locations<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$locations<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$locations(this._res);

  TRes _res;

  call({
    String? name,
    String? code,
    String? addressKey,
    String? primaryContactId,
    String? description,
    bool? active,
    bool? sitePermitHolder,
    String? sitePermitOrExemptionNumber,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$bankAccounts {
  Query$GetAccountInfo$accountById$bankAccounts({
    required this.bankName,
    required this.accountHolderName,
    required this.sortCode,
    required this.accountNumber,
    required this.currencyId,
    required this.address,
    this.ibanCode,
    this.reference,
    this.swiftCode,
    required this.countryCurrencyId,
    required this.bankAccountType,
    required this.verificationType,
    required this.comments,
    required this.fasterPaymentSupported,
    this.$__typename = 'BankAccount',
  });

  factory Query$GetAccountInfo$accountById$bankAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$bankName = json['bankName'];
    final l$accountHolderName = json['accountHolderName'];
    final l$sortCode = json['sortCode'];
    final l$accountNumber = json['accountNumber'];
    final l$currencyId = json['currencyId'];
    final l$address = json['address'];
    final l$ibanCode = json['ibanCode'];
    final l$reference = json['reference'];
    final l$swiftCode = json['swiftCode'];
    final l$countryCurrencyId = json['countryCurrencyId'];
    final l$bankAccountType = json['bankAccountType'];
    final l$verificationType = json['verificationType'];
    final l$comments = json['comments'];
    final l$fasterPaymentSupported = json['fasterPaymentSupported'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$bankAccounts(
      bankName: (l$bankName as String),
      accountHolderName: (l$accountHolderName as String),
      sortCode: (l$sortCode as String),
      accountNumber: (l$accountNumber as String),
      currencyId: (l$currencyId as String),
      address: Query$GetAccountInfo$accountById$bankAccounts$address.fromJson(
        (l$address as Map<String, dynamic>),
      ),
      ibanCode: (l$ibanCode as String?),
      reference: (l$reference as String?),
      swiftCode: (l$swiftCode as String?),
      countryCurrencyId: (l$countryCurrencyId as String),
      bankAccountType: fromJson$Enum$BankAccountType(
        (l$bankAccountType as String),
      ),
      verificationType: fromJson$Enum$BankAccountVerificationType(
        (l$verificationType as String),
      ),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccountInfo$accountById$bankAccounts$comments.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      fasterPaymentSupported: (l$fasterPaymentSupported as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String bankName;

  final String accountHolderName;

  final String sortCode;

  final String accountNumber;

  final String currencyId;

  final Query$GetAccountInfo$accountById$bankAccounts$address address;

  final String? ibanCode;

  final String? reference;

  final String? swiftCode;

  final String countryCurrencyId;

  final Enum$BankAccountType bankAccountType;

  final Enum$BankAccountVerificationType verificationType;

  final List<Query$GetAccountInfo$accountById$bankAccounts$comments> comments;

  final bool fasterPaymentSupported;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$accountHolderName = accountHolderName;
    _resultData['accountHolderName'] = l$accountHolderName;
    final l$sortCode = sortCode;
    _resultData['sortCode'] = l$sortCode;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$currencyId = currencyId;
    _resultData['currencyId'] = l$currencyId;
    final l$address = address;
    _resultData['address'] = l$address.toJson();
    final l$ibanCode = ibanCode;
    _resultData['ibanCode'] = l$ibanCode;
    final l$reference = reference;
    _resultData['reference'] = l$reference;
    final l$swiftCode = swiftCode;
    _resultData['swiftCode'] = l$swiftCode;
    final l$countryCurrencyId = countryCurrencyId;
    _resultData['countryCurrencyId'] = l$countryCurrencyId;
    final l$bankAccountType = bankAccountType;
    _resultData['bankAccountType'] = toJson$Enum$BankAccountType(
      l$bankAccountType,
    );
    final l$verificationType = verificationType;
    _resultData['verificationType'] = toJson$Enum$BankAccountVerificationType(
      l$verificationType,
    );
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    final l$fasterPaymentSupported = fasterPaymentSupported;
    _resultData['fasterPaymentSupported'] = l$fasterPaymentSupported;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankName = bankName;
    final l$accountHolderName = accountHolderName;
    final l$sortCode = sortCode;
    final l$accountNumber = accountNumber;
    final l$currencyId = currencyId;
    final l$address = address;
    final l$ibanCode = ibanCode;
    final l$reference = reference;
    final l$swiftCode = swiftCode;
    final l$countryCurrencyId = countryCurrencyId;
    final l$bankAccountType = bankAccountType;
    final l$verificationType = verificationType;
    final l$comments = comments;
    final l$fasterPaymentSupported = fasterPaymentSupported;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankName,
      l$accountHolderName,
      l$sortCode,
      l$accountNumber,
      l$currencyId,
      l$address,
      l$ibanCode,
      l$reference,
      l$swiftCode,
      l$countryCurrencyId,
      l$bankAccountType,
      l$verificationType,
      Object.hashAll(l$comments.map((v) => v)),
      l$fasterPaymentSupported,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$bankAccounts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (l$accountHolderName != lOther$accountHolderName) {
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
    final l$currencyId = currencyId;
    final lOther$currencyId = other.currencyId;
    if (l$currencyId != lOther$currencyId) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$ibanCode = ibanCode;
    final lOther$ibanCode = other.ibanCode;
    if (l$ibanCode != lOther$ibanCode) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$swiftCode = swiftCode;
    final lOther$swiftCode = other.swiftCode;
    if (l$swiftCode != lOther$swiftCode) {
      return false;
    }
    final l$countryCurrencyId = countryCurrencyId;
    final lOther$countryCurrencyId = other.countryCurrencyId;
    if (l$countryCurrencyId != lOther$countryCurrencyId) {
      return false;
    }
    final l$bankAccountType = bankAccountType;
    final lOther$bankAccountType = other.bankAccountType;
    if (l$bankAccountType != lOther$bankAccountType) {
      return false;
    }
    final l$verificationType = verificationType;
    final lOther$verificationType = other.verificationType;
    if (l$verificationType != lOther$verificationType) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments.length != lOther$comments.length) {
      return false;
    }
    for (int i = 0; i < l$comments.length; i++) {
      final l$comments$entry = l$comments[i];
      final lOther$comments$entry = lOther$comments[i];
      if (l$comments$entry != lOther$comments$entry) {
        return false;
      }
    }
    final l$fasterPaymentSupported = fasterPaymentSupported;
    final lOther$fasterPaymentSupported = other.fasterPaymentSupported;
    if (l$fasterPaymentSupported != lOther$fasterPaymentSupported) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$bankAccounts
    on Query$GetAccountInfo$accountById$bankAccounts {
  CopyWith$Query$GetAccountInfo$accountById$bankAccounts<
    Query$GetAccountInfo$accountById$bankAccounts
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$bankAccounts(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$bankAccounts<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$bankAccounts(
    Query$GetAccountInfo$accountById$bankAccounts instance,
    TRes Function(Query$GetAccountInfo$accountById$bankAccounts) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$bankAccounts;

  factory CopyWith$Query$GetAccountInfo$accountById$bankAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$bankAccounts;

  TRes call({
    String? bankName,
    String? accountHolderName,
    String? sortCode,
    String? accountNumber,
    String? currencyId,
    Query$GetAccountInfo$accountById$bankAccounts$address? address,
    String? ibanCode,
    String? reference,
    String? swiftCode,
    String? countryCurrencyId,
    Enum$BankAccountType? bankAccountType,
    Enum$BankAccountVerificationType? verificationType,
    List<Query$GetAccountInfo$accountById$bankAccounts$comments>? comments,
    bool? fasterPaymentSupported,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address<TRes>
  get address;
  TRes comments(
    Iterable<Query$GetAccountInfo$accountById$bankAccounts$comments> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$bankAccounts$comments<
          Query$GetAccountInfo$accountById$bankAccounts$comments
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$bankAccounts<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$bankAccounts<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$bankAccounts(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$bankAccounts _instance;

  final TRes Function(Query$GetAccountInfo$accountById$bankAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
    Object? sortCode = _undefined,
    Object? accountNumber = _undefined,
    Object? currencyId = _undefined,
    Object? address = _undefined,
    Object? ibanCode = _undefined,
    Object? reference = _undefined,
    Object? swiftCode = _undefined,
    Object? countryCurrencyId = _undefined,
    Object? bankAccountType = _undefined,
    Object? verificationType = _undefined,
    Object? comments = _undefined,
    Object? fasterPaymentSupported = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$bankAccounts(
      bankName: bankName == _undefined || bankName == null
          ? _instance.bankName
          : (bankName as String),
      accountHolderName:
          accountHolderName == _undefined || accountHolderName == null
          ? _instance.accountHolderName
          : (accountHolderName as String),
      sortCode: sortCode == _undefined || sortCode == null
          ? _instance.sortCode
          : (sortCode as String),
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      currencyId: currencyId == _undefined || currencyId == null
          ? _instance.currencyId
          : (currencyId as String),
      address: address == _undefined || address == null
          ? _instance.address
          : (address as Query$GetAccountInfo$accountById$bankAccounts$address),
      ibanCode: ibanCode == _undefined
          ? _instance.ibanCode
          : (ibanCode as String?),
      reference: reference == _undefined
          ? _instance.reference
          : (reference as String?),
      swiftCode: swiftCode == _undefined
          ? _instance.swiftCode
          : (swiftCode as String?),
      countryCurrencyId:
          countryCurrencyId == _undefined || countryCurrencyId == null
          ? _instance.countryCurrencyId
          : (countryCurrencyId as String),
      bankAccountType: bankAccountType == _undefined || bankAccountType == null
          ? _instance.bankAccountType
          : (bankAccountType as Enum$BankAccountType),
      verificationType:
          verificationType == _undefined || verificationType == null
          ? _instance.verificationType
          : (verificationType as Enum$BankAccountVerificationType),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments
                as List<
                  Query$GetAccountInfo$accountById$bankAccounts$comments
                >),
      fasterPaymentSupported:
          fasterPaymentSupported == _undefined || fasterPaymentSupported == null
          ? _instance.fasterPaymentSupported
          : (fasterPaymentSupported as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address<TRes>
  get address {
    final local$address = _instance.address;
    return CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address(
      local$address,
      (e) => call(address: e),
    );
  }

  TRes comments(
    Iterable<Query$GetAccountInfo$accountById$bankAccounts$comments> Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$bankAccounts$comments<
          Query$GetAccountInfo$accountById$bankAccounts$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) => CopyWith$Query$GetAccountInfo$accountById$bankAccounts$comments(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$bankAccounts<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$bankAccounts<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$bankAccounts(this._res);

  TRes _res;

  call({
    String? bankName,
    String? accountHolderName,
    String? sortCode,
    String? accountNumber,
    String? currencyId,
    Query$GetAccountInfo$accountById$bankAccounts$address? address,
    String? ibanCode,
    String? reference,
    String? swiftCode,
    String? countryCurrencyId,
    Enum$BankAccountType? bankAccountType,
    Enum$BankAccountVerificationType? verificationType,
    List<Query$GetAccountInfo$accountById$bankAccounts$comments>? comments,
    bool? fasterPaymentSupported,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address<TRes>
  get address =>
      CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address.stub(_res);

  comments(_fn) => _res;
}

class Query$GetAccountInfo$accountById$bankAccounts$address {
  Query$GetAccountInfo$accountById$bankAccounts$address({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.address4,
    required this.address5,
    required this.address6,
    required this.postCode,
    required this.countryCode,
    this.$__typename = 'Address',
  });

  factory Query$GetAccountInfo$accountById$bankAccounts$address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$countryCode = json['countryCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$bankAccounts$address(
      address1: (l$address1 as String),
      address2: (l$address2 as String),
      address3: (l$address3 as String),
      address4: (l$address4 as String),
      address5: (l$address5 as String),
      address6: (l$address6 as String),
      postCode: (l$postCode as String),
      countryCode: (l$countryCode as String),
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

  final String countryCode;

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
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
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
    final l$countryCode = countryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$postCode,
      l$countryCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$bankAccounts$address ||
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
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$bankAccounts$address
    on Query$GetAccountInfo$accountById$bankAccounts$address {
  CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address<
    Query$GetAccountInfo$accountById$bankAccounts$address
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address(
    Query$GetAccountInfo$accountById$bankAccounts$address instance,
    TRes Function(Query$GetAccountInfo$accountById$bankAccounts$address) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$bankAccounts$address;

  factory CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$bankAccounts$address;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? countryCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$bankAccounts$address<TRes>
    implements
        CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$bankAccounts$address(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$bankAccounts$address _instance;

  final TRes Function(Query$GetAccountInfo$accountById$bankAccounts$address)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? countryCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$bankAccounts$address(
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
      countryCode: countryCode == _undefined || countryCode == null
          ? _instance.countryCode
          : (countryCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$bankAccounts$address<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$bankAccounts$address<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$bankAccounts$address(
    this._res,
  );

  TRes _res;

  call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? countryCode,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$bankAccounts$comments {
  Query$GetAccountInfo$accountById$bankAccounts$comments({
    required this.content,
    this.$__typename = 'Comment',
  });

  factory Query$GetAccountInfo$accountById$bankAccounts$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$bankAccounts$comments(
      content: (l$content as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$bankAccounts$comments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$bankAccounts$comments
    on Query$GetAccountInfo$accountById$bankAccounts$comments {
  CopyWith$Query$GetAccountInfo$accountById$bankAccounts$comments<
    Query$GetAccountInfo$accountById$bankAccounts$comments
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$bankAccounts$comments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$bankAccounts$comments<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$bankAccounts$comments(
    Query$GetAccountInfo$accountById$bankAccounts$comments instance,
    TRes Function(Query$GetAccountInfo$accountById$bankAccounts$comments) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$bankAccounts$comments;

  factory CopyWith$Query$GetAccountInfo$accountById$bankAccounts$comments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$bankAccounts$comments;

  TRes call({String? content, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$bankAccounts$comments<TRes>
    implements
        CopyWith$Query$GetAccountInfo$accountById$bankAccounts$comments<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$bankAccounts$comments(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$bankAccounts$comments _instance;

  final TRes Function(Query$GetAccountInfo$accountById$bankAccounts$comments)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? content = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAccountInfo$accountById$bankAccounts$comments(
          content: content == _undefined || content == null
              ? _instance.content
              : (content as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$bankAccounts$comments<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$bankAccounts$comments<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$bankAccounts$comments(
    this._res,
  );

  TRes _res;

  call({String? content, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$businessDetail {
  Query$GetAccountInfo$accountById$businessDetail({
    this.vatNumber,
    this.eoriNumber,
    this.companyRegistrationNumber,
    required this.isTradingCompany,
    this.website,
    this.paymentTerm,
    this.creditTerm,
    this.invoicingOptions,
    this.selfBilling,
    this.creditControl,
    this.licenseExemption,
    this.$__typename = 'BusinessDetail',
  });

  factory Query$GetAccountInfo$accountById$businessDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vatNumber = json['vatNumber'];
    final l$eoriNumber = json['eoriNumber'];
    final l$companyRegistrationNumber = json['companyRegistrationNumber'];
    final l$isTradingCompany = json['isTradingCompany'];
    final l$website = json['website'];
    final l$paymentTerm = json['paymentTerm'];
    final l$creditTerm = json['creditTerm'];
    final l$invoicingOptions = json['invoicingOptions'];
    final l$selfBilling = json['selfBilling'];
    final l$creditControl = json['creditControl'];
    final l$licenseExemption = json['licenseExemption'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$businessDetail(
      vatNumber: (l$vatNumber as String?),
      eoriNumber: (l$eoriNumber as String?),
      companyRegistrationNumber: (l$companyRegistrationNumber as String?),
      isTradingCompany: (l$isTradingCompany as bool),
      website: (l$website as String?),
      paymentTerm: l$paymentTerm == null
          ? null
          : Query$GetAccountInfo$accountById$businessDetail$paymentTerm.fromJson(
              (l$paymentTerm as Map<String, dynamic>),
            ),
      creditTerm: l$creditTerm == null
          ? null
          : Query$GetAccountInfo$accountById$businessDetail$creditTerm.fromJson(
              (l$creditTerm as Map<String, dynamic>),
            ),
      invoicingOptions: l$invoicingOptions == null
          ? null
          : Query$GetAccountInfo$accountById$businessDetail$invoicingOptions.fromJson(
              (l$invoicingOptions as Map<String, dynamic>),
            ),
      selfBilling: l$selfBilling == null
          ? null
          : Query$GetAccountInfo$accountById$businessDetail$selfBilling.fromJson(
              (l$selfBilling as Map<String, dynamic>),
            ),
      creditControl: l$creditControl == null
          ? null
          : Query$GetAccountInfo$accountById$businessDetail$creditControl.fromJson(
              (l$creditControl as Map<String, dynamic>),
            ),
      licenseExemption: l$licenseExemption == null
          ? null
          : Query$GetAccountInfo$accountById$businessDetail$licenseExemption.fromJson(
              (l$licenseExemption as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String? vatNumber;

  final String? eoriNumber;

  final String? companyRegistrationNumber;

  final bool isTradingCompany;

  final String? website;

  final Query$GetAccountInfo$accountById$businessDetail$paymentTerm?
  paymentTerm;

  final Query$GetAccountInfo$accountById$businessDetail$creditTerm? creditTerm;

  final Query$GetAccountInfo$accountById$businessDetail$invoicingOptions?
  invoicingOptions;

  final Query$GetAccountInfo$accountById$businessDetail$selfBilling?
  selfBilling;

  final Query$GetAccountInfo$accountById$businessDetail$creditControl?
  creditControl;

  final Query$GetAccountInfo$accountById$businessDetail$licenseExemption?
  licenseExemption;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vatNumber = vatNumber;
    _resultData['vatNumber'] = l$vatNumber;
    final l$eoriNumber = eoriNumber;
    _resultData['eoriNumber'] = l$eoriNumber;
    final l$companyRegistrationNumber = companyRegistrationNumber;
    _resultData['companyRegistrationNumber'] = l$companyRegistrationNumber;
    final l$isTradingCompany = isTradingCompany;
    _resultData['isTradingCompany'] = l$isTradingCompany;
    final l$website = website;
    _resultData['website'] = l$website;
    final l$paymentTerm = paymentTerm;
    _resultData['paymentTerm'] = l$paymentTerm?.toJson();
    final l$creditTerm = creditTerm;
    _resultData['creditTerm'] = l$creditTerm?.toJson();
    final l$invoicingOptions = invoicingOptions;
    _resultData['invoicingOptions'] = l$invoicingOptions?.toJson();
    final l$selfBilling = selfBilling;
    _resultData['selfBilling'] = l$selfBilling?.toJson();
    final l$creditControl = creditControl;
    _resultData['creditControl'] = l$creditControl?.toJson();
    final l$licenseExemption = licenseExemption;
    _resultData['licenseExemption'] = l$licenseExemption?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vatNumber = vatNumber;
    final l$eoriNumber = eoriNumber;
    final l$companyRegistrationNumber = companyRegistrationNumber;
    final l$isTradingCompany = isTradingCompany;
    final l$website = website;
    final l$paymentTerm = paymentTerm;
    final l$creditTerm = creditTerm;
    final l$invoicingOptions = invoicingOptions;
    final l$selfBilling = selfBilling;
    final l$creditControl = creditControl;
    final l$licenseExemption = licenseExemption;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vatNumber,
      l$eoriNumber,
      l$companyRegistrationNumber,
      l$isTradingCompany,
      l$website,
      l$paymentTerm,
      l$creditTerm,
      l$invoicingOptions,
      l$selfBilling,
      l$creditControl,
      l$licenseExemption,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$businessDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vatNumber = vatNumber;
    final lOther$vatNumber = other.vatNumber;
    if (l$vatNumber != lOther$vatNumber) {
      return false;
    }
    final l$eoriNumber = eoriNumber;
    final lOther$eoriNumber = other.eoriNumber;
    if (l$eoriNumber != lOther$eoriNumber) {
      return false;
    }
    final l$companyRegistrationNumber = companyRegistrationNumber;
    final lOther$companyRegistrationNumber = other.companyRegistrationNumber;
    if (l$companyRegistrationNumber != lOther$companyRegistrationNumber) {
      return false;
    }
    final l$isTradingCompany = isTradingCompany;
    final lOther$isTradingCompany = other.isTradingCompany;
    if (l$isTradingCompany != lOther$isTradingCompany) {
      return false;
    }
    final l$website = website;
    final lOther$website = other.website;
    if (l$website != lOther$website) {
      return false;
    }
    final l$paymentTerm = paymentTerm;
    final lOther$paymentTerm = other.paymentTerm;
    if (l$paymentTerm != lOther$paymentTerm) {
      return false;
    }
    final l$creditTerm = creditTerm;
    final lOther$creditTerm = other.creditTerm;
    if (l$creditTerm != lOther$creditTerm) {
      return false;
    }
    final l$invoicingOptions = invoicingOptions;
    final lOther$invoicingOptions = other.invoicingOptions;
    if (l$invoicingOptions != lOther$invoicingOptions) {
      return false;
    }
    final l$selfBilling = selfBilling;
    final lOther$selfBilling = other.selfBilling;
    if (l$selfBilling != lOther$selfBilling) {
      return false;
    }
    final l$creditControl = creditControl;
    final lOther$creditControl = other.creditControl;
    if (l$creditControl != lOther$creditControl) {
      return false;
    }
    final l$licenseExemption = licenseExemption;
    final lOther$licenseExemption = other.licenseExemption;
    if (l$licenseExemption != lOther$licenseExemption) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$businessDetail
    on Query$GetAccountInfo$accountById$businessDetail {
  CopyWith$Query$GetAccountInfo$accountById$businessDetail<
    Query$GetAccountInfo$accountById$businessDetail
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$businessDetail<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail(
    Query$GetAccountInfo$accountById$businessDetail instance,
    TRes Function(Query$GetAccountInfo$accountById$businessDetail) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail;

  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail;

  TRes call({
    String? vatNumber,
    String? eoriNumber,
    String? companyRegistrationNumber,
    bool? isTradingCompany,
    String? website,
    Query$GetAccountInfo$accountById$businessDetail$paymentTerm? paymentTerm,
    Query$GetAccountInfo$accountById$businessDetail$creditTerm? creditTerm,
    Query$GetAccountInfo$accountById$businessDetail$invoicingOptions?
    invoicingOptions,
    Query$GetAccountInfo$accountById$businessDetail$selfBilling? selfBilling,
    Query$GetAccountInfo$accountById$businessDetail$creditControl?
    creditControl,
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption?
    licenseExemption,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm<TRes>
  get paymentTerm;
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm<TRes>
  get creditTerm;
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions<
    TRes
  >
  get invoicingOptions;
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling<TRes>
  get selfBilling;
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl<TRes>
  get creditControl;
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption<
    TRes
  >
  get licenseExemption;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$businessDetail<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$businessDetail _instance;

  final TRes Function(Query$GetAccountInfo$accountById$businessDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vatNumber = _undefined,
    Object? eoriNumber = _undefined,
    Object? companyRegistrationNumber = _undefined,
    Object? isTradingCompany = _undefined,
    Object? website = _undefined,
    Object? paymentTerm = _undefined,
    Object? creditTerm = _undefined,
    Object? invoicingOptions = _undefined,
    Object? selfBilling = _undefined,
    Object? creditControl = _undefined,
    Object? licenseExemption = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$businessDetail(
      vatNumber: vatNumber == _undefined
          ? _instance.vatNumber
          : (vatNumber as String?),
      eoriNumber: eoriNumber == _undefined
          ? _instance.eoriNumber
          : (eoriNumber as String?),
      companyRegistrationNumber: companyRegistrationNumber == _undefined
          ? _instance.companyRegistrationNumber
          : (companyRegistrationNumber as String?),
      isTradingCompany:
          isTradingCompany == _undefined || isTradingCompany == null
          ? _instance.isTradingCompany
          : (isTradingCompany as bool),
      website: website == _undefined ? _instance.website : (website as String?),
      paymentTerm: paymentTerm == _undefined
          ? _instance.paymentTerm
          : (paymentTerm
                as Query$GetAccountInfo$accountById$businessDetail$paymentTerm?),
      creditTerm: creditTerm == _undefined
          ? _instance.creditTerm
          : (creditTerm
                as Query$GetAccountInfo$accountById$businessDetail$creditTerm?),
      invoicingOptions: invoicingOptions == _undefined
          ? _instance.invoicingOptions
          : (invoicingOptions
                as Query$GetAccountInfo$accountById$businessDetail$invoicingOptions?),
      selfBilling: selfBilling == _undefined
          ? _instance.selfBilling
          : (selfBilling
                as Query$GetAccountInfo$accountById$businessDetail$selfBilling?),
      creditControl: creditControl == _undefined
          ? _instance.creditControl
          : (creditControl
                as Query$GetAccountInfo$accountById$businessDetail$creditControl?),
      licenseExemption: licenseExemption == _undefined
          ? _instance.licenseExemption
          : (licenseExemption
                as Query$GetAccountInfo$accountById$businessDetail$licenseExemption?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm<TRes>
  get paymentTerm {
    final local$paymentTerm = _instance.paymentTerm;
    return local$paymentTerm == null
        ? CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm(
            local$paymentTerm,
            (e) => call(paymentTerm: e),
          );
  }

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm<TRes>
  get creditTerm {
    final local$creditTerm = _instance.creditTerm;
    return local$creditTerm == null
        ? CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm(
            local$creditTerm,
            (e) => call(creditTerm: e),
          );
  }

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions<
    TRes
  >
  get invoicingOptions {
    final local$invoicingOptions = _instance.invoicingOptions;
    return local$invoicingOptions == null
        ? CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions(
            local$invoicingOptions,
            (e) => call(invoicingOptions: e),
          );
  }

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling<TRes>
  get selfBilling {
    final local$selfBilling = _instance.selfBilling;
    return local$selfBilling == null
        ? CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling(
            local$selfBilling,
            (e) => call(selfBilling: e),
          );
  }

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl<TRes>
  get creditControl {
    final local$creditControl = _instance.creditControl;
    return local$creditControl == null
        ? CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl(
            local$creditControl,
            (e) => call(creditControl: e),
          );
  }

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption<
    TRes
  >
  get licenseExemption {
    final local$licenseExemption = _instance.licenseExemption;
    return local$licenseExemption == null
        ? CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption(
            local$licenseExemption,
            (e) => call(licenseExemption: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$businessDetail<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail(this._res);

  TRes _res;

  call({
    String? vatNumber,
    String? eoriNumber,
    String? companyRegistrationNumber,
    bool? isTradingCompany,
    String? website,
    Query$GetAccountInfo$accountById$businessDetail$paymentTerm? paymentTerm,
    Query$GetAccountInfo$accountById$businessDetail$creditTerm? creditTerm,
    Query$GetAccountInfo$accountById$businessDetail$invoicingOptions?
    invoicingOptions,
    Query$GetAccountInfo$accountById$businessDetail$selfBilling? selfBilling,
    Query$GetAccountInfo$accountById$businessDetail$creditControl?
    creditControl,
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption?
    licenseExemption,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm<TRes>
  get paymentTerm =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm.stub(
        _res,
      );

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm<TRes>
  get creditTerm =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm.stub(
        _res,
      );

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions<
    TRes
  >
  get invoicingOptions =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions.stub(
        _res,
      );

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling<TRes>
  get selfBilling =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling.stub(
        _res,
      );

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl<TRes>
  get creditControl =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl.stub(
        _res,
      );

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption<
    TRes
  >
  get licenseExemption =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$businessDetail$paymentTerm {
  Query$GetAccountInfo$accountById$businessDetail$paymentTerm({
    required this.taxMethod,
    required this.documentHoldStatusType,
    required this.financialPaymentMethod,
    this.paymentTermTypeId,
    this.paymentTermTypeName,
    required this.defaultMedia,
    required this.discountType,
    required this.adjustTax,
    this.discountTerms,
    this.discountPercentage,
    this.$__typename = 'PaymentTerm',
  });

  factory Query$GetAccountInfo$accountById$businessDetail$paymentTerm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$taxMethod = json['taxMethod'];
    final l$documentHoldStatusType = json['documentHoldStatusType'];
    final l$financialPaymentMethod = json['financialPaymentMethod'];
    final l$paymentTermTypeId = json['paymentTermTypeId'];
    final l$paymentTermTypeName = json['paymentTermTypeName'];
    final l$defaultMedia = json['defaultMedia'];
    final l$discountType = json['discountType'];
    final l$adjustTax = json['adjustTax'];
    final l$discountTerms = json['discountTerms'];
    final l$discountPercentage = json['discountPercentage'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$businessDetail$paymentTerm(
      taxMethod: fromJson$Enum$TaxMethod((l$taxMethod as String)),
      documentHoldStatusType: fromJson$Enum$DocumentHoldStatusType(
        (l$documentHoldStatusType as String),
      ),
      financialPaymentMethod: (l$financialPaymentMethod as String),
      paymentTermTypeId: (l$paymentTermTypeId as String?),
      paymentTermTypeName: (l$paymentTermTypeName as String?),
      defaultMedia: fromJson$Enum$DefaultMedia((l$defaultMedia as String)),
      discountType: fromJson$Enum$DiscountType((l$discountType as String)),
      adjustTax: (l$adjustTax as bool),
      discountTerms: (l$discountTerms as String?),
      discountPercentage: (l$discountPercentage as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$TaxMethod taxMethod;

  final Enum$DocumentHoldStatusType documentHoldStatusType;

  final String financialPaymentMethod;

  final String? paymentTermTypeId;

  final String? paymentTermTypeName;

  final Enum$DefaultMedia defaultMedia;

  final Enum$DiscountType discountType;

  final bool adjustTax;

  final String? discountTerms;

  final double? discountPercentage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$taxMethod = taxMethod;
    _resultData['taxMethod'] = toJson$Enum$TaxMethod(l$taxMethod);
    final l$documentHoldStatusType = documentHoldStatusType;
    _resultData['documentHoldStatusType'] = toJson$Enum$DocumentHoldStatusType(
      l$documentHoldStatusType,
    );
    final l$financialPaymentMethod = financialPaymentMethod;
    _resultData['financialPaymentMethod'] = l$financialPaymentMethod;
    final l$paymentTermTypeId = paymentTermTypeId;
    _resultData['paymentTermTypeId'] = l$paymentTermTypeId;
    final l$paymentTermTypeName = paymentTermTypeName;
    _resultData['paymentTermTypeName'] = l$paymentTermTypeName;
    final l$defaultMedia = defaultMedia;
    _resultData['defaultMedia'] = toJson$Enum$DefaultMedia(l$defaultMedia);
    final l$discountType = discountType;
    _resultData['discountType'] = toJson$Enum$DiscountType(l$discountType);
    final l$adjustTax = adjustTax;
    _resultData['adjustTax'] = l$adjustTax;
    final l$discountTerms = discountTerms;
    _resultData['discountTerms'] = l$discountTerms;
    final l$discountPercentage = discountPercentage;
    _resultData['discountPercentage'] = l$discountPercentage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$taxMethod = taxMethod;
    final l$documentHoldStatusType = documentHoldStatusType;
    final l$financialPaymentMethod = financialPaymentMethod;
    final l$paymentTermTypeId = paymentTermTypeId;
    final l$paymentTermTypeName = paymentTermTypeName;
    final l$defaultMedia = defaultMedia;
    final l$discountType = discountType;
    final l$adjustTax = adjustTax;
    final l$discountTerms = discountTerms;
    final l$discountPercentage = discountPercentage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$taxMethod,
      l$documentHoldStatusType,
      l$financialPaymentMethod,
      l$paymentTermTypeId,
      l$paymentTermTypeName,
      l$defaultMedia,
      l$discountType,
      l$adjustTax,
      l$discountTerms,
      l$discountPercentage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$businessDetail$paymentTerm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$taxMethod = taxMethod;
    final lOther$taxMethod = other.taxMethod;
    if (l$taxMethod != lOther$taxMethod) {
      return false;
    }
    final l$documentHoldStatusType = documentHoldStatusType;
    final lOther$documentHoldStatusType = other.documentHoldStatusType;
    if (l$documentHoldStatusType != lOther$documentHoldStatusType) {
      return false;
    }
    final l$financialPaymentMethod = financialPaymentMethod;
    final lOther$financialPaymentMethod = other.financialPaymentMethod;
    if (l$financialPaymentMethod != lOther$financialPaymentMethod) {
      return false;
    }
    final l$paymentTermTypeId = paymentTermTypeId;
    final lOther$paymentTermTypeId = other.paymentTermTypeId;
    if (l$paymentTermTypeId != lOther$paymentTermTypeId) {
      return false;
    }
    final l$paymentTermTypeName = paymentTermTypeName;
    final lOther$paymentTermTypeName = other.paymentTermTypeName;
    if (l$paymentTermTypeName != lOther$paymentTermTypeName) {
      return false;
    }
    final l$defaultMedia = defaultMedia;
    final lOther$defaultMedia = other.defaultMedia;
    if (l$defaultMedia != lOther$defaultMedia) {
      return false;
    }
    final l$discountType = discountType;
    final lOther$discountType = other.discountType;
    if (l$discountType != lOther$discountType) {
      return false;
    }
    final l$adjustTax = adjustTax;
    final lOther$adjustTax = other.adjustTax;
    if (l$adjustTax != lOther$adjustTax) {
      return false;
    }
    final l$discountTerms = discountTerms;
    final lOther$discountTerms = other.discountTerms;
    if (l$discountTerms != lOther$discountTerms) {
      return false;
    }
    final l$discountPercentage = discountPercentage;
    final lOther$discountPercentage = other.discountPercentage;
    if (l$discountPercentage != lOther$discountPercentage) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$businessDetail$paymentTerm
    on Query$GetAccountInfo$accountById$businessDetail$paymentTerm {
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm<
    Query$GetAccountInfo$accountById$businessDetail$paymentTerm
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm(
    Query$GetAccountInfo$accountById$businessDetail$paymentTerm instance,
    TRes Function(Query$GetAccountInfo$accountById$businessDetail$paymentTerm)
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$paymentTerm;

  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$paymentTerm;

  TRes call({
    Enum$TaxMethod? taxMethod,
    Enum$DocumentHoldStatusType? documentHoldStatusType,
    String? financialPaymentMethod,
    String? paymentTermTypeId,
    String? paymentTermTypeName,
    Enum$DefaultMedia? defaultMedia,
    Enum$DiscountType? discountType,
    bool? adjustTax,
    String? discountTerms,
    double? discountPercentage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$paymentTerm<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$paymentTerm(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$businessDetail$paymentTerm _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$businessDetail$paymentTerm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? taxMethod = _undefined,
    Object? documentHoldStatusType = _undefined,
    Object? financialPaymentMethod = _undefined,
    Object? paymentTermTypeId = _undefined,
    Object? paymentTermTypeName = _undefined,
    Object? defaultMedia = _undefined,
    Object? discountType = _undefined,
    Object? adjustTax = _undefined,
    Object? discountTerms = _undefined,
    Object? discountPercentage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$businessDetail$paymentTerm(
      taxMethod: taxMethod == _undefined || taxMethod == null
          ? _instance.taxMethod
          : (taxMethod as Enum$TaxMethod),
      documentHoldStatusType:
          documentHoldStatusType == _undefined || documentHoldStatusType == null
          ? _instance.documentHoldStatusType
          : (documentHoldStatusType as Enum$DocumentHoldStatusType),
      financialPaymentMethod:
          financialPaymentMethod == _undefined || financialPaymentMethod == null
          ? _instance.financialPaymentMethod
          : (financialPaymentMethod as String),
      paymentTermTypeId: paymentTermTypeId == _undefined
          ? _instance.paymentTermTypeId
          : (paymentTermTypeId as String?),
      paymentTermTypeName: paymentTermTypeName == _undefined
          ? _instance.paymentTermTypeName
          : (paymentTermTypeName as String?),
      defaultMedia: defaultMedia == _undefined || defaultMedia == null
          ? _instance.defaultMedia
          : (defaultMedia as Enum$DefaultMedia),
      discountType: discountType == _undefined || discountType == null
          ? _instance.discountType
          : (discountType as Enum$DiscountType),
      adjustTax: adjustTax == _undefined || adjustTax == null
          ? _instance.adjustTax
          : (adjustTax as bool),
      discountTerms: discountTerms == _undefined
          ? _instance.discountTerms
          : (discountTerms as String?),
      discountPercentage: discountPercentage == _undefined
          ? _instance.discountPercentage
          : (discountPercentage as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$paymentTerm<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$paymentTerm<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$paymentTerm(
    this._res,
  );

  TRes _res;

  call({
    Enum$TaxMethod? taxMethod,
    Enum$DocumentHoldStatusType? documentHoldStatusType,
    String? financialPaymentMethod,
    String? paymentTermTypeId,
    String? paymentTermTypeName,
    Enum$DefaultMedia? defaultMedia,
    Enum$DiscountType? discountType,
    bool? adjustTax,
    String? discountTerms,
    double? discountPercentage,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$businessDetail$creditTerm {
  Query$GetAccountInfo$accountById$businessDetail$creditTerm({
    required this.vatClass,
    this.paymentTermTypeId,
    this.paymentTermTypeName,
    required this.dueDateFrom,
    required this.limitDecisionType,
    required this.invoicePeriodicity,
    this.invoicePeriodicityDays,
    required this.onStop,
    this.$__typename = 'CreditTerm',
  });

  factory Query$GetAccountInfo$accountById$businessDetail$creditTerm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vatClass = json['vatClass'];
    final l$paymentTermTypeId = json['paymentTermTypeId'];
    final l$paymentTermTypeName = json['paymentTermTypeName'];
    final l$dueDateFrom = json['dueDateFrom'];
    final l$limitDecisionType = json['limitDecisionType'];
    final l$invoicePeriodicity = json['invoicePeriodicity'];
    final l$invoicePeriodicityDays = json['invoicePeriodicityDays'];
    final l$onStop = json['onStop'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$businessDetail$creditTerm(
      vatClass: fromJson$Enum$VatClass((l$vatClass as String)),
      paymentTermTypeId: (l$paymentTermTypeId as String?),
      paymentTermTypeName: (l$paymentTermTypeName as String?),
      dueDateFrom: fromJson$Enum$DueDateFrom((l$dueDateFrom as String)),
      limitDecisionType: fromJson$Enum$LimitDecisionType(
        (l$limitDecisionType as String),
      ),
      invoicePeriodicity: fromJson$Enum$InvoicePeriodicity(
        (l$invoicePeriodicity as String),
      ),
      invoicePeriodicityDays: (l$invoicePeriodicityDays as String?),
      onStop: (l$onStop as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$VatClass vatClass;

  final String? paymentTermTypeId;

  final String? paymentTermTypeName;

  final Enum$DueDateFrom dueDateFrom;

  final Enum$LimitDecisionType limitDecisionType;

  final Enum$InvoicePeriodicity invoicePeriodicity;

  final String? invoicePeriodicityDays;

  final bool onStop;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vatClass = vatClass;
    _resultData['vatClass'] = toJson$Enum$VatClass(l$vatClass);
    final l$paymentTermTypeId = paymentTermTypeId;
    _resultData['paymentTermTypeId'] = l$paymentTermTypeId;
    final l$paymentTermTypeName = paymentTermTypeName;
    _resultData['paymentTermTypeName'] = l$paymentTermTypeName;
    final l$dueDateFrom = dueDateFrom;
    _resultData['dueDateFrom'] = toJson$Enum$DueDateFrom(l$dueDateFrom);
    final l$limitDecisionType = limitDecisionType;
    _resultData['limitDecisionType'] = toJson$Enum$LimitDecisionType(
      l$limitDecisionType,
    );
    final l$invoicePeriodicity = invoicePeriodicity;
    _resultData['invoicePeriodicity'] = toJson$Enum$InvoicePeriodicity(
      l$invoicePeriodicity,
    );
    final l$invoicePeriodicityDays = invoicePeriodicityDays;
    _resultData['invoicePeriodicityDays'] = l$invoicePeriodicityDays;
    final l$onStop = onStop;
    _resultData['onStop'] = l$onStop;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vatClass = vatClass;
    final l$paymentTermTypeId = paymentTermTypeId;
    final l$paymentTermTypeName = paymentTermTypeName;
    final l$dueDateFrom = dueDateFrom;
    final l$limitDecisionType = limitDecisionType;
    final l$invoicePeriodicity = invoicePeriodicity;
    final l$invoicePeriodicityDays = invoicePeriodicityDays;
    final l$onStop = onStop;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vatClass,
      l$paymentTermTypeId,
      l$paymentTermTypeName,
      l$dueDateFrom,
      l$limitDecisionType,
      l$invoicePeriodicity,
      l$invoicePeriodicityDays,
      l$onStop,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$businessDetail$creditTerm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vatClass = vatClass;
    final lOther$vatClass = other.vatClass;
    if (l$vatClass != lOther$vatClass) {
      return false;
    }
    final l$paymentTermTypeId = paymentTermTypeId;
    final lOther$paymentTermTypeId = other.paymentTermTypeId;
    if (l$paymentTermTypeId != lOther$paymentTermTypeId) {
      return false;
    }
    final l$paymentTermTypeName = paymentTermTypeName;
    final lOther$paymentTermTypeName = other.paymentTermTypeName;
    if (l$paymentTermTypeName != lOther$paymentTermTypeName) {
      return false;
    }
    final l$dueDateFrom = dueDateFrom;
    final lOther$dueDateFrom = other.dueDateFrom;
    if (l$dueDateFrom != lOther$dueDateFrom) {
      return false;
    }
    final l$limitDecisionType = limitDecisionType;
    final lOther$limitDecisionType = other.limitDecisionType;
    if (l$limitDecisionType != lOther$limitDecisionType) {
      return false;
    }
    final l$invoicePeriodicity = invoicePeriodicity;
    final lOther$invoicePeriodicity = other.invoicePeriodicity;
    if (l$invoicePeriodicity != lOther$invoicePeriodicity) {
      return false;
    }
    final l$invoicePeriodicityDays = invoicePeriodicityDays;
    final lOther$invoicePeriodicityDays = other.invoicePeriodicityDays;
    if (l$invoicePeriodicityDays != lOther$invoicePeriodicityDays) {
      return false;
    }
    final l$onStop = onStop;
    final lOther$onStop = other.onStop;
    if (l$onStop != lOther$onStop) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$businessDetail$creditTerm
    on Query$GetAccountInfo$accountById$businessDetail$creditTerm {
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm<
    Query$GetAccountInfo$accountById$businessDetail$creditTerm
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm(
    Query$GetAccountInfo$accountById$businessDetail$creditTerm instance,
    TRes Function(Query$GetAccountInfo$accountById$businessDetail$creditTerm)
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$creditTerm;

  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$creditTerm;

  TRes call({
    Enum$VatClass? vatClass,
    String? paymentTermTypeId,
    String? paymentTermTypeName,
    Enum$DueDateFrom? dueDateFrom,
    Enum$LimitDecisionType? limitDecisionType,
    Enum$InvoicePeriodicity? invoicePeriodicity,
    String? invoicePeriodicityDays,
    bool? onStop,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$creditTerm<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$creditTerm(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$businessDetail$creditTerm _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$businessDetail$creditTerm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vatClass = _undefined,
    Object? paymentTermTypeId = _undefined,
    Object? paymentTermTypeName = _undefined,
    Object? dueDateFrom = _undefined,
    Object? limitDecisionType = _undefined,
    Object? invoicePeriodicity = _undefined,
    Object? invoicePeriodicityDays = _undefined,
    Object? onStop = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$businessDetail$creditTerm(
      vatClass: vatClass == _undefined || vatClass == null
          ? _instance.vatClass
          : (vatClass as Enum$VatClass),
      paymentTermTypeId: paymentTermTypeId == _undefined
          ? _instance.paymentTermTypeId
          : (paymentTermTypeId as String?),
      paymentTermTypeName: paymentTermTypeName == _undefined
          ? _instance.paymentTermTypeName
          : (paymentTermTypeName as String?),
      dueDateFrom: dueDateFrom == _undefined || dueDateFrom == null
          ? _instance.dueDateFrom
          : (dueDateFrom as Enum$DueDateFrom),
      limitDecisionType:
          limitDecisionType == _undefined || limitDecisionType == null
          ? _instance.limitDecisionType
          : (limitDecisionType as Enum$LimitDecisionType),
      invoicePeriodicity:
          invoicePeriodicity == _undefined || invoicePeriodicity == null
          ? _instance.invoicePeriodicity
          : (invoicePeriodicity as Enum$InvoicePeriodicity),
      invoicePeriodicityDays: invoicePeriodicityDays == _undefined
          ? _instance.invoicePeriodicityDays
          : (invoicePeriodicityDays as String?),
      onStop: onStop == _undefined || onStop == null
          ? _instance.onStop
          : (onStop as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$creditTerm<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditTerm<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$creditTerm(
    this._res,
  );

  TRes _res;

  call({
    Enum$VatClass? vatClass,
    String? paymentTermTypeId,
    String? paymentTermTypeName,
    Enum$DueDateFrom? dueDateFrom,
    Enum$LimitDecisionType? limitDecisionType,
    Enum$InvoicePeriodicity? invoicePeriodicity,
    String? invoicePeriodicityDays,
    bool? onStop,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$businessDetail$invoicingOptions {
  Query$GetAccountInfo$accountById$businessDetail$invoicingOptions({
    required this.bulkPod,
    required this.multiLoad,
    required this.multiDepot,
    required this.multiGrade,
    required this.multiTicketDate,
    required this.multiLocation,
    required this.useDeliveryAddress,
    required this.suppressInvoice,
    required this.suppressStatement,
    this.$__typename = 'InvoicingOptions',
  });

  factory Query$GetAccountInfo$accountById$businessDetail$invoicingOptions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$bulkPod = json['bulkPod'];
    final l$multiLoad = json['multiLoad'];
    final l$multiDepot = json['multiDepot'];
    final l$multiGrade = json['multiGrade'];
    final l$multiTicketDate = json['multiTicketDate'];
    final l$multiLocation = json['multiLocation'];
    final l$useDeliveryAddress = json['useDeliveryAddress'];
    final l$suppressInvoice = json['suppressInvoice'];
    final l$suppressStatement = json['suppressStatement'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$businessDetail$invoicingOptions(
      bulkPod: (l$bulkPod as bool),
      multiLoad: (l$multiLoad as bool),
      multiDepot: (l$multiDepot as bool),
      multiGrade: (l$multiGrade as bool),
      multiTicketDate: (l$multiTicketDate as bool),
      multiLocation: (l$multiLocation as bool),
      useDeliveryAddress: (l$useDeliveryAddress as bool),
      suppressInvoice: (l$suppressInvoice as bool),
      suppressStatement: (l$suppressStatement as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool bulkPod;

  final bool multiLoad;

  final bool multiDepot;

  final bool multiGrade;

  final bool multiTicketDate;

  final bool multiLocation;

  final bool useDeliveryAddress;

  final bool suppressInvoice;

  final bool suppressStatement;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bulkPod = bulkPod;
    _resultData['bulkPod'] = l$bulkPod;
    final l$multiLoad = multiLoad;
    _resultData['multiLoad'] = l$multiLoad;
    final l$multiDepot = multiDepot;
    _resultData['multiDepot'] = l$multiDepot;
    final l$multiGrade = multiGrade;
    _resultData['multiGrade'] = l$multiGrade;
    final l$multiTicketDate = multiTicketDate;
    _resultData['multiTicketDate'] = l$multiTicketDate;
    final l$multiLocation = multiLocation;
    _resultData['multiLocation'] = l$multiLocation;
    final l$useDeliveryAddress = useDeliveryAddress;
    _resultData['useDeliveryAddress'] = l$useDeliveryAddress;
    final l$suppressInvoice = suppressInvoice;
    _resultData['suppressInvoice'] = l$suppressInvoice;
    final l$suppressStatement = suppressStatement;
    _resultData['suppressStatement'] = l$suppressStatement;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bulkPod = bulkPod;
    final l$multiLoad = multiLoad;
    final l$multiDepot = multiDepot;
    final l$multiGrade = multiGrade;
    final l$multiTicketDate = multiTicketDate;
    final l$multiLocation = multiLocation;
    final l$useDeliveryAddress = useDeliveryAddress;
    final l$suppressInvoice = suppressInvoice;
    final l$suppressStatement = suppressStatement;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bulkPod,
      l$multiLoad,
      l$multiDepot,
      l$multiGrade,
      l$multiTicketDate,
      l$multiLocation,
      l$useDeliveryAddress,
      l$suppressInvoice,
      l$suppressStatement,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$businessDetail$invoicingOptions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bulkPod = bulkPod;
    final lOther$bulkPod = other.bulkPod;
    if (l$bulkPod != lOther$bulkPod) {
      return false;
    }
    final l$multiLoad = multiLoad;
    final lOther$multiLoad = other.multiLoad;
    if (l$multiLoad != lOther$multiLoad) {
      return false;
    }
    final l$multiDepot = multiDepot;
    final lOther$multiDepot = other.multiDepot;
    if (l$multiDepot != lOther$multiDepot) {
      return false;
    }
    final l$multiGrade = multiGrade;
    final lOther$multiGrade = other.multiGrade;
    if (l$multiGrade != lOther$multiGrade) {
      return false;
    }
    final l$multiTicketDate = multiTicketDate;
    final lOther$multiTicketDate = other.multiTicketDate;
    if (l$multiTicketDate != lOther$multiTicketDate) {
      return false;
    }
    final l$multiLocation = multiLocation;
    final lOther$multiLocation = other.multiLocation;
    if (l$multiLocation != lOther$multiLocation) {
      return false;
    }
    final l$useDeliveryAddress = useDeliveryAddress;
    final lOther$useDeliveryAddress = other.useDeliveryAddress;
    if (l$useDeliveryAddress != lOther$useDeliveryAddress) {
      return false;
    }
    final l$suppressInvoice = suppressInvoice;
    final lOther$suppressInvoice = other.suppressInvoice;
    if (l$suppressInvoice != lOther$suppressInvoice) {
      return false;
    }
    final l$suppressStatement = suppressStatement;
    final lOther$suppressStatement = other.suppressStatement;
    if (l$suppressStatement != lOther$suppressStatement) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions
    on Query$GetAccountInfo$accountById$businessDetail$invoicingOptions {
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions<
    Query$GetAccountInfo$accountById$businessDetail$invoicingOptions
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions(
    Query$GetAccountInfo$accountById$businessDetail$invoicingOptions instance,
    TRes Function(
      Query$GetAccountInfo$accountById$businessDetail$invoicingOptions,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions;

  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions;

  TRes call({
    bool? bulkPod,
    bool? multiLoad,
    bool? multiDepot,
    bool? multiGrade,
    bool? multiTicketDate,
    bool? multiLocation,
    bool? useDeliveryAddress,
    bool? suppressInvoice,
    bool? suppressStatement,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$businessDetail$invoicingOptions
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$businessDetail$invoicingOptions,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bulkPod = _undefined,
    Object? multiLoad = _undefined,
    Object? multiDepot = _undefined,
    Object? multiGrade = _undefined,
    Object? multiTicketDate = _undefined,
    Object? multiLocation = _undefined,
    Object? useDeliveryAddress = _undefined,
    Object? suppressInvoice = _undefined,
    Object? suppressStatement = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$businessDetail$invoicingOptions(
      bulkPod: bulkPod == _undefined || bulkPod == null
          ? _instance.bulkPod
          : (bulkPod as bool),
      multiLoad: multiLoad == _undefined || multiLoad == null
          ? _instance.multiLoad
          : (multiLoad as bool),
      multiDepot: multiDepot == _undefined || multiDepot == null
          ? _instance.multiDepot
          : (multiDepot as bool),
      multiGrade: multiGrade == _undefined || multiGrade == null
          ? _instance.multiGrade
          : (multiGrade as bool),
      multiTicketDate: multiTicketDate == _undefined || multiTicketDate == null
          ? _instance.multiTicketDate
          : (multiTicketDate as bool),
      multiLocation: multiLocation == _undefined || multiLocation == null
          ? _instance.multiLocation
          : (multiLocation as bool),
      useDeliveryAddress:
          useDeliveryAddress == _undefined || useDeliveryAddress == null
          ? _instance.useDeliveryAddress
          : (useDeliveryAddress as bool),
      suppressInvoice: suppressInvoice == _undefined || suppressInvoice == null
          ? _instance.suppressInvoice
          : (suppressInvoice as bool),
      suppressStatement:
          suppressStatement == _undefined || suppressStatement == null
          ? _instance.suppressStatement
          : (suppressStatement as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$invoicingOptions(
    this._res,
  );

  TRes _res;

  call({
    bool? bulkPod,
    bool? multiLoad,
    bool? multiDepot,
    bool? multiGrade,
    bool? multiTicketDate,
    bool? multiLocation,
    bool? useDeliveryAddress,
    bool? suppressInvoice,
    bool? suppressStatement,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$businessDetail$selfBilling {
  Query$GetAccountInfo$accountById$businessDetail$selfBilling({
    required this.selfBillingDate,
    required this.frequency,
    required this.autoApprove,
    this.doNotPayTicketsOlderThan,
    this.payTicketsOlderThan,
    this.payCentre,
    this.$__typename = 'SelfBilling',
  });

  factory Query$GetAccountInfo$accountById$businessDetail$selfBilling.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$selfBillingDate = json['selfBillingDate'];
    final l$frequency = json['frequency'];
    final l$autoApprove = json['autoApprove'];
    final l$doNotPayTicketsOlderThan = json['doNotPayTicketsOlderThan'];
    final l$payTicketsOlderThan = json['payTicketsOlderThan'];
    final l$payCentre = json['payCentre'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$businessDetail$selfBilling(
      selfBillingDate: DateTime.parse((l$selfBillingDate as String)),
      frequency: fromJson$Enum$SelfBillingFrequency((l$frequency as String)),
      autoApprove: (l$autoApprove as bool),
      doNotPayTicketsOlderThan: (l$doNotPayTicketsOlderThan as int?),
      payTicketsOlderThan: (l$payTicketsOlderThan as int?),
      payCentre: (l$payCentre as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime selfBillingDate;

  final Enum$SelfBillingFrequency frequency;

  final bool autoApprove;

  final int? doNotPayTicketsOlderThan;

  final int? payTicketsOlderThan;

  final String? payCentre;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$selfBillingDate = selfBillingDate;
    _resultData['selfBillingDate'] = l$selfBillingDate.toIso8601String();
    final l$frequency = frequency;
    _resultData['frequency'] = toJson$Enum$SelfBillingFrequency(l$frequency);
    final l$autoApprove = autoApprove;
    _resultData['autoApprove'] = l$autoApprove;
    final l$doNotPayTicketsOlderThan = doNotPayTicketsOlderThan;
    _resultData['doNotPayTicketsOlderThan'] = l$doNotPayTicketsOlderThan;
    final l$payTicketsOlderThan = payTicketsOlderThan;
    _resultData['payTicketsOlderThan'] = l$payTicketsOlderThan;
    final l$payCentre = payCentre;
    _resultData['payCentre'] = l$payCentre;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$selfBillingDate = selfBillingDate;
    final l$frequency = frequency;
    final l$autoApprove = autoApprove;
    final l$doNotPayTicketsOlderThan = doNotPayTicketsOlderThan;
    final l$payTicketsOlderThan = payTicketsOlderThan;
    final l$payCentre = payCentre;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$selfBillingDate,
      l$frequency,
      l$autoApprove,
      l$doNotPayTicketsOlderThan,
      l$payTicketsOlderThan,
      l$payCentre,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$businessDetail$selfBilling ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$selfBillingDate = selfBillingDate;
    final lOther$selfBillingDate = other.selfBillingDate;
    if (l$selfBillingDate != lOther$selfBillingDate) {
      return false;
    }
    final l$frequency = frequency;
    final lOther$frequency = other.frequency;
    if (l$frequency != lOther$frequency) {
      return false;
    }
    final l$autoApprove = autoApprove;
    final lOther$autoApprove = other.autoApprove;
    if (l$autoApprove != lOther$autoApprove) {
      return false;
    }
    final l$doNotPayTicketsOlderThan = doNotPayTicketsOlderThan;
    final lOther$doNotPayTicketsOlderThan = other.doNotPayTicketsOlderThan;
    if (l$doNotPayTicketsOlderThan != lOther$doNotPayTicketsOlderThan) {
      return false;
    }
    final l$payTicketsOlderThan = payTicketsOlderThan;
    final lOther$payTicketsOlderThan = other.payTicketsOlderThan;
    if (l$payTicketsOlderThan != lOther$payTicketsOlderThan) {
      return false;
    }
    final l$payCentre = payCentre;
    final lOther$payCentre = other.payCentre;
    if (l$payCentre != lOther$payCentre) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$businessDetail$selfBilling
    on Query$GetAccountInfo$accountById$businessDetail$selfBilling {
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling<
    Query$GetAccountInfo$accountById$businessDetail$selfBilling
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling(
    Query$GetAccountInfo$accountById$businessDetail$selfBilling instance,
    TRes Function(Query$GetAccountInfo$accountById$businessDetail$selfBilling)
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$selfBilling;

  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$selfBilling;

  TRes call({
    DateTime? selfBillingDate,
    Enum$SelfBillingFrequency? frequency,
    bool? autoApprove,
    int? doNotPayTicketsOlderThan,
    int? payTicketsOlderThan,
    String? payCentre,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$selfBilling<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$selfBilling(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$businessDetail$selfBilling _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$businessDetail$selfBilling,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? selfBillingDate = _undefined,
    Object? frequency = _undefined,
    Object? autoApprove = _undefined,
    Object? doNotPayTicketsOlderThan = _undefined,
    Object? payTicketsOlderThan = _undefined,
    Object? payCentre = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$businessDetail$selfBilling(
      selfBillingDate: selfBillingDate == _undefined || selfBillingDate == null
          ? _instance.selfBillingDate
          : (selfBillingDate as DateTime),
      frequency: frequency == _undefined || frequency == null
          ? _instance.frequency
          : (frequency as Enum$SelfBillingFrequency),
      autoApprove: autoApprove == _undefined || autoApprove == null
          ? _instance.autoApprove
          : (autoApprove as bool),
      doNotPayTicketsOlderThan: doNotPayTicketsOlderThan == _undefined
          ? _instance.doNotPayTicketsOlderThan
          : (doNotPayTicketsOlderThan as int?),
      payTicketsOlderThan: payTicketsOlderThan == _undefined
          ? _instance.payTicketsOlderThan
          : (payTicketsOlderThan as int?),
      payCentre: payCentre == _undefined
          ? _instance.payCentre
          : (payCentre as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$selfBilling<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$selfBilling<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$selfBilling(
    this._res,
  );

  TRes _res;

  call({
    DateTime? selfBillingDate,
    Enum$SelfBillingFrequency? frequency,
    bool? autoApprove,
    int? doNotPayTicketsOlderThan,
    int? payTicketsOlderThan,
    String? payCentre,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$businessDetail$creditControl {
  Query$GetAccountInfo$accountById$businessDetail$creditControl({
    required this.contraAgreed,
    required this.insurerPolicyName,
    this.creditLimit,
    this.overrideLimit,
    this.decisionLimit,
    this.creditReportDate,
    this.creditReportValue,
    this.creditLimitReviewDate,
    this.currencyId,
    this.$__typename = 'CreditControl',
  });

  factory Query$GetAccountInfo$accountById$businessDetail$creditControl.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$contraAgreed = json['contraAgreed'];
    final l$insurerPolicyName = json['insurerPolicyName'];
    final l$creditLimit = json['creditLimit'];
    final l$overrideLimit = json['overrideLimit'];
    final l$decisionLimit = json['decisionLimit'];
    final l$creditReportDate = json['creditReportDate'];
    final l$creditReportValue = json['creditReportValue'];
    final l$creditLimitReviewDate = json['creditLimitReviewDate'];
    final l$currencyId = json['currencyId'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$businessDetail$creditControl(
      contraAgreed: (l$contraAgreed as bool),
      insurerPolicyName: fromJson$Enum$InsurerPolicyType(
        (l$insurerPolicyName as String),
      ),
      creditLimit: (l$creditLimit as num?)?.toDouble(),
      overrideLimit: (l$overrideLimit as num?)?.toDouble(),
      decisionLimit: (l$decisionLimit as num?)?.toDouble(),
      creditReportDate: l$creditReportDate == null
          ? null
          : DateTime.parse((l$creditReportDate as String)),
      creditReportValue: (l$creditReportValue as num?)?.toDouble(),
      creditLimitReviewDate: l$creditLimitReviewDate == null
          ? null
          : DateTime.parse((l$creditLimitReviewDate as String)),
      currencyId: (l$currencyId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool contraAgreed;

  final Enum$InsurerPolicyType insurerPolicyName;

  final double? creditLimit;

  final double? overrideLimit;

  final double? decisionLimit;

  final DateTime? creditReportDate;

  final double? creditReportValue;

  final DateTime? creditLimitReviewDate;

  final String? currencyId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contraAgreed = contraAgreed;
    _resultData['contraAgreed'] = l$contraAgreed;
    final l$insurerPolicyName = insurerPolicyName;
    _resultData['insurerPolicyName'] = toJson$Enum$InsurerPolicyType(
      l$insurerPolicyName,
    );
    final l$creditLimit = creditLimit;
    _resultData['creditLimit'] = l$creditLimit;
    final l$overrideLimit = overrideLimit;
    _resultData['overrideLimit'] = l$overrideLimit;
    final l$decisionLimit = decisionLimit;
    _resultData['decisionLimit'] = l$decisionLimit;
    final l$creditReportDate = creditReportDate;
    _resultData['creditReportDate'] = l$creditReportDate?.toIso8601String();
    final l$creditReportValue = creditReportValue;
    _resultData['creditReportValue'] = l$creditReportValue;
    final l$creditLimitReviewDate = creditLimitReviewDate;
    _resultData['creditLimitReviewDate'] = l$creditLimitReviewDate
        ?.toIso8601String();
    final l$currencyId = currencyId;
    _resultData['currencyId'] = l$currencyId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contraAgreed = contraAgreed;
    final l$insurerPolicyName = insurerPolicyName;
    final l$creditLimit = creditLimit;
    final l$overrideLimit = overrideLimit;
    final l$decisionLimit = decisionLimit;
    final l$creditReportDate = creditReportDate;
    final l$creditReportValue = creditReportValue;
    final l$creditLimitReviewDate = creditLimitReviewDate;
    final l$currencyId = currencyId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contraAgreed,
      l$insurerPolicyName,
      l$creditLimit,
      l$overrideLimit,
      l$decisionLimit,
      l$creditReportDate,
      l$creditReportValue,
      l$creditLimitReviewDate,
      l$currencyId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$businessDetail$creditControl ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contraAgreed = contraAgreed;
    final lOther$contraAgreed = other.contraAgreed;
    if (l$contraAgreed != lOther$contraAgreed) {
      return false;
    }
    final l$insurerPolicyName = insurerPolicyName;
    final lOther$insurerPolicyName = other.insurerPolicyName;
    if (l$insurerPolicyName != lOther$insurerPolicyName) {
      return false;
    }
    final l$creditLimit = creditLimit;
    final lOther$creditLimit = other.creditLimit;
    if (l$creditLimit != lOther$creditLimit) {
      return false;
    }
    final l$overrideLimit = overrideLimit;
    final lOther$overrideLimit = other.overrideLimit;
    if (l$overrideLimit != lOther$overrideLimit) {
      return false;
    }
    final l$decisionLimit = decisionLimit;
    final lOther$decisionLimit = other.decisionLimit;
    if (l$decisionLimit != lOther$decisionLimit) {
      return false;
    }
    final l$creditReportDate = creditReportDate;
    final lOther$creditReportDate = other.creditReportDate;
    if (l$creditReportDate != lOther$creditReportDate) {
      return false;
    }
    final l$creditReportValue = creditReportValue;
    final lOther$creditReportValue = other.creditReportValue;
    if (l$creditReportValue != lOther$creditReportValue) {
      return false;
    }
    final l$creditLimitReviewDate = creditLimitReviewDate;
    final lOther$creditLimitReviewDate = other.creditLimitReviewDate;
    if (l$creditLimitReviewDate != lOther$creditLimitReviewDate) {
      return false;
    }
    final l$currencyId = currencyId;
    final lOther$currencyId = other.currencyId;
    if (l$currencyId != lOther$currencyId) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$businessDetail$creditControl
    on Query$GetAccountInfo$accountById$businessDetail$creditControl {
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl<
    Query$GetAccountInfo$accountById$businessDetail$creditControl
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl(
    Query$GetAccountInfo$accountById$businessDetail$creditControl instance,
    TRes Function(Query$GetAccountInfo$accountById$businessDetail$creditControl)
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$creditControl;

  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$creditControl;

  TRes call({
    bool? contraAgreed,
    Enum$InsurerPolicyType? insurerPolicyName,
    double? creditLimit,
    double? overrideLimit,
    double? decisionLimit,
    DateTime? creditReportDate,
    double? creditReportValue,
    DateTime? creditLimitReviewDate,
    String? currencyId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$creditControl<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$creditControl(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$businessDetail$creditControl _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$businessDetail$creditControl,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contraAgreed = _undefined,
    Object? insurerPolicyName = _undefined,
    Object? creditLimit = _undefined,
    Object? overrideLimit = _undefined,
    Object? decisionLimit = _undefined,
    Object? creditReportDate = _undefined,
    Object? creditReportValue = _undefined,
    Object? creditLimitReviewDate = _undefined,
    Object? currencyId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$businessDetail$creditControl(
      contraAgreed: contraAgreed == _undefined || contraAgreed == null
          ? _instance.contraAgreed
          : (contraAgreed as bool),
      insurerPolicyName:
          insurerPolicyName == _undefined || insurerPolicyName == null
          ? _instance.insurerPolicyName
          : (insurerPolicyName as Enum$InsurerPolicyType),
      creditLimit: creditLimit == _undefined
          ? _instance.creditLimit
          : (creditLimit as double?),
      overrideLimit: overrideLimit == _undefined
          ? _instance.overrideLimit
          : (overrideLimit as double?),
      decisionLimit: decisionLimit == _undefined
          ? _instance.decisionLimit
          : (decisionLimit as double?),
      creditReportDate: creditReportDate == _undefined
          ? _instance.creditReportDate
          : (creditReportDate as DateTime?),
      creditReportValue: creditReportValue == _undefined
          ? _instance.creditReportValue
          : (creditReportValue as double?),
      creditLimitReviewDate: creditLimitReviewDate == _undefined
          ? _instance.creditLimitReviewDate
          : (creditLimitReviewDate as DateTime?),
      currencyId: currencyId == _undefined
          ? _instance.currencyId
          : (currencyId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$creditControl<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$creditControl<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$creditControl(
    this._res,
  );

  TRes _res;

  call({
    bool? contraAgreed,
    Enum$InsurerPolicyType? insurerPolicyName,
    double? creditLimit,
    double? overrideLimit,
    double? decisionLimit,
    DateTime? creditReportDate,
    double? creditReportValue,
    DateTime? creditLimitReviewDate,
    String? currencyId,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$businessDetail$licenseExemption {
  Query$GetAccountInfo$accountById$businessDetail$licenseExemption({
    required this.wasteTransferLicense,
    required this.annualWasteTransferNote,
    required this.wasteProducer,
    required this.wasteImporter,
    required this.wasteTransporter,
    required this.wasteRegCarrier,
    this.wasteRegCarrierNumber,
    this.$__typename = 'LicenseExemption',
  });

  factory Query$GetAccountInfo$accountById$businessDetail$licenseExemption.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$wasteTransferLicense = json['wasteTransferLicense'];
    final l$annualWasteTransferNote = json['annualWasteTransferNote'];
    final l$wasteProducer = json['wasteProducer'];
    final l$wasteImporter = json['wasteImporter'];
    final l$wasteTransporter = json['wasteTransporter'];
    final l$wasteRegCarrier = json['wasteRegCarrier'];
    final l$wasteRegCarrierNumber = json['wasteRegCarrierNumber'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$businessDetail$licenseExemption(
      wasteTransferLicense:
          Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense.fromJson(
            (l$wasteTransferLicense as Map<String, dynamic>),
          ),
      annualWasteTransferNote: (l$annualWasteTransferNote as bool),
      wasteProducer: (l$wasteProducer as bool),
      wasteImporter: (l$wasteImporter as bool),
      wasteTransporter: (l$wasteTransporter as bool),
      wasteRegCarrier: (l$wasteRegCarrier as bool),
      wasteRegCarrierNumber: (l$wasteRegCarrierNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense
  wasteTransferLicense;

  final bool annualWasteTransferNote;

  final bool wasteProducer;

  final bool wasteImporter;

  final bool wasteTransporter;

  final bool wasteRegCarrier;

  final String? wasteRegCarrierNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$wasteTransferLicense = wasteTransferLicense;
    _resultData['wasteTransferLicense'] = l$wasteTransferLicense.toJson();
    final l$annualWasteTransferNote = annualWasteTransferNote;
    _resultData['annualWasteTransferNote'] = l$annualWasteTransferNote;
    final l$wasteProducer = wasteProducer;
    _resultData['wasteProducer'] = l$wasteProducer;
    final l$wasteImporter = wasteImporter;
    _resultData['wasteImporter'] = l$wasteImporter;
    final l$wasteTransporter = wasteTransporter;
    _resultData['wasteTransporter'] = l$wasteTransporter;
    final l$wasteRegCarrier = wasteRegCarrier;
    _resultData['wasteRegCarrier'] = l$wasteRegCarrier;
    final l$wasteRegCarrierNumber = wasteRegCarrierNumber;
    _resultData['wasteRegCarrierNumber'] = l$wasteRegCarrierNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$wasteTransferLicense = wasteTransferLicense;
    final l$annualWasteTransferNote = annualWasteTransferNote;
    final l$wasteProducer = wasteProducer;
    final l$wasteImporter = wasteImporter;
    final l$wasteTransporter = wasteTransporter;
    final l$wasteRegCarrier = wasteRegCarrier;
    final l$wasteRegCarrierNumber = wasteRegCarrierNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$wasteTransferLicense,
      l$annualWasteTransferNote,
      l$wasteProducer,
      l$wasteImporter,
      l$wasteTransporter,
      l$wasteRegCarrier,
      l$wasteRegCarrierNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$businessDetail$licenseExemption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wasteTransferLicense = wasteTransferLicense;
    final lOther$wasteTransferLicense = other.wasteTransferLicense;
    if (l$wasteTransferLicense != lOther$wasteTransferLicense) {
      return false;
    }
    final l$annualWasteTransferNote = annualWasteTransferNote;
    final lOther$annualWasteTransferNote = other.annualWasteTransferNote;
    if (l$annualWasteTransferNote != lOther$annualWasteTransferNote) {
      return false;
    }
    final l$wasteProducer = wasteProducer;
    final lOther$wasteProducer = other.wasteProducer;
    if (l$wasteProducer != lOther$wasteProducer) {
      return false;
    }
    final l$wasteImporter = wasteImporter;
    final lOther$wasteImporter = other.wasteImporter;
    if (l$wasteImporter != lOther$wasteImporter) {
      return false;
    }
    final l$wasteTransporter = wasteTransporter;
    final lOther$wasteTransporter = other.wasteTransporter;
    if (l$wasteTransporter != lOther$wasteTransporter) {
      return false;
    }
    final l$wasteRegCarrier = wasteRegCarrier;
    final lOther$wasteRegCarrier = other.wasteRegCarrier;
    if (l$wasteRegCarrier != lOther$wasteRegCarrier) {
      return false;
    }
    final l$wasteRegCarrierNumber = wasteRegCarrierNumber;
    final lOther$wasteRegCarrierNumber = other.wasteRegCarrierNumber;
    if (l$wasteRegCarrierNumber != lOther$wasteRegCarrierNumber) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$businessDetail$licenseExemption
    on Query$GetAccountInfo$accountById$businessDetail$licenseExemption {
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption<
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption(
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption instance,
    TRes Function(
      Query$GetAccountInfo$accountById$businessDetail$licenseExemption,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption;

  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption;

  TRes call({
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense?
    wasteTransferLicense,
    bool? annualWasteTransferNote,
    bool? wasteProducer,
    bool? wasteImporter,
    bool? wasteTransporter,
    bool? wasteRegCarrier,
    String? wasteRegCarrierNumber,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense<
    TRes
  >
  get wasteTransferLicense;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$businessDetail$licenseExemption
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? wasteTransferLicense = _undefined,
    Object? annualWasteTransferNote = _undefined,
    Object? wasteProducer = _undefined,
    Object? wasteImporter = _undefined,
    Object? wasteTransporter = _undefined,
    Object? wasteRegCarrier = _undefined,
    Object? wasteRegCarrierNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption(
      wasteTransferLicense:
          wasteTransferLicense == _undefined || wasteTransferLicense == null
          ? _instance.wasteTransferLicense
          : (wasteTransferLicense
                as Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense),
      annualWasteTransferNote:
          annualWasteTransferNote == _undefined ||
              annualWasteTransferNote == null
          ? _instance.annualWasteTransferNote
          : (annualWasteTransferNote as bool),
      wasteProducer: wasteProducer == _undefined || wasteProducer == null
          ? _instance.wasteProducer
          : (wasteProducer as bool),
      wasteImporter: wasteImporter == _undefined || wasteImporter == null
          ? _instance.wasteImporter
          : (wasteImporter as bool),
      wasteTransporter:
          wasteTransporter == _undefined || wasteTransporter == null
          ? _instance.wasteTransporter
          : (wasteTransporter as bool),
      wasteRegCarrier: wasteRegCarrier == _undefined || wasteRegCarrier == null
          ? _instance.wasteRegCarrier
          : (wasteRegCarrier as bool),
      wasteRegCarrierNumber: wasteRegCarrierNumber == _undefined
          ? _instance.wasteRegCarrierNumber
          : (wasteRegCarrierNumber as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense<
    TRes
  >
  get wasteTransferLicense {
    final local$wasteTransferLicense = _instance.wasteTransferLicense;
    return CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense(
      local$wasteTransferLicense,
      (e) => call(wasteTransferLicense: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption(
    this._res,
  );

  TRes _res;

  call({
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense?
    wasteTransferLicense,
    bool? annualWasteTransferNote,
    bool? wasteProducer,
    bool? wasteImporter,
    bool? wasteTransporter,
    bool? wasteRegCarrier,
    String? wasteRegCarrierNumber,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense<
    TRes
  >
  get wasteTransferLicense =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense {
  Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense({
    this.media,
    required this.documentType,
    required this.validFrom,
    required this.validTo,
    this.$__typename = 'AccountDocument',
  });

  factory Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$documentType = json['documentType'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense(
      media: l$media == null
          ? null
          : Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media.fromJson(
              (l$media as Map<String, dynamic>),
            ),
      documentType: (l$documentType as String),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media?
  media;

  final String documentType;

  final DateTime validFrom;

  final DateTime validTo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$documentType = documentType;
    _resultData['documentType'] = l$documentType;
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$documentType = documentType;
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$documentType,
      l$validFrom,
      l$validTo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$documentType = documentType;
    final lOther$documentType = other.documentType;
    if (l$documentType != lOther$documentType) {
      return false;
    }
    final l$validFrom = validFrom;
    final lOther$validFrom = other.validFrom;
    if (l$validFrom != lOther$validFrom) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense
    on
        Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense {
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense<
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense(
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense;

  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense;

  TRes call({
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media?
    media,
    String? documentType,
    DateTime? validFrom,
    DateTime? validTo,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? documentType = _undefined,
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense(
      media: media == _undefined
          ? _instance.media
          : (media
                as Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media?),
      documentType: documentType == _undefined || documentType == null
          ? _instance.documentType
          : (documentType as String),
      validFrom: validFrom == _undefined || validFrom == null
          ? _instance.validFrom
          : (validFrom as DateTime),
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media(
            local$media,
            (e) => call(media: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense(
    this._res,
  );

  TRes _res;

  call({
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media?
    media,
    String? documentType,
    DateTime? validFrom,
    DateTime? validTo,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media {
  Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media
    on
        Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media {
  CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media<
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media(
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media;

  factory CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$businessDetail$licenseExemption$wasteTransferLicense$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$celAgreement {
  Query$GetAccountInfo$accountById$celAgreement({
    required this.agreementDate,
    this.expiryDate,
    this.$__typename = 'LegalAgreement',
  });

  factory Query$GetAccountInfo$accountById$celAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agreementDate = json['agreementDate'];
    final l$expiryDate = json['expiryDate'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$celAgreement(
      agreementDate: DateTime.parse((l$agreementDate as String)),
      expiryDate: l$expiryDate == null
          ? null
          : DateTime.parse((l$expiryDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime agreementDate;

  final DateTime? expiryDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agreementDate = agreementDate;
    _resultData['agreementDate'] = l$agreementDate.toIso8601String();
    final l$expiryDate = expiryDate;
    _resultData['expiryDate'] = l$expiryDate?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agreementDate = agreementDate;
    final l$expiryDate = expiryDate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$agreementDate, l$expiryDate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$celAgreement ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agreementDate = agreementDate;
    final lOther$agreementDate = other.agreementDate;
    if (l$agreementDate != lOther$agreementDate) {
      return false;
    }
    final l$expiryDate = expiryDate;
    final lOther$expiryDate = other.expiryDate;
    if (l$expiryDate != lOther$expiryDate) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$celAgreement
    on Query$GetAccountInfo$accountById$celAgreement {
  CopyWith$Query$GetAccountInfo$accountById$celAgreement<
    Query$GetAccountInfo$accountById$celAgreement
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$celAgreement(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$celAgreement<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$celAgreement(
    Query$GetAccountInfo$accountById$celAgreement instance,
    TRes Function(Query$GetAccountInfo$accountById$celAgreement) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$celAgreement;

  factory CopyWith$Query$GetAccountInfo$accountById$celAgreement.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$celAgreement;

  TRes call({
    DateTime? agreementDate,
    DateTime? expiryDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$celAgreement<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$celAgreement<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$celAgreement(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$celAgreement _instance;

  final TRes Function(Query$GetAccountInfo$accountById$celAgreement) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agreementDate = _undefined,
    Object? expiryDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$celAgreement(
      agreementDate: agreementDate == _undefined || agreementDate == null
          ? _instance.agreementDate
          : (agreementDate as DateTime),
      expiryDate: expiryDate == _undefined
          ? _instance.expiryDate
          : (expiryDate as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$celAgreement<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$celAgreement<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$celAgreement(this._res);

  TRes _res;

  call({DateTime? agreementDate, DateTime? expiryDate, String? $__typename}) =>
      _res;
}

class Query$GetAccountInfo$accountById$cfcAgreement {
  Query$GetAccountInfo$accountById$cfcAgreement({
    required this.agreementDate,
    this.expiryDate,
    this.$__typename = 'LegalAgreement',
  });

  factory Query$GetAccountInfo$accountById$cfcAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agreementDate = json['agreementDate'];
    final l$expiryDate = json['expiryDate'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$cfcAgreement(
      agreementDate: DateTime.parse((l$agreementDate as String)),
      expiryDate: l$expiryDate == null
          ? null
          : DateTime.parse((l$expiryDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime agreementDate;

  final DateTime? expiryDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agreementDate = agreementDate;
    _resultData['agreementDate'] = l$agreementDate.toIso8601String();
    final l$expiryDate = expiryDate;
    _resultData['expiryDate'] = l$expiryDate?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agreementDate = agreementDate;
    final l$expiryDate = expiryDate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$agreementDate, l$expiryDate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$cfcAgreement ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agreementDate = agreementDate;
    final lOther$agreementDate = other.agreementDate;
    if (l$agreementDate != lOther$agreementDate) {
      return false;
    }
    final l$expiryDate = expiryDate;
    final lOther$expiryDate = other.expiryDate;
    if (l$expiryDate != lOther$expiryDate) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$cfcAgreement
    on Query$GetAccountInfo$accountById$cfcAgreement {
  CopyWith$Query$GetAccountInfo$accountById$cfcAgreement<
    Query$GetAccountInfo$accountById$cfcAgreement
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$cfcAgreement(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$cfcAgreement<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$cfcAgreement(
    Query$GetAccountInfo$accountById$cfcAgreement instance,
    TRes Function(Query$GetAccountInfo$accountById$cfcAgreement) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$cfcAgreement;

  factory CopyWith$Query$GetAccountInfo$accountById$cfcAgreement.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$cfcAgreement;

  TRes call({
    DateTime? agreementDate,
    DateTime? expiryDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$cfcAgreement<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$cfcAgreement<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$cfcAgreement(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$cfcAgreement _instance;

  final TRes Function(Query$GetAccountInfo$accountById$cfcAgreement) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agreementDate = _undefined,
    Object? expiryDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$cfcAgreement(
      agreementDate: agreementDate == _undefined || agreementDate == null
          ? _instance.agreementDate
          : (agreementDate as DateTime),
      expiryDate: expiryDate == _undefined
          ? _instance.expiryDate
          : (expiryDate as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$cfcAgreement<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$cfcAgreement<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$cfcAgreement(this._res);

  TRes _res;

  call({DateTime? agreementDate, DateTime? expiryDate, String? $__typename}) =>
      _res;
}

class Query$GetAccountInfo$accountById$accountManagers {
  Query$GetAccountInfo$accountById$accountManagers({
    this.serviceType,
    this.type,
    this.id,
    this.name,
    required this.priority,
    this.userInfo,
    this.$__typename = 'AccountManagerWithKey',
  });

  factory Query$GetAccountInfo$accountById$accountManagers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$serviceType = json['serviceType'];
    final l$type = json['type'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$priority = json['priority'];
    final l$userInfo = json['userInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountManagers(
      serviceType: l$serviceType == null
          ? null
          : fromJson$Enum$ServiceType((l$serviceType as String)),
      type: l$type == null
          ? null
          : fromJson$Enum$ManagementType((l$type as String)),
      id: (l$id as String?),
      name: (l$name as String?),
      priority: (l$priority as int),
      userInfo: l$userInfo == null
          ? null
          : Query$GetAccountInfo$accountById$accountManagers$userInfo.fromJson(
              (l$userInfo as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ServiceType? serviceType;

  final Enum$ManagementType? type;

  final String? id;

  final String? name;

  final int priority;

  final Query$GetAccountInfo$accountById$accountManagers$userInfo? userInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$serviceType = serviceType;
    _resultData['serviceType'] = l$serviceType == null
        ? null
        : toJson$Enum$ServiceType(l$serviceType);
    final l$type = type;
    _resultData['type'] = l$type == null
        ? null
        : toJson$Enum$ManagementType(l$type);
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$priority = priority;
    _resultData['priority'] = l$priority;
    final l$userInfo = userInfo;
    _resultData['userInfo'] = l$userInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$serviceType = serviceType;
    final l$type = type;
    final l$id = id;
    final l$name = name;
    final l$priority = priority;
    final l$userInfo = userInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$serviceType,
      l$type,
      l$id,
      l$name,
      l$priority,
      l$userInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$accountManagers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
      return false;
    }
    final l$userInfo = userInfo;
    final lOther$userInfo = other.userInfo;
    if (l$userInfo != lOther$userInfo) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountManagers
    on Query$GetAccountInfo$accountById$accountManagers {
  CopyWith$Query$GetAccountInfo$accountById$accountManagers<
    Query$GetAccountInfo$accountById$accountManagers
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountManagers(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountManagers<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountManagers(
    Query$GetAccountInfo$accountById$accountManagers instance,
    TRes Function(Query$GetAccountInfo$accountById$accountManagers) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers;

  factory CopyWith$Query$GetAccountInfo$accountById$accountManagers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers;

  TRes call({
    Enum$ServiceType? serviceType,
    Enum$ManagementType? type,
    String? id,
    String? name,
    int? priority,
    Query$GetAccountInfo$accountById$accountManagers$userInfo? userInfo,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo<TRes>
  get userInfo;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$accountManagers<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountManagers _instance;

  final TRes Function(Query$GetAccountInfo$accountById$accountManagers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? serviceType = _undefined,
    Object? type = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? priority = _undefined,
    Object? userInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountManagers(
      serviceType: serviceType == _undefined
          ? _instance.serviceType
          : (serviceType as Enum$ServiceType?),
      type: type == _undefined
          ? _instance.type
          : (type as Enum$ManagementType?),
      id: id == _undefined ? _instance.id : (id as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      priority: priority == _undefined || priority == null
          ? _instance.priority
          : (priority as int),
      userInfo: userInfo == _undefined
          ? _instance.userInfo
          : (userInfo
                as Query$GetAccountInfo$accountById$accountManagers$userInfo?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo<TRes>
  get userInfo {
    final local$userInfo = _instance.userInfo;
    return local$userInfo == null
        ? CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo(
            local$userInfo,
            (e) => call(userInfo: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$accountManagers<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers(this._res);

  TRes _res;

  call({
    Enum$ServiceType? serviceType,
    Enum$ManagementType? type,
    String? id,
    String? name,
    int? priority,
    Query$GetAccountInfo$accountById$accountManagers$userInfo? userInfo,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo<TRes>
  get userInfo =>
      CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$accountManagers$userInfo {
  Query$GetAccountInfo$accountById$accountManagers$userInfo({
    required this.id,
    required this.name,
    required this.emailAddress,
    required this.permissions,
    this.yards,
    required this.territories,
    required this.defaultDepot,
    required this.defaultTerritory,
    this.defaultOrderBookTypeId,
    this.userOrderBooks,
    required this.t2UserId,
    required this.allAccountAccess,
    required this.azureUserId,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetAccountInfo$accountById$accountManagers$userInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$emailAddress = json['emailAddress'];
    final l$permissions = json['permissions'];
    final l$yards = json['yards'];
    final l$territories = json['territories'];
    final l$defaultDepot = json['defaultDepot'];
    final l$defaultTerritory = json['defaultTerritory'];
    final l$defaultOrderBookTypeId = json['defaultOrderBookTypeId'];
    final l$userOrderBooks = json['userOrderBooks'];
    final l$t2UserId = json['t2UserId'];
    final l$allAccountAccess = json['allAccountAccess'];
    final l$azureUserId = json['azureUserId'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountManagers$userInfo(
      id: (l$id as String),
      name: (l$name as String),
      emailAddress: (l$emailAddress as String),
      permissions: (l$permissions as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      yards: (l$yards as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAccountInfo$accountById$accountManagers$userInfo$yards.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      territories: (l$territories as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccountInfo$accountById$accountManagers$userInfo$territories.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      defaultDepot: (l$defaultDepot as String),
      defaultTerritory: (l$defaultTerritory as String),
      defaultOrderBookTypeId: (l$defaultOrderBookTypeId as int?),
      userOrderBooks: (l$userOrderBooks as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      t2UserId: (l$t2UserId as int),
      allAccountAccess: (l$allAccountAccess as bool),
      azureUserId: (l$azureUserId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String emailAddress;

  final List<String> permissions;

  final List<Query$GetAccountInfo$accountById$accountManagers$userInfo$yards?>?
  yards;

  final List<
    Query$GetAccountInfo$accountById$accountManagers$userInfo$territories
  >
  territories;

  final String defaultDepot;

  final String defaultTerritory;

  final int? defaultOrderBookTypeId;

  final List<
    Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks?
  >?
  userOrderBooks;

  final int t2UserId;

  final bool allAccountAccess;

  final String azureUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e).toList();
    final l$yards = yards;
    _resultData['yards'] = l$yards?.map((e) => e?.toJson()).toList();
    final l$territories = territories;
    _resultData['territories'] = l$territories.map((e) => e.toJson()).toList();
    final l$defaultDepot = defaultDepot;
    _resultData['defaultDepot'] = l$defaultDepot;
    final l$defaultTerritory = defaultTerritory;
    _resultData['defaultTerritory'] = l$defaultTerritory;
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    _resultData['defaultOrderBookTypeId'] = l$defaultOrderBookTypeId;
    final l$userOrderBooks = userOrderBooks;
    _resultData['userOrderBooks'] = l$userOrderBooks
        ?.map((e) => e?.toJson())
        .toList();
    final l$t2UserId = t2UserId;
    _resultData['t2UserId'] = l$t2UserId;
    final l$allAccountAccess = allAccountAccess;
    _resultData['allAccountAccess'] = l$allAccountAccess;
    final l$azureUserId = azureUserId;
    _resultData['azureUserId'] = l$azureUserId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$emailAddress = emailAddress;
    final l$permissions = permissions;
    final l$yards = yards;
    final l$territories = territories;
    final l$defaultDepot = defaultDepot;
    final l$defaultTerritory = defaultTerritory;
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    final l$userOrderBooks = userOrderBooks;
    final l$t2UserId = t2UserId;
    final l$allAccountAccess = allAccountAccess;
    final l$azureUserId = azureUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$emailAddress,
      Object.hashAll(l$permissions.map((v) => v)),
      l$yards == null ? null : Object.hashAll(l$yards.map((v) => v)),
      Object.hashAll(l$territories.map((v) => v)),
      l$defaultDepot,
      l$defaultTerritory,
      l$defaultOrderBookTypeId,
      l$userOrderBooks == null
          ? null
          : Object.hashAll(l$userOrderBooks.map((v) => v)),
      l$t2UserId,
      l$allAccountAccess,
      l$azureUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$accountManagers$userInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) {
      return false;
    }
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) {
        return false;
      }
    }
    final l$yards = yards;
    final lOther$yards = other.yards;
    if (l$yards != null && lOther$yards != null) {
      if (l$yards.length != lOther$yards.length) {
        return false;
      }
      for (int i = 0; i < l$yards.length; i++) {
        final l$yards$entry = l$yards[i];
        final lOther$yards$entry = lOther$yards[i];
        if (l$yards$entry != lOther$yards$entry) {
          return false;
        }
      }
    } else if (l$yards != lOther$yards) {
      return false;
    }
    final l$territories = territories;
    final lOther$territories = other.territories;
    if (l$territories.length != lOther$territories.length) {
      return false;
    }
    for (int i = 0; i < l$territories.length; i++) {
      final l$territories$entry = l$territories[i];
      final lOther$territories$entry = lOther$territories[i];
      if (l$territories$entry != lOther$territories$entry) {
        return false;
      }
    }
    final l$defaultDepot = defaultDepot;
    final lOther$defaultDepot = other.defaultDepot;
    if (l$defaultDepot != lOther$defaultDepot) {
      return false;
    }
    final l$defaultTerritory = defaultTerritory;
    final lOther$defaultTerritory = other.defaultTerritory;
    if (l$defaultTerritory != lOther$defaultTerritory) {
      return false;
    }
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    final lOther$defaultOrderBookTypeId = other.defaultOrderBookTypeId;
    if (l$defaultOrderBookTypeId != lOther$defaultOrderBookTypeId) {
      return false;
    }
    final l$userOrderBooks = userOrderBooks;
    final lOther$userOrderBooks = other.userOrderBooks;
    if (l$userOrderBooks != null && lOther$userOrderBooks != null) {
      if (l$userOrderBooks.length != lOther$userOrderBooks.length) {
        return false;
      }
      for (int i = 0; i < l$userOrderBooks.length; i++) {
        final l$userOrderBooks$entry = l$userOrderBooks[i];
        final lOther$userOrderBooks$entry = lOther$userOrderBooks[i];
        if (l$userOrderBooks$entry != lOther$userOrderBooks$entry) {
          return false;
        }
      }
    } else if (l$userOrderBooks != lOther$userOrderBooks) {
      return false;
    }
    final l$t2UserId = t2UserId;
    final lOther$t2UserId = other.t2UserId;
    if (l$t2UserId != lOther$t2UserId) {
      return false;
    }
    final l$allAccountAccess = allAccountAccess;
    final lOther$allAccountAccess = other.allAccountAccess;
    if (l$allAccountAccess != lOther$allAccountAccess) {
      return false;
    }
    final l$azureUserId = azureUserId;
    final lOther$azureUserId = other.azureUserId;
    if (l$azureUserId != lOther$azureUserId) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountManagers$userInfo
    on Query$GetAccountInfo$accountById$accountManagers$userInfo {
  CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo<
    Query$GetAccountInfo$accountById$accountManagers$userInfo
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo(
    Query$GetAccountInfo$accountById$accountManagers$userInfo instance,
    TRes Function(Query$GetAccountInfo$accountById$accountManagers$userInfo)
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo;

  factory CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo;

  TRes call({
    String? id,
    String? name,
    String? emailAddress,
    List<String>? permissions,
    List<Query$GetAccountInfo$accountById$accountManagers$userInfo$yards?>?
    yards,
    List<Query$GetAccountInfo$accountById$accountManagers$userInfo$territories>?
    territories,
    String? defaultDepot,
    String? defaultTerritory,
    int? defaultOrderBookTypeId,
    List<
      Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks?
    >?
    userOrderBooks,
    int? t2UserId,
    bool? allAccountAccess,
    String? azureUserId,
    String? $__typename,
  });
  TRes yards(
    Iterable<Query$GetAccountInfo$accountById$accountManagers$userInfo$yards?>?
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards<
          Query$GetAccountInfo$accountById$accountManagers$userInfo$yards
        >?
      >?,
    )
    _fn,
  );
  TRes territories(
    Iterable<
      Query$GetAccountInfo$accountById$accountManagers$userInfo$territories
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories<
          Query$GetAccountInfo$accountById$accountManagers$userInfo$territories
        >
      >,
    )
    _fn,
  );
  TRes userOrderBooks(
    Iterable<
      Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks?
    >?
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks<
          Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountManagers$userInfo _instance;

  final TRes Function(Query$GetAccountInfo$accountById$accountManagers$userInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? emailAddress = _undefined,
    Object? permissions = _undefined,
    Object? yards = _undefined,
    Object? territories = _undefined,
    Object? defaultDepot = _undefined,
    Object? defaultTerritory = _undefined,
    Object? defaultOrderBookTypeId = _undefined,
    Object? userOrderBooks = _undefined,
    Object? t2UserId = _undefined,
    Object? allAccountAccess = _undefined,
    Object? azureUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountManagers$userInfo(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<String>),
      yards: yards == _undefined
          ? _instance.yards
          : (yards
                as List<
                  Query$GetAccountInfo$accountById$accountManagers$userInfo$yards?
                >?),
      territories: territories == _undefined || territories == null
          ? _instance.territories
          : (territories
                as List<
                  Query$GetAccountInfo$accountById$accountManagers$userInfo$territories
                >),
      defaultDepot: defaultDepot == _undefined || defaultDepot == null
          ? _instance.defaultDepot
          : (defaultDepot as String),
      defaultTerritory:
          defaultTerritory == _undefined || defaultTerritory == null
          ? _instance.defaultTerritory
          : (defaultTerritory as String),
      defaultOrderBookTypeId: defaultOrderBookTypeId == _undefined
          ? _instance.defaultOrderBookTypeId
          : (defaultOrderBookTypeId as int?),
      userOrderBooks: userOrderBooks == _undefined
          ? _instance.userOrderBooks
          : (userOrderBooks
                as List<
                  Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks?
                >?),
      t2UserId: t2UserId == _undefined || t2UserId == null
          ? _instance.t2UserId
          : (t2UserId as int),
      allAccountAccess:
          allAccountAccess == _undefined || allAccountAccess == null
          ? _instance.allAccountAccess
          : (allAccountAccess as bool),
      azureUserId: azureUserId == _undefined || azureUserId == null
          ? _instance.azureUserId
          : (azureUserId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes yards(
    Iterable<Query$GetAccountInfo$accountById$accountManagers$userInfo$yards?>?
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards<
          Query$GetAccountInfo$accountById$accountManagers$userInfo$yards
        >?
      >?,
    )
    _fn,
  ) => call(
    yards: _fn(
      _instance.yards?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  TRes territories(
    Iterable<
      Query$GetAccountInfo$accountById$accountManagers$userInfo$territories
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories<
          Query$GetAccountInfo$accountById$accountManagers$userInfo$territories
        >
      >,
    )
    _fn,
  ) => call(
    territories: _fn(
      _instance.territories.map(
        (e) =>
            CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes userOrderBooks(
    Iterable<
      Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks?
    >?
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks<
          Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks
        >?
      >?,
    )
    _fn,
  ) => call(
    userOrderBooks: _fn(
      _instance.userOrderBooks?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    String? emailAddress,
    List<String>? permissions,
    List<Query$GetAccountInfo$accountById$accountManagers$userInfo$yards?>?
    yards,
    List<Query$GetAccountInfo$accountById$accountManagers$userInfo$territories>?
    territories,
    String? defaultDepot,
    String? defaultTerritory,
    int? defaultOrderBookTypeId,
    List<
      Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks?
    >?
    userOrderBooks,
    int? t2UserId,
    bool? allAccountAccess,
    String? azureUserId,
    String? $__typename,
  }) => _res;

  yards(_fn) => _res;

  territories(_fn) => _res;

  userOrderBooks(_fn) => _res;
}

class Query$GetAccountInfo$accountById$accountManagers$userInfo$yards {
  Query$GetAccountInfo$accountById$accountManagers$userInfo$yards({
    required this.yardCode,
    required this.shortName,
    required this.name,
    this.$__typename = 'UserYard',
  });

  factory Query$GetAccountInfo$accountById$accountManagers$userInfo$yards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$yardCode = json['yardCode'];
    final l$shortName = json['shortName'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountManagers$userInfo$yards(
      yardCode: (l$yardCode as String),
      shortName: (l$shortName as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String shortName;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$shortName = shortName;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$yardCode, l$shortName, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountManagers$userInfo$yards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards
    on Query$GetAccountInfo$accountById$accountManagers$userInfo$yards {
  CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards<
    Query$GetAccountInfo$accountById$accountManagers$userInfo$yards
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards(
    Query$GetAccountInfo$accountById$accountManagers$userInfo$yards instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountManagers$userInfo$yards,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards;

  factory CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards;

  TRes call({
    String? yardCode,
    String? shortName,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountManagers$userInfo$yards
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountManagers$userInfo$yards,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? shortName = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountManagers$userInfo$yards(
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$yards(
    this._res,
  );

  TRes _res;

  call({
    String? yardCode,
    String? shortName,
    String? name,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$accountManagers$userInfo$territories {
  Query$GetAccountInfo$accountById$accountManagers$userInfo$territories({
    required this.name,
    required this.territoryCode,
    this.$__typename = 'UserTerritory',
  });

  factory Query$GetAccountInfo$accountById$accountManagers$userInfo$territories.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$territoryCode = json['territoryCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountManagers$userInfo$territories(
      name: (l$name as String),
      territoryCode: (l$territoryCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String territoryCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$territoryCode = territoryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$territoryCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountManagers$userInfo$territories ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories
    on Query$GetAccountInfo$accountById$accountManagers$userInfo$territories {
  CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories<
    Query$GetAccountInfo$accountById$accountManagers$userInfo$territories
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories(
    Query$GetAccountInfo$accountById$accountManagers$userInfo$territories
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountManagers$userInfo$territories,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories;

  factory CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories;

  TRes call({String? name, String? territoryCode, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountManagers$userInfo$territories
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountManagers$userInfo$territories,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? territoryCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountManagers$userInfo$territories(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      territoryCode: territoryCode == _undefined || territoryCode == null
          ? _instance.territoryCode
          : (territoryCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$territories(
    this._res,
  );

  TRes _res;

  call({String? name, String? territoryCode, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks {
  Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks({
    required this.orderBookTypeId,
    this.orderBookName,
    this.gradeType,
    this.$__typename = 'UserOrderBook',
  });

  factory Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$orderBookTypeId = json['orderBookTypeId'];
    final l$orderBookName = json['orderBookName'];
    final l$gradeType = json['gradeType'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks(
      orderBookTypeId: (l$orderBookTypeId as int),
      orderBookName: (l$orderBookName as String?),
      gradeType: (l$gradeType as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int orderBookTypeId;

  final String? orderBookName;

  final String? gradeType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderBookTypeId = orderBookTypeId;
    _resultData['orderBookTypeId'] = l$orderBookTypeId;
    final l$orderBookName = orderBookName;
    _resultData['orderBookName'] = l$orderBookName;
    final l$gradeType = gradeType;
    _resultData['gradeType'] = l$gradeType;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderBookTypeId = orderBookTypeId;
    final l$orderBookName = orderBookName;
    final l$gradeType = gradeType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orderBookTypeId,
      l$orderBookName,
      l$gradeType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderBookTypeId = orderBookTypeId;
    final lOther$orderBookTypeId = other.orderBookTypeId;
    if (l$orderBookTypeId != lOther$orderBookTypeId) {
      return false;
    }
    final l$orderBookName = orderBookName;
    final lOther$orderBookName = other.orderBookName;
    if (l$orderBookName != lOther$orderBookName) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks
    on Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks {
  CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks<
    Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks(
    Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks;

  factory CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks;

  TRes call({
    int? orderBookTypeId,
    String? orderBookName,
    String? gradeType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderBookTypeId = _undefined,
    Object? orderBookName = _undefined,
    Object? gradeType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks(
      orderBookTypeId: orderBookTypeId == _undefined || orderBookTypeId == null
          ? _instance.orderBookTypeId
          : (orderBookTypeId as int),
      orderBookName: orderBookName == _undefined
          ? _instance.orderBookName
          : (orderBookName as String?),
      gradeType: gradeType == _undefined
          ? _instance.gradeType
          : (gradeType as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountManagers$userInfo$userOrderBooks(
    this._res,
  );

  TRes _res;

  call({
    int? orderBookTypeId,
    String? orderBookName,
    String? gradeType,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$primaryManager {
  Query$GetAccountInfo$accountById$primaryManager({
    this.type,
    this.id,
    this.name,
    required this.priority,
    this.userInfo,
    this.$__typename = 'ManagementDetail',
  });

  factory Query$GetAccountInfo$accountById$primaryManager.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$priority = json['priority'];
    final l$userInfo = json['userInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$primaryManager(
      type: l$type == null
          ? null
          : fromJson$Enum$ManagementType((l$type as String)),
      id: (l$id as String?),
      name: (l$name as String?),
      priority: (l$priority as int),
      userInfo: l$userInfo == null
          ? null
          : Query$GetAccountInfo$accountById$primaryManager$userInfo.fromJson(
              (l$userInfo as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ManagementType? type;

  final String? id;

  final String? name;

  final int priority;

  final Query$GetAccountInfo$accountById$primaryManager$userInfo? userInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type == null
        ? null
        : toJson$Enum$ManagementType(l$type);
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$priority = priority;
    _resultData['priority'] = l$priority;
    final l$userInfo = userInfo;
    _resultData['userInfo'] = l$userInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$id = id;
    final l$name = name;
    final l$priority = priority;
    final l$userInfo = userInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$id,
      l$name,
      l$priority,
      l$userInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$primaryManager ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
      return false;
    }
    final l$userInfo = userInfo;
    final lOther$userInfo = other.userInfo;
    if (l$userInfo != lOther$userInfo) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$primaryManager
    on Query$GetAccountInfo$accountById$primaryManager {
  CopyWith$Query$GetAccountInfo$accountById$primaryManager<
    Query$GetAccountInfo$accountById$primaryManager
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$primaryManager(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$primaryManager<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$primaryManager(
    Query$GetAccountInfo$accountById$primaryManager instance,
    TRes Function(Query$GetAccountInfo$accountById$primaryManager) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager;

  factory CopyWith$Query$GetAccountInfo$accountById$primaryManager.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager;

  TRes call({
    Enum$ManagementType? type,
    String? id,
    String? name,
    int? priority,
    Query$GetAccountInfo$accountById$primaryManager$userInfo? userInfo,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo<TRes>
  get userInfo;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$primaryManager<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$primaryManager _instance;

  final TRes Function(Query$GetAccountInfo$accountById$primaryManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? priority = _undefined,
    Object? userInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$primaryManager(
      type: type == _undefined
          ? _instance.type
          : (type as Enum$ManagementType?),
      id: id == _undefined ? _instance.id : (id as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      priority: priority == _undefined || priority == null
          ? _instance.priority
          : (priority as int),
      userInfo: userInfo == _undefined
          ? _instance.userInfo
          : (userInfo
                as Query$GetAccountInfo$accountById$primaryManager$userInfo?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo<TRes>
  get userInfo {
    final local$userInfo = _instance.userInfo;
    return local$userInfo == null
        ? CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo(
            local$userInfo,
            (e) => call(userInfo: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$primaryManager<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager(this._res);

  TRes _res;

  call({
    Enum$ManagementType? type,
    String? id,
    String? name,
    int? priority,
    Query$GetAccountInfo$accountById$primaryManager$userInfo? userInfo,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo<TRes>
  get userInfo =>
      CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$primaryManager$userInfo {
  Query$GetAccountInfo$accountById$primaryManager$userInfo({
    required this.id,
    required this.name,
    required this.emailAddress,
    required this.permissions,
    this.yards,
    required this.territories,
    required this.defaultDepot,
    required this.defaultTerritory,
    this.defaultOrderBookTypeId,
    this.userOrderBooks,
    required this.t2UserId,
    required this.allAccountAccess,
    required this.azureUserId,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetAccountInfo$accountById$primaryManager$userInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$emailAddress = json['emailAddress'];
    final l$permissions = json['permissions'];
    final l$yards = json['yards'];
    final l$territories = json['territories'];
    final l$defaultDepot = json['defaultDepot'];
    final l$defaultTerritory = json['defaultTerritory'];
    final l$defaultOrderBookTypeId = json['defaultOrderBookTypeId'];
    final l$userOrderBooks = json['userOrderBooks'];
    final l$t2UserId = json['t2UserId'];
    final l$allAccountAccess = json['allAccountAccess'];
    final l$azureUserId = json['azureUserId'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$primaryManager$userInfo(
      id: (l$id as String),
      name: (l$name as String),
      emailAddress: (l$emailAddress as String),
      permissions: (l$permissions as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      yards: (l$yards as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAccountInfo$accountById$primaryManager$userInfo$yards.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      territories: (l$territories as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccountInfo$accountById$primaryManager$userInfo$territories.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      defaultDepot: (l$defaultDepot as String),
      defaultTerritory: (l$defaultTerritory as String),
      defaultOrderBookTypeId: (l$defaultOrderBookTypeId as int?),
      userOrderBooks: (l$userOrderBooks as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      t2UserId: (l$t2UserId as int),
      allAccountAccess: (l$allAccountAccess as bool),
      azureUserId: (l$azureUserId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String emailAddress;

  final List<String> permissions;

  final List<Query$GetAccountInfo$accountById$primaryManager$userInfo$yards?>?
  yards;

  final List<
    Query$GetAccountInfo$accountById$primaryManager$userInfo$territories
  >
  territories;

  final String defaultDepot;

  final String defaultTerritory;

  final int? defaultOrderBookTypeId;

  final List<
    Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks?
  >?
  userOrderBooks;

  final int t2UserId;

  final bool allAccountAccess;

  final String azureUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e).toList();
    final l$yards = yards;
    _resultData['yards'] = l$yards?.map((e) => e?.toJson()).toList();
    final l$territories = territories;
    _resultData['territories'] = l$territories.map((e) => e.toJson()).toList();
    final l$defaultDepot = defaultDepot;
    _resultData['defaultDepot'] = l$defaultDepot;
    final l$defaultTerritory = defaultTerritory;
    _resultData['defaultTerritory'] = l$defaultTerritory;
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    _resultData['defaultOrderBookTypeId'] = l$defaultOrderBookTypeId;
    final l$userOrderBooks = userOrderBooks;
    _resultData['userOrderBooks'] = l$userOrderBooks
        ?.map((e) => e?.toJson())
        .toList();
    final l$t2UserId = t2UserId;
    _resultData['t2UserId'] = l$t2UserId;
    final l$allAccountAccess = allAccountAccess;
    _resultData['allAccountAccess'] = l$allAccountAccess;
    final l$azureUserId = azureUserId;
    _resultData['azureUserId'] = l$azureUserId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$emailAddress = emailAddress;
    final l$permissions = permissions;
    final l$yards = yards;
    final l$territories = territories;
    final l$defaultDepot = defaultDepot;
    final l$defaultTerritory = defaultTerritory;
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    final l$userOrderBooks = userOrderBooks;
    final l$t2UserId = t2UserId;
    final l$allAccountAccess = allAccountAccess;
    final l$azureUserId = azureUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$emailAddress,
      Object.hashAll(l$permissions.map((v) => v)),
      l$yards == null ? null : Object.hashAll(l$yards.map((v) => v)),
      Object.hashAll(l$territories.map((v) => v)),
      l$defaultDepot,
      l$defaultTerritory,
      l$defaultOrderBookTypeId,
      l$userOrderBooks == null
          ? null
          : Object.hashAll(l$userOrderBooks.map((v) => v)),
      l$t2UserId,
      l$allAccountAccess,
      l$azureUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$primaryManager$userInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) {
      return false;
    }
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) {
        return false;
      }
    }
    final l$yards = yards;
    final lOther$yards = other.yards;
    if (l$yards != null && lOther$yards != null) {
      if (l$yards.length != lOther$yards.length) {
        return false;
      }
      for (int i = 0; i < l$yards.length; i++) {
        final l$yards$entry = l$yards[i];
        final lOther$yards$entry = lOther$yards[i];
        if (l$yards$entry != lOther$yards$entry) {
          return false;
        }
      }
    } else if (l$yards != lOther$yards) {
      return false;
    }
    final l$territories = territories;
    final lOther$territories = other.territories;
    if (l$territories.length != lOther$territories.length) {
      return false;
    }
    for (int i = 0; i < l$territories.length; i++) {
      final l$territories$entry = l$territories[i];
      final lOther$territories$entry = lOther$territories[i];
      if (l$territories$entry != lOther$territories$entry) {
        return false;
      }
    }
    final l$defaultDepot = defaultDepot;
    final lOther$defaultDepot = other.defaultDepot;
    if (l$defaultDepot != lOther$defaultDepot) {
      return false;
    }
    final l$defaultTerritory = defaultTerritory;
    final lOther$defaultTerritory = other.defaultTerritory;
    if (l$defaultTerritory != lOther$defaultTerritory) {
      return false;
    }
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    final lOther$defaultOrderBookTypeId = other.defaultOrderBookTypeId;
    if (l$defaultOrderBookTypeId != lOther$defaultOrderBookTypeId) {
      return false;
    }
    final l$userOrderBooks = userOrderBooks;
    final lOther$userOrderBooks = other.userOrderBooks;
    if (l$userOrderBooks != null && lOther$userOrderBooks != null) {
      if (l$userOrderBooks.length != lOther$userOrderBooks.length) {
        return false;
      }
      for (int i = 0; i < l$userOrderBooks.length; i++) {
        final l$userOrderBooks$entry = l$userOrderBooks[i];
        final lOther$userOrderBooks$entry = lOther$userOrderBooks[i];
        if (l$userOrderBooks$entry != lOther$userOrderBooks$entry) {
          return false;
        }
      }
    } else if (l$userOrderBooks != lOther$userOrderBooks) {
      return false;
    }
    final l$t2UserId = t2UserId;
    final lOther$t2UserId = other.t2UserId;
    if (l$t2UserId != lOther$t2UserId) {
      return false;
    }
    final l$allAccountAccess = allAccountAccess;
    final lOther$allAccountAccess = other.allAccountAccess;
    if (l$allAccountAccess != lOther$allAccountAccess) {
      return false;
    }
    final l$azureUserId = azureUserId;
    final lOther$azureUserId = other.azureUserId;
    if (l$azureUserId != lOther$azureUserId) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$primaryManager$userInfo
    on Query$GetAccountInfo$accountById$primaryManager$userInfo {
  CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo<
    Query$GetAccountInfo$accountById$primaryManager$userInfo
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo(
    Query$GetAccountInfo$accountById$primaryManager$userInfo instance,
    TRes Function(Query$GetAccountInfo$accountById$primaryManager$userInfo)
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo;

  factory CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo;

  TRes call({
    String? id,
    String? name,
    String? emailAddress,
    List<String>? permissions,
    List<Query$GetAccountInfo$accountById$primaryManager$userInfo$yards?>?
    yards,
    List<Query$GetAccountInfo$accountById$primaryManager$userInfo$territories>?
    territories,
    String? defaultDepot,
    String? defaultTerritory,
    int? defaultOrderBookTypeId,
    List<
      Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks?
    >?
    userOrderBooks,
    int? t2UserId,
    bool? allAccountAccess,
    String? azureUserId,
    String? $__typename,
  });
  TRes yards(
    Iterable<Query$GetAccountInfo$accountById$primaryManager$userInfo$yards?>?
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards<
          Query$GetAccountInfo$accountById$primaryManager$userInfo$yards
        >?
      >?,
    )
    _fn,
  );
  TRes territories(
    Iterable<
      Query$GetAccountInfo$accountById$primaryManager$userInfo$territories
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories<
          Query$GetAccountInfo$accountById$primaryManager$userInfo$territories
        >
      >,
    )
    _fn,
  );
  TRes userOrderBooks(
    Iterable<
      Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks?
    >?
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks<
          Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$primaryManager$userInfo _instance;

  final TRes Function(Query$GetAccountInfo$accountById$primaryManager$userInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? emailAddress = _undefined,
    Object? permissions = _undefined,
    Object? yards = _undefined,
    Object? territories = _undefined,
    Object? defaultDepot = _undefined,
    Object? defaultTerritory = _undefined,
    Object? defaultOrderBookTypeId = _undefined,
    Object? userOrderBooks = _undefined,
    Object? t2UserId = _undefined,
    Object? allAccountAccess = _undefined,
    Object? azureUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$primaryManager$userInfo(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<String>),
      yards: yards == _undefined
          ? _instance.yards
          : (yards
                as List<
                  Query$GetAccountInfo$accountById$primaryManager$userInfo$yards?
                >?),
      territories: territories == _undefined || territories == null
          ? _instance.territories
          : (territories
                as List<
                  Query$GetAccountInfo$accountById$primaryManager$userInfo$territories
                >),
      defaultDepot: defaultDepot == _undefined || defaultDepot == null
          ? _instance.defaultDepot
          : (defaultDepot as String),
      defaultTerritory:
          defaultTerritory == _undefined || defaultTerritory == null
          ? _instance.defaultTerritory
          : (defaultTerritory as String),
      defaultOrderBookTypeId: defaultOrderBookTypeId == _undefined
          ? _instance.defaultOrderBookTypeId
          : (defaultOrderBookTypeId as int?),
      userOrderBooks: userOrderBooks == _undefined
          ? _instance.userOrderBooks
          : (userOrderBooks
                as List<
                  Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks?
                >?),
      t2UserId: t2UserId == _undefined || t2UserId == null
          ? _instance.t2UserId
          : (t2UserId as int),
      allAccountAccess:
          allAccountAccess == _undefined || allAccountAccess == null
          ? _instance.allAccountAccess
          : (allAccountAccess as bool),
      azureUserId: azureUserId == _undefined || azureUserId == null
          ? _instance.azureUserId
          : (azureUserId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes yards(
    Iterable<Query$GetAccountInfo$accountById$primaryManager$userInfo$yards?>?
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards<
          Query$GetAccountInfo$accountById$primaryManager$userInfo$yards
        >?
      >?,
    )
    _fn,
  ) => call(
    yards: _fn(
      _instance.yards?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  TRes territories(
    Iterable<
      Query$GetAccountInfo$accountById$primaryManager$userInfo$territories
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories<
          Query$GetAccountInfo$accountById$primaryManager$userInfo$territories
        >
      >,
    )
    _fn,
  ) => call(
    territories: _fn(
      _instance.territories.map(
        (e) =>
            CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes userOrderBooks(
    Iterable<
      Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks?
    >?
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks<
          Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks
        >?
      >?,
    )
    _fn,
  ) => call(
    userOrderBooks: _fn(
      _instance.userOrderBooks?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    String? emailAddress,
    List<String>? permissions,
    List<Query$GetAccountInfo$accountById$primaryManager$userInfo$yards?>?
    yards,
    List<Query$GetAccountInfo$accountById$primaryManager$userInfo$territories>?
    territories,
    String? defaultDepot,
    String? defaultTerritory,
    int? defaultOrderBookTypeId,
    List<
      Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks?
    >?
    userOrderBooks,
    int? t2UserId,
    bool? allAccountAccess,
    String? azureUserId,
    String? $__typename,
  }) => _res;

  yards(_fn) => _res;

  territories(_fn) => _res;

  userOrderBooks(_fn) => _res;
}

class Query$GetAccountInfo$accountById$primaryManager$userInfo$yards {
  Query$GetAccountInfo$accountById$primaryManager$userInfo$yards({
    required this.yardCode,
    required this.shortName,
    required this.name,
    this.$__typename = 'UserYard',
  });

  factory Query$GetAccountInfo$accountById$primaryManager$userInfo$yards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$yardCode = json['yardCode'];
    final l$shortName = json['shortName'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$primaryManager$userInfo$yards(
      yardCode: (l$yardCode as String),
      shortName: (l$shortName as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String shortName;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$shortName = shortName;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$yardCode, l$shortName, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$primaryManager$userInfo$yards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards
    on Query$GetAccountInfo$accountById$primaryManager$userInfo$yards {
  CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards<
    Query$GetAccountInfo$accountById$primaryManager$userInfo$yards
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards(
    Query$GetAccountInfo$accountById$primaryManager$userInfo$yards instance,
    TRes Function(
      Query$GetAccountInfo$accountById$primaryManager$userInfo$yards,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards;

  factory CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards;

  TRes call({
    String? yardCode,
    String? shortName,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$primaryManager$userInfo$yards
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$primaryManager$userInfo$yards,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? shortName = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$primaryManager$userInfo$yards(
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$yards(
    this._res,
  );

  TRes _res;

  call({
    String? yardCode,
    String? shortName,
    String? name,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$primaryManager$userInfo$territories {
  Query$GetAccountInfo$accountById$primaryManager$userInfo$territories({
    required this.name,
    required this.territoryCode,
    this.$__typename = 'UserTerritory',
  });

  factory Query$GetAccountInfo$accountById$primaryManager$userInfo$territories.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$territoryCode = json['territoryCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$primaryManager$userInfo$territories(
      name: (l$name as String),
      territoryCode: (l$territoryCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String territoryCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$territoryCode = territoryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$territoryCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$primaryManager$userInfo$territories ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories
    on Query$GetAccountInfo$accountById$primaryManager$userInfo$territories {
  CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories<
    Query$GetAccountInfo$accountById$primaryManager$userInfo$territories
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories(
    Query$GetAccountInfo$accountById$primaryManager$userInfo$territories
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$primaryManager$userInfo$territories,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories;

  factory CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories;

  TRes call({String? name, String? territoryCode, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$primaryManager$userInfo$territories
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$primaryManager$userInfo$territories,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? territoryCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$primaryManager$userInfo$territories(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      territoryCode: territoryCode == _undefined || territoryCode == null
          ? _instance.territoryCode
          : (territoryCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$territories(
    this._res,
  );

  TRes _res;

  call({String? name, String? territoryCode, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks {
  Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks({
    required this.orderBookTypeId,
    this.orderBookName,
    this.gradeType,
    this.$__typename = 'UserOrderBook',
  });

  factory Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$orderBookTypeId = json['orderBookTypeId'];
    final l$orderBookName = json['orderBookName'];
    final l$gradeType = json['gradeType'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks(
      orderBookTypeId: (l$orderBookTypeId as int),
      orderBookName: (l$orderBookName as String?),
      gradeType: (l$gradeType as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int orderBookTypeId;

  final String? orderBookName;

  final String? gradeType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderBookTypeId = orderBookTypeId;
    _resultData['orderBookTypeId'] = l$orderBookTypeId;
    final l$orderBookName = orderBookName;
    _resultData['orderBookName'] = l$orderBookName;
    final l$gradeType = gradeType;
    _resultData['gradeType'] = l$gradeType;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderBookTypeId = orderBookTypeId;
    final l$orderBookName = orderBookName;
    final l$gradeType = gradeType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orderBookTypeId,
      l$orderBookName,
      l$gradeType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderBookTypeId = orderBookTypeId;
    final lOther$orderBookTypeId = other.orderBookTypeId;
    if (l$orderBookTypeId != lOther$orderBookTypeId) {
      return false;
    }
    final l$orderBookName = orderBookName;
    final lOther$orderBookName = other.orderBookName;
    if (l$orderBookName != lOther$orderBookName) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks
    on Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks {
  CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks<
    Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks(
    Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks;

  factory CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks;

  TRes call({
    int? orderBookTypeId,
    String? orderBookName,
    String? gradeType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderBookTypeId = _undefined,
    Object? orderBookName = _undefined,
    Object? gradeType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks(
      orderBookTypeId: orderBookTypeId == _undefined || orderBookTypeId == null
          ? _instance.orderBookTypeId
          : (orderBookTypeId as int),
      orderBookName: orderBookName == _undefined
          ? _instance.orderBookName
          : (orderBookName as String?),
      gradeType: gradeType == _undefined
          ? _instance.gradeType
          : (gradeType as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$primaryManager$userInfo$userOrderBooks(
    this._res,
  );

  TRes _res;

  call({
    int? orderBookTypeId,
    String? orderBookName,
    String? gradeType,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$accountContacts {
  Query$GetAccountInfo$accountById$accountContacts({
    required this.key,
    required this.value,
    this.$__typename = 'ContactWithKey',
  });

  factory Query$GetAccountInfo$accountById$accountContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts(
      key: (l$key as String),
      value: Query$GetAccountInfo$accountById$accountContacts$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetAccountInfo$accountById$accountContacts$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$accountContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts
    on Query$GetAccountInfo$accountById$accountContacts {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts<
    Query$GetAccountInfo$accountById$accountContacts
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts(
    Query$GetAccountInfo$accountById$accountContacts instance,
    TRes Function(Query$GetAccountInfo$accountById$accountContacts) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts;

  TRes call({
    String? key,
    Query$GetAccountInfo$accountById$accountContacts$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value<TRes>
  get value;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$accountContacts<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts _instance;

  final TRes Function(Query$GetAccountInfo$accountById$accountContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$GetAccountInfo$accountById$accountContacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$accountContacts<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts(this._res);

  TRes _res;

  call({
    String? key,
    Query$GetAccountInfo$accountById$accountContacts$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value<TRes>
  get value =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$accountContacts$value {
  Query$GetAccountInfo$accountById$accountContacts$value({
    required this.addressKey,
    required this.contactTypes,
    required this.title,
    this.jobTitle,
    this.dateOfBirth,
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.contactPreferences,
    required this.proofOfAddress,
    required this.proofOfIdentification,
    this.signature,
    this.signatureSasUrl,
    this.$__typename = 'Contact',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$addressKey = json['addressKey'];
    final l$contactTypes = json['contactTypes'];
    final l$title = json['title'];
    final l$jobTitle = json['jobTitle'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$firstName = json['firstName'];
    final l$middleName = json['middleName'];
    final l$lastName = json['lastName'];
    final l$contactPreferences = json['contactPreferences'];
    final l$proofOfAddress = json['proofOfAddress'];
    final l$proofOfIdentification = json['proofOfIdentification'];
    final l$signature = json['signature'];
    final l$signatureSasUrl = json['signatureSasUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value(
      addressKey: (l$addressKey as String),
      contactTypes: (l$contactTypes as List<dynamic>)
          .map((e) => fromJson$Enum$ContactType((e as String)))
          .toList(),
      title: (l$title as String),
      jobTitle: (l$jobTitle as String?),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : LocalDate.fromJson(l$dateOfBirth),
      firstName: (l$firstName as String),
      middleName: (l$middleName as String?),
      lastName: (l$lastName as String),
      contactPreferences:
          Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences.fromJson(
            (l$contactPreferences as Map<String, dynamic>),
          ),
      proofOfAddress: (l$proofOfAddress as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      proofOfIdentification: (l$proofOfIdentification as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      signature: l$signature == null
          ? null
          : Query$GetAccountInfo$accountById$accountContacts$value$signature.fromJson(
              (l$signature as Map<String, dynamic>),
            ),
      signatureSasUrl: (l$signatureSasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String addressKey;

  final List<Enum$ContactType> contactTypes;

  final String title;

  final String? jobTitle;

  final DateTime? dateOfBirth;

  final String firstName;

  final String? middleName;

  final String lastName;

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences
  contactPreferences;

  final List<
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress
  >
  proofOfAddress;

  final List<
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
  >
  proofOfIdentification;

  final Query$GetAccountInfo$accountById$accountContacts$value$signature?
  signature;

  final String? signatureSasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addressKey = addressKey;
    _resultData['addressKey'] = l$addressKey;
    final l$contactTypes = contactTypes;
    _resultData['contactTypes'] = l$contactTypes
        .map((e) => toJson$Enum$ContactType(e))
        .toList();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth == null
        ? null
        : LocalDate.toJson(l$dateOfBirth);
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$middleName = middleName;
    _resultData['middleName'] = l$middleName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$contactPreferences = contactPreferences;
    _resultData['contactPreferences'] = l$contactPreferences.toJson();
    final l$proofOfAddress = proofOfAddress;
    _resultData['proofOfAddress'] = l$proofOfAddress
        .map((e) => e.toJson())
        .toList();
    final l$proofOfIdentification = proofOfIdentification;
    _resultData['proofOfIdentification'] = l$proofOfIdentification
        .map((e) => e.toJson())
        .toList();
    final l$signature = signature;
    _resultData['signature'] = l$signature?.toJson();
    final l$signatureSasUrl = signatureSasUrl;
    _resultData['signatureSasUrl'] = l$signatureSasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addressKey = addressKey;
    final l$contactTypes = contactTypes;
    final l$title = title;
    final l$jobTitle = jobTitle;
    final l$dateOfBirth = dateOfBirth;
    final l$firstName = firstName;
    final l$middleName = middleName;
    final l$lastName = lastName;
    final l$contactPreferences = contactPreferences;
    final l$proofOfAddress = proofOfAddress;
    final l$proofOfIdentification = proofOfIdentification;
    final l$signature = signature;
    final l$signatureSasUrl = signatureSasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$addressKey,
      Object.hashAll(l$contactTypes.map((v) => v)),
      l$title,
      l$jobTitle,
      l$dateOfBirth,
      l$firstName,
      l$middleName,
      l$lastName,
      l$contactPreferences,
      Object.hashAll(l$proofOfAddress.map((v) => v)),
      Object.hashAll(l$proofOfIdentification.map((v) => v)),
      l$signature,
      l$signatureSasUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$accountContacts$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addressKey = addressKey;
    final lOther$addressKey = other.addressKey;
    if (l$addressKey != lOther$addressKey) {
      return false;
    }
    final l$contactTypes = contactTypes;
    final lOther$contactTypes = other.contactTypes;
    if (l$contactTypes.length != lOther$contactTypes.length) {
      return false;
    }
    for (int i = 0; i < l$contactTypes.length; i++) {
      final l$contactTypes$entry = l$contactTypes[i];
      final lOther$contactTypes$entry = lOther$contactTypes[i];
      if (l$contactTypes$entry != lOther$contactTypes$entry) {
        return false;
      }
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
      return false;
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$middleName = middleName;
    final lOther$middleName = other.middleName;
    if (l$middleName != lOther$middleName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$contactPreferences = contactPreferences;
    final lOther$contactPreferences = other.contactPreferences;
    if (l$contactPreferences != lOther$contactPreferences) {
      return false;
    }
    final l$proofOfAddress = proofOfAddress;
    final lOther$proofOfAddress = other.proofOfAddress;
    if (l$proofOfAddress.length != lOther$proofOfAddress.length) {
      return false;
    }
    for (int i = 0; i < l$proofOfAddress.length; i++) {
      final l$proofOfAddress$entry = l$proofOfAddress[i];
      final lOther$proofOfAddress$entry = lOther$proofOfAddress[i];
      if (l$proofOfAddress$entry != lOther$proofOfAddress$entry) {
        return false;
      }
    }
    final l$proofOfIdentification = proofOfIdentification;
    final lOther$proofOfIdentification = other.proofOfIdentification;
    if (l$proofOfIdentification.length != lOther$proofOfIdentification.length) {
      return false;
    }
    for (int i = 0; i < l$proofOfIdentification.length; i++) {
      final l$proofOfIdentification$entry = l$proofOfIdentification[i];
      final lOther$proofOfIdentification$entry =
          lOther$proofOfIdentification[i];
      if (l$proofOfIdentification$entry != lOther$proofOfIdentification$entry) {
        return false;
      }
    }
    final l$signature = signature;
    final lOther$signature = other.signature;
    if (l$signature != lOther$signature) {
      return false;
    }
    final l$signatureSasUrl = signatureSasUrl;
    final lOther$signatureSasUrl = other.signatureSasUrl;
    if (l$signatureSasUrl != lOther$signatureSasUrl) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value
    on Query$GetAccountInfo$accountById$accountContacts$value {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value<
    Query$GetAccountInfo$accountById$accountContacts$value
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value(
    Query$GetAccountInfo$accountById$accountContacts$value instance,
    TRes Function(Query$GetAccountInfo$accountById$accountContacts$value) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value;

  TRes call({
    String? addressKey,
    List<Enum$ContactType>? contactTypes,
    String? title,
    String? jobTitle,
    DateTime? dateOfBirth,
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences?
    contactPreferences,
    List<Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress>?
    proofOfAddress,
    List<
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    Query$GetAccountInfo$accountById$accountContacts$value$signature? signature,
    String? signatureSasUrl,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences;
  TRes proofOfAddress(
    Iterable<
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress<
          Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  );
  TRes proofOfIdentification(
    Iterable<
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification<
          Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature<
    TRes
  >
  get signature;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value<TRes>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value _instance;

  final TRes Function(Query$GetAccountInfo$accountById$accountContacts$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addressKey = _undefined,
    Object? contactTypes = _undefined,
    Object? title = _undefined,
    Object? jobTitle = _undefined,
    Object? dateOfBirth = _undefined,
    Object? firstName = _undefined,
    Object? middleName = _undefined,
    Object? lastName = _undefined,
    Object? contactPreferences = _undefined,
    Object? proofOfAddress = _undefined,
    Object? proofOfIdentification = _undefined,
    Object? signature = _undefined,
    Object? signatureSasUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value(
      addressKey: addressKey == _undefined || addressKey == null
          ? _instance.addressKey
          : (addressKey as String),
      contactTypes: contactTypes == _undefined || contactTypes == null
          ? _instance.contactTypes
          : (contactTypes as List<Enum$ContactType>),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      jobTitle: jobTitle == _undefined
          ? _instance.jobTitle
          : (jobTitle as String?),
      dateOfBirth: dateOfBirth == _undefined
          ? _instance.dateOfBirth
          : (dateOfBirth as DateTime?),
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      middleName: middleName == _undefined
          ? _instance.middleName
          : (middleName as String?),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      contactPreferences:
          contactPreferences == _undefined || contactPreferences == null
          ? _instance.contactPreferences
          : (contactPreferences
                as Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences),
      proofOfAddress: proofOfAddress == _undefined || proofOfAddress == null
          ? _instance.proofOfAddress
          : (proofOfAddress
                as List<
                  Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress
                >),
      proofOfIdentification:
          proofOfIdentification == _undefined || proofOfIdentification == null
          ? _instance.proofOfIdentification
          : (proofOfIdentification
                as List<
                  Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
                >),
      signature: signature == _undefined
          ? _instance.signature
          : (signature
                as Query$GetAccountInfo$accountById$accountContacts$value$signature?),
      signatureSasUrl: signatureSasUrl == _undefined
          ? _instance.signatureSasUrl
          : (signatureSasUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences {
    final local$contactPreferences = _instance.contactPreferences;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences(
      local$contactPreferences,
      (e) => call(contactPreferences: e),
    );
  }

  TRes proofOfAddress(
    Iterable<
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress<
          Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  ) => call(
    proofOfAddress: _fn(
      _instance.proofOfAddress.map(
        (e) =>
            CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes proofOfIdentification(
    Iterable<
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification<
          Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  ) => call(
    proofOfIdentification: _fn(
      _instance.proofOfIdentification.map(
        (e) =>
            CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature<
    TRes
  >
  get signature {
    final local$signature = _instance.signature;
    return local$signature == null
        ? CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature(
            local$signature,
            (e) => call(signature: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value(
    this._res,
  );

  TRes _res;

  call({
    String? addressKey,
    List<Enum$ContactType>? contactTypes,
    String? title,
    String? jobTitle,
    DateTime? dateOfBirth,
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences?
    contactPreferences,
    List<Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress>?
    proofOfAddress,
    List<
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    Query$GetAccountInfo$accountById$accountContacts$value$signature? signature,
    String? signatureSasUrl,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences.stub(
        _res,
      );

  proofOfAddress(_fn) => _res;

  proofOfIdentification(_fn) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature<
    TRes
  >
  get signature =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences {
  Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences({
    required this.mobile,
    required this.email,
    required this.phone,
    required this.fax,
    required this.post,
    required this.otherContactMethods,
    this.$__typename = 'ContactPreferences',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mobile = json['mobile'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$fax = json['fax'];
    final l$post = json['post'];
    final l$otherContactMethods = json['otherContactMethods'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences(
      mobile:
          Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile.fromJson(
            (l$mobile as Map<String, dynamic>),
          ),
      email:
          Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email.fromJson(
            (l$email as Map<String, dynamic>),
          ),
      phone:
          Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone.fromJson(
            (l$phone as Map<String, dynamic>),
          ),
      fax:
          Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax.fromJson(
            (l$fax as Map<String, dynamic>),
          ),
      post:
          Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post.fromJson(
            (l$post as Map<String, dynamic>),
          ),
      otherContactMethods: (l$otherContactMethods as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile
  mobile;

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email
  email;

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone
  phone;

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax
  fax;

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post
  post;

  final List<
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
  >
  otherContactMethods;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mobile = mobile;
    _resultData['mobile'] = l$mobile.toJson();
    final l$email = email;
    _resultData['email'] = l$email.toJson();
    final l$phone = phone;
    _resultData['phone'] = l$phone.toJson();
    final l$fax = fax;
    _resultData['fax'] = l$fax.toJson();
    final l$post = post;
    _resultData['post'] = l$post.toJson();
    final l$otherContactMethods = otherContactMethods;
    _resultData['otherContactMethods'] = l$otherContactMethods
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mobile = mobile;
    final l$email = email;
    final l$phone = phone;
    final l$fax = fax;
    final l$post = post;
    final l$otherContactMethods = otherContactMethods;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mobile,
      l$email,
      l$phone,
      l$fax,
      l$post,
      Object.hashAll(l$otherContactMethods.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$fax = fax;
    final lOther$fax = other.fax;
    if (l$fax != lOther$fax) {
      return false;
    }
    final l$post = post;
    final lOther$post = other.post;
    if (l$post != lOther$post) {
      return false;
    }
    final l$otherContactMethods = otherContactMethods;
    final lOther$otherContactMethods = other.otherContactMethods;
    if (l$otherContactMethods.length != lOther$otherContactMethods.length) {
      return false;
    }
    for (int i = 0; i < l$otherContactMethods.length; i++) {
      final l$otherContactMethods$entry = l$otherContactMethods[i];
      final lOther$otherContactMethods$entry = lOther$otherContactMethods[i];
      if (l$otherContactMethods$entry != lOther$otherContactMethods$entry) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences
    on Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences<
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences;

  TRes call({
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile?
    mobile,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email?
    email,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone?
    phone,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax?
    fax,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post?
    post,
    List<
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
    >?
    otherContactMethods,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile;
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email;
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone<
    TRes
  >
  get phone;
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax<
    TRes
  >
  get fax;
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post<
    TRes
  >
  get post;
  TRes otherContactMethods(
    Iterable<
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods<
          Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobile = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? fax = _undefined,
    Object? post = _undefined,
    Object? otherContactMethods = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences(
      mobile: mobile == _undefined || mobile == null
          ? _instance.mobile
          : (mobile
                as Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile),
      email: email == _undefined || email == null
          ? _instance.email
          : (email
                as Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone
                as Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone),
      fax: fax == _undefined || fax == null
          ? _instance.fax
          : (fax
                as Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax),
      post: post == _undefined || post == null
          ? _instance.post
          : (post
                as Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post),
      otherContactMethods:
          otherContactMethods == _undefined || otherContactMethods == null
          ? _instance.otherContactMethods
          : (otherContactMethods
                as List<
                  Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile {
    final local$mobile = _instance.mobile;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile(
      local$mobile,
      (e) => call(mobile: e),
    );
  }

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email {
    final local$email = _instance.email;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email(
      local$email,
      (e) => call(email: e),
    );
  }

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone<
    TRes
  >
  get phone {
    final local$phone = _instance.phone;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone(
      local$phone,
      (e) => call(phone: e),
    );
  }

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax<
    TRes
  >
  get fax {
    final local$fax = _instance.fax;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax(
      local$fax,
      (e) => call(fax: e),
    );
  }

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post<
    TRes
  >
  get post {
    final local$post = _instance.post;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post(
      local$post,
      (e) => call(post: e),
    );
  }

  TRes otherContactMethods(
    Iterable<
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
    >
    Function(
      Iterable<
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods<
          Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
        >
      >,
    )
    _fn,
  ) => call(
    otherContactMethods: _fn(
      _instance.otherContactMethods.map(
        (e) =>
            CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences(
    this._res,
  );

  TRes _res;

  call({
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile?
    mobile,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email?
    email,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone?
    phone,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax?
    fax,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post?
    post,
    List<
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
    >?
    otherContactMethods,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile.stub(
        _res,
      );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email.stub(
        _res,
      );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone<
    TRes
  >
  get phone =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone.stub(
        _res,
      );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax<
    TRes
  >
  get fax =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax.stub(
        _res,
      );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post<
    TRes
  >
  get post =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post.stub(
        _res,
      );

  otherContactMethods(_fn) => _res;
}

class Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile {
  Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$enabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile
    on
        Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile<
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$mobile(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email {
  Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$enabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email
    on
        Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email<
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$email(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone {
  Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$enabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone
    on
        Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone<
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$phone(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax {
  Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$enabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax
    on Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax<
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$fax(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post {
  Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$enabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post
    on Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post<
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$post(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods {
  Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndContactMethod',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods(
      key: (l$key as String),
      value:
          Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
    on
        Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods<
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods;

  TRes call({
    String? key,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value {
  Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$enabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value
    on
        Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value<
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$contactPreferences$otherContactMethods$value(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress {
  Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress({
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.fileId,
    this.filePath,
    this.tradeDocumentId,
    this.identificationNumber,
    this.sasUrl,
    required this.media,
    this.$__typename = 'Identification',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$fileId = json['fileId'];
    final l$filePath = json['filePath'];
    final l$tradeDocumentId = json['tradeDocumentId'];
    final l$identificationNumber = json['identificationNumber'];
    final l$sasUrl = json['sasUrl'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress(
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      fileId: (l$fileId as String?),
      filePath: (l$filePath as String?),
      tradeDocumentId: (l$tradeDocumentId as int?),
      identificationNumber: (l$identificationNumber as String?),
      sasUrl: (l$sasUrl as String?),
      media:
          Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime validFrom;

  final DateTime validTo;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final String? fileId;

  final String? filePath;

  final int? tradeDocumentId;

  final String? identificationNumber;

  final String? sasUrl;

  final Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media
  media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$fileId = fileId;
    _resultData['fileId'] = l$fileId;
    final l$filePath = filePath;
    _resultData['filePath'] = l$filePath;
    final l$tradeDocumentId = tradeDocumentId;
    _resultData['tradeDocumentId'] = l$tradeDocumentId;
    final l$identificationNumber = identificationNumber;
    _resultData['identificationNumber'] = l$identificationNumber;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$type = type;
    final l$subType = subType;
    final l$fileId = fileId;
    final l$filePath = filePath;
    final l$tradeDocumentId = tradeDocumentId;
    final l$identificationNumber = identificationNumber;
    final l$sasUrl = sasUrl;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validFrom,
      l$validTo,
      l$type,
      l$subType,
      l$fileId,
      l$filePath,
      l$tradeDocumentId,
      l$identificationNumber,
      l$sasUrl,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validFrom = validFrom;
    final lOther$validFrom = other.validFrom;
    if (l$validFrom != lOther$validFrom) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$subType = subType;
    final lOther$subType = other.subType;
    if (l$subType != lOther$subType) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (l$fileId != lOther$fileId) {
      return false;
    }
    final l$filePath = filePath;
    final lOther$filePath = other.filePath;
    if (l$filePath != lOther$filePath) {
      return false;
    }
    final l$tradeDocumentId = tradeDocumentId;
    final lOther$tradeDocumentId = other.tradeDocumentId;
    if (l$tradeDocumentId != lOther$tradeDocumentId) {
      return false;
    }
    final l$identificationNumber = identificationNumber;
    final lOther$identificationNumber = other.identificationNumber;
    if (l$identificationNumber != lOther$identificationNumber) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress
    on Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress<
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress;

  TRes call({
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? fileId,
    String? filePath,
    int? tradeDocumentId,
    String? identificationNumber,
    String? sasUrl,
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media?
    media,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? fileId = _undefined,
    Object? filePath = _undefined,
    Object? tradeDocumentId = _undefined,
    Object? identificationNumber = _undefined,
    Object? sasUrl = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress(
      validFrom: validFrom == _undefined || validFrom == null
          ? _instance.validFrom
          : (validFrom as DateTime),
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$IdentificationType),
      subType: subType == _undefined || subType == null
          ? _instance.subType
          : (subType as Enum$IdentificationSubType),
      fileId: fileId == _undefined ? _instance.fileId : (fileId as String?),
      filePath: filePath == _undefined
          ? _instance.filePath
          : (filePath as String?),
      tradeDocumentId: tradeDocumentId == _undefined
          ? _instance.tradeDocumentId
          : (tradeDocumentId as int?),
      identificationNumber: identificationNumber == _undefined
          ? _instance.identificationNumber
          : (identificationNumber as String?),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress(
    this._res,
  );

  TRes _res;

  call({
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? fileId,
    String? filePath,
    int? tradeDocumentId,
    String? identificationNumber,
    String? sasUrl,
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media?
    media,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media {
  Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media({
    required this.url,
    required this.created,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media(
      url: (l$url as String),
      created:
          Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media
    on Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media<
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media;

  TRes call({
    String? url,
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created?
    created,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created {
  Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created({
    required this.userInfoId,
    required this.at,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created(
      userInfoId: (l$userInfoId as String),
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final DateTime at;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$at = at;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$at, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created
    on
        Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created<
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created;

  TRes call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress$media$created(
    this._res,
  );

  TRes _res;

  call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification {
  Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification({
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.fileId,
    this.filePath,
    this.tradeDocumentId,
    this.identificationNumber,
    this.sasUrl,
    required this.media,
    this.$__typename = 'Identification',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$fileId = json['fileId'];
    final l$filePath = json['filePath'];
    final l$tradeDocumentId = json['tradeDocumentId'];
    final l$identificationNumber = json['identificationNumber'];
    final l$sasUrl = json['sasUrl'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification(
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      fileId: (l$fileId as String?),
      filePath: (l$filePath as String?),
      tradeDocumentId: (l$tradeDocumentId as int?),
      identificationNumber: (l$identificationNumber as String?),
      sasUrl: (l$sasUrl as String?),
      media:
          Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime validFrom;

  final DateTime validTo;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final String? fileId;

  final String? filePath;

  final int? tradeDocumentId;

  final String? identificationNumber;

  final String? sasUrl;

  final Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media
  media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$fileId = fileId;
    _resultData['fileId'] = l$fileId;
    final l$filePath = filePath;
    _resultData['filePath'] = l$filePath;
    final l$tradeDocumentId = tradeDocumentId;
    _resultData['tradeDocumentId'] = l$tradeDocumentId;
    final l$identificationNumber = identificationNumber;
    _resultData['identificationNumber'] = l$identificationNumber;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$type = type;
    final l$subType = subType;
    final l$fileId = fileId;
    final l$filePath = filePath;
    final l$tradeDocumentId = tradeDocumentId;
    final l$identificationNumber = identificationNumber;
    final l$sasUrl = sasUrl;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validFrom,
      l$validTo,
      l$type,
      l$subType,
      l$fileId,
      l$filePath,
      l$tradeDocumentId,
      l$identificationNumber,
      l$sasUrl,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validFrom = validFrom;
    final lOther$validFrom = other.validFrom;
    if (l$validFrom != lOther$validFrom) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$subType = subType;
    final lOther$subType = other.subType;
    if (l$subType != lOther$subType) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (l$fileId != lOther$fileId) {
      return false;
    }
    final l$filePath = filePath;
    final lOther$filePath = other.filePath;
    if (l$filePath != lOther$filePath) {
      return false;
    }
    final l$tradeDocumentId = tradeDocumentId;
    final lOther$tradeDocumentId = other.tradeDocumentId;
    if (l$tradeDocumentId != lOther$tradeDocumentId) {
      return false;
    }
    final l$identificationNumber = identificationNumber;
    final lOther$identificationNumber = other.identificationNumber;
    if (l$identificationNumber != lOther$identificationNumber) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
    on Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification<
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification;

  TRes call({
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? fileId,
    String? filePath,
    int? tradeDocumentId,
    String? identificationNumber,
    String? sasUrl,
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media?
    media,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? fileId = _undefined,
    Object? filePath = _undefined,
    Object? tradeDocumentId = _undefined,
    Object? identificationNumber = _undefined,
    Object? sasUrl = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification(
      validFrom: validFrom == _undefined || validFrom == null
          ? _instance.validFrom
          : (validFrom as DateTime),
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$IdentificationType),
      subType: subType == _undefined || subType == null
          ? _instance.subType
          : (subType as Enum$IdentificationSubType),
      fileId: fileId == _undefined ? _instance.fileId : (fileId as String?),
      filePath: filePath == _undefined
          ? _instance.filePath
          : (filePath as String?),
      tradeDocumentId: tradeDocumentId == _undefined
          ? _instance.tradeDocumentId
          : (tradeDocumentId as int?),
      identificationNumber: identificationNumber == _undefined
          ? _instance.identificationNumber
          : (identificationNumber as String?),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification(
    this._res,
  );

  TRes _res;

  call({
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? fileId,
    String? filePath,
    int? tradeDocumentId,
    String? identificationNumber,
    String? sasUrl,
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media?
    media,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media {
  Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media({
    required this.url,
    required this.created,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media(
      url: (l$url as String),
      created:
          Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media
    on
        Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media<
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media;

  TRes call({
    String? url,
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created?
    created,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created {
  Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created({
    required this.userInfoId,
    required this.at,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created(
      userInfoId: (l$userInfoId as String),
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final DateTime at;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$at = at;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$at, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created
    on
        Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created<
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created;

  TRes call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification$media$created(
    this._res,
  );

  TRes _res;

  call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$accountContacts$value$signature {
  Query$GetAccountInfo$accountById$accountContacts$value$signature({
    required this.url,
    this.sasUrl,
    required this.created,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$signature.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$signature(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      created:
          Query$GetAccountInfo$accountById$accountContacts$value$signature$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final Query$GetAccountInfo$accountById$accountContacts$value$signature$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$sasUrl, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$signature ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$signature
    on Query$GetAccountInfo$accountById$accountContacts$value$signature {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature<
    Query$GetAccountInfo$accountById$accountContacts$value$signature
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature(
    Query$GetAccountInfo$accountById$accountContacts$value$signature instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$signature,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature;

  TRes call({
    String? url,
    String? sasUrl,
    Query$GetAccountInfo$accountById$accountContacts$value$signature$created?
    created,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$signature
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$signature,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$signature(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetAccountInfo$accountById$accountContacts$value$signature$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? sasUrl,
    Query$GetAccountInfo$accountById$accountContacts$value$signature$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$accountContacts$value$signature$created {
  Query$GetAccountInfo$accountById$accountContacts$value$signature$created({
    required this.userInfoId,
    required this.at,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetAccountInfo$accountById$accountContacts$value$signature$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountContacts$value$signature$created(
      userInfoId: (l$userInfoId as String),
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final DateTime at;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$at = at;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$at, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountContacts$value$signature$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountContacts$value$signature$created
    on Query$GetAccountInfo$accountById$accountContacts$value$signature$created {
  CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created<
    Query$GetAccountInfo$accountById$accountContacts$value$signature$created
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created(
    Query$GetAccountInfo$accountById$accountContacts$value$signature$created
    instance,
    TRes Function(
      Query$GetAccountInfo$accountById$accountContacts$value$signature$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature$created;

  factory CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature$created;

  TRes call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature$created<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature$created(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountContacts$value$signature$created
  _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountContacts$value$signature$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountContacts$value$signature$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature$created<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountContacts$value$signature$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountContacts$value$signature$created(
    this._res,
  );

  TRes _res;

  call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$accountAddresses {
  Query$GetAccountInfo$accountById$accountAddresses({
    this.key,
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.address5,
    this.address6,
    this.postCode,
    this.countryCode,
    this.what3Words,
    this.geoLocation,
    this.$__typename = 'AddressWithKey',
  });

  factory Query$GetAccountInfo$accountById$accountAddresses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$countryCode = json['countryCode'];
    final l$what3Words = json['what3Words'];
    final l$geoLocation = json['geoLocation'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountAddresses(
      key: (l$key as String?),
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      address3: (l$address3 as String?),
      address4: (l$address4 as String?),
      address5: (l$address5 as String?),
      address6: (l$address6 as String?),
      postCode: (l$postCode as String?),
      countryCode: (l$countryCode as String?),
      what3Words: (l$what3Words as String?),
      geoLocation: l$geoLocation == null
          ? null
          : Query$GetAccountInfo$accountById$accountAddresses$geoLocation.fromJson(
              (l$geoLocation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final String? address1;

  final String? address2;

  final String? address3;

  final String? address4;

  final String? address5;

  final String? address6;

  final String? postCode;

  final String? countryCode;

  final String? what3Words;

  final Query$GetAccountInfo$accountById$accountAddresses$geoLocation?
  geoLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
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
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
    final l$what3Words = what3Words;
    _resultData['what3Words'] = l$what3Words;
    final l$geoLocation = geoLocation;
    _resultData['geoLocation'] = l$geoLocation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$address3 = address3;
    final l$address4 = address4;
    final l$address5 = address5;
    final l$address6 = address6;
    final l$postCode = postCode;
    final l$countryCode = countryCode;
    final l$what3Words = what3Words;
    final l$geoLocation = geoLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$postCode,
      l$countryCode,
      l$what3Words,
      l$geoLocation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$accountAddresses ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$what3Words = what3Words;
    final lOther$what3Words = other.what3Words;
    if (l$what3Words != lOther$what3Words) {
      return false;
    }
    final l$geoLocation = geoLocation;
    final lOther$geoLocation = other.geoLocation;
    if (l$geoLocation != lOther$geoLocation) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountAddresses
    on Query$GetAccountInfo$accountById$accountAddresses {
  CopyWith$Query$GetAccountInfo$accountById$accountAddresses<
    Query$GetAccountInfo$accountById$accountAddresses
  >
  get copyWith => CopyWith$Query$GetAccountInfo$accountById$accountAddresses(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountAddresses<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountAddresses(
    Query$GetAccountInfo$accountById$accountAddresses instance,
    TRes Function(Query$GetAccountInfo$accountById$accountAddresses) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountAddresses;

  factory CopyWith$Query$GetAccountInfo$accountById$accountAddresses.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountAddresses;

  TRes call({
    String? key,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? countryCode,
    String? what3Words,
    Query$GetAccountInfo$accountById$accountAddresses$geoLocation? geoLocation,
    String? $__typename,
  });
  CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation<TRes>
  get geoLocation;
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountAddresses<TRes>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountAddresses<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountAddresses(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountAddresses _instance;

  final TRes Function(Query$GetAccountInfo$accountById$accountAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? countryCode = _undefined,
    Object? what3Words = _undefined,
    Object? geoLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountAddresses(
      key: key == _undefined ? _instance.key : (key as String?),
      address1: address1 == _undefined
          ? _instance.address1
          : (address1 as String?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2 as String?),
      address3: address3 == _undefined
          ? _instance.address3
          : (address3 as String?),
      address4: address4 == _undefined
          ? _instance.address4
          : (address4 as String?),
      address5: address5 == _undefined
          ? _instance.address5
          : (address5 as String?),
      address6: address6 == _undefined
          ? _instance.address6
          : (address6 as String?),
      postCode: postCode == _undefined
          ? _instance.postCode
          : (postCode as String?),
      countryCode: countryCode == _undefined
          ? _instance.countryCode
          : (countryCode as String?),
      what3Words: what3Words == _undefined
          ? _instance.what3Words
          : (what3Words as String?),
      geoLocation: geoLocation == _undefined
          ? _instance.geoLocation
          : (geoLocation
                as Query$GetAccountInfo$accountById$accountAddresses$geoLocation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation<TRes>
  get geoLocation {
    final local$geoLocation = _instance.geoLocation;
    return local$geoLocation == null
        ? CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation(
            local$geoLocation,
            (e) => call(geoLocation: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountAddresses<TRes>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountAddresses<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountAddresses(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? countryCode,
    String? what3Words,
    Query$GetAccountInfo$accountById$accountAddresses$geoLocation? geoLocation,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation<TRes>
  get geoLocation =>
      CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation.stub(
        _res,
      );
}

class Query$GetAccountInfo$accountById$accountAddresses$geoLocation {
  Query$GetAccountInfo$accountById$accountAddresses$geoLocation({
    required this.latitude,
    required this.longitude,
    this.$__typename = 'LatLong',
  });

  factory Query$GetAccountInfo$accountById$accountAddresses$geoLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountAddresses$geoLocation(
      latitude: (l$latitude as num).toDouble(),
      longitude: (l$longitude as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double latitude;

  final double longitude;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$$__typename = $__typename;
    return Object.hashAll([l$latitude, l$longitude, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccountInfo$accountById$accountAddresses$geoLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountAddresses$geoLocation
    on Query$GetAccountInfo$accountById$accountAddresses$geoLocation {
  CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation<
    Query$GetAccountInfo$accountById$accountAddresses$geoLocation
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation<
  TRes
> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation(
    Query$GetAccountInfo$accountById$accountAddresses$geoLocation instance,
    TRes Function(Query$GetAccountInfo$accountById$accountAddresses$geoLocation)
    then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountAddresses$geoLocation;

  factory CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountAddresses$geoLocation;

  TRes call({double? latitude, double? longitude, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountAddresses$geoLocation<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation<
          TRes
        > {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountAddresses$geoLocation(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountAddresses$geoLocation _instance;

  final TRes Function(
    Query$GetAccountInfo$accountById$accountAddresses$geoLocation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountAddresses$geoLocation(
      latitude: latitude == _undefined || latitude == null
          ? _instance.latitude
          : (latitude as double),
      longitude: longitude == _undefined || longitude == null
          ? _instance.longitude
          : (longitude as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountAddresses$geoLocation<
  TRes
>
    implements
        CopyWith$Query$GetAccountInfo$accountById$accountAddresses$geoLocation<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountAddresses$geoLocation(
    this._res,
  );

  TRes _res;

  call({double? latitude, double? longitude, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$taxSettings {
  Query$GetAccountInfo$accountById$taxSettings({
    required this.taxId,
    required this.w9Received,
    required this.checkForW9,
    required this.nameFor1099,
    required this.doingBusinessAs,
    required this.foreignEntityIndicator,
    required this.secondTin,
    this.reportingDate,
    this.cashPaymentLimitExemptionDate,
    this.$__typename = 'TaxSettings',
  });

  factory Query$GetAccountInfo$accountById$taxSettings.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$taxId = json['taxId'];
    final l$w9Received = json['w9Received'];
    final l$checkForW9 = json['checkForW9'];
    final l$nameFor1099 = json['nameFor1099'];
    final l$doingBusinessAs = json['doingBusinessAs'];
    final l$foreignEntityIndicator = json['foreignEntityIndicator'];
    final l$secondTin = json['secondTin'];
    final l$reportingDate = json['reportingDate'];
    final l$cashPaymentLimitExemptionDate =
        json['cashPaymentLimitExemptionDate'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$taxSettings(
      taxId: fromJson$Enum$TaxIdType((l$taxId as String)),
      w9Received: (l$w9Received as bool),
      checkForW9: (l$checkForW9 as bool),
      nameFor1099: (l$nameFor1099 as String),
      doingBusinessAs: (l$doingBusinessAs as String),
      foreignEntityIndicator: (l$foreignEntityIndicator as bool),
      secondTin: (l$secondTin as bool),
      reportingDate: l$reportingDate == null
          ? null
          : DateTime.parse((l$reportingDate as String)),
      cashPaymentLimitExemptionDate: l$cashPaymentLimitExemptionDate == null
          ? null
          : DateTime.parse((l$cashPaymentLimitExemptionDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$TaxIdType taxId;

  final bool w9Received;

  final bool checkForW9;

  final String nameFor1099;

  final String doingBusinessAs;

  final bool foreignEntityIndicator;

  final bool secondTin;

  final DateTime? reportingDate;

  final DateTime? cashPaymentLimitExemptionDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$taxId = taxId;
    _resultData['taxId'] = toJson$Enum$TaxIdType(l$taxId);
    final l$w9Received = w9Received;
    _resultData['w9Received'] = l$w9Received;
    final l$checkForW9 = checkForW9;
    _resultData['checkForW9'] = l$checkForW9;
    final l$nameFor1099 = nameFor1099;
    _resultData['nameFor1099'] = l$nameFor1099;
    final l$doingBusinessAs = doingBusinessAs;
    _resultData['doingBusinessAs'] = l$doingBusinessAs;
    final l$foreignEntityIndicator = foreignEntityIndicator;
    _resultData['foreignEntityIndicator'] = l$foreignEntityIndicator;
    final l$secondTin = secondTin;
    _resultData['secondTin'] = l$secondTin;
    final l$reportingDate = reportingDate;
    _resultData['reportingDate'] = l$reportingDate?.toIso8601String();
    final l$cashPaymentLimitExemptionDate = cashPaymentLimitExemptionDate;
    _resultData['cashPaymentLimitExemptionDate'] =
        l$cashPaymentLimitExemptionDate?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$taxId = taxId;
    final l$w9Received = w9Received;
    final l$checkForW9 = checkForW9;
    final l$nameFor1099 = nameFor1099;
    final l$doingBusinessAs = doingBusinessAs;
    final l$foreignEntityIndicator = foreignEntityIndicator;
    final l$secondTin = secondTin;
    final l$reportingDate = reportingDate;
    final l$cashPaymentLimitExemptionDate = cashPaymentLimitExemptionDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$taxId,
      l$w9Received,
      l$checkForW9,
      l$nameFor1099,
      l$doingBusinessAs,
      l$foreignEntityIndicator,
      l$secondTin,
      l$reportingDate,
      l$cashPaymentLimitExemptionDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$taxSettings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$taxId = taxId;
    final lOther$taxId = other.taxId;
    if (l$taxId != lOther$taxId) {
      return false;
    }
    final l$w9Received = w9Received;
    final lOther$w9Received = other.w9Received;
    if (l$w9Received != lOther$w9Received) {
      return false;
    }
    final l$checkForW9 = checkForW9;
    final lOther$checkForW9 = other.checkForW9;
    if (l$checkForW9 != lOther$checkForW9) {
      return false;
    }
    final l$nameFor1099 = nameFor1099;
    final lOther$nameFor1099 = other.nameFor1099;
    if (l$nameFor1099 != lOther$nameFor1099) {
      return false;
    }
    final l$doingBusinessAs = doingBusinessAs;
    final lOther$doingBusinessAs = other.doingBusinessAs;
    if (l$doingBusinessAs != lOther$doingBusinessAs) {
      return false;
    }
    final l$foreignEntityIndicator = foreignEntityIndicator;
    final lOther$foreignEntityIndicator = other.foreignEntityIndicator;
    if (l$foreignEntityIndicator != lOther$foreignEntityIndicator) {
      return false;
    }
    final l$secondTin = secondTin;
    final lOther$secondTin = other.secondTin;
    if (l$secondTin != lOther$secondTin) {
      return false;
    }
    final l$reportingDate = reportingDate;
    final lOther$reportingDate = other.reportingDate;
    if (l$reportingDate != lOther$reportingDate) {
      return false;
    }
    final l$cashPaymentLimitExemptionDate = cashPaymentLimitExemptionDate;
    final lOther$cashPaymentLimitExemptionDate =
        other.cashPaymentLimitExemptionDate;
    if (l$cashPaymentLimitExemptionDate !=
        lOther$cashPaymentLimitExemptionDate) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$taxSettings
    on Query$GetAccountInfo$accountById$taxSettings {
  CopyWith$Query$GetAccountInfo$accountById$taxSettings<
    Query$GetAccountInfo$accountById$taxSettings
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$taxSettings(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$taxSettings<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$taxSettings(
    Query$GetAccountInfo$accountById$taxSettings instance,
    TRes Function(Query$GetAccountInfo$accountById$taxSettings) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$taxSettings;

  factory CopyWith$Query$GetAccountInfo$accountById$taxSettings.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountInfo$accountById$taxSettings;

  TRes call({
    Enum$TaxIdType? taxId,
    bool? w9Received,
    bool? checkForW9,
    String? nameFor1099,
    String? doingBusinessAs,
    bool? foreignEntityIndicator,
    bool? secondTin,
    DateTime? reportingDate,
    DateTime? cashPaymentLimitExemptionDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$taxSettings<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$taxSettings<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$taxSettings(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$taxSettings _instance;

  final TRes Function(Query$GetAccountInfo$accountById$taxSettings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? taxId = _undefined,
    Object? w9Received = _undefined,
    Object? checkForW9 = _undefined,
    Object? nameFor1099 = _undefined,
    Object? doingBusinessAs = _undefined,
    Object? foreignEntityIndicator = _undefined,
    Object? secondTin = _undefined,
    Object? reportingDate = _undefined,
    Object? cashPaymentLimitExemptionDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$taxSettings(
      taxId: taxId == _undefined || taxId == null
          ? _instance.taxId
          : (taxId as Enum$TaxIdType),
      w9Received: w9Received == _undefined || w9Received == null
          ? _instance.w9Received
          : (w9Received as bool),
      checkForW9: checkForW9 == _undefined || checkForW9 == null
          ? _instance.checkForW9
          : (checkForW9 as bool),
      nameFor1099: nameFor1099 == _undefined || nameFor1099 == null
          ? _instance.nameFor1099
          : (nameFor1099 as String),
      doingBusinessAs: doingBusinessAs == _undefined || doingBusinessAs == null
          ? _instance.doingBusinessAs
          : (doingBusinessAs as String),
      foreignEntityIndicator:
          foreignEntityIndicator == _undefined || foreignEntityIndicator == null
          ? _instance.foreignEntityIndicator
          : (foreignEntityIndicator as bool),
      secondTin: secondTin == _undefined || secondTin == null
          ? _instance.secondTin
          : (secondTin as bool),
      reportingDate: reportingDate == _undefined
          ? _instance.reportingDate
          : (reportingDate as DateTime?),
      cashPaymentLimitExemptionDate: cashPaymentLimitExemptionDate == _undefined
          ? _instance.cashPaymentLimitExemptionDate
          : (cashPaymentLimitExemptionDate as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$taxSettings<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$taxSettings<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$taxSettings(this._res);

  TRes _res;

  call({
    Enum$TaxIdType? taxId,
    bool? w9Received,
    bool? checkForW9,
    String? nameFor1099,
    String? doingBusinessAs,
    bool? foreignEntityIndicator,
    bool? secondTin,
    DateTime? reportingDate,
    DateTime? cashPaymentLimitExemptionDate,
    String? $__typename,
  }) => _res;
}

class Query$GetAccountInfo$accountById$accountSubTypes {
  Query$GetAccountInfo$accountById$accountSubTypes({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfAccountSubTypeAndBoolean',
  });

  factory Query$GetAccountInfo$accountById$accountSubTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$accountSubTypes(
      key: fromJson$Enum$AccountSubType((l$key as String)),
      value: (l$value as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AccountSubType key;

  final bool value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = toJson$Enum$AccountSubType(l$key);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$accountSubTypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$accountSubTypes
    on Query$GetAccountInfo$accountById$accountSubTypes {
  CopyWith$Query$GetAccountInfo$accountById$accountSubTypes<
    Query$GetAccountInfo$accountById$accountSubTypes
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$accountSubTypes(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$accountSubTypes<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$accountSubTypes(
    Query$GetAccountInfo$accountById$accountSubTypes instance,
    TRes Function(Query$GetAccountInfo$accountById$accountSubTypes) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$accountSubTypes;

  factory CopyWith$Query$GetAccountInfo$accountById$accountSubTypes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountSubTypes;

  TRes call({Enum$AccountSubType? key, bool? value, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$accountSubTypes<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$accountSubTypes<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$accountSubTypes(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$accountSubTypes _instance;

  final TRes Function(Query$GetAccountInfo$accountById$accountSubTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$accountSubTypes(
      key: key == _undefined || key == null
          ? _instance.key
          : (key as Enum$AccountSubType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountSubTypes<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$accountSubTypes<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$accountSubTypes(this._res);

  TRes _res;

  call({Enum$AccountSubType? key, bool? value, String? $__typename}) => _res;
}

class Query$GetAccountInfo$accountById$managingTeams {
  Query$GetAccountInfo$accountById$managingTeams({
    required this.teamId,
    required this.teamName,
    this.$__typename = 'AccountTeam',
  });

  factory Query$GetAccountInfo$accountById$managingTeams.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$teamId = json['teamId'];
    final l$teamName = json['teamName'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountInfo$accountById$managingTeams(
      teamId: (l$teamId as String),
      teamName: (l$teamName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String teamId;

  final String teamName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$teamId = teamId;
    _resultData['teamId'] = l$teamId;
    final l$teamName = teamName;
    _resultData['teamName'] = l$teamName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$teamId = teamId;
    final l$teamName = teamName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$teamId, l$teamName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountInfo$accountById$managingTeams ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$teamId = teamId;
    final lOther$teamId = other.teamId;
    if (l$teamId != lOther$teamId) {
      return false;
    }
    final l$teamName = teamName;
    final lOther$teamName = other.teamName;
    if (l$teamName != lOther$teamName) {
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

extension UtilityExtension$Query$GetAccountInfo$accountById$managingTeams
    on Query$GetAccountInfo$accountById$managingTeams {
  CopyWith$Query$GetAccountInfo$accountById$managingTeams<
    Query$GetAccountInfo$accountById$managingTeams
  >
  get copyWith =>
      CopyWith$Query$GetAccountInfo$accountById$managingTeams(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountInfo$accountById$managingTeams<TRes> {
  factory CopyWith$Query$GetAccountInfo$accountById$managingTeams(
    Query$GetAccountInfo$accountById$managingTeams instance,
    TRes Function(Query$GetAccountInfo$accountById$managingTeams) then,
  ) = _CopyWithImpl$Query$GetAccountInfo$accountById$managingTeams;

  factory CopyWith$Query$GetAccountInfo$accountById$managingTeams.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccountInfo$accountById$managingTeams;

  TRes call({String? teamId, String? teamName, String? $__typename});
}

class _CopyWithImpl$Query$GetAccountInfo$accountById$managingTeams<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$managingTeams<TRes> {
  _CopyWithImpl$Query$GetAccountInfo$accountById$managingTeams(
    this._instance,
    this._then,
  );

  final Query$GetAccountInfo$accountById$managingTeams _instance;

  final TRes Function(Query$GetAccountInfo$accountById$managingTeams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? teamId = _undefined,
    Object? teamName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountInfo$accountById$managingTeams(
      teamId: teamId == _undefined || teamId == null
          ? _instance.teamId
          : (teamId as String),
      teamName: teamName == _undefined || teamName == null
          ? _instance.teamName
          : (teamName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccountInfo$accountById$managingTeams<TRes>
    implements CopyWith$Query$GetAccountInfo$accountById$managingTeams<TRes> {
  _CopyWithStubImpl$Query$GetAccountInfo$accountById$managingTeams(this._res);

  TRes _res;

  call({String? teamId, String? teamName, String? $__typename}) => _res;
}
