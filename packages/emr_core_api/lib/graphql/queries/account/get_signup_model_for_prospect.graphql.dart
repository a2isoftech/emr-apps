import '../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Query$GetSignupModelForProspect {
  Query$GetSignupModelForProspect({
    required this.prospect,
    this.$__typename = 'Query',
  });

  factory Query$GetSignupModelForProspect.fromJson(Map<String, dynamic> json) {
    final l$prospect = json['prospect'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect(
      prospect: Query$GetSignupModelForProspect$prospect.fromJson(
        (l$prospect as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelForProspect$prospect prospect;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$prospect = prospect;
    _resultData['prospect'] = l$prospect.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$prospect = prospect;
    final l$$__typename = $__typename;
    return Object.hashAll([l$prospect, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSignupModelForProspect ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$prospect = prospect;
    final lOther$prospect = other.prospect;
    if (l$prospect != lOther$prospect) {
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

extension UtilityExtension$Query$GetSignupModelForProspect
    on Query$GetSignupModelForProspect {
  CopyWith$Query$GetSignupModelForProspect<Query$GetSignupModelForProspect>
  get copyWith => CopyWith$Query$GetSignupModelForProspect(this, (i) => i);
}

abstract class CopyWith$Query$GetSignupModelForProspect<TRes> {
  factory CopyWith$Query$GetSignupModelForProspect(
    Query$GetSignupModelForProspect instance,
    TRes Function(Query$GetSignupModelForProspect) then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect;

  factory CopyWith$Query$GetSignupModelForProspect.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSignupModelForProspect;

  TRes call({
    Query$GetSignupModelForProspect$prospect? prospect,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspect$prospect<TRes> get prospect;
}

class _CopyWithImpl$Query$GetSignupModelForProspect<TRes>
    implements CopyWith$Query$GetSignupModelForProspect<TRes> {
  _CopyWithImpl$Query$GetSignupModelForProspect(this._instance, this._then);

  final Query$GetSignupModelForProspect _instance;

  final TRes Function(Query$GetSignupModelForProspect) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? prospect = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect(
      prospect: prospect == _undefined || prospect == null
          ? _instance.prospect
          : (prospect as Query$GetSignupModelForProspect$prospect),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspect$prospect<TRes> get prospect {
    final local$prospect = _instance.prospect;
    return CopyWith$Query$GetSignupModelForProspect$prospect(
      local$prospect,
      (e) => call(prospect: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect<TRes>
    implements CopyWith$Query$GetSignupModelForProspect<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelForProspect(this._res);

  TRes _res;

  call({
    Query$GetSignupModelForProspect$prospect? prospect,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspect$prospect<TRes> get prospect =>
      CopyWith$Query$GetSignupModelForProspect$prospect.stub(_res);
}

const documentNodeQueryGetSignupModelForProspect = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSignupModelForProspect'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'prospect'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'code'),
                  alias: NameNode(value: 'accountNumber'),
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
                  name: NameNode(value: 'contacts'),
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
                              name: NameNode(value: 'dateOfBirth'),
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
                              name: NameNode(value: 'addressKey'),
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
                  name: NameNode(value: 'bankAccounts'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'accountHolderName'),
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
                        name: NameNode(value: 'sortCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'bankName'),
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
                  name: NameNode(value: 'defaultYardCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'addresses'),
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

class Query$GetSignupModelForProspect$prospect {
  Query$GetSignupModelForProspect$prospect({
    required this.accountNumber,
    required this.name,
    required this.originatingCountry,
    required this.industryGroups,
    this.celAgreement,
    required this.contacts,
    required this.bankAccounts,
    this.defaultYardCode,
    required this.addresses,
    this.$__typename = 'Prospect',
  });

  factory Query$GetSignupModelForProspect$prospect.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$originatingCountry = json['originatingCountry'];
    final l$industryGroups = json['industryGroups'];
    final l$celAgreement = json['celAgreement'];
    final l$contacts = json['contacts'];
    final l$bankAccounts = json['bankAccounts'];
    final l$defaultYardCode = json['defaultYardCode'];
    final l$addresses = json['addresses'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect(
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      originatingCountry: (l$originatingCountry as String),
      industryGroups:
          Query$GetSignupModelForProspect$prospect$industryGroups.fromJson(
            (l$industryGroups as Map<String, dynamic>),
          ),
      celAgreement: l$celAgreement == null
          ? null
          : Query$GetSignupModelForProspect$prospect$celAgreement.fromJson(
              (l$celAgreement as Map<String, dynamic>),
            ),
      contacts: (l$contacts as List<dynamic>)
          .map(
            (e) => Query$GetSignupModelForProspect$prospect$contacts.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      bankAccounts: (l$bankAccounts as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelForProspect$prospect$bankAccounts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      defaultYardCode: (l$defaultYardCode as String?),
      addresses: (l$addresses as List<dynamic>)
          .map(
            (e) => Query$GetSignupModelForProspect$prospect$addresses.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountNumber;

  final String name;

  final String originatingCountry;

  final Query$GetSignupModelForProspect$prospect$industryGroups industryGroups;

  final Query$GetSignupModelForProspect$prospect$celAgreement? celAgreement;

  final List<Query$GetSignupModelForProspect$prospect$contacts> contacts;

  final List<Query$GetSignupModelForProspect$prospect$bankAccounts>
  bankAccounts;

  final String? defaultYardCode;

  final List<Query$GetSignupModelForProspect$prospect$addresses> addresses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$originatingCountry = originatingCountry;
    _resultData['originatingCountry'] = l$originatingCountry;
    final l$industryGroups = industryGroups;
    _resultData['industryGroups'] = l$industryGroups.toJson();
    final l$celAgreement = celAgreement;
    _resultData['celAgreement'] = l$celAgreement?.toJson();
    final l$contacts = contacts;
    _resultData['contacts'] = l$contacts.map((e) => e.toJson()).toList();
    final l$bankAccounts = bankAccounts;
    _resultData['bankAccounts'] = l$bankAccounts
        .map((e) => e.toJson())
        .toList();
    final l$defaultYardCode = defaultYardCode;
    _resultData['defaultYardCode'] = l$defaultYardCode;
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$originatingCountry = originatingCountry;
    final l$industryGroups = industryGroups;
    final l$celAgreement = celAgreement;
    final l$contacts = contacts;
    final l$bankAccounts = bankAccounts;
    final l$defaultYardCode = defaultYardCode;
    final l$addresses = addresses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      l$name,
      l$originatingCountry,
      l$industryGroups,
      l$celAgreement,
      Object.hashAll(l$contacts.map((v) => v)),
      Object.hashAll(l$bankAccounts.map((v) => v)),
      l$defaultYardCode,
      Object.hashAll(l$addresses.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSignupModelForProspect$prospect ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
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
    final l$industryGroups = industryGroups;
    final lOther$industryGroups = other.industryGroups;
    if (l$industryGroups != lOther$industryGroups) {
      return false;
    }
    final l$celAgreement = celAgreement;
    final lOther$celAgreement = other.celAgreement;
    if (l$celAgreement != lOther$celAgreement) {
      return false;
    }
    final l$contacts = contacts;
    final lOther$contacts = other.contacts;
    if (l$contacts.length != lOther$contacts.length) {
      return false;
    }
    for (int i = 0; i < l$contacts.length; i++) {
      final l$contacts$entry = l$contacts[i];
      final lOther$contacts$entry = lOther$contacts[i];
      if (l$contacts$entry != lOther$contacts$entry) {
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
    final l$defaultYardCode = defaultYardCode;
    final lOther$defaultYardCode = other.defaultYardCode;
    if (l$defaultYardCode != lOther$defaultYardCode) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses.length != lOther$addresses.length) {
      return false;
    }
    for (int i = 0; i < l$addresses.length; i++) {
      final l$addresses$entry = l$addresses[i];
      final lOther$addresses$entry = lOther$addresses[i];
      if (l$addresses$entry != lOther$addresses$entry) {
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect
    on Query$GetSignupModelForProspect$prospect {
  CopyWith$Query$GetSignupModelForProspect$prospect<
    Query$GetSignupModelForProspect$prospect
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect(this, (i) => i);
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect<TRes> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect(
    Query$GetSignupModelForProspect$prospect instance,
    TRes Function(Query$GetSignupModelForProspect$prospect) then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect;

  factory CopyWith$Query$GetSignupModelForProspect$prospect.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect;

  TRes call({
    String? accountNumber,
    String? name,
    String? originatingCountry,
    Query$GetSignupModelForProspect$prospect$industryGroups? industryGroups,
    Query$GetSignupModelForProspect$prospect$celAgreement? celAgreement,
    List<Query$GetSignupModelForProspect$prospect$contacts>? contacts,
    List<Query$GetSignupModelForProspect$prospect$bankAccounts>? bankAccounts,
    String? defaultYardCode,
    List<Query$GetSignupModelForProspect$prospect$addresses>? addresses,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups<TRes>
  get industryGroups;
  CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement<TRes>
  get celAgreement;
  TRes contacts(
    Iterable<Query$GetSignupModelForProspect$prospect$contacts> Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts<
          Query$GetSignupModelForProspect$prospect$contacts
        >
      >,
    )
    _fn,
  );
  TRes bankAccounts(
    Iterable<Query$GetSignupModelForProspect$prospect$bankAccounts> Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspect$prospect$bankAccounts<
          Query$GetSignupModelForProspect$prospect$bankAccounts
        >
      >,
    )
    _fn,
  );
  TRes addresses(
    Iterable<Query$GetSignupModelForProspect$prospect$addresses> Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspect$prospect$addresses<
          Query$GetSignupModelForProspect$prospect$addresses
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect<TRes>
    implements CopyWith$Query$GetSignupModelForProspect$prospect<TRes> {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect _instance;

  final TRes Function(Query$GetSignupModelForProspect$prospect) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? originatingCountry = _undefined,
    Object? industryGroups = _undefined,
    Object? celAgreement = _undefined,
    Object? contacts = _undefined,
    Object? bankAccounts = _undefined,
    Object? defaultYardCode = _undefined,
    Object? addresses = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect(
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      originatingCountry:
          originatingCountry == _undefined || originatingCountry == null
          ? _instance.originatingCountry
          : (originatingCountry as String),
      industryGroups: industryGroups == _undefined || industryGroups == null
          ? _instance.industryGroups
          : (industryGroups
                as Query$GetSignupModelForProspect$prospect$industryGroups),
      celAgreement: celAgreement == _undefined
          ? _instance.celAgreement
          : (celAgreement
                as Query$GetSignupModelForProspect$prospect$celAgreement?),
      contacts: contacts == _undefined || contacts == null
          ? _instance.contacts
          : (contacts
                as List<Query$GetSignupModelForProspect$prospect$contacts>),
      bankAccounts: bankAccounts == _undefined || bankAccounts == null
          ? _instance.bankAccounts
          : (bankAccounts
                as List<Query$GetSignupModelForProspect$prospect$bankAccounts>),
      defaultYardCode: defaultYardCode == _undefined
          ? _instance.defaultYardCode
          : (defaultYardCode as String?),
      addresses: addresses == _undefined || addresses == null
          ? _instance.addresses
          : (addresses
                as List<Query$GetSignupModelForProspect$prospect$addresses>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups<TRes>
  get industryGroups {
    final local$industryGroups = _instance.industryGroups;
    return CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups(
      local$industryGroups,
      (e) => call(industryGroups: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement<TRes>
  get celAgreement {
    final local$celAgreement = _instance.celAgreement;
    return local$celAgreement == null
        ? CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement(
            local$celAgreement,
            (e) => call(celAgreement: e),
          );
  }

  TRes contacts(
    Iterable<Query$GetSignupModelForProspect$prospect$contacts> Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts<
          Query$GetSignupModelForProspect$prospect$contacts
        >
      >,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts.map(
        (e) => CopyWith$Query$GetSignupModelForProspect$prospect$contacts(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes bankAccounts(
    Iterable<Query$GetSignupModelForProspect$prospect$bankAccounts> Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspect$prospect$bankAccounts<
          Query$GetSignupModelForProspect$prospect$bankAccounts
        >
      >,
    )
    _fn,
  ) => call(
    bankAccounts: _fn(
      _instance.bankAccounts.map(
        (e) => CopyWith$Query$GetSignupModelForProspect$prospect$bankAccounts(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes addresses(
    Iterable<Query$GetSignupModelForProspect$prospect$addresses> Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspect$prospect$addresses<
          Query$GetSignupModelForProspect$prospect$addresses
        >
      >,
    )
    _fn,
  ) => call(
    addresses: _fn(
      _instance.addresses.map(
        (e) => CopyWith$Query$GetSignupModelForProspect$prospect$addresses(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect<TRes>
    implements CopyWith$Query$GetSignupModelForProspect$prospect<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect(this._res);

  TRes _res;

  call({
    String? accountNumber,
    String? name,
    String? originatingCountry,
    Query$GetSignupModelForProspect$prospect$industryGroups? industryGroups,
    Query$GetSignupModelForProspect$prospect$celAgreement? celAgreement,
    List<Query$GetSignupModelForProspect$prospect$contacts>? contacts,
    List<Query$GetSignupModelForProspect$prospect$bankAccounts>? bankAccounts,
    String? defaultYardCode,
    List<Query$GetSignupModelForProspect$prospect$addresses>? addresses,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups<TRes>
  get industryGroups =>
      CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement<TRes>
  get celAgreement =>
      CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement.stub(_res);

  contacts(_fn) => _res;

  bankAccounts(_fn) => _res;

  addresses(_fn) => _res;
}

class Query$GetSignupModelForProspect$prospect$industryGroups {
  Query$GetSignupModelForProspect$prospect$industryGroups({
    this.trader,
    this.supplier,
    this.$__typename = 'IndustryGroups',
  });

  factory Query$GetSignupModelForProspect$prospect$industryGroups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$trader = json['trader'];
    final l$supplier = json['supplier'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$industryGroups(
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
    if (other is! Query$GetSignupModelForProspect$prospect$industryGroups ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$industryGroups
    on Query$GetSignupModelForProspect$prospect$industryGroups {
  CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups<
    Query$GetSignupModelForProspect$prospect$industryGroups
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups(
    Query$GetSignupModelForProspect$prospect$industryGroups instance,
    TRes Function(Query$GetSignupModelForProspect$prospect$industryGroups) then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$industryGroups;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$industryGroups;

  TRes call({String? trader, String? supplier, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$industryGroups<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups<TRes> {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$industryGroups(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$industryGroups _instance;

  final TRes Function(Query$GetSignupModelForProspect$prospect$industryGroups)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trader = _undefined,
    Object? supplier = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$industryGroups(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$industryGroups<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$industryGroups<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$industryGroups(
    this._res,
  );

  TRes _res;

  call({String? trader, String? supplier, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspect$prospect$celAgreement {
  Query$GetSignupModelForProspect$prospect$celAgreement({
    required this.agreementDate,
    this.expiryDate,
    this.$__typename = 'LegalAgreement',
  });

  factory Query$GetSignupModelForProspect$prospect$celAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agreementDate = json['agreementDate'];
    final l$expiryDate = json['expiryDate'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$celAgreement(
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
    if (other is! Query$GetSignupModelForProspect$prospect$celAgreement ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$celAgreement
    on Query$GetSignupModelForProspect$prospect$celAgreement {
  CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement<
    Query$GetSignupModelForProspect$prospect$celAgreement
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement(
    Query$GetSignupModelForProspect$prospect$celAgreement instance,
    TRes Function(Query$GetSignupModelForProspect$prospect$celAgreement) then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$celAgreement;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$celAgreement;

  TRes call({
    DateTime? agreementDate,
    DateTime? expiryDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$celAgreement<TRes>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement<TRes> {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$celAgreement(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$celAgreement _instance;

  final TRes Function(Query$GetSignupModelForProspect$prospect$celAgreement)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agreementDate = _undefined,
    Object? expiryDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$celAgreement(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$celAgreement<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$celAgreement<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$celAgreement(
    this._res,
  );

  TRes _res;

  call({DateTime? agreementDate, DateTime? expiryDate, String? $__typename}) =>
      _res;
}

class Query$GetSignupModelForProspect$prospect$contacts {
  Query$GetSignupModelForProspect$prospect$contacts({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfGuidAndContact',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts(
      key: (l$key as String),
      value: Query$GetSignupModelForProspect$prospect$contacts$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetSignupModelForProspect$prospect$contacts$value value;

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
    if (other is! Query$GetSignupModelForProspect$prospect$contacts ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts
    on Query$GetSignupModelForProspect$prospect$contacts {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts<
    Query$GetSignupModelForProspect$prospect$contacts
  >
  get copyWith => CopyWith$Query$GetSignupModelForProspect$prospect$contacts(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts(
    Query$GetSignupModelForProspect$prospect$contacts instance,
    TRes Function(Query$GetSignupModelForProspect$prospect$contacts) then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts;

  TRes call({
    String? key,
    Query$GetSignupModelForProspect$prospect$contacts$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value<TRes>
  get value;
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts<TRes>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts<TRes> {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts _instance;

  final TRes Function(Query$GetSignupModelForProspect$prospect$contacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$GetSignupModelForProspect$prospect$contacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts<TRes>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$GetSignupModelForProspect$prospect$contacts$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value<TRes>
  get value =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value.stub(
        _res,
      );
}

class Query$GetSignupModelForProspect$prospect$contacts$value {
  Query$GetSignupModelForProspect$prospect$contacts$value({
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.contactPreferences,
    this.signature,
    required this.proofOfAddress,
    required this.proofOfIdentification,
    this.dateOfBirth,
    required this.contactTypes,
    required this.addressKey,
    this.$__typename = 'Contact',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$firstName = json['firstName'];
    final l$middleName = json['middleName'];
    final l$lastName = json['lastName'];
    final l$contactPreferences = json['contactPreferences'];
    final l$signature = json['signature'];
    final l$proofOfAddress = json['proofOfAddress'];
    final l$proofOfIdentification = json['proofOfIdentification'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$contactTypes = json['contactTypes'];
    final l$addressKey = json['addressKey'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value(
      firstName: (l$firstName as String),
      middleName: (l$middleName as String?),
      lastName: (l$lastName as String),
      contactPreferences:
          Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences.fromJson(
            (l$contactPreferences as Map<String, dynamic>),
          ),
      signature: l$signature == null
          ? null
          : Query$GetSignupModelForProspect$prospect$contacts$value$signature.fromJson(
              (l$signature as Map<String, dynamic>),
            ),
      proofOfAddress: (l$proofOfAddress as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      proofOfIdentification: (l$proofOfIdentification as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : LocalDate.fromJson(l$dateOfBirth),
      contactTypes: (l$contactTypes as List<dynamic>)
          .map((e) => fromJson$Enum$ContactType((e as String)))
          .toList(),
      addressKey: (l$addressKey as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String firstName;

  final String? middleName;

  final String lastName;

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences
  contactPreferences;

  final Query$GetSignupModelForProspect$prospect$contacts$value$signature?
  signature;

  final List<
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
  >
  proofOfAddress;

  final List<
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
  >
  proofOfIdentification;

  final DateTime? dateOfBirth;

  final List<Enum$ContactType> contactTypes;

  final String addressKey;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$middleName = middleName;
    _resultData['middleName'] = l$middleName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$contactPreferences = contactPreferences;
    _resultData['contactPreferences'] = l$contactPreferences.toJson();
    final l$signature = signature;
    _resultData['signature'] = l$signature?.toJson();
    final l$proofOfAddress = proofOfAddress;
    _resultData['proofOfAddress'] = l$proofOfAddress
        .map((e) => e.toJson())
        .toList();
    final l$proofOfIdentification = proofOfIdentification;
    _resultData['proofOfIdentification'] = l$proofOfIdentification
        .map((e) => e.toJson())
        .toList();
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth == null
        ? null
        : LocalDate.toJson(l$dateOfBirth);
    final l$contactTypes = contactTypes;
    _resultData['contactTypes'] = l$contactTypes
        .map((e) => toJson$Enum$ContactType(e))
        .toList();
    final l$addressKey = addressKey;
    _resultData['addressKey'] = l$addressKey;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$middleName = middleName;
    final l$lastName = lastName;
    final l$contactPreferences = contactPreferences;
    final l$signature = signature;
    final l$proofOfAddress = proofOfAddress;
    final l$proofOfIdentification = proofOfIdentification;
    final l$dateOfBirth = dateOfBirth;
    final l$contactTypes = contactTypes;
    final l$addressKey = addressKey;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$middleName,
      l$lastName,
      l$contactPreferences,
      l$signature,
      Object.hashAll(l$proofOfAddress.map((v) => v)),
      Object.hashAll(l$proofOfIdentification.map((v) => v)),
      l$dateOfBirth,
      Object.hashAll(l$contactTypes.map((v) => v)),
      l$addressKey,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSignupModelForProspect$prospect$contacts$value ||
        runtimeType != other.runtimeType) {
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
    final l$signature = signature;
    final lOther$signature = other.signature;
    if (l$signature != lOther$signature) {
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
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
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
    final l$addressKey = addressKey;
    final lOther$addressKey = other.addressKey;
    if (l$addressKey != lOther$addressKey) {
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value
    on Query$GetSignupModelForProspect$prospect$contacts$value {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value<
    Query$GetSignupModelForProspect$prospect$contacts$value
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value(
    Query$GetSignupModelForProspect$prospect$contacts$value instance,
    TRes Function(Query$GetSignupModelForProspect$prospect$contacts$value) then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value;

  TRes call({
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences?
    contactPreferences,
    Query$GetSignupModelForProspect$prospect$contacts$value$signature?
    signature,
    List<
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    String? addressKey,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences<
    TRes
  >
  get contactPreferences;
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature<
    TRes
  >
  get signature;
  TRes proofOfAddress(
    Iterable<
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress<
          Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  );
  TRes proofOfIdentification(
    Iterable<
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification<
          Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value<TRes> {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value _instance;

  final TRes Function(Query$GetSignupModelForProspect$prospect$contacts$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? middleName = _undefined,
    Object? lastName = _undefined,
    Object? contactPreferences = _undefined,
    Object? signature = _undefined,
    Object? proofOfAddress = _undefined,
    Object? proofOfIdentification = _undefined,
    Object? dateOfBirth = _undefined,
    Object? contactTypes = _undefined,
    Object? addressKey = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value(
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
                as Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences),
      signature: signature == _undefined
          ? _instance.signature
          : (signature
                as Query$GetSignupModelForProspect$prospect$contacts$value$signature?),
      proofOfAddress: proofOfAddress == _undefined || proofOfAddress == null
          ? _instance.proofOfAddress
          : (proofOfAddress
                as List<
                  Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
                >),
      proofOfIdentification:
          proofOfIdentification == _undefined || proofOfIdentification == null
          ? _instance.proofOfIdentification
          : (proofOfIdentification
                as List<
                  Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
                >),
      dateOfBirth: dateOfBirth == _undefined
          ? _instance.dateOfBirth
          : (dateOfBirth as DateTime?),
      contactTypes: contactTypes == _undefined || contactTypes == null
          ? _instance.contactTypes
          : (contactTypes as List<Enum$ContactType>),
      addressKey: addressKey == _undefined || addressKey == null
          ? _instance.addressKey
          : (addressKey as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences<
    TRes
  >
  get contactPreferences {
    final local$contactPreferences = _instance.contactPreferences;
    return CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences(
      local$contactPreferences,
      (e) => call(contactPreferences: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature<
    TRes
  >
  get signature {
    final local$signature = _instance.signature;
    return local$signature == null
        ? CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature(
            local$signature,
            (e) => call(signature: e),
          );
  }

  TRes proofOfAddress(
    Iterable<
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress<
          Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  ) => call(
    proofOfAddress: _fn(
      _instance.proofOfAddress.map(
        (e) =>
            CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes proofOfIdentification(
    Iterable<
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification<
          Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  ) => call(
    proofOfIdentification: _fn(
      _instance.proofOfIdentification.map(
        (e) =>
            CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value(
    this._res,
  );

  TRes _res;

  call({
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences?
    contactPreferences,
    Query$GetSignupModelForProspect$prospect$contacts$value$signature?
    signature,
    List<
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    String? addressKey,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences<
    TRes
  >
  get contactPreferences =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature<
    TRes
  >
  get signature =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature.stub(
        _res,
      );

  proofOfAddress(_fn) => _res;

  proofOfIdentification(_fn) => _res;
}

class Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences {
  Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences({
    required this.mobile,
    required this.email,
    required this.phone,
    required this.post,
    required this.fax,
    this.$__typename = 'ContactPreferences',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mobile = json['mobile'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$post = json['post'];
    final l$fax = json['fax'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences(
      mobile:
          Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile.fromJson(
            (l$mobile as Map<String, dynamic>),
          ),
      email:
          Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email.fromJson(
            (l$email as Map<String, dynamic>),
          ),
      phone:
          Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone.fromJson(
            (l$phone as Map<String, dynamic>),
          ),
      post:
          Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post.fromJson(
            (l$post as Map<String, dynamic>),
          ),
      fax:
          Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax.fromJson(
            (l$fax as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile
  mobile;

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email
  email;

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone
  phone;

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post
  post;

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax
  fax;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mobile = mobile;
    _resultData['mobile'] = l$mobile.toJson();
    final l$email = email;
    _resultData['email'] = l$email.toJson();
    final l$phone = phone;
    _resultData['phone'] = l$phone.toJson();
    final l$post = post;
    _resultData['post'] = l$post.toJson();
    final l$fax = fax;
    _resultData['fax'] = l$fax.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mobile = mobile;
    final l$email = email;
    final l$phone = phone;
    final l$post = post;
    final l$fax = fax;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mobile,
      l$email,
      l$phone,
      l$post,
      l$fax,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences ||
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
    final l$post = post;
    final lOther$post = other.post;
    if (l$post != lOther$post) {
      return false;
    }
    final l$fax = fax;
    final lOther$fax = other.fax;
    if (l$fax != lOther$fax) {
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences
    on Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences<
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences
    instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences;

  TRes call({
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile?
    mobile,
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email?
    email,
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone?
    phone,
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post?
    post,
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax?
    fax,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile;
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email<
    TRes
  >
  get email;
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone<
    TRes
  >
  get phone;
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post<
    TRes
  >
  get post;
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax<
    TRes
  >
  get fax;
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobile = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? post = _undefined,
    Object? fax = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences(
      mobile: mobile == _undefined || mobile == null
          ? _instance.mobile
          : (mobile
                as Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile),
      email: email == _undefined || email == null
          ? _instance.email
          : (email
                as Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone
                as Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone),
      post: post == _undefined || post == null
          ? _instance.post
          : (post
                as Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post),
      fax: fax == _undefined || fax == null
          ? _instance.fax
          : (fax
                as Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile {
    final local$mobile = _instance.mobile;
    return CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile(
      local$mobile,
      (e) => call(mobile: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email<
    TRes
  >
  get email {
    final local$email = _instance.email;
    return CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email(
      local$email,
      (e) => call(email: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone<
    TRes
  >
  get phone {
    final local$phone = _instance.phone;
    return CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone(
      local$phone,
      (e) => call(phone: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post<
    TRes
  >
  get post {
    final local$post = _instance.post;
    return CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post(
      local$post,
      (e) => call(post: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax<
    TRes
  >
  get fax {
    final local$fax = _instance.fax;
    return CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax(
      local$fax,
      (e) => call(fax: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile?
    mobile,
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email?
    email,
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone?
    phone,
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post?
    post,
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax?
    fax,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email<
    TRes
  >
  get email =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone<
    TRes
  >
  get phone =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post<
    TRes
  >
  get post =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax<
    TRes
  >
  get fax =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax.stub(
        _res,
      );
}

class Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile {
  Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile(
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
            is! Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile
    on
        Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile<
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile
    instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$mobile(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email {
  Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email(
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
            is! Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email
    on
        Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email<
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email
    instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$email(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone {
  Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone(
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
            is! Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone
    on
        Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone<
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone
    instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$phone(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post {
  Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post(
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
            is! Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post
    on
        Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post<
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post
    instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$post(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax {
  Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax(
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
            is! Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax
    on Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax<
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax
    instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$contactPreferences$fax(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspect$prospect$contacts$value$signature {
  Query$GetSignupModelForProspect$prospect$contacts$value$signature({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$signature.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$signature(
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
            is! Query$GetSignupModelForProspect$prospect$contacts$value$signature ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$signature
    on Query$GetSignupModelForProspect$prospect$contacts$value$signature {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature<
    Query$GetSignupModelForProspect$prospect$contacts$value$signature
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature(
    Query$GetSignupModelForProspect$prospect$contacts$value$signature instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$signature,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$signature;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$signature;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$signature(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$signature
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$signature,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetSignupModelForProspect$prospect$contacts$value$signature(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$signature<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$signature(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress {
  Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress({
    required this.media,
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.$__typename = 'Identification',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress(
      media:
          Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media
  media;

  final DateTime validFrom;

  final DateTime validTo;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$type = type;
    final l$subType = subType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$validFrom,
      l$validTo,
      l$type,
      l$subType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
    on Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress<
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
    instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress;

  TRes call({
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media),
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
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media.stub(
        _res,
      );
}

class Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media {
  Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media(
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
            is! Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media
    on Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media<
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media
    instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfAddress$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification {
  Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification({
    required this.media,
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.$__typename = 'Identification',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification(
      media:
          Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media
  media;

  final DateTime validFrom;

  final DateTime validTo;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$type = type;
    final l$subType = subType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$validFrom,
      l$validTo,
      l$type,
      l$subType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
    on Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification<
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
    instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification;

  TRes call({
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media),
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
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media.stub(
        _res,
      );
}

class Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media {
  Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media(
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
            is! Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media
    on
        Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media {
  CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media<
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media
    instance,
    TRes Function(
      Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$contacts$value$proofOfIdentification$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspect$prospect$bankAccounts {
  Query$GetSignupModelForProspect$prospect$bankAccounts({
    required this.accountHolderName,
    required this.accountNumber,
    required this.sortCode,
    required this.bankName,
    this.$__typename = 'BankAccount',
  });

  factory Query$GetSignupModelForProspect$prospect$bankAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountHolderName = json['accountHolderName'];
    final l$accountNumber = json['accountNumber'];
    final l$sortCode = json['sortCode'];
    final l$bankName = json['bankName'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$bankAccounts(
      accountHolderName: (l$accountHolderName as String),
      accountNumber: (l$accountNumber as String),
      sortCode: (l$sortCode as String),
      bankName: (l$bankName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountHolderName;

  final String accountNumber;

  final String sortCode;

  final String bankName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountHolderName = accountHolderName;
    _resultData['accountHolderName'] = l$accountHolderName;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$sortCode = sortCode;
    _resultData['sortCode'] = l$sortCode;
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountHolderName = accountHolderName;
    final l$accountNumber = accountNumber;
    final l$sortCode = sortCode;
    final l$bankName = bankName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountHolderName,
      l$accountNumber,
      l$sortCode,
      l$bankName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSignupModelForProspect$prospect$bankAccounts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (l$accountHolderName != lOther$accountHolderName) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$sortCode = sortCode;
    final lOther$sortCode = other.sortCode;
    if (l$sortCode != lOther$sortCode) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$bankAccounts
    on Query$GetSignupModelForProspect$prospect$bankAccounts {
  CopyWith$Query$GetSignupModelForProspect$prospect$bankAccounts<
    Query$GetSignupModelForProspect$prospect$bankAccounts
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$bankAccounts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$bankAccounts<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$bankAccounts(
    Query$GetSignupModelForProspect$prospect$bankAccounts instance,
    TRes Function(Query$GetSignupModelForProspect$prospect$bankAccounts) then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$bankAccounts;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$bankAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$bankAccounts;

  TRes call({
    String? accountHolderName,
    String? accountNumber,
    String? sortCode,
    String? bankName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$bankAccounts<TRes>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$bankAccounts<TRes> {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$bankAccounts(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$bankAccounts _instance;

  final TRes Function(Query$GetSignupModelForProspect$prospect$bankAccounts)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountHolderName = _undefined,
    Object? accountNumber = _undefined,
    Object? sortCode = _undefined,
    Object? bankName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$bankAccounts(
      accountHolderName:
          accountHolderName == _undefined || accountHolderName == null
          ? _instance.accountHolderName
          : (accountHolderName as String),
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      sortCode: sortCode == _undefined || sortCode == null
          ? _instance.sortCode
          : (sortCode as String),
      bankName: bankName == _undefined || bankName == null
          ? _instance.bankName
          : (bankName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$bankAccounts<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$bankAccounts<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$bankAccounts(
    this._res,
  );

  TRes _res;

  call({
    String? accountHolderName,
    String? accountNumber,
    String? sortCode,
    String? bankName,
    String? $__typename,
  }) => _res;
}

class Query$GetSignupModelForProspect$prospect$addresses {
  Query$GetSignupModelForProspect$prospect$addresses({
    required this.value,
    this.$__typename = 'KeyValuePairOfGuidAndAddress',
  });

  factory Query$GetSignupModelForProspect$prospect$addresses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$addresses(
      value: Query$GetSignupModelForProspect$prospect$addresses$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelForProspect$prospect$addresses$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSignupModelForProspect$prospect$addresses ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$addresses
    on Query$GetSignupModelForProspect$prospect$addresses {
  CopyWith$Query$GetSignupModelForProspect$prospect$addresses<
    Query$GetSignupModelForProspect$prospect$addresses
  >
  get copyWith => CopyWith$Query$GetSignupModelForProspect$prospect$addresses(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$addresses<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$addresses(
    Query$GetSignupModelForProspect$prospect$addresses instance,
    TRes Function(Query$GetSignupModelForProspect$prospect$addresses) then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$addresses;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$addresses.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$addresses;

  TRes call({
    Query$GetSignupModelForProspect$prospect$addresses$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value<TRes>
  get value;
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$addresses<TRes>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$addresses<TRes> {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$addresses(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$addresses _instance;

  final TRes Function(Query$GetSignupModelForProspect$prospect$addresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$addresses(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$GetSignupModelForProspect$prospect$addresses$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$addresses<TRes>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$addresses<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$addresses(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelForProspect$prospect$addresses$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value<TRes>
  get value =>
      CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value.stub(
        _res,
      );
}

class Query$GetSignupModelForProspect$prospect$addresses$value {
  Query$GetSignupModelForProspect$prospect$addresses$value({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.postCode,
    required this.countryCode,
    this.$__typename = 'Address',
  });

  factory Query$GetSignupModelForProspect$prospect$addresses$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$postCode = json['postCode'];
    final l$countryCode = json['countryCode'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspect$prospect$addresses$value(
      address1: (l$address1 as String),
      address2: (l$address2 as String),
      address3: (l$address3 as String),
      postCode: (l$postCode as String),
      countryCode: (l$countryCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String address1;

  final String address2;

  final String address3;

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
    final l$postCode = postCode;
    final l$countryCode = countryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address1,
      l$address2,
      l$address3,
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
    if (other is! Query$GetSignupModelForProspect$prospect$addresses$value ||
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

extension UtilityExtension$Query$GetSignupModelForProspect$prospect$addresses$value
    on Query$GetSignupModelForProspect$prospect$addresses$value {
  CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value<
    Query$GetSignupModelForProspect$prospect$addresses$value
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value(
    Query$GetSignupModelForProspect$prospect$addresses$value instance,
    TRes Function(Query$GetSignupModelForProspect$prospect$addresses$value)
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspect$prospect$addresses$value;

  factory CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$addresses$value;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? postCode,
    String? countryCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModelForProspect$prospect$addresses$value<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspect$prospect$addresses$value(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspect$prospect$addresses$value _instance;

  final TRes Function(Query$GetSignupModelForProspect$prospect$addresses$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? postCode = _undefined,
    Object? countryCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspect$prospect$addresses$value(
      address1: address1 == _undefined || address1 == null
          ? _instance.address1
          : (address1 as String),
      address2: address2 == _undefined || address2 == null
          ? _instance.address2
          : (address2 as String),
      address3: address3 == _undefined || address3 == null
          ? _instance.address3
          : (address3 as String),
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

class _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$addresses$value<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspect$prospect$addresses$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspect$prospect$addresses$value(
    this._res,
  );

  TRes _res;

  call({
    String? address1,
    String? address2,
    String? address3,
    String? postCode,
    String? countryCode,
    String? $__typename,
  }) => _res;
}
