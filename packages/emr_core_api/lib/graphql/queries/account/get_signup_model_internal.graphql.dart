import '../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetSignupModelInternal {
  factory Variables$Query$GetSignupModelInternal({
    required String accountCode,
  }) => Variables$Query$GetSignupModelInternal._({r'accountCode': accountCode});

  Variables$Query$GetSignupModelInternal._(this._$data);

  factory Variables$Query$GetSignupModelInternal.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accountCode = data['accountCode'];
    result$data['accountCode'] = (l$accountCode as String);
    return Variables$Query$GetSignupModelInternal._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountCode => (_$data['accountCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountCode = accountCode;
    result$data['accountCode'] = l$accountCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetSignupModelInternal<
    Variables$Query$GetSignupModelInternal
  >
  get copyWith =>
      CopyWith$Variables$Query$GetSignupModelInternal(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetSignupModelInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountCode = accountCode;
    final lOther$accountCode = other.accountCode;
    if (l$accountCode != lOther$accountCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountCode = accountCode;
    return Object.hashAll([l$accountCode]);
  }
}

abstract class CopyWith$Variables$Query$GetSignupModelInternal<TRes> {
  factory CopyWith$Variables$Query$GetSignupModelInternal(
    Variables$Query$GetSignupModelInternal instance,
    TRes Function(Variables$Query$GetSignupModelInternal) then,
  ) = _CopyWithImpl$Variables$Query$GetSignupModelInternal;

  factory CopyWith$Variables$Query$GetSignupModelInternal.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSignupModelInternal;

  TRes call({String? accountCode});
}

class _CopyWithImpl$Variables$Query$GetSignupModelInternal<TRes>
    implements CopyWith$Variables$Query$GetSignupModelInternal<TRes> {
  _CopyWithImpl$Variables$Query$GetSignupModelInternal(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSignupModelInternal _instance;

  final TRes Function(Variables$Query$GetSignupModelInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountCode = _undefined}) => _then(
    Variables$Query$GetSignupModelInternal._({
      ..._instance._$data,
      if (accountCode != _undefined && accountCode != null)
        'accountCode': (accountCode as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetSignupModelInternal<TRes>
    implements CopyWith$Variables$Query$GetSignupModelInternal<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSignupModelInternal(this._res);

  TRes _res;

  call({String? accountCode}) => _res;
}

class Query$GetSignupModelInternal {
  Query$GetSignupModelInternal({
    required this.accountInternal,
    this.$__typename = 'Query',
  });

  factory Query$GetSignupModelInternal.fromJson(Map<String, dynamic> json) {
    final l$accountInternal = json['accountInternal'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal(
      accountInternal: Query$GetSignupModelInternal$accountInternal.fromJson(
        (l$accountInternal as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelInternal$accountInternal accountInternal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountInternal = accountInternal;
    _resultData['accountInternal'] = l$accountInternal.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountInternal = accountInternal;
    final l$$__typename = $__typename;
    return Object.hashAll([l$accountInternal, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSignupModelInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountInternal = accountInternal;
    final lOther$accountInternal = other.accountInternal;
    if (l$accountInternal != lOther$accountInternal) {
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

extension UtilityExtension$Query$GetSignupModelInternal
    on Query$GetSignupModelInternal {
  CopyWith$Query$GetSignupModelInternal<Query$GetSignupModelInternal>
  get copyWith => CopyWith$Query$GetSignupModelInternal(this, (i) => i);
}

abstract class CopyWith$Query$GetSignupModelInternal<TRes> {
  factory CopyWith$Query$GetSignupModelInternal(
    Query$GetSignupModelInternal instance,
    TRes Function(Query$GetSignupModelInternal) then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal;

  factory CopyWith$Query$GetSignupModelInternal.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSignupModelInternal;

  TRes call({
    Query$GetSignupModelInternal$accountInternal? accountInternal,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelInternal$accountInternal<TRes>
  get accountInternal;
}

class _CopyWithImpl$Query$GetSignupModelInternal<TRes>
    implements CopyWith$Query$GetSignupModelInternal<TRes> {
  _CopyWithImpl$Query$GetSignupModelInternal(this._instance, this._then);

  final Query$GetSignupModelInternal _instance;

  final TRes Function(Query$GetSignupModelInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountInternal = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal(
      accountInternal: accountInternal == _undefined || accountInternal == null
          ? _instance.accountInternal
          : (accountInternal as Query$GetSignupModelInternal$accountInternal),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelInternal$accountInternal<TRes>
  get accountInternal {
    final local$accountInternal = _instance.accountInternal;
    return CopyWith$Query$GetSignupModelInternal$accountInternal(
      local$accountInternal,
      (e) => call(accountInternal: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelInternal<TRes>
    implements CopyWith$Query$GetSignupModelInternal<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelInternal(this._res);

  TRes _res;

  call({
    Query$GetSignupModelInternal$accountInternal? accountInternal,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelInternal$accountInternal<TRes>
  get accountInternal =>
      CopyWith$Query$GetSignupModelInternal$accountInternal.stub(_res);
}

const documentNodeQueryGetSignupModelInternal = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSignupModelInternal'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accountCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'accountInternal'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accountCode'),
                value: VariableNode(name: NameNode(value: 'accountCode')),
              ),
            ],
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
                  name: NameNode(value: 'industryGroup'),
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
                  name: NameNode(value: 'profession'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
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
                  name: NameNode(value: 'secoreAgreement'),
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

class Query$GetSignupModelInternal$accountInternal {
  Query$GetSignupModelInternal$accountInternal({
    required this.accountNumber,
    required this.name,
    required this.originatingCountry,
    this.industryGroup,
    this.visitFrequency,
    this.profession,
    this.celAgreement,
    this.secoreAgreement,
    this.accountContacts,
    required this.bankAccounts,
    this.defaultYardCode,
    this.$__typename = 'Account',
  });

  factory Query$GetSignupModelInternal$accountInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$originatingCountry = json['originatingCountry'];
    final l$industryGroup = json['industryGroup'];
    final l$visitFrequency = json['visitFrequency'];
    final l$profession = json['profession'];
    final l$celAgreement = json['celAgreement'];
    final l$secoreAgreement = json['secoreAgreement'];
    final l$accountContacts = json['accountContacts'];
    final l$bankAccounts = json['bankAccounts'];
    final l$defaultYardCode = json['defaultYardCode'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal(
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      originatingCountry: (l$originatingCountry as String),
      industryGroup: (l$industryGroup as String?),
      visitFrequency: (l$visitFrequency as String?),
      profession: (l$profession as String?),
      celAgreement: l$celAgreement == null
          ? null
          : Query$GetSignupModelInternal$accountInternal$celAgreement.fromJson(
              (l$celAgreement as Map<String, dynamic>),
            ),
      secoreAgreement: l$secoreAgreement == null
          ? null
          : Query$GetSignupModelInternal$accountInternal$secoreAgreement.fromJson(
              (l$secoreAgreement as Map<String, dynamic>),
            ),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetSignupModelInternal$accountInternal$accountContacts.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      bankAccounts: (l$bankAccounts as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelInternal$accountInternal$bankAccounts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      defaultYardCode: (l$defaultYardCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountNumber;

  final String name;

  final String originatingCountry;

  final String? industryGroup;

  final String? visitFrequency;

  final String? profession;

  final Query$GetSignupModelInternal$accountInternal$celAgreement? celAgreement;

  final Query$GetSignupModelInternal$accountInternal$secoreAgreement?
  secoreAgreement;

  final List<Query$GetSignupModelInternal$accountInternal$accountContacts?>?
  accountContacts;

  final List<Query$GetSignupModelInternal$accountInternal$bankAccounts>
  bankAccounts;

  final String? defaultYardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$originatingCountry = originatingCountry;
    _resultData['originatingCountry'] = l$originatingCountry;
    final l$industryGroup = industryGroup;
    _resultData['industryGroup'] = l$industryGroup;
    final l$visitFrequency = visitFrequency;
    _resultData['visitFrequency'] = l$visitFrequency;
    final l$profession = profession;
    _resultData['profession'] = l$profession;
    final l$celAgreement = celAgreement;
    _resultData['celAgreement'] = l$celAgreement?.toJson();
    final l$secoreAgreement = secoreAgreement;
    _resultData['secoreAgreement'] = l$secoreAgreement?.toJson();
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] = l$accountContacts
        ?.map((e) => e?.toJson())
        .toList();
    final l$bankAccounts = bankAccounts;
    _resultData['bankAccounts'] = l$bankAccounts
        .map((e) => e.toJson())
        .toList();
    final l$defaultYardCode = defaultYardCode;
    _resultData['defaultYardCode'] = l$defaultYardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$originatingCountry = originatingCountry;
    final l$industryGroup = industryGroup;
    final l$visitFrequency = visitFrequency;
    final l$profession = profession;
    final l$celAgreement = celAgreement;
    final l$secoreAgreement = secoreAgreement;
    final l$accountContacts = accountContacts;
    final l$bankAccounts = bankAccounts;
    final l$defaultYardCode = defaultYardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      l$name,
      l$originatingCountry,
      l$industryGroup,
      l$visitFrequency,
      l$profession,
      l$celAgreement,
      l$secoreAgreement,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      Object.hashAll(l$bankAccounts.map((v) => v)),
      l$defaultYardCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSignupModelInternal$accountInternal ||
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
    final l$industryGroup = industryGroup;
    final lOther$industryGroup = other.industryGroup;
    if (l$industryGroup != lOther$industryGroup) {
      return false;
    }
    final l$visitFrequency = visitFrequency;
    final lOther$visitFrequency = other.visitFrequency;
    if (l$visitFrequency != lOther$visitFrequency) {
      return false;
    }
    final l$profession = profession;
    final lOther$profession = other.profession;
    if (l$profession != lOther$profession) {
      return false;
    }
    final l$celAgreement = celAgreement;
    final lOther$celAgreement = other.celAgreement;
    if (l$celAgreement != lOther$celAgreement) {
      return false;
    }
    final l$secoreAgreement = secoreAgreement;
    final lOther$secoreAgreement = other.secoreAgreement;
    if (l$secoreAgreement != lOther$secoreAgreement) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal
    on Query$GetSignupModelInternal$accountInternal {
  CopyWith$Query$GetSignupModelInternal$accountInternal<
    Query$GetSignupModelInternal$accountInternal
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal(this, (i) => i);
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal<TRes> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal(
    Query$GetSignupModelInternal$accountInternal instance,
    TRes Function(Query$GetSignupModelInternal$accountInternal) then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal;

  TRes call({
    String? accountNumber,
    String? name,
    String? originatingCountry,
    String? industryGroup,
    String? visitFrequency,
    String? profession,
    Query$GetSignupModelInternal$accountInternal$celAgreement? celAgreement,
    Query$GetSignupModelInternal$accountInternal$secoreAgreement?
    secoreAgreement,
    List<Query$GetSignupModelInternal$accountInternal$accountContacts?>?
    accountContacts,
    List<Query$GetSignupModelInternal$accountInternal$bankAccounts>?
    bankAccounts,
    String? defaultYardCode,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement<TRes>
  get celAgreement;
  CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement<TRes>
  get secoreAgreement;
  TRes accountContacts(
    Iterable<Query$GetSignupModelInternal$accountInternal$accountContacts?>?
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts<
          Query$GetSignupModelInternal$accountInternal$accountContacts
        >?
      >?,
    )
    _fn,
  );
  TRes bankAccounts(
    Iterable<Query$GetSignupModelInternal$accountInternal$bankAccounts>
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelInternal$accountInternal$bankAccounts<
          Query$GetSignupModelInternal$accountInternal$bankAccounts
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal<TRes>
    implements CopyWith$Query$GetSignupModelInternal$accountInternal<TRes> {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal _instance;

  final TRes Function(Query$GetSignupModelInternal$accountInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? originatingCountry = _undefined,
    Object? industryGroup = _undefined,
    Object? visitFrequency = _undefined,
    Object? profession = _undefined,
    Object? celAgreement = _undefined,
    Object? secoreAgreement = _undefined,
    Object? accountContacts = _undefined,
    Object? bankAccounts = _undefined,
    Object? defaultYardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal(
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
      industryGroup: industryGroup == _undefined
          ? _instance.industryGroup
          : (industryGroup as String?),
      visitFrequency: visitFrequency == _undefined
          ? _instance.visitFrequency
          : (visitFrequency as String?),
      profession: profession == _undefined
          ? _instance.profession
          : (profession as String?),
      celAgreement: celAgreement == _undefined
          ? _instance.celAgreement
          : (celAgreement
                as Query$GetSignupModelInternal$accountInternal$celAgreement?),
      secoreAgreement: secoreAgreement == _undefined
          ? _instance.secoreAgreement
          : (secoreAgreement
                as Query$GetSignupModelInternal$accountInternal$secoreAgreement?),
      accountContacts: accountContacts == _undefined
          ? _instance.accountContacts
          : (accountContacts
                as List<
                  Query$GetSignupModelInternal$accountInternal$accountContacts?
                >?),
      bankAccounts: bankAccounts == _undefined || bankAccounts == null
          ? _instance.bankAccounts
          : (bankAccounts
                as List<
                  Query$GetSignupModelInternal$accountInternal$bankAccounts
                >),
      defaultYardCode: defaultYardCode == _undefined
          ? _instance.defaultYardCode
          : (defaultYardCode as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement<TRes>
  get celAgreement {
    final local$celAgreement = _instance.celAgreement;
    return local$celAgreement == null
        ? CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement(
            local$celAgreement,
            (e) => call(celAgreement: e),
          );
  }

  CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement<TRes>
  get secoreAgreement {
    final local$secoreAgreement = _instance.secoreAgreement;
    return local$secoreAgreement == null
        ? CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement(
            local$secoreAgreement,
            (e) => call(secoreAgreement: e),
          );
  }

  TRes accountContacts(
    Iterable<Query$GetSignupModelInternal$accountInternal$accountContacts?>?
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts<
          Query$GetSignupModelInternal$accountInternal$accountContacts
        >?
      >?,
    )
    _fn,
  ) => call(
    accountContacts: _fn(
      _instance.accountContacts?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  TRes bankAccounts(
    Iterable<Query$GetSignupModelInternal$accountInternal$bankAccounts>
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelInternal$accountInternal$bankAccounts<
          Query$GetSignupModelInternal$accountInternal$bankAccounts
        >
      >,
    )
    _fn,
  ) => call(
    bankAccounts: _fn(
      _instance.bankAccounts.map(
        (e) =>
            CopyWith$Query$GetSignupModelInternal$accountInternal$bankAccounts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal<TRes>
    implements CopyWith$Query$GetSignupModelInternal$accountInternal<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal(this._res);

  TRes _res;

  call({
    String? accountNumber,
    String? name,
    String? originatingCountry,
    String? industryGroup,
    String? visitFrequency,
    String? profession,
    Query$GetSignupModelInternal$accountInternal$celAgreement? celAgreement,
    Query$GetSignupModelInternal$accountInternal$secoreAgreement?
    secoreAgreement,
    List<Query$GetSignupModelInternal$accountInternal$accountContacts?>?
    accountContacts,
    List<Query$GetSignupModelInternal$accountInternal$bankAccounts>?
    bankAccounts,
    String? defaultYardCode,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement<TRes>
  get celAgreement =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement<TRes>
  get secoreAgreement =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement.stub(
        _res,
      );

  accountContacts(_fn) => _res;

  bankAccounts(_fn) => _res;
}

class Query$GetSignupModelInternal$accountInternal$celAgreement {
  Query$GetSignupModelInternal$accountInternal$celAgreement({
    required this.agreementDate,
    this.expiryDate,
    this.$__typename = 'LegalAgreement',
  });

  factory Query$GetSignupModelInternal$accountInternal$celAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agreementDate = json['agreementDate'];
    final l$expiryDate = json['expiryDate'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$celAgreement(
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
    if (other is! Query$GetSignupModelInternal$accountInternal$celAgreement ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$celAgreement
    on Query$GetSignupModelInternal$accountInternal$celAgreement {
  CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement<
    Query$GetSignupModelInternal$accountInternal$celAgreement
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement(
    Query$GetSignupModelInternal$accountInternal$celAgreement instance,
    TRes Function(Query$GetSignupModelInternal$accountInternal$celAgreement)
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$celAgreement;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$celAgreement;

  TRes call({
    DateTime? agreementDate,
    DateTime? expiryDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$celAgreement<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$celAgreement(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$celAgreement _instance;

  final TRes Function(Query$GetSignupModelInternal$accountInternal$celAgreement)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agreementDate = _undefined,
    Object? expiryDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$celAgreement(
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

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$celAgreement<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$celAgreement<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$celAgreement(
    this._res,
  );

  TRes _res;

  call({DateTime? agreementDate, DateTime? expiryDate, String? $__typename}) =>
      _res;
}

class Query$GetSignupModelInternal$accountInternal$secoreAgreement {
  Query$GetSignupModelInternal$accountInternal$secoreAgreement({
    required this.agreementDate,
    this.expiryDate,
    this.$__typename = 'LegalAgreement',
  });

  factory Query$GetSignupModelInternal$accountInternal$secoreAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agreementDate = json['agreementDate'];
    final l$expiryDate = json['expiryDate'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$secoreAgreement(
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
    if (other
            is! Query$GetSignupModelInternal$accountInternal$secoreAgreement ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$secoreAgreement
    on Query$GetSignupModelInternal$accountInternal$secoreAgreement {
  CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement<
    Query$GetSignupModelInternal$accountInternal$secoreAgreement
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement(
    Query$GetSignupModelInternal$accountInternal$secoreAgreement instance,
    TRes Function(Query$GetSignupModelInternal$accountInternal$secoreAgreement)
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$secoreAgreement;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$secoreAgreement;

  TRes call({
    DateTime? agreementDate,
    DateTime? expiryDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$secoreAgreement<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$secoreAgreement(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$secoreAgreement _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$secoreAgreement,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agreementDate = _undefined,
    Object? expiryDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$secoreAgreement(
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

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$secoreAgreement<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$secoreAgreement<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$secoreAgreement(
    this._res,
  );

  TRes _res;

  call({DateTime? agreementDate, DateTime? expiryDate, String? $__typename}) =>
      _res;
}

class Query$GetSignupModelInternal$accountInternal$accountContacts {
  Query$GetSignupModelInternal$accountInternal$accountContacts({
    required this.key,
    required this.value,
    this.$__typename = 'ContactWithKey',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts(
      key: (l$key as String),
      value:
          Query$GetSignupModelInternal$accountInternal$accountContacts$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts
    on Query$GetSignupModelInternal$accountInternal$accountContacts {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts<
    Query$GetSignupModelInternal$accountInternal$accountContacts
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts(
    Query$GetSignupModelInternal$accountInternal$accountContacts instance,
    TRes Function(Query$GetSignupModelInternal$accountInternal$accountContacts)
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts;

  TRes call({
    String? key,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$accountContacts(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetSignupModelInternal$accountInternal$accountContacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value.stub(
        _res,
      );
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value({
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

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value.fromJson(
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
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value(
      firstName: (l$firstName as String),
      middleName: (l$middleName as String?),
      lastName: (l$lastName as String),
      contactPreferences:
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences.fromJson(
            (l$contactPreferences as Map<String, dynamic>),
          ),
      signature: l$signature == null
          ? null
          : Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature.fromJson(
              (l$signature as Map<String, dynamic>),
            ),
      proofOfAddress: (l$proofOfAddress as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      proofOfIdentification: (l$proofOfIdentification as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification.fromJson(
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

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences
  contactPreferences;

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature?
  signature;

  final List<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
  >
  proofOfAddress;

  final List<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
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
    if (other
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value
    on Query$GetSignupModelInternal$accountInternal$accountContacts$value {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value;

  TRes call({
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences?
    contactPreferences,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature?
    signature,
    List<
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    String? addressKey,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences;
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature<
    TRes
  >
  get signature;
  TRes proofOfAddress(
    Iterable<
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress<
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  );
  TRes proofOfIdentification(
    Iterable<
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification<
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value,
  )
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
    Query$GetSignupModelInternal$accountInternal$accountContacts$value(
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
                as Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences),
      signature: signature == _undefined
          ? _instance.signature
          : (signature
                as Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature?),
      proofOfAddress: proofOfAddress == _undefined || proofOfAddress == null
          ? _instance.proofOfAddress
          : (proofOfAddress
                as List<
                  Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
                >),
      proofOfIdentification:
          proofOfIdentification == _undefined || proofOfIdentification == null
          ? _instance.proofOfIdentification
          : (proofOfIdentification
                as List<
                  Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
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

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences {
    final local$contactPreferences = _instance.contactPreferences;
    return CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences(
      local$contactPreferences,
      (e) => call(contactPreferences: e),
    );
  }

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature<
    TRes
  >
  get signature {
    final local$signature = _instance.signature;
    return local$signature == null
        ? CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature(
            local$signature,
            (e) => call(signature: e),
          );
  }

  TRes proofOfAddress(
    Iterable<
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress<
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  ) => call(
    proofOfAddress: _fn(
      _instance.proofOfAddress.map(
        (e) =>
            CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes proofOfIdentification(
    Iterable<
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification<
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  ) => call(
    proofOfIdentification: _fn(
      _instance.proofOfIdentification.map(
        (e) =>
            CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value(
    this._res,
  );

  TRes _res;

  call({
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences?
    contactPreferences,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature?
    signature,
    List<
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    String? addressKey,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature<
    TRes
  >
  get signature =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature.stub(
        _res,
      );

  proofOfAddress(_fn) => _res;

  proofOfIdentification(_fn) => _res;
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences({
    required this.mobile,
    required this.email,
    required this.phone,
    required this.post,
    required this.fax,
    this.$__typename = 'ContactPreferences',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mobile = json['mobile'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$post = json['post'];
    final l$fax = json['fax'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences(
      mobile:
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile.fromJson(
            (l$mobile as Map<String, dynamic>),
          ),
      email:
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email.fromJson(
            (l$email as Map<String, dynamic>),
          ),
      phone:
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone.fromJson(
            (l$phone as Map<String, dynamic>),
          ),
      post:
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post.fromJson(
            (l$post as Map<String, dynamic>),
          ),
      fax:
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax.fromJson(
            (l$fax as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile
  mobile;

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email
  email;

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone
  phone;

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post
  post;

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences
    on
        Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences;

  TRes call({
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile?
    mobile,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email?
    email,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone?
    phone,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post?
    post,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax?
    fax,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile;
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email;
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone<
    TRes
  >
  get phone;
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post<
    TRes
  >
  get post;
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax<
    TRes
  >
  get fax;
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences,
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
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences(
      mobile: mobile == _undefined || mobile == null
          ? _instance.mobile
          : (mobile
                as Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile),
      email: email == _undefined || email == null
          ? _instance.email
          : (email
                as Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone
                as Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone),
      post: post == _undefined || post == null
          ? _instance.post
          : (post
                as Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post),
      fax: fax == _undefined || fax == null
          ? _instance.fax
          : (fax
                as Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile {
    final local$mobile = _instance.mobile;
    return CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile(
      local$mobile,
      (e) => call(mobile: e),
    );
  }

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email {
    final local$email = _instance.email;
    return CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email(
      local$email,
      (e) => call(email: e),
    );
  }

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone<
    TRes
  >
  get phone {
    final local$phone = _instance.phone;
    return CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone(
      local$phone,
      (e) => call(phone: e),
    );
  }

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post<
    TRes
  >
  get post {
    final local$post = _instance.post;
    return CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post(
      local$post,
      (e) => call(post: e),
    );
  }

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax<
    TRes
  >
  get fax {
    final local$fax = _instance.fax;
    return CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax(
      local$fax,
      (e) => call(fax: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile?
    mobile,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email?
    email,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone?
    phone,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post?
    post,
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax?
    fax,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone<
    TRes
  >
  get phone =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post<
    TRes
  >
  get post =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax<
    TRes
  >
  get fax =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax.stub(
        _res,
      );
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile(
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile
    on
        Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile(
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

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$mobile(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email(
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email
    on
        Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email(
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

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$email(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone(
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone
    on
        Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone(
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

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$phone(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post(
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post
    on
        Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post(
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

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$post(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax(
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax
    on
        Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax(
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

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$contactPreferences$fax(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature(
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature
    on Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$signature(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress({
    required this.media,
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.$__typename = 'Identification',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress(
      media:
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
    on
        Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress;

  TRes call({
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress,
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
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media),
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

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media.stub(
        _res,
      );
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media(
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media
    on
        Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfAddress$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification({
    required this.media,
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.$__typename = 'Identification',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification(
      media:
          Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
    on
        Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification;

  TRes call({
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification,
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
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media),
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

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media.stub(
        _res,
      );
}

class Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media {
  Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media(
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
            is! Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media
    on
        Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media {
  CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media<
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media
    instance,
    TRes Function(
      Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media
  _instance;

  final TRes Function(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$accountContacts$value$proofOfIdentification$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetSignupModelInternal$accountInternal$bankAccounts {
  Query$GetSignupModelInternal$accountInternal$bankAccounts({
    required this.accountHolderName,
    required this.accountNumber,
    required this.sortCode,
    required this.bankName,
    this.$__typename = 'BankAccount',
  });

  factory Query$GetSignupModelInternal$accountInternal$bankAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountHolderName = json['accountHolderName'];
    final l$accountNumber = json['accountNumber'];
    final l$sortCode = json['sortCode'];
    final l$bankName = json['bankName'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelInternal$accountInternal$bankAccounts(
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
    if (other is! Query$GetSignupModelInternal$accountInternal$bankAccounts ||
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

extension UtilityExtension$Query$GetSignupModelInternal$accountInternal$bankAccounts
    on Query$GetSignupModelInternal$accountInternal$bankAccounts {
  CopyWith$Query$GetSignupModelInternal$accountInternal$bankAccounts<
    Query$GetSignupModelInternal$accountInternal$bankAccounts
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelInternal$accountInternal$bankAccounts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelInternal$accountInternal$bankAccounts<
  TRes
> {
  factory CopyWith$Query$GetSignupModelInternal$accountInternal$bankAccounts(
    Query$GetSignupModelInternal$accountInternal$bankAccounts instance,
    TRes Function(Query$GetSignupModelInternal$accountInternal$bankAccounts)
    then,
  ) = _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$bankAccounts;

  factory CopyWith$Query$GetSignupModelInternal$accountInternal$bankAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$bankAccounts;

  TRes call({
    String? accountHolderName,
    String? accountNumber,
    String? sortCode,
    String? bankName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$bankAccounts<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$bankAccounts<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelInternal$accountInternal$bankAccounts(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelInternal$accountInternal$bankAccounts _instance;

  final TRes Function(Query$GetSignupModelInternal$accountInternal$bankAccounts)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountHolderName = _undefined,
    Object? accountNumber = _undefined,
    Object? sortCode = _undefined,
    Object? bankName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelInternal$accountInternal$bankAccounts(
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

class _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$bankAccounts<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelInternal$accountInternal$bankAccounts<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelInternal$accountInternal$bankAccounts(
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
