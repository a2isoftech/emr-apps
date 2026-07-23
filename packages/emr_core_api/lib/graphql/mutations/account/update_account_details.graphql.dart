import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountDetails {
  factory Variables$Mutation$UpdateAccountDetails({
    required Input$UpdateAccountDetailsInput input,
  }) => Variables$Mutation$UpdateAccountDetails._({r'input': input});

  Variables$Mutation$UpdateAccountDetails._(this._$data);

  factory Variables$Mutation$UpdateAccountDetails.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateAccountDetailsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateAccountDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateAccountDetailsInput get input =>
      (_$data['input'] as Input$UpdateAccountDetailsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccountDetails<
    Variables$Mutation$UpdateAccountDetails
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateAccountDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateAccountDetails<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccountDetails(
    Variables$Mutation$UpdateAccountDetails instance,
    TRes Function(Variables$Mutation$UpdateAccountDetails) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountDetails;

  factory CopyWith$Variables$Mutation$UpdateAccountDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccountDetails;

  TRes call({Input$UpdateAccountDetailsInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountDetails<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountDetails<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountDetails(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountDetails _instance;

  final TRes Function(Variables$Mutation$UpdateAccountDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateAccountDetails._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateAccountDetailsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountDetails<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountDetails<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountDetails(this._res);

  TRes _res;

  call({Input$UpdateAccountDetailsInput? input}) => _res;
}

class Mutation$UpdateAccountDetails {
  Mutation$UpdateAccountDetails({
    this.updateAccountDetails,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountDetails.fromJson(Map<String, dynamic> json) {
    final l$updateAccountDetails = json['updateAccountDetails'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountDetails(
      updateAccountDetails: l$updateAccountDetails == null
          ? null
          : Mutation$UpdateAccountDetails$updateAccountDetails.fromJson(
              (l$updateAccountDetails as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountDetails$updateAccountDetails?
  updateAccountDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountDetails = updateAccountDetails;
    _resultData['updateAccountDetails'] = l$updateAccountDetails?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountDetails = updateAccountDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccountDetails, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountDetails = updateAccountDetails;
    final lOther$updateAccountDetails = other.updateAccountDetails;
    if (l$updateAccountDetails != lOther$updateAccountDetails) {
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

extension UtilityExtension$Mutation$UpdateAccountDetails
    on Mutation$UpdateAccountDetails {
  CopyWith$Mutation$UpdateAccountDetails<Mutation$UpdateAccountDetails>
  get copyWith => CopyWith$Mutation$UpdateAccountDetails(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccountDetails<TRes> {
  factory CopyWith$Mutation$UpdateAccountDetails(
    Mutation$UpdateAccountDetails instance,
    TRes Function(Mutation$UpdateAccountDetails) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountDetails;

  factory CopyWith$Mutation$UpdateAccountDetails.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountDetails;

  TRes call({
    Mutation$UpdateAccountDetails$updateAccountDetails? updateAccountDetails,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails<TRes>
  get updateAccountDetails;
}

class _CopyWithImpl$Mutation$UpdateAccountDetails<TRes>
    implements CopyWith$Mutation$UpdateAccountDetails<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountDetails(this._instance, this._then);

  final Mutation$UpdateAccountDetails _instance;

  final TRes Function(Mutation$UpdateAccountDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountDetails(
      updateAccountDetails: updateAccountDetails == _undefined
          ? _instance.updateAccountDetails
          : (updateAccountDetails
                as Mutation$UpdateAccountDetails$updateAccountDetails?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails<TRes>
  get updateAccountDetails {
    final local$updateAccountDetails = _instance.updateAccountDetails;
    return local$updateAccountDetails == null
        ? CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails(
            local$updateAccountDetails,
            (e) => call(updateAccountDetails: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountDetails<TRes>
    implements CopyWith$Mutation$UpdateAccountDetails<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountDetails(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccountDetails$updateAccountDetails? updateAccountDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails<TRes>
  get updateAccountDetails =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails.stub(_res);
}

const documentNodeMutationUpdateAccountDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccountDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateAccountDetailsInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateAccountDetails'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'Account'),
                      isNonNull: false,
                    ),
                  ),
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
                        name: NameNode(value: 'originatingCountry'),
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
                        name: NameNode(value: 'currencyId'),
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
                              name: NameNode(value: 'website'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'companyRegistrationNumber',
                              ),
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
                              name: NameNode(value: 'licenseExemption'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(
                                      value: 'annualWasteTransferNote',
                                    ),
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
                                    name: NameNode(
                                      value: 'wasteRegCarrierNumber',
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'AccountDetailsError'),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'message'),
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

class Mutation$UpdateAccountDetails$updateAccountDetails {
  Mutation$UpdateAccountDetails$updateAccountDetails({
    required this.$__typename,
  });

  factory Mutation$UpdateAccountDetails$updateAccountDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$UpdateAccountDetails$updateAccountDetails$$Account.fromJson(
          json,
        );

      case "AccountDetailsError":
        return Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateAccountDetails$updateAccountDetails(
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountDetails$updateAccountDetails ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateAccountDetails$updateAccountDetails
    on Mutation$UpdateAccountDetails$updateAccountDetails {
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails<
    Mutation$UpdateAccountDetails$updateAccountDetails
  >
  get copyWith => CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateAccountDetails$updateAccountDetails$$Account,
    )
    account,
    required _T Function(
      Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError,
    )
    accountDetailsError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this as Mutation$UpdateAccountDetails$updateAccountDetails$$Account,
        );

      case "AccountDetailsError":
        return accountDetailsError(
          this
              as Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$UpdateAccountDetails$updateAccountDetails$$Account)?
    account,
    _T Function(
      Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError,
    )?
    accountDetailsError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this as Mutation$UpdateAccountDetails$updateAccountDetails$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountDetailsError":
        if (accountDetailsError != null) {
          return accountDetailsError(
            this
                as Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails(
    Mutation$UpdateAccountDetails$updateAccountDetails instance,
    TRes Function(Mutation$UpdateAccountDetails$updateAccountDetails) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails;

  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails<TRes>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountDetails$updateAccountDetails _instance;

  final TRes Function(Mutation$UpdateAccountDetails$updateAccountDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateAccountDetails$updateAccountDetails(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails<TRes>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateAccountDetails$updateAccountDetails$$Account
    implements Mutation$UpdateAccountDetails$updateAccountDetails {
  Mutation$UpdateAccountDetails$updateAccountDetails$$Account({
    required this.id,
    required this.code,
    required this.name,
    required this.originatingCountry,
    this.parentAccount,
    required this.currencyId,
    required this.customerVatGroupType,
    required this.supplierVatGroupType,
    this.financialCustomerGroupId,
    this.financialSupplierGroupId,
    this.businessDetail,
    this.taxSettings,
    required this.settings,
    this.$__typename = 'Account',
  });

  factory Mutation$UpdateAccountDetails$updateAccountDetails$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$originatingCountry = json['originatingCountry'];
    final l$parentAccount = json['parentAccount'];
    final l$currencyId = json['currencyId'];
    final l$customerVatGroupType = json['customerVatGroupType'];
    final l$supplierVatGroupType = json['supplierVatGroupType'];
    final l$financialCustomerGroupId = json['financialCustomerGroupId'];
    final l$financialSupplierGroupId = json['financialSupplierGroupId'];
    final l$businessDetail = json['businessDetail'];
    final l$taxSettings = json['taxSettings'];
    final l$settings = json['settings'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountDetails$updateAccountDetails$$Account(
      id: (l$id as String),
      code: (l$code as String),
      name: (l$name as String),
      originatingCountry: (l$originatingCountry as String),
      parentAccount: (l$parentAccount as String?),
      currencyId: (l$currencyId as String),
      customerVatGroupType: fromJson$Enum$VatGroupType(
        (l$customerVatGroupType as String),
      ),
      supplierVatGroupType: fromJson$Enum$VatGroupType(
        (l$supplierVatGroupType as String),
      ),
      financialCustomerGroupId: (l$financialCustomerGroupId as String?),
      financialSupplierGroupId: (l$financialSupplierGroupId as String?),
      businessDetail: l$businessDetail == null
          ? null
          : Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail.fromJson(
              (l$businessDetail as Map<String, dynamic>),
            ),
      taxSettings: l$taxSettings == null
          ? null
          : Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings.fromJson(
              (l$taxSettings as Map<String, dynamic>),
            ),
      settings:
          Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings.fromJson(
            (l$settings as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String name;

  final String originatingCountry;

  final String? parentAccount;

  final String currencyId;

  final Enum$VatGroupType customerVatGroupType;

  final Enum$VatGroupType supplierVatGroupType;

  final String? financialCustomerGroupId;

  final String? financialSupplierGroupId;

  final Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail?
  businessDetail;

  final Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings?
  taxSettings;

  final Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings
  settings;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$originatingCountry = originatingCountry;
    _resultData['originatingCountry'] = l$originatingCountry;
    final l$parentAccount = parentAccount;
    _resultData['parentAccount'] = l$parentAccount;
    final l$currencyId = currencyId;
    _resultData['currencyId'] = l$currencyId;
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
    final l$businessDetail = businessDetail;
    _resultData['businessDetail'] = l$businessDetail?.toJson();
    final l$taxSettings = taxSettings;
    _resultData['taxSettings'] = l$taxSettings?.toJson();
    final l$settings = settings;
    _resultData['settings'] = l$settings.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$name = name;
    final l$originatingCountry = originatingCountry;
    final l$parentAccount = parentAccount;
    final l$currencyId = currencyId;
    final l$customerVatGroupType = customerVatGroupType;
    final l$supplierVatGroupType = supplierVatGroupType;
    final l$financialCustomerGroupId = financialCustomerGroupId;
    final l$financialSupplierGroupId = financialSupplierGroupId;
    final l$businessDetail = businessDetail;
    final l$taxSettings = taxSettings;
    final l$settings = settings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$name,
      l$originatingCountry,
      l$parentAccount,
      l$currencyId,
      l$customerVatGroupType,
      l$supplierVatGroupType,
      l$financialCustomerGroupId,
      l$financialSupplierGroupId,
      l$businessDetail,
      l$taxSettings,
      l$settings,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountDetails$updateAccountDetails$$Account ||
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
    final l$originatingCountry = originatingCountry;
    final lOther$originatingCountry = other.originatingCountry;
    if (l$originatingCountry != lOther$originatingCountry) {
      return false;
    }
    final l$parentAccount = parentAccount;
    final lOther$parentAccount = other.parentAccount;
    if (l$parentAccount != lOther$parentAccount) {
      return false;
    }
    final l$currencyId = currencyId;
    final lOther$currencyId = other.currencyId;
    if (l$currencyId != lOther$currencyId) {
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
    final l$businessDetail = businessDetail;
    final lOther$businessDetail = other.businessDetail;
    if (l$businessDetail != lOther$businessDetail) {
      return false;
    }
    final l$taxSettings = taxSettings;
    final lOther$taxSettings = other.taxSettings;
    if (l$taxSettings != lOther$taxSettings) {
      return false;
    }
    final l$settings = settings;
    final lOther$settings = other.settings;
    if (l$settings != lOther$settings) {
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

extension UtilityExtension$Mutation$UpdateAccountDetails$updateAccountDetails$$Account
    on Mutation$UpdateAccountDetails$updateAccountDetails$$Account {
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account<
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account instance,
    TRes Function(Mutation$UpdateAccountDetails$updateAccountDetails$$Account)
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account;

  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account;

  TRes call({
    String? id,
    String? code,
    String? name,
    String? originatingCountry,
    String? parentAccount,
    String? currencyId,
    Enum$VatGroupType? customerVatGroupType,
    Enum$VatGroupType? supplierVatGroupType,
    String? financialCustomerGroupId,
    String? financialSupplierGroupId,
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail?
    businessDetail,
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings?
    taxSettings,
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings?
    settings,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail<
    TRes
  >
  get businessDetail;
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings<
    TRes
  >
  get taxSettings;
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings<
    TRes
  >
  get settings;
}

class _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountDetails$updateAccountDetails$$Account _instance;

  final TRes Function(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? originatingCountry = _undefined,
    Object? parentAccount = _undefined,
    Object? currencyId = _undefined,
    Object? customerVatGroupType = _undefined,
    Object? supplierVatGroupType = _undefined,
    Object? financialCustomerGroupId = _undefined,
    Object? financialSupplierGroupId = _undefined,
    Object? businessDetail = _undefined,
    Object? taxSettings = _undefined,
    Object? settings = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      originatingCountry:
          originatingCountry == _undefined || originatingCountry == null
          ? _instance.originatingCountry
          : (originatingCountry as String),
      parentAccount: parentAccount == _undefined
          ? _instance.parentAccount
          : (parentAccount as String?),
      currencyId: currencyId == _undefined || currencyId == null
          ? _instance.currencyId
          : (currencyId as String),
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
      businessDetail: businessDetail == _undefined
          ? _instance.businessDetail
          : (businessDetail
                as Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail?),
      taxSettings: taxSettings == _undefined
          ? _instance.taxSettings
          : (taxSettings
                as Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings?),
      settings: settings == _undefined || settings == null
          ? _instance.settings
          : (settings
                as Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail<
    TRes
  >
  get businessDetail {
    final local$businessDetail = _instance.businessDetail;
    return local$businessDetail == null
        ? CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail(
            local$businessDetail,
            (e) => call(businessDetail: e),
          );
  }

  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings<
    TRes
  >
  get taxSettings {
    final local$taxSettings = _instance.taxSettings;
    return local$taxSettings == null
        ? CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings(
            local$taxSettings,
            (e) => call(taxSettings: e),
          );
  }

  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings<
    TRes
  >
  get settings {
    final local$settings = _instance.settings;
    return CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings(
      local$settings,
      (e) => call(settings: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? code,
    String? name,
    String? originatingCountry,
    String? parentAccount,
    String? currencyId,
    Enum$VatGroupType? customerVatGroupType,
    Enum$VatGroupType? supplierVatGroupType,
    String? financialCustomerGroupId,
    String? financialSupplierGroupId,
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail?
    businessDetail,
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings?
    taxSettings,
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings?
    settings,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail<
    TRes
  >
  get businessDetail =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail.stub(
        _res,
      );

  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings<
    TRes
  >
  get taxSettings =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings.stub(
        _res,
      );

  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings<
    TRes
  >
  get settings =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings.stub(
        _res,
      );
}

class Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail {
  Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail({
    this.vatNumber,
    this.eoriNumber,
    this.website,
    this.companyRegistrationNumber,
    required this.isTradingCompany,
    this.licenseExemption,
    this.$__typename = 'BusinessDetail',
  });

  factory Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vatNumber = json['vatNumber'];
    final l$eoriNumber = json['eoriNumber'];
    final l$website = json['website'];
    final l$companyRegistrationNumber = json['companyRegistrationNumber'];
    final l$isTradingCompany = json['isTradingCompany'];
    final l$licenseExemption = json['licenseExemption'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail(
      vatNumber: (l$vatNumber as String?),
      eoriNumber: (l$eoriNumber as String?),
      website: (l$website as String?),
      companyRegistrationNumber: (l$companyRegistrationNumber as String?),
      isTradingCompany: (l$isTradingCompany as bool),
      licenseExemption: l$licenseExemption == null
          ? null
          : Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption.fromJson(
              (l$licenseExemption as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String? vatNumber;

  final String? eoriNumber;

  final String? website;

  final String? companyRegistrationNumber;

  final bool isTradingCompany;

  final Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption?
  licenseExemption;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vatNumber = vatNumber;
    _resultData['vatNumber'] = l$vatNumber;
    final l$eoriNumber = eoriNumber;
    _resultData['eoriNumber'] = l$eoriNumber;
    final l$website = website;
    _resultData['website'] = l$website;
    final l$companyRegistrationNumber = companyRegistrationNumber;
    _resultData['companyRegistrationNumber'] = l$companyRegistrationNumber;
    final l$isTradingCompany = isTradingCompany;
    _resultData['isTradingCompany'] = l$isTradingCompany;
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
    final l$website = website;
    final l$companyRegistrationNumber = companyRegistrationNumber;
    final l$isTradingCompany = isTradingCompany;
    final l$licenseExemption = licenseExemption;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vatNumber,
      l$eoriNumber,
      l$website,
      l$companyRegistrationNumber,
      l$isTradingCompany,
      l$licenseExemption,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail ||
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
    final l$website = website;
    final lOther$website = other.website;
    if (l$website != lOther$website) {
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

extension UtilityExtension$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail
    on Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail {
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail<
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail
    instance,
    TRes Function(
      Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail;

  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail;

  TRes call({
    String? vatNumber,
    String? eoriNumber,
    String? website,
    String? companyRegistrationNumber,
    bool? isTradingCompany,
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption?
    licenseExemption,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption<
    TRes
  >
  get licenseExemption;
}

class _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail
  _instance;

  final TRes Function(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vatNumber = _undefined,
    Object? eoriNumber = _undefined,
    Object? website = _undefined,
    Object? companyRegistrationNumber = _undefined,
    Object? isTradingCompany = _undefined,
    Object? licenseExemption = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail(
      vatNumber: vatNumber == _undefined
          ? _instance.vatNumber
          : (vatNumber as String?),
      eoriNumber: eoriNumber == _undefined
          ? _instance.eoriNumber
          : (eoriNumber as String?),
      website: website == _undefined ? _instance.website : (website as String?),
      companyRegistrationNumber: companyRegistrationNumber == _undefined
          ? _instance.companyRegistrationNumber
          : (companyRegistrationNumber as String?),
      isTradingCompany:
          isTradingCompany == _undefined || isTradingCompany == null
          ? _instance.isTradingCompany
          : (isTradingCompany as bool),
      licenseExemption: licenseExemption == _undefined
          ? _instance.licenseExemption
          : (licenseExemption
                as Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption<
    TRes
  >
  get licenseExemption {
    final local$licenseExemption = _instance.licenseExemption;
    return local$licenseExemption == null
        ? CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption(
            local$licenseExemption,
            (e) => call(licenseExemption: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail(
    this._res,
  );

  TRes _res;

  call({
    String? vatNumber,
    String? eoriNumber,
    String? website,
    String? companyRegistrationNumber,
    bool? isTradingCompany,
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption?
    licenseExemption,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption<
    TRes
  >
  get licenseExemption =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption.stub(
        _res,
      );
}

class Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption {
  Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption({
    required this.annualWasteTransferNote,
    required this.wasteProducer,
    required this.wasteImporter,
    required this.wasteTransporter,
    required this.wasteRegCarrier,
    this.wasteRegCarrierNumber,
    this.$__typename = 'LicenseExemption',
  });

  factory Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$annualWasteTransferNote = json['annualWasteTransferNote'];
    final l$wasteProducer = json['wasteProducer'];
    final l$wasteImporter = json['wasteImporter'];
    final l$wasteTransporter = json['wasteTransporter'];
    final l$wasteRegCarrier = json['wasteRegCarrier'];
    final l$wasteRegCarrierNumber = json['wasteRegCarrierNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption(
      annualWasteTransferNote: (l$annualWasteTransferNote as bool),
      wasteProducer: (l$wasteProducer as bool),
      wasteImporter: (l$wasteImporter as bool),
      wasteTransporter: (l$wasteTransporter as bool),
      wasteRegCarrier: (l$wasteRegCarrier as bool),
      wasteRegCarrierNumber: (l$wasteRegCarrierNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool annualWasteTransferNote;

  final bool wasteProducer;

  final bool wasteImporter;

  final bool wasteTransporter;

  final bool wasteRegCarrier;

  final String? wasteRegCarrierNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$annualWasteTransferNote = annualWasteTransferNote;
    final l$wasteProducer = wasteProducer;
    final l$wasteImporter = wasteImporter;
    final l$wasteTransporter = wasteTransporter;
    final l$wasteRegCarrier = wasteRegCarrier;
    final l$wasteRegCarrierNumber = wasteRegCarrierNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is! Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption
    on
        Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption {
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption<
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption
    instance,
    TRes Function(
      Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption;

  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption;

  TRes call({
    bool? annualWasteTransferNote,
    bool? wasteProducer,
    bool? wasteImporter,
    bool? wasteTransporter,
    bool? wasteRegCarrier,
    String? wasteRegCarrierNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption
  _instance;

  final TRes Function(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? annualWasteTransferNote = _undefined,
    Object? wasteProducer = _undefined,
    Object? wasteImporter = _undefined,
    Object? wasteTransporter = _undefined,
    Object? wasteRegCarrier = _undefined,
    Object? wasteRegCarrierNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption(
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
}

class _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$businessDetail$licenseExemption(
    this._res,
  );

  TRes _res;

  call({
    bool? annualWasteTransferNote,
    bool? wasteProducer,
    bool? wasteImporter,
    bool? wasteTransporter,
    bool? wasteRegCarrier,
    String? wasteRegCarrierNumber,
    String? $__typename,
  }) => _res;
}

class Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings {
  Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings({
    required this.taxId,
    required this.w9Received,
    required this.nameFor1099,
    required this.doingBusinessAs,
    this.$__typename = 'TaxSettings',
  });

  factory Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$taxId = json['taxId'];
    final l$w9Received = json['w9Received'];
    final l$nameFor1099 = json['nameFor1099'];
    final l$doingBusinessAs = json['doingBusinessAs'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings(
      taxId: fromJson$Enum$TaxIdType((l$taxId as String)),
      w9Received: (l$w9Received as bool),
      nameFor1099: (l$nameFor1099 as String),
      doingBusinessAs: (l$doingBusinessAs as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$TaxIdType taxId;

  final bool w9Received;

  final String nameFor1099;

  final String doingBusinessAs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$taxId = taxId;
    _resultData['taxId'] = toJson$Enum$TaxIdType(l$taxId);
    final l$w9Received = w9Received;
    _resultData['w9Received'] = l$w9Received;
    final l$nameFor1099 = nameFor1099;
    _resultData['nameFor1099'] = l$nameFor1099;
    final l$doingBusinessAs = doingBusinessAs;
    _resultData['doingBusinessAs'] = l$doingBusinessAs;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$taxId = taxId;
    final l$w9Received = w9Received;
    final l$nameFor1099 = nameFor1099;
    final l$doingBusinessAs = doingBusinessAs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$taxId,
      l$w9Received,
      l$nameFor1099,
      l$doingBusinessAs,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings
    on Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings {
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings<
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings
    instance,
    TRes Function(
      Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings;

  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings;

  TRes call({
    Enum$TaxIdType? taxId,
    bool? w9Received,
    String? nameFor1099,
    String? doingBusinessAs,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings
  _instance;

  final TRes Function(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? taxId = _undefined,
    Object? w9Received = _undefined,
    Object? nameFor1099 = _undefined,
    Object? doingBusinessAs = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings(
      taxId: taxId == _undefined || taxId == null
          ? _instance.taxId
          : (taxId as Enum$TaxIdType),
      w9Received: w9Received == _undefined || w9Received == null
          ? _instance.w9Received
          : (w9Received as bool),
      nameFor1099: nameFor1099 == _undefined || nameFor1099 == null
          ? _instance.nameFor1099
          : (nameFor1099 as String),
      doingBusinessAs: doingBusinessAs == _undefined || doingBusinessAs == null
          ? _instance.doingBusinessAs
          : (doingBusinessAs as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$taxSettings(
    this._res,
  );

  TRes _res;

  call({
    Enum$TaxIdType? taxId,
    bool? w9Received,
    String? nameFor1099,
    String? doingBusinessAs,
    String? $__typename,
  }) => _res;
}

class Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings {
  Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings({
    required this.stateReportingEnabled,
    required this.isWasteProducer,
    required this.isWasteImporter,
    required this.isWasteTransporter,
    required this.isWasteRegisteredCarrier,
    this.$__typename = 'AccountSettings',
  });

  factory Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$stateReportingEnabled = json['stateReportingEnabled'];
    final l$isWasteProducer = json['isWasteProducer'];
    final l$isWasteImporter = json['isWasteImporter'];
    final l$isWasteTransporter = json['isWasteTransporter'];
    final l$isWasteRegisteredCarrier = json['isWasteRegisteredCarrier'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings(
      stateReportingEnabled: (l$stateReportingEnabled as bool),
      isWasteProducer: (l$isWasteProducer as bool),
      isWasteImporter: (l$isWasteImporter as bool),
      isWasteTransporter: (l$isWasteTransporter as bool),
      isWasteRegisteredCarrier: (l$isWasteRegisteredCarrier as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool stateReportingEnabled;

  final bool isWasteProducer;

  final bool isWasteImporter;

  final bool isWasteTransporter;

  final bool isWasteRegisteredCarrier;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stateReportingEnabled = stateReportingEnabled;
    _resultData['stateReportingEnabled'] = l$stateReportingEnabled;
    final l$isWasteProducer = isWasteProducer;
    _resultData['isWasteProducer'] = l$isWasteProducer;
    final l$isWasteImporter = isWasteImporter;
    _resultData['isWasteImporter'] = l$isWasteImporter;
    final l$isWasteTransporter = isWasteTransporter;
    _resultData['isWasteTransporter'] = l$isWasteTransporter;
    final l$isWasteRegisteredCarrier = isWasteRegisteredCarrier;
    _resultData['isWasteRegisteredCarrier'] = l$isWasteRegisteredCarrier;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stateReportingEnabled = stateReportingEnabled;
    final l$isWasteProducer = isWasteProducer;
    final l$isWasteImporter = isWasteImporter;
    final l$isWasteTransporter = isWasteTransporter;
    final l$isWasteRegisteredCarrier = isWasteRegisteredCarrier;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stateReportingEnabled,
      l$isWasteProducer,
      l$isWasteImporter,
      l$isWasteTransporter,
      l$isWasteRegisteredCarrier,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stateReportingEnabled = stateReportingEnabled;
    final lOther$stateReportingEnabled = other.stateReportingEnabled;
    if (l$stateReportingEnabled != lOther$stateReportingEnabled) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings
    on Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings {
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings<
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings
    instance,
    TRes Function(
      Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings;

  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings;

  TRes call({
    bool? stateReportingEnabled,
    bool? isWasteProducer,
    bool? isWasteImporter,
    bool? isWasteTransporter,
    bool? isWasteRegisteredCarrier,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings
  _instance;

  final TRes Function(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stateReportingEnabled = _undefined,
    Object? isWasteProducer = _undefined,
    Object? isWasteImporter = _undefined,
    Object? isWasteTransporter = _undefined,
    Object? isWasteRegisteredCarrier = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings(
      stateReportingEnabled:
          stateReportingEnabled == _undefined || stateReportingEnabled == null
          ? _instance.stateReportingEnabled
          : (stateReportingEnabled as bool),
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
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$Account$settings(
    this._res,
  );

  TRes _res;

  call({
    bool? stateReportingEnabled,
    bool? isWasteProducer,
    bool? isWasteImporter,
    bool? isWasteTransporter,
    bool? isWasteRegisteredCarrier,
    String? $__typename,
  }) => _res;
}

class Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError
    implements Mutation$UpdateAccountDetails$updateAccountDetails {
  Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError({
    required this.message,
    this.$__typename = 'AccountDetailsError',
  });

  factory Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError
    on Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError {
  CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError<
    Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError(
    Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError
    instance,
    TRes Function(
      Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError;

  factory CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError
  _instance;

  final TRes Function(
    Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountDetails$updateAccountDetails$$AccountDetailsError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
