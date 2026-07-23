import '../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetSignupModelForProspectInternal {
  factory Variables$Query$GetSignupModelForProspectInternal({
    required String accountCode,
  }) => Variables$Query$GetSignupModelForProspectInternal._({
    r'accountCode': accountCode,
  });

  Variables$Query$GetSignupModelForProspectInternal._(this._$data);

  factory Variables$Query$GetSignupModelForProspectInternal.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accountCode = data['accountCode'];
    result$data['accountCode'] = (l$accountCode as String);
    return Variables$Query$GetSignupModelForProspectInternal._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountCode => (_$data['accountCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountCode = accountCode;
    result$data['accountCode'] = l$accountCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetSignupModelForProspectInternal<
    Variables$Query$GetSignupModelForProspectInternal
  >
  get copyWith => CopyWith$Variables$Query$GetSignupModelForProspectInternal(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetSignupModelForProspectInternal ||
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

abstract class CopyWith$Variables$Query$GetSignupModelForProspectInternal<
  TRes
> {
  factory CopyWith$Variables$Query$GetSignupModelForProspectInternal(
    Variables$Query$GetSignupModelForProspectInternal instance,
    TRes Function(Variables$Query$GetSignupModelForProspectInternal) then,
  ) = _CopyWithImpl$Variables$Query$GetSignupModelForProspectInternal;

  factory CopyWith$Variables$Query$GetSignupModelForProspectInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$GetSignupModelForProspectInternal;

  TRes call({String? accountCode});
}

class _CopyWithImpl$Variables$Query$GetSignupModelForProspectInternal<TRes>
    implements
        CopyWith$Variables$Query$GetSignupModelForProspectInternal<TRes> {
  _CopyWithImpl$Variables$Query$GetSignupModelForProspectInternal(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSignupModelForProspectInternal _instance;

  final TRes Function(Variables$Query$GetSignupModelForProspectInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountCode = _undefined}) => _then(
    Variables$Query$GetSignupModelForProspectInternal._({
      ..._instance._$data,
      if (accountCode != _undefined && accountCode != null)
        'accountCode': (accountCode as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetSignupModelForProspectInternal<TRes>
    implements
        CopyWith$Variables$Query$GetSignupModelForProspectInternal<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSignupModelForProspectInternal(
    this._res,
  );

  TRes _res;

  call({String? accountCode}) => _res;
}

class Query$GetSignupModelForProspectInternal {
  Query$GetSignupModelForProspectInternal({
    required this.prospectInternal,
    this.$__typename = 'Query',
  });

  factory Query$GetSignupModelForProspectInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$prospectInternal = json['prospectInternal'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal(
      prospectInternal:
          Query$GetSignupModelForProspectInternal$prospectInternal.fromJson(
            (l$prospectInternal as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelForProspectInternal$prospectInternal
  prospectInternal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$prospectInternal = prospectInternal;
    _resultData['prospectInternal'] = l$prospectInternal.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$prospectInternal = prospectInternal;
    final l$$__typename = $__typename;
    return Object.hashAll([l$prospectInternal, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSignupModelForProspectInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$prospectInternal = prospectInternal;
    final lOther$prospectInternal = other.prospectInternal;
    if (l$prospectInternal != lOther$prospectInternal) {
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal
    on Query$GetSignupModelForProspectInternal {
  CopyWith$Query$GetSignupModelForProspectInternal<
    Query$GetSignupModelForProspectInternal
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal(this, (i) => i);
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal<TRes> {
  factory CopyWith$Query$GetSignupModelForProspectInternal(
    Query$GetSignupModelForProspectInternal instance,
    TRes Function(Query$GetSignupModelForProspectInternal) then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal;

  factory CopyWith$Query$GetSignupModelForProspectInternal.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSignupModelForProspectInternal;

  TRes call({
    Query$GetSignupModelForProspectInternal$prospectInternal? prospectInternal,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal<TRes>
  get prospectInternal;
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal<TRes>
    implements CopyWith$Query$GetSignupModelForProspectInternal<TRes> {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal _instance;

  final TRes Function(Query$GetSignupModelForProspectInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? prospectInternal = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal(
      prospectInternal:
          prospectInternal == _undefined || prospectInternal == null
          ? _instance.prospectInternal
          : (prospectInternal
                as Query$GetSignupModelForProspectInternal$prospectInternal),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal<TRes>
  get prospectInternal {
    final local$prospectInternal = _instance.prospectInternal;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal(
      local$prospectInternal,
      (e) => call(prospectInternal: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal<TRes>
    implements CopyWith$Query$GetSignupModelForProspectInternal<TRes> {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal(this._res);

  TRes _res;

  call({
    Query$GetSignupModelForProspectInternal$prospectInternal? prospectInternal,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal<TRes>
  get prospectInternal =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal.stub(
        _res,
      );
}

const documentNodeQueryGetSignupModelForProspectInternal = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSignupModelForProspectInternal'),
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
            name: NameNode(value: 'prospectInternal'),
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

class Query$GetSignupModelForProspectInternal$prospectInternal {
  Query$GetSignupModelForProspectInternal$prospectInternal({
    required this.accountNumber,
    required this.name,
    required this.originatingCountry,
    required this.industryGroups,
    this.visitFrequency,
    this.profession,
    this.celAgreement,
    required this.contacts,
    required this.bankAccounts,
    this.defaultYardCode,
    required this.addresses,
    this.$__typename = 'Prospect',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$originatingCountry = json['originatingCountry'];
    final l$industryGroups = json['industryGroups'];
    final l$visitFrequency = json['visitFrequency'];
    final l$profession = json['profession'];
    final l$celAgreement = json['celAgreement'];
    final l$contacts = json['contacts'];
    final l$bankAccounts = json['bankAccounts'];
    final l$defaultYardCode = json['defaultYardCode'];
    final l$addresses = json['addresses'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal(
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      originatingCountry: (l$originatingCountry as String),
      industryGroups:
          Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups.fromJson(
            (l$industryGroups as Map<String, dynamic>),
          ),
      visitFrequency: (l$visitFrequency as String?),
      profession: (l$profession as String?),
      celAgreement: l$celAgreement == null
          ? null
          : Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement.fromJson(
              (l$celAgreement as Map<String, dynamic>),
            ),
      contacts: (l$contacts as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelForProspectInternal$prospectInternal$contacts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      bankAccounts: (l$bankAccounts as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      defaultYardCode: (l$defaultYardCode as String?),
      addresses: (l$addresses as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelForProspectInternal$prospectInternal$addresses.fromJson(
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

  final Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups
  industryGroups;

  final String? visitFrequency;

  final String? profession;

  final Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement?
  celAgreement;

  final List<Query$GetSignupModelForProspectInternal$prospectInternal$contacts>
  contacts;

  final List<
    Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts
  >
  bankAccounts;

  final String? defaultYardCode;

  final List<Query$GetSignupModelForProspectInternal$prospectInternal$addresses>
  addresses;

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
    final l$visitFrequency = visitFrequency;
    _resultData['visitFrequency'] = l$visitFrequency;
    final l$profession = profession;
    _resultData['profession'] = l$profession;
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
    final l$visitFrequency = visitFrequency;
    final l$profession = profession;
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
      l$visitFrequency,
      l$profession,
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
    if (other is! Query$GetSignupModelForProspectInternal$prospectInternal ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal
    on Query$GetSignupModelForProspectInternal$prospectInternal {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal<
    Query$GetSignupModelForProspectInternal$prospectInternal
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal(
    Query$GetSignupModelForProspectInternal$prospectInternal instance,
    TRes Function(Query$GetSignupModelForProspectInternal$prospectInternal)
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal;

  TRes call({
    String? accountNumber,
    String? name,
    String? originatingCountry,
    Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups?
    industryGroups,
    String? visitFrequency,
    String? profession,
    Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement?
    celAgreement,
    List<Query$GetSignupModelForProspectInternal$prospectInternal$contacts>?
    contacts,
    List<Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts>?
    bankAccounts,
    String? defaultYardCode,
    List<Query$GetSignupModelForProspectInternal$prospectInternal$addresses>?
    addresses,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups<
    TRes
  >
  get industryGroups;
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement<
    TRes
  >
  get celAgreement;
  TRes contacts(
    Iterable<Query$GetSignupModelForProspectInternal$prospectInternal$contacts>
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts<
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts
        >
      >,
    )
    _fn,
  );
  TRes bankAccounts(
    Iterable<
      Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts<
          Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts
        >
      >,
    )
    _fn,
  );
  TRes addresses(
    Iterable<Query$GetSignupModelForProspectInternal$prospectInternal$addresses>
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses<
          Query$GetSignupModelForProspectInternal$prospectInternal$addresses
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal _instance;

  final TRes Function(Query$GetSignupModelForProspectInternal$prospectInternal)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? originatingCountry = _undefined,
    Object? industryGroups = _undefined,
    Object? visitFrequency = _undefined,
    Object? profession = _undefined,
    Object? celAgreement = _undefined,
    Object? contacts = _undefined,
    Object? bankAccounts = _undefined,
    Object? defaultYardCode = _undefined,
    Object? addresses = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal(
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
                as Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups),
      visitFrequency: visitFrequency == _undefined
          ? _instance.visitFrequency
          : (visitFrequency as String?),
      profession: profession == _undefined
          ? _instance.profession
          : (profession as String?),
      celAgreement: celAgreement == _undefined
          ? _instance.celAgreement
          : (celAgreement
                as Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement?),
      contacts: contacts == _undefined || contacts == null
          ? _instance.contacts
          : (contacts
                as List<
                  Query$GetSignupModelForProspectInternal$prospectInternal$contacts
                >),
      bankAccounts: bankAccounts == _undefined || bankAccounts == null
          ? _instance.bankAccounts
          : (bankAccounts
                as List<
                  Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts
                >),
      defaultYardCode: defaultYardCode == _undefined
          ? _instance.defaultYardCode
          : (defaultYardCode as String?),
      addresses: addresses == _undefined || addresses == null
          ? _instance.addresses
          : (addresses
                as List<
                  Query$GetSignupModelForProspectInternal$prospectInternal$addresses
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups<
    TRes
  >
  get industryGroups {
    final local$industryGroups = _instance.industryGroups;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups(
      local$industryGroups,
      (e) => call(industryGroups: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement<
    TRes
  >
  get celAgreement {
    final local$celAgreement = _instance.celAgreement;
    return local$celAgreement == null
        ? CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement(
            local$celAgreement,
            (e) => call(celAgreement: e),
          );
  }

  TRes contacts(
    Iterable<Query$GetSignupModelForProspectInternal$prospectInternal$contacts>
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts<
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts
        >
      >,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts.map(
        (e) =>
            CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes bankAccounts(
    Iterable<
      Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts<
          Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts
        >
      >,
    )
    _fn,
  ) => call(
    bankAccounts: _fn(
      _instance.bankAccounts.map(
        (e) =>
            CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes addresses(
    Iterable<Query$GetSignupModelForProspectInternal$prospectInternal$addresses>
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses<
          Query$GetSignupModelForProspectInternal$prospectInternal$addresses
        >
      >,
    )
    _fn,
  ) => call(
    addresses: _fn(
      _instance.addresses.map(
        (e) =>
            CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal(
    this._res,
  );

  TRes _res;

  call({
    String? accountNumber,
    String? name,
    String? originatingCountry,
    Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups?
    industryGroups,
    String? visitFrequency,
    String? profession,
    Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement?
    celAgreement,
    List<Query$GetSignupModelForProspectInternal$prospectInternal$contacts>?
    contacts,
    List<Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts>?
    bankAccounts,
    String? defaultYardCode,
    List<Query$GetSignupModelForProspectInternal$prospectInternal$addresses>?
    addresses,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups<
    TRes
  >
  get industryGroups =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement<
    TRes
  >
  get celAgreement =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement.stub(
        _res,
      );

  contacts(_fn) => _res;

  bankAccounts(_fn) => _res;

  addresses(_fn) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups {
  Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups({
    this.trader,
    this.supplier,
    this.$__typename = 'IndustryGroups',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$trader = json['trader'];
    final l$supplier = json['supplier'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups(
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
    if (other
            is! Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups
    on Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups<
    Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups(
    Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups;

  TRes call({String? trader, String? supplier, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trader = _undefined,
    Object? supplier = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$industryGroups(
    this._res,
  );

  TRes _res;

  call({String? trader, String? supplier, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement {
  Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement({
    required this.agreementDate,
    this.expiryDate,
    this.$__typename = 'LegalAgreement',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agreementDate = json['agreementDate'];
    final l$expiryDate = json['expiryDate'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement(
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement
    on Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement<
    Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement(
    Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement;

  TRes call({
    DateTime? agreementDate,
    DateTime? expiryDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agreementDate = _undefined,
    Object? expiryDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$celAgreement(
    this._res,
  );

  TRes _res;

  call({DateTime? agreementDate, DateTime? expiryDate, String? $__typename}) =>
      _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfGuidAndContact',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts(
      key: (l$key as String),
      value:
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts
    on Query$GetSignupModelForProspectInternal$prospectInternal$contacts {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts;

  TRes call({
    String? key,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value.stub(
        _res,
      );
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value({
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

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value.fromJson(
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
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value(
      firstName: (l$firstName as String),
      middleName: (l$middleName as String?),
      lastName: (l$lastName as String),
      contactPreferences:
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences.fromJson(
            (l$contactPreferences as Map<String, dynamic>),
          ),
      signature: l$signature == null
          ? null
          : Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature.fromJson(
              (l$signature as Map<String, dynamic>),
            ),
      proofOfAddress: (l$proofOfAddress as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      proofOfIdentification: (l$proofOfIdentification as List<dynamic>)
          .map(
            (e) =>
                Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification.fromJson(
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

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences
  contactPreferences;

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature?
  signature;

  final List<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
  >
  proofOfAddress;

  final List<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value
    on Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value;

  TRes call({
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences?
    contactPreferences,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature?
    signature,
    List<
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    String? addressKey,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences<
    TRes
  >
  get contactPreferences;
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature<
    TRes
  >
  get signature;
  TRes proofOfAddress(
    Iterable<
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress<
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  );
  TRes proofOfIdentification(
    Iterable<
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification<
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value,
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
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value(
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
                as Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences),
      signature: signature == _undefined
          ? _instance.signature
          : (signature
                as Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature?),
      proofOfAddress: proofOfAddress == _undefined || proofOfAddress == null
          ? _instance.proofOfAddress
          : (proofOfAddress
                as List<
                  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
                >),
      proofOfIdentification:
          proofOfIdentification == _undefined || proofOfIdentification == null
          ? _instance.proofOfIdentification
          : (proofOfIdentification
                as List<
                  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
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

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences<
    TRes
  >
  get contactPreferences {
    final local$contactPreferences = _instance.contactPreferences;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences(
      local$contactPreferences,
      (e) => call(contactPreferences: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature<
    TRes
  >
  get signature {
    final local$signature = _instance.signature;
    return local$signature == null
        ? CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature(
            local$signature,
            (e) => call(signature: e),
          );
  }

  TRes proofOfAddress(
    Iterable<
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress<
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  ) => call(
    proofOfAddress: _fn(
      _instance.proofOfAddress.map(
        (e) =>
            CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes proofOfIdentification(
    Iterable<
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification<
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  ) => call(
    proofOfIdentification: _fn(
      _instance.proofOfIdentification.map(
        (e) =>
            CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value(
    this._res,
  );

  TRes _res;

  call({
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences?
    contactPreferences,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature?
    signature,
    List<
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    String? addressKey,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences<
    TRes
  >
  get contactPreferences =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature<
    TRes
  >
  get signature =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature.stub(
        _res,
      );

  proofOfAddress(_fn) => _res;

  proofOfIdentification(_fn) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences({
    required this.mobile,
    required this.email,
    required this.phone,
    required this.post,
    required this.fax,
    this.$__typename = 'ContactPreferences',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mobile = json['mobile'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$post = json['post'];
    final l$fax = json['fax'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences(
      mobile:
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile.fromJson(
            (l$mobile as Map<String, dynamic>),
          ),
      email:
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email.fromJson(
            (l$email as Map<String, dynamic>),
          ),
      phone:
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone.fromJson(
            (l$phone as Map<String, dynamic>),
          ),
      post:
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post.fromJson(
            (l$post as Map<String, dynamic>),
          ),
      fax:
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax.fromJson(
            (l$fax as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile
  mobile;

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email
  email;

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone
  phone;

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post
  post;

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences;

  TRes call({
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile?
    mobile,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email?
    email,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone?
    phone,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post?
    post,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax?
    fax,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile;
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email<
    TRes
  >
  get email;
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone<
    TRes
  >
  get phone;
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post<
    TRes
  >
  get post;
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax<
    TRes
  >
  get fax;
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences,
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
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences(
      mobile: mobile == _undefined || mobile == null
          ? _instance.mobile
          : (mobile
                as Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile),
      email: email == _undefined || email == null
          ? _instance.email
          : (email
                as Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone
                as Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone),
      post: post == _undefined || post == null
          ? _instance.post
          : (post
                as Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post),
      fax: fax == _undefined || fax == null
          ? _instance.fax
          : (fax
                as Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile {
    final local$mobile = _instance.mobile;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile(
      local$mobile,
      (e) => call(mobile: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email<
    TRes
  >
  get email {
    final local$email = _instance.email;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email(
      local$email,
      (e) => call(email: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone<
    TRes
  >
  get phone {
    final local$phone = _instance.phone;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone(
      local$phone,
      (e) => call(phone: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post<
    TRes
  >
  get post {
    final local$post = _instance.post;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post(
      local$post,
      (e) => call(post: e),
    );
  }

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax<
    TRes
  >
  get fax {
    final local$fax = _instance.fax;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax(
      local$fax,
      (e) => call(fax: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile?
    mobile,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email?
    email,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone?
    phone,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post?
    post,
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax?
    fax,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email<
    TRes
  >
  get email =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone<
    TRes
  >
  get phone =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post<
    TRes
  >
  get post =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post.stub(
        _res,
      );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax<
    TRes
  >
  get fax =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax.stub(
        _res,
      );
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile(
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$mobile(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email(
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$email(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone(
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$phone(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post(
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$post(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax(
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$contactPreferences$fax(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature(
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$signature(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress({
    required this.media,
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.$__typename = 'Identification',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress(
      media:
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress;

  TRes call({
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress,
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
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media),
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

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media.stub(
        _res,
      );
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media(
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfAddress$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification({
    required this.media,
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.$__typename = 'Identification',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification(
      media:
          Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification;

  TRes call({
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification,
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
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media),
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

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media?
    media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media.stub(
        _res,
      );
}

class Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media {
  Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media(
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
            is! Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media
    on
        Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media<
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$contacts$value$proofOfIdentification$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts {
  Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts({
    required this.accountHolderName,
    required this.accountNumber,
    required this.sortCode,
    required this.bankName,
    this.$__typename = 'BankAccount',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountHolderName = json['accountHolderName'];
    final l$accountNumber = json['accountNumber'];
    final l$sortCode = json['sortCode'];
    final l$bankName = json['bankName'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts(
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
    if (other
            is! Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts
    on Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts<
    Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts(
    Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts;

  TRes call({
    String? accountHolderName,
    String? accountNumber,
    String? sortCode,
    String? bankName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountHolderName = _undefined,
    Object? accountNumber = _undefined,
    Object? sortCode = _undefined,
    Object? bankName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$bankAccounts(
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

class Query$GetSignupModelForProspectInternal$prospectInternal$addresses {
  Query$GetSignupModelForProspectInternal$prospectInternal$addresses({
    required this.value,
    this.$__typename = 'KeyValuePairOfGuidAndAddress',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$addresses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$addresses(
      value:
          Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value
  value;

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
    if (other
            is! Query$GetSignupModelForProspectInternal$prospectInternal$addresses ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$addresses
    on Query$GetSignupModelForProspectInternal$prospectInternal$addresses {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses<
    Query$GetSignupModelForProspectInternal$prospectInternal$addresses
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses(
    Query$GetSignupModelForProspectInternal$prospectInternal$addresses instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$addresses,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses;

  TRes call({
    Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$addresses
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$addresses,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSignupModelForProspectInternal$prospectInternal$addresses(
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses(
    this._res,
  );

  TRes _res;

  call({
    Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value.stub(
        _res,
      );
}

class Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value {
  Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.postCode,
    required this.countryCode,
    this.$__typename = 'Address',
  });

  factory Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$postCode = json['postCode'];
    final l$countryCode = json['countryCode'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value(
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
    if (other
            is! Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value ||
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

extension UtilityExtension$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value
    on Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value {
  CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value<
    Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value
  >
  get copyWith =>
      CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value<
  TRes
> {
  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value(
    Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value
    instance,
    TRes Function(
      Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value;

  factory CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? postCode,
    String? countryCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value<
          TRes
        > {
  _CopyWithImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value(
    this._instance,
    this._then,
  );

  final Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value
  _instance;

  final TRes Function(
    Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value,
  )
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
    Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value(
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

class _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value<
  TRes
>
    implements
        CopyWith$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetSignupModelForProspectInternal$prospectInternal$addresses$value(
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
