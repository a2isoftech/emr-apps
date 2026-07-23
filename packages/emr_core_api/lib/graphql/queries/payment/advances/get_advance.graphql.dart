import '../../../fragments/company_fragment.graphql.dart';
import '../../../fragments/territory_fragment.graphql.dart';
import '../../../fragments/yard_fragment.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAdvance {
  factory Variables$Query$GetAdvance({required Input$GetAdvanceInput input}) =>
      Variables$Query$GetAdvance._({r'input': input});

  Variables$Query$GetAdvance._(this._$data);

  factory Variables$Query$GetAdvance.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$GetAdvanceInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$GetAdvance._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetAdvanceInput get input => (_$data['input'] as Input$GetAdvanceInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetAdvance<Variables$Query$GetAdvance>
  get copyWith => CopyWith$Variables$Query$GetAdvance(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAdvance ||
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

abstract class CopyWith$Variables$Query$GetAdvance<TRes> {
  factory CopyWith$Variables$Query$GetAdvance(
    Variables$Query$GetAdvance instance,
    TRes Function(Variables$Query$GetAdvance) then,
  ) = _CopyWithImpl$Variables$Query$GetAdvance;

  factory CopyWith$Variables$Query$GetAdvance.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAdvance;

  TRes call({Input$GetAdvanceInput? input});
}

class _CopyWithImpl$Variables$Query$GetAdvance<TRes>
    implements CopyWith$Variables$Query$GetAdvance<TRes> {
  _CopyWithImpl$Variables$Query$GetAdvance(this._instance, this._then);

  final Variables$Query$GetAdvance _instance;

  final TRes Function(Variables$Query$GetAdvance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$GetAdvance._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$GetAdvanceInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAdvance<TRes>
    implements CopyWith$Variables$Query$GetAdvance<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAdvance(this._res);

  TRes _res;

  call({Input$GetAdvanceInput? input}) => _res;
}

class Query$GetAdvance {
  Query$GetAdvance({required this.advance, this.$__typename = 'Query'});

  factory Query$GetAdvance.fromJson(Map<String, dynamic> json) {
    final l$advance = json['advance'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance(
      advance: Query$GetAdvance$advance.fromJson(
        (l$advance as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAdvance$advance advance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$advance = advance;
    _resultData['advance'] = l$advance.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$advance = advance;
    final l$$__typename = $__typename;
    return Object.hashAll([l$advance, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance || runtimeType != other.runtimeType) {
      return false;
    }
    final l$advance = advance;
    final lOther$advance = other.advance;
    if (l$advance != lOther$advance) {
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

extension UtilityExtension$Query$GetAdvance on Query$GetAdvance {
  CopyWith$Query$GetAdvance<Query$GetAdvance> get copyWith =>
      CopyWith$Query$GetAdvance(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance<TRes> {
  factory CopyWith$Query$GetAdvance(
    Query$GetAdvance instance,
    TRes Function(Query$GetAdvance) then,
  ) = _CopyWithImpl$Query$GetAdvance;

  factory CopyWith$Query$GetAdvance.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdvance;

  TRes call({Query$GetAdvance$advance? advance, String? $__typename});
  CopyWith$Query$GetAdvance$advance<TRes> get advance;
}

class _CopyWithImpl$Query$GetAdvance<TRes>
    implements CopyWith$Query$GetAdvance<TRes> {
  _CopyWithImpl$Query$GetAdvance(this._instance, this._then);

  final Query$GetAdvance _instance;

  final TRes Function(Query$GetAdvance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? advance = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAdvance(
          advance: advance == _undefined || advance == null
              ? _instance.advance
              : (advance as Query$GetAdvance$advance),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetAdvance$advance<TRes> get advance {
    final local$advance = _instance.advance;
    return CopyWith$Query$GetAdvance$advance(
      local$advance,
      (e) => call(advance: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAdvance<TRes>
    implements CopyWith$Query$GetAdvance<TRes> {
  _CopyWithStubImpl$Query$GetAdvance(this._res);

  TRes _res;

  call({Query$GetAdvance$advance? advance, String? $__typename}) => _res;

  CopyWith$Query$GetAdvance$advance<TRes> get advance =>
      CopyWith$Query$GetAdvance$advance.stub(_res);
}

const documentNodeQueryGetAdvance = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAdvance'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetAdvanceInput'),
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
            name: NameNode(value: 'advance'),
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
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'accountId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'account'),
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
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                                    name: NameNode(value: 'title'),
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
                                    name: NameNode(value: 'lastName'),
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
                                    name: NameNode(value: 'contactTypes'),
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
                                                name: NameNode(
                                                  value: 'enabled',
                                                ),
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
                                          name: NameNode(value: 'email'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
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
                                                name: NameNode(value: 'value'),
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
                  name: NameNode(value: 'companyId'),
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
                        name: NameNode(value: 'shortName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'handlingYardId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'handlingYard'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'YardFragment'),
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
                  name: NameNode(value: 'payableYardId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'payableYard'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'YardFragment'),
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
                  name: NameNode(value: 'paymentAmount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'amount'),
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
                        name: NameNode(value: 'exchangeRate'),
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
                  name: NameNode(value: 'reason'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'term'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                          on: NamedTypeNode(
                            name: NameNode(value: 'FixedTermDetails'),
                            isNonNull: false,
                          ),
                        ),
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'amount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'termType'),
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
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                          on: NamedTypeNode(
                            name: NameNode(value: 'PartialPayTermDetails'),
                            isNonNull: false,
                          ),
                        ),
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'termType'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'ticketIds'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'tickets'),
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
                                    name: NameNode(value: 'yardCode'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ticketNumber'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ticketCategory'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ticketStatus'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ticketType'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'price'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'lines'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'lineNumber'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'deductions'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'typeId'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'mediaAssets',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'url',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'sasUrl',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sasThumbnailUrl',
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
                                                name: NameNode(
                                                  value:
                                                      'isTareFromPreviousWeight',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'hasSeenZero',
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
                                          name: NameNode(value: 'mediaAssets'),
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
                                                name: NameNode(
                                                  value: 'sasThumbnailUrl',
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
                                          name: NameNode(
                                            value: 'totalCostImpact',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'elvQuoteIds'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'isActive'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'provPrice'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'confPrice'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'price'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'isGrossFromPreviousWeight',
                                          ),
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
                                    name: NameNode(value: 'mediaAssets'),
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
                                          name: NameNode(
                                            value: 'sasThumbnailUrl',
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
                                    name: NameNode(value: 'inspectionMedia'),
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
                                          name: NameNode(
                                            value: 'sasThumbnailUrl',
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
                                    name: NameNode(value: 'currency'),
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
                                          name: NameNode(value: 'at'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'userInfoId'),
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
                            name: NameNode(value: 'PercentageTermDetails'),
                            isNonNull: false,
                          ),
                        ),
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'amount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'percentage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'termType'),
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
                  name: NameNode(value: 'allowFlexiblePay'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'paymentMethod'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'paidInFullDueDate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'arrangedByUserId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'arrangedByUser'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'allAccountAccess'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'azureAdGroups'),
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
                        name: NameNode(value: 'clientCredentials'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'cmpCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'codaUserCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'companyAccess'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'defaultDepot'),
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
                        name: NameNode(value: 'defaultTerritory'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'defaultTimeZoneId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'directReports'),
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
                        name: NameNode(value: 'partyAccess'),
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
                        name: NameNode(value: 't2UserId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'username'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardAccess'),
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
                  name: NameNode(value: 'reference'),
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
                        name: NameNode(value: 'created'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'at'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userInfoId'),
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
                  name: NameNode(value: 'paymentInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'outstandingBalance'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transactionDetails'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'at'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'amount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'paymentRecordId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'transactionType'),
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
                  name: NameNode(value: 'status'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'offsetStatus'),
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
    fragmentDefinitionYardFragment,
    fragmentDefinitionCompanyFragment,
    fragmentDefinitionTerritoryFragment,
  ],
);

class Query$GetAdvance$advance {
  Query$GetAdvance$advance({
    required this.id,
    required this.accountId,
    this.account,
    required this.companyId,
    this.company,
    required this.handlingYardId,
    this.handlingYard,
    required this.payableYardId,
    this.payableYard,
    required this.paymentAmount,
    required this.reason,
    required this.term,
    required this.allowFlexiblePay,
    required this.paymentMethod,
    required this.paidInFullDueDate,
    required this.arrangedByUserId,
    this.arrangedByUser,
    this.reference,
    required this.comments,
    required this.paymentInfo,
    required this.status,
    required this.offsetStatus,
    this.$__typename = 'Advance',
  });

  factory Query$GetAdvance$advance.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$accountId = json['accountId'];
    final l$account = json['account'];
    final l$companyId = json['companyId'];
    final l$company = json['company'];
    final l$handlingYardId = json['handlingYardId'];
    final l$handlingYard = json['handlingYard'];
    final l$payableYardId = json['payableYardId'];
    final l$payableYard = json['payableYard'];
    final l$paymentAmount = json['paymentAmount'];
    final l$reason = json['reason'];
    final l$term = json['term'];
    final l$allowFlexiblePay = json['allowFlexiblePay'];
    final l$paymentMethod = json['paymentMethod'];
    final l$paidInFullDueDate = json['paidInFullDueDate'];
    final l$arrangedByUserId = json['arrangedByUserId'];
    final l$arrangedByUser = json['arrangedByUser'];
    final l$reference = json['reference'];
    final l$comments = json['comments'];
    final l$paymentInfo = json['paymentInfo'];
    final l$status = json['status'];
    final l$offsetStatus = json['offsetStatus'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance(
      id: (l$id as String),
      accountId: (l$accountId as String),
      account: l$account == null
          ? null
          : Query$GetAdvance$advance$account.fromJson(
              (l$account as Map<String, dynamic>),
            ),
      companyId: (l$companyId as String),
      company: l$company == null
          ? null
          : Query$GetAdvance$advance$company.fromJson(
              (l$company as Map<String, dynamic>),
            ),
      handlingYardId: (l$handlingYardId as String),
      handlingYard: l$handlingYard == null
          ? null
          : Fragment$YardFragment.fromJson(
              (l$handlingYard as Map<String, dynamic>),
            ),
      payableYardId: (l$payableYardId as String),
      payableYard: l$payableYard == null
          ? null
          : Fragment$YardFragment.fromJson(
              (l$payableYard as Map<String, dynamic>),
            ),
      paymentAmount: Query$GetAdvance$advance$paymentAmount.fromJson(
        (l$paymentAmount as Map<String, dynamic>),
      ),
      reason: fromJson$Enum$AdvanceReason((l$reason as String)),
      term: Query$GetAdvance$advance$term.fromJson(
        (l$term as Map<String, dynamic>),
      ),
      allowFlexiblePay: (l$allowFlexiblePay as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      paidInFullDueDate: DateTime.parse((l$paidInFullDueDate as String)),
      arrangedByUserId: (l$arrangedByUserId as String),
      arrangedByUser: l$arrangedByUser == null
          ? null
          : Query$GetAdvance$advance$arrangedByUser.fromJson(
              (l$arrangedByUser as Map<String, dynamic>),
            ),
      reference: (l$reference as String?),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) => Query$GetAdvance$advance$comments.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      paymentInfo: Query$GetAdvance$advance$paymentInfo.fromJson(
        (l$paymentInfo as Map<String, dynamic>),
      ),
      status: fromJson$Enum$AdvanceStatus((l$status as String)),
      offsetStatus: fromJson$Enum$OffsetStatus((l$offsetStatus as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String accountId;

  final Query$GetAdvance$advance$account? account;

  final String companyId;

  final Query$GetAdvance$advance$company? company;

  final String handlingYardId;

  final Fragment$YardFragment? handlingYard;

  final String payableYardId;

  final Fragment$YardFragment? payableYard;

  final Query$GetAdvance$advance$paymentAmount paymentAmount;

  final Enum$AdvanceReason reason;

  final Query$GetAdvance$advance$term term;

  final bool allowFlexiblePay;

  final Enum$PaymentMethod paymentMethod;

  final DateTime paidInFullDueDate;

  final String arrangedByUserId;

  final Query$GetAdvance$advance$arrangedByUser? arrangedByUser;

  final String? reference;

  final List<Query$GetAdvance$advance$comments> comments;

  final Query$GetAdvance$advance$paymentInfo paymentInfo;

  final Enum$AdvanceStatus status;

  final Enum$OffsetStatus offsetStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$account = account;
    _resultData['account'] = l$account?.toJson();
    final l$companyId = companyId;
    _resultData['companyId'] = l$companyId;
    final l$company = company;
    _resultData['company'] = l$company?.toJson();
    final l$handlingYardId = handlingYardId;
    _resultData['handlingYardId'] = l$handlingYardId;
    final l$handlingYard = handlingYard;
    _resultData['handlingYard'] = l$handlingYard?.toJson();
    final l$payableYardId = payableYardId;
    _resultData['payableYardId'] = l$payableYardId;
    final l$payableYard = payableYard;
    _resultData['payableYard'] = l$payableYard?.toJson();
    final l$paymentAmount = paymentAmount;
    _resultData['paymentAmount'] = l$paymentAmount.toJson();
    final l$reason = reason;
    _resultData['reason'] = toJson$Enum$AdvanceReason(l$reason);
    final l$term = term;
    _resultData['term'] = l$term.toJson();
    final l$allowFlexiblePay = allowFlexiblePay;
    _resultData['allowFlexiblePay'] = l$allowFlexiblePay;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$paidInFullDueDate = paidInFullDueDate;
    _resultData['paidInFullDueDate'] = l$paidInFullDueDate.toIso8601String();
    final l$arrangedByUserId = arrangedByUserId;
    _resultData['arrangedByUserId'] = l$arrangedByUserId;
    final l$arrangedByUser = arrangedByUser;
    _resultData['arrangedByUser'] = l$arrangedByUser?.toJson();
    final l$reference = reference;
    _resultData['reference'] = l$reference;
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    final l$paymentInfo = paymentInfo;
    _resultData['paymentInfo'] = l$paymentInfo.toJson();
    final l$status = status;
    _resultData['status'] = toJson$Enum$AdvanceStatus(l$status);
    final l$offsetStatus = offsetStatus;
    _resultData['offsetStatus'] = toJson$Enum$OffsetStatus(l$offsetStatus);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$accountId = accountId;
    final l$account = account;
    final l$companyId = companyId;
    final l$company = company;
    final l$handlingYardId = handlingYardId;
    final l$handlingYard = handlingYard;
    final l$payableYardId = payableYardId;
    final l$payableYard = payableYard;
    final l$paymentAmount = paymentAmount;
    final l$reason = reason;
    final l$term = term;
    final l$allowFlexiblePay = allowFlexiblePay;
    final l$paymentMethod = paymentMethod;
    final l$paidInFullDueDate = paidInFullDueDate;
    final l$arrangedByUserId = arrangedByUserId;
    final l$arrangedByUser = arrangedByUser;
    final l$reference = reference;
    final l$comments = comments;
    final l$paymentInfo = paymentInfo;
    final l$status = status;
    final l$offsetStatus = offsetStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$accountId,
      l$account,
      l$companyId,
      l$company,
      l$handlingYardId,
      l$handlingYard,
      l$payableYardId,
      l$payableYard,
      l$paymentAmount,
      l$reason,
      l$term,
      l$allowFlexiblePay,
      l$paymentMethod,
      l$paidInFullDueDate,
      l$arrangedByUserId,
      l$arrangedByUser,
      l$reference,
      Object.hashAll(l$comments.map((v) => v)),
      l$paymentInfo,
      l$status,
      l$offsetStatus,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$companyId = companyId;
    final lOther$companyId = other.companyId;
    if (l$companyId != lOther$companyId) {
      return false;
    }
    final l$company = company;
    final lOther$company = other.company;
    if (l$company != lOther$company) {
      return false;
    }
    final l$handlingYardId = handlingYardId;
    final lOther$handlingYardId = other.handlingYardId;
    if (l$handlingYardId != lOther$handlingYardId) {
      return false;
    }
    final l$handlingYard = handlingYard;
    final lOther$handlingYard = other.handlingYard;
    if (l$handlingYard != lOther$handlingYard) {
      return false;
    }
    final l$payableYardId = payableYardId;
    final lOther$payableYardId = other.payableYardId;
    if (l$payableYardId != lOther$payableYardId) {
      return false;
    }
    final l$payableYard = payableYard;
    final lOther$payableYard = other.payableYard;
    if (l$payableYard != lOther$payableYard) {
      return false;
    }
    final l$paymentAmount = paymentAmount;
    final lOther$paymentAmount = other.paymentAmount;
    if (l$paymentAmount != lOther$paymentAmount) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$term = term;
    final lOther$term = other.term;
    if (l$term != lOther$term) {
      return false;
    }
    final l$allowFlexiblePay = allowFlexiblePay;
    final lOther$allowFlexiblePay = other.allowFlexiblePay;
    if (l$allowFlexiblePay != lOther$allowFlexiblePay) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$paidInFullDueDate = paidInFullDueDate;
    final lOther$paidInFullDueDate = other.paidInFullDueDate;
    if (l$paidInFullDueDate != lOther$paidInFullDueDate) {
      return false;
    }
    final l$arrangedByUserId = arrangedByUserId;
    final lOther$arrangedByUserId = other.arrangedByUserId;
    if (l$arrangedByUserId != lOther$arrangedByUserId) {
      return false;
    }
    final l$arrangedByUser = arrangedByUser;
    final lOther$arrangedByUser = other.arrangedByUser;
    if (l$arrangedByUser != lOther$arrangedByUser) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
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
    final l$paymentInfo = paymentInfo;
    final lOther$paymentInfo = other.paymentInfo;
    if (l$paymentInfo != lOther$paymentInfo) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$offsetStatus = offsetStatus;
    final lOther$offsetStatus = other.offsetStatus;
    if (l$offsetStatus != lOther$offsetStatus) {
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

extension UtilityExtension$Query$GetAdvance$advance
    on Query$GetAdvance$advance {
  CopyWith$Query$GetAdvance$advance<Query$GetAdvance$advance> get copyWith =>
      CopyWith$Query$GetAdvance$advance(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance$advance<TRes> {
  factory CopyWith$Query$GetAdvance$advance(
    Query$GetAdvance$advance instance,
    TRes Function(Query$GetAdvance$advance) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance;

  factory CopyWith$Query$GetAdvance$advance.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdvance$advance;

  TRes call({
    String? id,
    String? accountId,
    Query$GetAdvance$advance$account? account,
    String? companyId,
    Query$GetAdvance$advance$company? company,
    String? handlingYardId,
    Fragment$YardFragment? handlingYard,
    String? payableYardId,
    Fragment$YardFragment? payableYard,
    Query$GetAdvance$advance$paymentAmount? paymentAmount,
    Enum$AdvanceReason? reason,
    Query$GetAdvance$advance$term? term,
    bool? allowFlexiblePay,
    Enum$PaymentMethod? paymentMethod,
    DateTime? paidInFullDueDate,
    String? arrangedByUserId,
    Query$GetAdvance$advance$arrangedByUser? arrangedByUser,
    String? reference,
    List<Query$GetAdvance$advance$comments>? comments,
    Query$GetAdvance$advance$paymentInfo? paymentInfo,
    Enum$AdvanceStatus? status,
    Enum$OffsetStatus? offsetStatus,
    String? $__typename,
  });
  CopyWith$Query$GetAdvance$advance$account<TRes> get account;
  CopyWith$Query$GetAdvance$advance$company<TRes> get company;
  CopyWith$Fragment$YardFragment<TRes> get handlingYard;
  CopyWith$Fragment$YardFragment<TRes> get payableYard;
  CopyWith$Query$GetAdvance$advance$paymentAmount<TRes> get paymentAmount;
  CopyWith$Query$GetAdvance$advance$term<TRes> get term;
  CopyWith$Query$GetAdvance$advance$arrangedByUser<TRes> get arrangedByUser;
  TRes comments(
    Iterable<Query$GetAdvance$advance$comments> Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$comments<
          Query$GetAdvance$advance$comments
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetAdvance$advance$paymentInfo<TRes> get paymentInfo;
}

class _CopyWithImpl$Query$GetAdvance$advance<TRes>
    implements CopyWith$Query$GetAdvance$advance<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance(this._instance, this._then);

  final Query$GetAdvance$advance _instance;

  final TRes Function(Query$GetAdvance$advance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? accountId = _undefined,
    Object? account = _undefined,
    Object? companyId = _undefined,
    Object? company = _undefined,
    Object? handlingYardId = _undefined,
    Object? handlingYard = _undefined,
    Object? payableYardId = _undefined,
    Object? payableYard = _undefined,
    Object? paymentAmount = _undefined,
    Object? reason = _undefined,
    Object? term = _undefined,
    Object? allowFlexiblePay = _undefined,
    Object? paymentMethod = _undefined,
    Object? paidInFullDueDate = _undefined,
    Object? arrangedByUserId = _undefined,
    Object? arrangedByUser = _undefined,
    Object? reference = _undefined,
    Object? comments = _undefined,
    Object? paymentInfo = _undefined,
    Object? status = _undefined,
    Object? offsetStatus = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      account: account == _undefined
          ? _instance.account
          : (account as Query$GetAdvance$advance$account?),
      companyId: companyId == _undefined || companyId == null
          ? _instance.companyId
          : (companyId as String),
      company: company == _undefined
          ? _instance.company
          : (company as Query$GetAdvance$advance$company?),
      handlingYardId: handlingYardId == _undefined || handlingYardId == null
          ? _instance.handlingYardId
          : (handlingYardId as String),
      handlingYard: handlingYard == _undefined
          ? _instance.handlingYard
          : (handlingYard as Fragment$YardFragment?),
      payableYardId: payableYardId == _undefined || payableYardId == null
          ? _instance.payableYardId
          : (payableYardId as String),
      payableYard: payableYard == _undefined
          ? _instance.payableYard
          : (payableYard as Fragment$YardFragment?),
      paymentAmount: paymentAmount == _undefined || paymentAmount == null
          ? _instance.paymentAmount
          : (paymentAmount as Query$GetAdvance$advance$paymentAmount),
      reason: reason == _undefined || reason == null
          ? _instance.reason
          : (reason as Enum$AdvanceReason),
      term: term == _undefined || term == null
          ? _instance.term
          : (term as Query$GetAdvance$advance$term),
      allowFlexiblePay:
          allowFlexiblePay == _undefined || allowFlexiblePay == null
          ? _instance.allowFlexiblePay
          : (allowFlexiblePay as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      paidInFullDueDate:
          paidInFullDueDate == _undefined || paidInFullDueDate == null
          ? _instance.paidInFullDueDate
          : (paidInFullDueDate as DateTime),
      arrangedByUserId:
          arrangedByUserId == _undefined || arrangedByUserId == null
          ? _instance.arrangedByUserId
          : (arrangedByUserId as String),
      arrangedByUser: arrangedByUser == _undefined
          ? _instance.arrangedByUser
          : (arrangedByUser as Query$GetAdvance$advance$arrangedByUser?),
      reference: reference == _undefined
          ? _instance.reference
          : (reference as String?),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments as List<Query$GetAdvance$advance$comments>),
      paymentInfo: paymentInfo == _undefined || paymentInfo == null
          ? _instance.paymentInfo
          : (paymentInfo as Query$GetAdvance$advance$paymentInfo),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$AdvanceStatus),
      offsetStatus: offsetStatus == _undefined || offsetStatus == null
          ? _instance.offsetStatus
          : (offsetStatus as Enum$OffsetStatus),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAdvance$advance$account<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Query$GetAdvance$advance$account.stub(_then(_instance))
        : CopyWith$Query$GetAdvance$advance$account(
            local$account,
            (e) => call(account: e),
          );
  }

  CopyWith$Query$GetAdvance$advance$company<TRes> get company {
    final local$company = _instance.company;
    return local$company == null
        ? CopyWith$Query$GetAdvance$advance$company.stub(_then(_instance))
        : CopyWith$Query$GetAdvance$advance$company(
            local$company,
            (e) => call(company: e),
          );
  }

  CopyWith$Fragment$YardFragment<TRes> get handlingYard {
    final local$handlingYard = _instance.handlingYard;
    return local$handlingYard == null
        ? CopyWith$Fragment$YardFragment.stub(_then(_instance))
        : CopyWith$Fragment$YardFragment(
            local$handlingYard,
            (e) => call(handlingYard: e),
          );
  }

  CopyWith$Fragment$YardFragment<TRes> get payableYard {
    final local$payableYard = _instance.payableYard;
    return local$payableYard == null
        ? CopyWith$Fragment$YardFragment.stub(_then(_instance))
        : CopyWith$Fragment$YardFragment(
            local$payableYard,
            (e) => call(payableYard: e),
          );
  }

  CopyWith$Query$GetAdvance$advance$paymentAmount<TRes> get paymentAmount {
    final local$paymentAmount = _instance.paymentAmount;
    return CopyWith$Query$GetAdvance$advance$paymentAmount(
      local$paymentAmount,
      (e) => call(paymentAmount: e),
    );
  }

  CopyWith$Query$GetAdvance$advance$term<TRes> get term {
    final local$term = _instance.term;
    return CopyWith$Query$GetAdvance$advance$term(
      local$term,
      (e) => call(term: e),
    );
  }

  CopyWith$Query$GetAdvance$advance$arrangedByUser<TRes> get arrangedByUser {
    final local$arrangedByUser = _instance.arrangedByUser;
    return local$arrangedByUser == null
        ? CopyWith$Query$GetAdvance$advance$arrangedByUser.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAdvance$advance$arrangedByUser(
            local$arrangedByUser,
            (e) => call(arrangedByUser: e),
          );
  }

  TRes comments(
    Iterable<Query$GetAdvance$advance$comments> Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$comments<
          Query$GetAdvance$advance$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) => CopyWith$Query$GetAdvance$advance$comments(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$GetAdvance$advance$paymentInfo<TRes> get paymentInfo {
    final local$paymentInfo = _instance.paymentInfo;
    return CopyWith$Query$GetAdvance$advance$paymentInfo(
      local$paymentInfo,
      (e) => call(paymentInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAdvance$advance<TRes>
    implements CopyWith$Query$GetAdvance$advance<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance(this._res);

  TRes _res;

  call({
    String? id,
    String? accountId,
    Query$GetAdvance$advance$account? account,
    String? companyId,
    Query$GetAdvance$advance$company? company,
    String? handlingYardId,
    Fragment$YardFragment? handlingYard,
    String? payableYardId,
    Fragment$YardFragment? payableYard,
    Query$GetAdvance$advance$paymentAmount? paymentAmount,
    Enum$AdvanceReason? reason,
    Query$GetAdvance$advance$term? term,
    bool? allowFlexiblePay,
    Enum$PaymentMethod? paymentMethod,
    DateTime? paidInFullDueDate,
    String? arrangedByUserId,
    Query$GetAdvance$advance$arrangedByUser? arrangedByUser,
    String? reference,
    List<Query$GetAdvance$advance$comments>? comments,
    Query$GetAdvance$advance$paymentInfo? paymentInfo,
    Enum$AdvanceStatus? status,
    Enum$OffsetStatus? offsetStatus,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAdvance$advance$account<TRes> get account =>
      CopyWith$Query$GetAdvance$advance$account.stub(_res);

  CopyWith$Query$GetAdvance$advance$company<TRes> get company =>
      CopyWith$Query$GetAdvance$advance$company.stub(_res);

  CopyWith$Fragment$YardFragment<TRes> get handlingYard =>
      CopyWith$Fragment$YardFragment.stub(_res);

  CopyWith$Fragment$YardFragment<TRes> get payableYard =>
      CopyWith$Fragment$YardFragment.stub(_res);

  CopyWith$Query$GetAdvance$advance$paymentAmount<TRes> get paymentAmount =>
      CopyWith$Query$GetAdvance$advance$paymentAmount.stub(_res);

  CopyWith$Query$GetAdvance$advance$term<TRes> get term =>
      CopyWith$Query$GetAdvance$advance$term.stub(_res);

  CopyWith$Query$GetAdvance$advance$arrangedByUser<TRes> get arrangedByUser =>
      CopyWith$Query$GetAdvance$advance$arrangedByUser.stub(_res);

  comments(_fn) => _res;

  CopyWith$Query$GetAdvance$advance$paymentInfo<TRes> get paymentInfo =>
      CopyWith$Query$GetAdvance$advance$paymentInfo.stub(_res);
}

class Query$GetAdvance$advance$account {
  Query$GetAdvance$advance$account({
    required this.id,
    required this.code,
    required this.name,
    required this.type,
    this.accountContacts,
    this.$__typename = 'Account',
  });

  factory Query$GetAdvance$advance$account.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$accountContacts = json['accountContacts'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$account(
      id: (l$id as String),
      code: (l$code as String),
      name: (l$name as String),
      type: fromJson$Enum$AccountType((l$type as String)),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAdvance$advance$account$accountContacts.fromJson(
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

  final List<Query$GetAdvance$advance$account$accountContacts?>?
  accountContacts;

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
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] = l$accountContacts
        ?.map((e) => e?.toJson())
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
    final l$accountContacts = accountContacts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$name,
      l$type,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$account ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAdvance$advance$account
    on Query$GetAdvance$advance$account {
  CopyWith$Query$GetAdvance$advance$account<Query$GetAdvance$advance$account>
  get copyWith => CopyWith$Query$GetAdvance$advance$account(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance$advance$account<TRes> {
  factory CopyWith$Query$GetAdvance$advance$account(
    Query$GetAdvance$advance$account instance,
    TRes Function(Query$GetAdvance$advance$account) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$account;

  factory CopyWith$Query$GetAdvance$advance$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdvance$advance$account;

  TRes call({
    String? id,
    String? code,
    String? name,
    Enum$AccountType? type,
    List<Query$GetAdvance$advance$account$accountContacts?>? accountContacts,
    String? $__typename,
  });
  TRes accountContacts(
    Iterable<Query$GetAdvance$advance$account$accountContacts?>? Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$account$accountContacts<
          Query$GetAdvance$advance$account$accountContacts
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAdvance$advance$account<TRes>
    implements CopyWith$Query$GetAdvance$advance$account<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$account(this._instance, this._then);

  final Query$GetAdvance$advance$account _instance;

  final TRes Function(Query$GetAdvance$advance$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? accountContacts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$account(
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
      accountContacts: accountContacts == _undefined
          ? _instance.accountContacts
          : (accountContacts
                as List<Query$GetAdvance$advance$account$accountContacts?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accountContacts(
    Iterable<Query$GetAdvance$advance$account$accountContacts?>? Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$account$accountContacts<
          Query$GetAdvance$advance$account$accountContacts
        >?
      >?,
    )
    _fn,
  ) => call(
    accountContacts: _fn(
      _instance.accountContacts?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAdvance$advance$account$accountContacts(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$account<TRes>
    implements CopyWith$Query$GetAdvance$advance$account<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$account(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? name,
    Enum$AccountType? type,
    List<Query$GetAdvance$advance$account$accountContacts?>? accountContacts,
    String? $__typename,
  }) => _res;

  accountContacts(_fn) => _res;
}

class Query$GetAdvance$advance$account$accountContacts {
  Query$GetAdvance$advance$account$accountContacts({
    required this.key,
    required this.value,
    this.$__typename = 'ContactWithKey',
  });

  factory Query$GetAdvance$advance$account$accountContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$account$accountContacts(
      key: (l$key as String),
      value: Query$GetAdvance$advance$account$accountContacts$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetAdvance$advance$account$accountContacts$value value;

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
    if (other is! Query$GetAdvance$advance$account$accountContacts ||
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

extension UtilityExtension$Query$GetAdvance$advance$account$accountContacts
    on Query$GetAdvance$advance$account$accountContacts {
  CopyWith$Query$GetAdvance$advance$account$accountContacts<
    Query$GetAdvance$advance$account$accountContacts
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$account$accountContacts(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance$advance$account$accountContacts<TRes> {
  factory CopyWith$Query$GetAdvance$advance$account$accountContacts(
    Query$GetAdvance$advance$account$accountContacts instance,
    TRes Function(Query$GetAdvance$advance$account$accountContacts) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts;

  factory CopyWith$Query$GetAdvance$advance$account$accountContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts;

  TRes call({
    String? key,
    Query$GetAdvance$advance$account$accountContacts$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetAdvance$advance$account$accountContacts$value<TRes>
  get value;
}

class _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts<TRes>
    implements CopyWith$Query$GetAdvance$advance$account$accountContacts<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$account$accountContacts _instance;

  final TRes Function(Query$GetAdvance$advance$account$accountContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$account$accountContacts(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$GetAdvance$advance$account$accountContacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAdvance$advance$account$accountContacts$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetAdvance$advance$account$accountContacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts<TRes>
    implements CopyWith$Query$GetAdvance$advance$account$accountContacts<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts(this._res);

  TRes _res;

  call({
    String? key,
    Query$GetAdvance$advance$account$accountContacts$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAdvance$advance$account$accountContacts$value<TRes>
  get value =>
      CopyWith$Query$GetAdvance$advance$account$accountContacts$value.stub(
        _res,
      );
}

class Query$GetAdvance$advance$account$accountContacts$value {
  Query$GetAdvance$advance$account$accountContacts$value({
    required this.title,
    required this.firstName,
    required this.lastName,
    this.dateOfBirth,
    required this.contactTypes,
    required this.contactPreferences,
    this.$__typename = 'Contact',
  });

  factory Query$GetAdvance$advance$account$accountContacts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$title = json['title'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$contactTypes = json['contactTypes'];
    final l$contactPreferences = json['contactPreferences'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$account$accountContacts$value(
      title: (l$title as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : LocalDate.fromJson(l$dateOfBirth),
      contactTypes: (l$contactTypes as List<dynamic>)
          .map((e) => fromJson$Enum$ContactType((e as String)))
          .toList(),
      contactPreferences:
          Query$GetAdvance$advance$account$accountContacts$value$contactPreferences.fromJson(
            (l$contactPreferences as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String firstName;

  final String lastName;

  final DateTime? dateOfBirth;

  final List<Enum$ContactType> contactTypes;

  final Query$GetAdvance$advance$account$accountContacts$value$contactPreferences
  contactPreferences;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth == null
        ? null
        : LocalDate.toJson(l$dateOfBirth);
    final l$contactTypes = contactTypes;
    _resultData['contactTypes'] = l$contactTypes
        .map((e) => toJson$Enum$ContactType(e))
        .toList();
    final l$contactPreferences = contactPreferences;
    _resultData['contactPreferences'] = l$contactPreferences.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$dateOfBirth = dateOfBirth;
    final l$contactTypes = contactTypes;
    final l$contactPreferences = contactPreferences;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$firstName,
      l$lastName,
      l$dateOfBirth,
      Object.hashAll(l$contactTypes.map((v) => v)),
      l$contactPreferences,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$account$accountContacts$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
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
    final l$contactPreferences = contactPreferences;
    final lOther$contactPreferences = other.contactPreferences;
    if (l$contactPreferences != lOther$contactPreferences) {
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

extension UtilityExtension$Query$GetAdvance$advance$account$accountContacts$value
    on Query$GetAdvance$advance$account$accountContacts$value {
  CopyWith$Query$GetAdvance$advance$account$accountContacts$value<
    Query$GetAdvance$advance$account$accountContacts$value
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$account$accountContacts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$account$accountContacts$value<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$account$accountContacts$value(
    Query$GetAdvance$advance$account$accountContacts$value instance,
    TRes Function(Query$GetAdvance$advance$account$accountContacts$value) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value;

  factory CopyWith$Query$GetAdvance$advance$account$accountContacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value;

  TRes call({
    String? title,
    String? firstName,
    String? lastName,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences?
    contactPreferences,
    String? $__typename,
  });
  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences;
}

class _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value<TRes>
    implements
        CopyWith$Query$GetAdvance$advance$account$accountContacts$value<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$account$accountContacts$value _instance;

  final TRes Function(Query$GetAdvance$advance$account$accountContacts$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? dateOfBirth = _undefined,
    Object? contactTypes = _undefined,
    Object? contactPreferences = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$account$accountContacts$value(
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      dateOfBirth: dateOfBirth == _undefined
          ? _instance.dateOfBirth
          : (dateOfBirth as DateTime?),
      contactTypes: contactTypes == _undefined || contactTypes == null
          ? _instance.contactTypes
          : (contactTypes as List<Enum$ContactType>),
      contactPreferences:
          contactPreferences == _undefined || contactPreferences == null
          ? _instance.contactPreferences
          : (contactPreferences
                as Query$GetAdvance$advance$account$accountContacts$value$contactPreferences),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences {
    final local$contactPreferences = _instance.contactPreferences;
    return CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences(
      local$contactPreferences,
      (e) => call(contactPreferences: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$account$accountContacts$value<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value(
    this._res,
  );

  TRes _res;

  call({
    String? title,
    String? firstName,
    String? lastName,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences?
    contactPreferences,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences =>
      CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences.stub(
        _res,
      );
}

class Query$GetAdvance$advance$account$accountContacts$value$contactPreferences {
  Query$GetAdvance$advance$account$accountContacts$value$contactPreferences({
    required this.mobile,
    required this.email,
    this.$__typename = 'ContactPreferences',
  });

  factory Query$GetAdvance$advance$account$accountContacts$value$contactPreferences.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mobile = json['mobile'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$account$accountContacts$value$contactPreferences(
      mobile:
          Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile.fromJson(
            (l$mobile as Map<String, dynamic>),
          ),
      email:
          Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email.fromJson(
            (l$email as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile
  mobile;

  final Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email
  email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mobile = mobile;
    _resultData['mobile'] = l$mobile.toJson();
    final l$email = email;
    _resultData['email'] = l$email.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mobile = mobile;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mobile, l$email, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$account$accountContacts$value$contactPreferences ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences
    on Query$GetAdvance$advance$account$accountContacts$value$contactPreferences {
  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences<
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences(
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences
    instance,
    TRes Function(
      Query$GetAdvance$advance$account$accountContacts$value$contactPreferences,
    )
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences;

  factory CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences;

  TRes call({
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile?
    mobile,
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email?
    email,
    String? $__typename,
  });
  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile;
  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email;
}

class _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$account$accountContacts$value$contactPreferences
  _instance;

  final TRes Function(
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobile = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences(
      mobile: mobile == _undefined || mobile == null
          ? _instance.mobile
          : (mobile
                as Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile),
      email: email == _undefined || email == null
          ? _instance.email
          : (email
                as Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile {
    final local$mobile = _instance.mobile;
    return CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile(
      local$mobile,
      (e) => call(mobile: e),
    );
  }

  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email {
    final local$email = _instance.email;
    return CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email(
      local$email,
      (e) => call(email: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences(
    this._res,
  );

  TRes _res;

  call({
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile?
    mobile,
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email?
    email,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile =>
      CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile.stub(
        _res,
      );

  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email =>
      CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email.stub(
        _res,
      );
}

class Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile {
  Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile({
    required this.enabled,
    required this.value,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile(
      enabled: (l$enabled as bool),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$enabled, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile
    on
        Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile {
  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile<
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile(
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile
    instance,
    TRes Function(
      Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile,
    )
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile;

  factory CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile;

  TRes call({bool? enabled, String? value, String? $__typename});
}

class _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile
  _instance;

  final TRes Function(
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$mobile(
    this._res,
  );

  TRes _res;

  call({bool? enabled, String? value, String? $__typename}) => _res;
}

class Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email {
  Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email({
    required this.enabled,
    required this.value,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email(
      enabled: (l$enabled as bool),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$enabled, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email
    on
        Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email {
  CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email<
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email(
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email
    instance,
    TRes Function(
      Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email,
    )
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email;

  factory CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email;

  TRes call({bool? enabled, String? value, String? $__typename});
}

class _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email
  _instance;

  final TRes Function(
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$account$accountContacts$value$contactPreferences$email(
    this._res,
  );

  TRes _res;

  call({bool? enabled, String? value, String? $__typename}) => _res;
}

class Query$GetAdvance$advance$company {
  Query$GetAdvance$advance$company({
    required this.id,
    required this.code,
    required this.shortName,
    required this.fullName,
    this.$__typename = 'Company',
  });

  factory Query$GetAdvance$advance$company.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$shortName = json['shortName'];
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$company(
      id: (l$id as String),
      code: (l$code as String),
      shortName: (l$shortName as String),
      fullName: (l$fullName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String shortName;

  final String fullName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$shortName = shortName;
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$shortName,
      l$fullName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$company ||
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
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
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

extension UtilityExtension$Query$GetAdvance$advance$company
    on Query$GetAdvance$advance$company {
  CopyWith$Query$GetAdvance$advance$company<Query$GetAdvance$advance$company>
  get copyWith => CopyWith$Query$GetAdvance$advance$company(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance$advance$company<TRes> {
  factory CopyWith$Query$GetAdvance$advance$company(
    Query$GetAdvance$advance$company instance,
    TRes Function(Query$GetAdvance$advance$company) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$company;

  factory CopyWith$Query$GetAdvance$advance$company.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdvance$advance$company;

  TRes call({
    String? id,
    String? code,
    String? shortName,
    String? fullName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$company<TRes>
    implements CopyWith$Query$GetAdvance$advance$company<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$company(this._instance, this._then);

  final Query$GetAdvance$advance$company _instance;

  final TRes Function(Query$GetAdvance$advance$company) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? shortName = _undefined,
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$company(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      fullName: fullName == _undefined || fullName == null
          ? _instance.fullName
          : (fullName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$company<TRes>
    implements CopyWith$Query$GetAdvance$advance$company<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$company(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? shortName,
    String? fullName,
    String? $__typename,
  }) => _res;
}

class Query$GetAdvance$advance$paymentAmount {
  Query$GetAdvance$advance$paymentAmount({
    required this.amount,
    required this.currencyCode,
    required this.exchangeRate,
    this.$__typename = 'PaymentAmount',
  });

  factory Query$GetAdvance$advance$paymentAmount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$amount = json['amount'];
    final l$currencyCode = json['currencyCode'];
    final l$exchangeRate = json['exchangeRate'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$paymentAmount(
      amount: (l$amount as num).toDouble(),
      currencyCode: (l$currencyCode as String),
      exchangeRate: (l$exchangeRate as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final String currencyCode;

  final double exchangeRate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$exchangeRate = exchangeRate;
    _resultData['exchangeRate'] = l$exchangeRate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$currencyCode = currencyCode;
    final l$exchangeRate = exchangeRate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$currencyCode,
      l$exchangeRate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$paymentAmount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$exchangeRate = exchangeRate;
    final lOther$exchangeRate = other.exchangeRate;
    if (l$exchangeRate != lOther$exchangeRate) {
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

extension UtilityExtension$Query$GetAdvance$advance$paymentAmount
    on Query$GetAdvance$advance$paymentAmount {
  CopyWith$Query$GetAdvance$advance$paymentAmount<
    Query$GetAdvance$advance$paymentAmount
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$paymentAmount(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance$advance$paymentAmount<TRes> {
  factory CopyWith$Query$GetAdvance$advance$paymentAmount(
    Query$GetAdvance$advance$paymentAmount instance,
    TRes Function(Query$GetAdvance$advance$paymentAmount) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$paymentAmount;

  factory CopyWith$Query$GetAdvance$advance$paymentAmount.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdvance$advance$paymentAmount;

  TRes call({
    double? amount,
    String? currencyCode,
    double? exchangeRate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$paymentAmount<TRes>
    implements CopyWith$Query$GetAdvance$advance$paymentAmount<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$paymentAmount(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$paymentAmount _instance;

  final TRes Function(Query$GetAdvance$advance$paymentAmount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? currencyCode = _undefined,
    Object? exchangeRate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$paymentAmount(
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      currencyCode: currencyCode == _undefined || currencyCode == null
          ? _instance.currencyCode
          : (currencyCode as String),
      exchangeRate: exchangeRate == _undefined || exchangeRate == null
          ? _instance.exchangeRate
          : (exchangeRate as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$paymentAmount<TRes>
    implements CopyWith$Query$GetAdvance$advance$paymentAmount<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$paymentAmount(this._res);

  TRes _res;

  call({
    double? amount,
    String? currencyCode,
    double? exchangeRate,
    String? $__typename,
  }) => _res;
}

class Query$GetAdvance$advance$term {
  Query$GetAdvance$advance$term({required this.$__typename});

  factory Query$GetAdvance$advance$term.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "FixedTermDetails":
        return Query$GetAdvance$advance$term$$FixedTermDetails.fromJson(json);

      case "PartialPayTermDetails":
        return Query$GetAdvance$advance$term$$PartialPayTermDetails.fromJson(
          json,
        );

      case "PercentageTermDetails":
        return Query$GetAdvance$advance$term$$PercentageTermDetails.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Query$GetAdvance$advance$term(
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
    if (other is! Query$GetAdvance$advance$term ||
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

extension UtilityExtension$Query$GetAdvance$advance$term
    on Query$GetAdvance$advance$term {
  CopyWith$Query$GetAdvance$advance$term<Query$GetAdvance$advance$term>
  get copyWith => CopyWith$Query$GetAdvance$advance$term(this, (i) => i);

  _T when<_T>({
    required _T Function(Query$GetAdvance$advance$term$$FixedTermDetails)
    fixedTermDetails,
    required _T Function(Query$GetAdvance$advance$term$$PartialPayTermDetails)
    partialPayTermDetails,
    required _T Function(Query$GetAdvance$advance$term$$PercentageTermDetails)
    percentageTermDetails,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FixedTermDetails":
        return fixedTermDetails(
          this as Query$GetAdvance$advance$term$$FixedTermDetails,
        );

      case "PartialPayTermDetails":
        return partialPayTermDetails(
          this as Query$GetAdvance$advance$term$$PartialPayTermDetails,
        );

      case "PercentageTermDetails":
        return percentageTermDetails(
          this as Query$GetAdvance$advance$term$$PercentageTermDetails,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$GetAdvance$advance$term$$FixedTermDetails)?
    fixedTermDetails,
    _T Function(Query$GetAdvance$advance$term$$PartialPayTermDetails)?
    partialPayTermDetails,
    _T Function(Query$GetAdvance$advance$term$$PercentageTermDetails)?
    percentageTermDetails,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FixedTermDetails":
        if (fixedTermDetails != null) {
          return fixedTermDetails(
            this as Query$GetAdvance$advance$term$$FixedTermDetails,
          );
        } else {
          return orElse();
        }

      case "PartialPayTermDetails":
        if (partialPayTermDetails != null) {
          return partialPayTermDetails(
            this as Query$GetAdvance$advance$term$$PartialPayTermDetails,
          );
        } else {
          return orElse();
        }

      case "PercentageTermDetails":
        if (percentageTermDetails != null) {
          return percentageTermDetails(
            this as Query$GetAdvance$advance$term$$PercentageTermDetails,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetAdvance$advance$term<TRes> {
  factory CopyWith$Query$GetAdvance$advance$term(
    Query$GetAdvance$advance$term instance,
    TRes Function(Query$GetAdvance$advance$term) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term;

  factory CopyWith$Query$GetAdvance$advance$term.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdvance$advance$term;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetAdvance$advance$term<TRes>
    implements CopyWith$Query$GetAdvance$advance$term<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$term(this._instance, this._then);

  final Query$GetAdvance$advance$term _instance;

  final TRes Function(Query$GetAdvance$advance$term) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Query$GetAdvance$advance$term(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term<TRes>
    implements CopyWith$Query$GetAdvance$advance$term<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$term(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetAdvance$advance$term$$FixedTermDetails
    implements Query$GetAdvance$advance$term {
  Query$GetAdvance$advance$term$$FixedTermDetails({
    required this.amount,
    required this.termType,
    this.$__typename = 'FixedTermDetails',
  });

  factory Query$GetAdvance$advance$term$$FixedTermDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$amount = json['amount'];
    final l$termType = json['termType'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$FixedTermDetails(
      amount: (l$amount as num).toDouble(),
      termType: fromJson$Enum$AdvanceTermType((l$termType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final Enum$AdvanceTermType termType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$termType = termType;
    _resultData['termType'] = toJson$Enum$AdvanceTermType(l$termType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$termType = termType;
    final l$$__typename = $__typename;
    return Object.hashAll([l$amount, l$termType, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$term$$FixedTermDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$termType = termType;
    final lOther$termType = other.termType;
    if (l$termType != lOther$termType) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$FixedTermDetails
    on Query$GetAdvance$advance$term$$FixedTermDetails {
  CopyWith$Query$GetAdvance$advance$term$$FixedTermDetails<
    Query$GetAdvance$advance$term$$FixedTermDetails
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$term$$FixedTermDetails(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance$advance$term$$FixedTermDetails<TRes> {
  factory CopyWith$Query$GetAdvance$advance$term$$FixedTermDetails(
    Query$GetAdvance$advance$term$$FixedTermDetails instance,
    TRes Function(Query$GetAdvance$advance$term$$FixedTermDetails) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$FixedTermDetails;

  factory CopyWith$Query$GetAdvance$advance$term$$FixedTermDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$FixedTermDetails;

  TRes call({
    double? amount,
    Enum$AdvanceTermType? termType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$FixedTermDetails<TRes>
    implements CopyWith$Query$GetAdvance$advance$term$$FixedTermDetails<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$term$$FixedTermDetails(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$FixedTermDetails _instance;

  final TRes Function(Query$GetAdvance$advance$term$$FixedTermDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? termType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$FixedTermDetails(
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      termType: termType == _undefined || termType == null
          ? _instance.termType
          : (termType as Enum$AdvanceTermType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$FixedTermDetails<TRes>
    implements CopyWith$Query$GetAdvance$advance$term$$FixedTermDetails<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$FixedTermDetails(this._res);

  TRes _res;

  call({double? amount, Enum$AdvanceTermType? termType, String? $__typename}) =>
      _res;
}

class Query$GetAdvance$advance$term$$PartialPayTermDetails
    implements Query$GetAdvance$advance$term {
  Query$GetAdvance$advance$term$$PartialPayTermDetails({
    required this.termType,
    required this.ticketIds,
    this.tickets,
    this.$__typename = 'PartialPayTermDetails',
  });

  factory Query$GetAdvance$advance$term$$PartialPayTermDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$termType = json['termType'];
    final l$ticketIds = json['ticketIds'];
    final l$tickets = json['tickets'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$PartialPayTermDetails(
      termType: fromJson$Enum$AdvanceTermType((l$termType as String)),
      ticketIds: (l$ticketIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      tickets: (l$tickets as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AdvanceTermType termType;

  final List<String> ticketIds;

  final List<Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets?>?
  tickets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$termType = termType;
    _resultData['termType'] = toJson$Enum$AdvanceTermType(l$termType);
    final l$ticketIds = ticketIds;
    _resultData['ticketIds'] = l$ticketIds.map((e) => e).toList();
    final l$tickets = tickets;
    _resultData['tickets'] = l$tickets?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$termType = termType;
    final l$ticketIds = ticketIds;
    final l$tickets = tickets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$termType,
      Object.hashAll(l$ticketIds.map((v) => v)),
      l$tickets == null ? null : Object.hashAll(l$tickets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$term$$PartialPayTermDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$termType = termType;
    final lOther$termType = other.termType;
    if (l$termType != lOther$termType) {
      return false;
    }
    final l$ticketIds = ticketIds;
    final lOther$ticketIds = other.ticketIds;
    if (l$ticketIds.length != lOther$ticketIds.length) {
      return false;
    }
    for (int i = 0; i < l$ticketIds.length; i++) {
      final l$ticketIds$entry = l$ticketIds[i];
      final lOther$ticketIds$entry = lOther$ticketIds[i];
      if (l$ticketIds$entry != lOther$ticketIds$entry) {
        return false;
      }
    }
    final l$tickets = tickets;
    final lOther$tickets = other.tickets;
    if (l$tickets != null && lOther$tickets != null) {
      if (l$tickets.length != lOther$tickets.length) {
        return false;
      }
      for (int i = 0; i < l$tickets.length; i++) {
        final l$tickets$entry = l$tickets[i];
        final lOther$tickets$entry = lOther$tickets[i];
        if (l$tickets$entry != lOther$tickets$entry) {
          return false;
        }
      }
    } else if (l$tickets != lOther$tickets) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$PartialPayTermDetails
    on Query$GetAdvance$advance$term$$PartialPayTermDetails {
  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails<
    Query$GetAdvance$advance$term$$PartialPayTermDetails
  >
  get copyWith => CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails(
    Query$GetAdvance$advance$term$$PartialPayTermDetails instance,
    TRes Function(Query$GetAdvance$advance$term$$PartialPayTermDetails) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails;

  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails;

  TRes call({
    Enum$AdvanceTermType? termType,
    List<String>? ticketIds,
    List<Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets?>?
    tickets,
    String? $__typename,
  });
  TRes tickets(
    Iterable<Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets?>?
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails<TRes>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$PartialPayTermDetails _instance;

  final TRes Function(Query$GetAdvance$advance$term$$PartialPayTermDetails)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? termType = _undefined,
    Object? ticketIds = _undefined,
    Object? tickets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$PartialPayTermDetails(
      termType: termType == _undefined || termType == null
          ? _instance.termType
          : (termType as Enum$AdvanceTermType),
      ticketIds: ticketIds == _undefined || ticketIds == null
          ? _instance.ticketIds
          : (ticketIds as List<String>),
      tickets: tickets == _undefined
          ? _instance.tickets
          : (tickets
                as List<
                  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes tickets(
    Iterable<Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets?>?
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets
        >?
      >?,
    )
    _fn,
  ) => call(
    tickets: _fn(
      _instance.tickets?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails(
    this._res,
  );

  TRes _res;

  call({
    Enum$AdvanceTermType? termType,
    List<String>? ticketIds,
    List<Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets?>?
    tickets,
    String? $__typename,
  }) => _res;

  tickets(_fn) => _res;
}

class Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets {
  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets({
    required this.id,
    required this.yardCode,
    required this.ticketNumber,
    required this.ticketCategory,
    required this.ticketStatus,
    required this.ticketType,
    required this.price,
    required this.lines,
    required this.mediaAssets,
    required this.inspectionMedia,
    this.currency,
    required this.created,
    this.$__typename = 'Ticket',
  });

  factory Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$yardCode = json['yardCode'];
    final l$ticketNumber = json['ticketNumber'];
    final l$ticketCategory = json['ticketCategory'];
    final l$ticketStatus = json['ticketStatus'];
    final l$ticketType = json['ticketType'];
    final l$price = json['price'];
    final l$lines = json['lines'];
    final l$mediaAssets = json['mediaAssets'];
    final l$inspectionMedia = json['inspectionMedia'];
    final l$currency = json['currency'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets(
      id: (l$id as String),
      yardCode: (l$yardCode as String),
      ticketNumber: (l$ticketNumber as int),
      ticketCategory: fromJson$Enum$TicketCategory(
        (l$ticketCategory as String),
      ),
      ticketStatus: fromJson$Enum$TicketStatus((l$ticketStatus as String)),
      ticketType: fromJson$Enum$TicketType((l$ticketType as String)),
      price: (l$price as num).toDouble(),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) =>
                Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      currency: (l$currency as String?),
      created:
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String yardCode;

  final int ticketNumber;

  final Enum$TicketCategory ticketCategory;

  final Enum$TicketStatus ticketStatus;

  final Enum$TicketType ticketType;

  final double price;

  final List<Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines>
  lines;

  final List<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
  >
  mediaAssets;

  final List<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
  >
  inspectionMedia;

  final String? currency;

  final Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$ticketCategory = ticketCategory;
    _resultData['ticketCategory'] = toJson$Enum$TicketCategory(
      l$ticketCategory,
    );
    final l$ticketStatus = ticketStatus;
    _resultData['ticketStatus'] = toJson$Enum$TicketStatus(l$ticketStatus);
    final l$ticketType = ticketType;
    _resultData['ticketType'] = toJson$Enum$TicketType(l$ticketType);
    final l$price = price;
    _resultData['price'] = l$price;
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$ticketCategory = ticketCategory;
    final l$ticketStatus = ticketStatus;
    final l$ticketType = ticketType;
    final l$price = price;
    final l$lines = lines;
    final l$mediaAssets = mediaAssets;
    final l$inspectionMedia = inspectionMedia;
    final l$currency = currency;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$yardCode,
      l$ticketNumber,
      l$ticketCategory,
      l$ticketStatus,
      l$ticketType,
      l$price,
      Object.hashAll(l$lines.map((v) => v)),
      Object.hashAll(l$mediaAssets.map((v) => v)),
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$currency,
      l$created,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$ticketCategory = ticketCategory;
    final lOther$ticketCategory = other.ticketCategory;
    if (l$ticketCategory != lOther$ticketCategory) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$ticketType = ticketType;
    final lOther$ticketType = other.ticketType;
    if (l$ticketType != lOther$ticketType) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) {
      return false;
    }
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) {
        return false;
      }
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$inspectionMedia = inspectionMedia;
    final lOther$inspectionMedia = other.inspectionMedia;
    if (l$inspectionMedia.length != lOther$inspectionMedia.length) {
      return false;
    }
    for (int i = 0; i < l$inspectionMedia.length; i++) {
      final l$inspectionMedia$entry = l$inspectionMedia[i];
      final lOther$inspectionMedia$entry = lOther$inspectionMedia[i];
      if (l$inspectionMedia$entry != lOther$inspectionMedia$entry) {
        return false;
      }
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets
    on Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets {
  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets instance,
    TRes Function(Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets)
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets;

  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets;

  TRes call({
    String? id,
    String? yardCode,
    int? ticketNumber,
    Enum$TicketCategory? ticketCategory,
    Enum$TicketStatus? ticketStatus,
    Enum$TicketType? ticketType,
    double? price,
    List<Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines>?
    lines,
    List<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
    >?
    mediaAssets,
    List<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
    >?
    inspectionMedia,
    String? currency,
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created?
    created,
    String? $__typename,
  });
  TRes lines(
    Iterable<Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines>
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines
        >
      >,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
        >
      >,
    )
    _fn,
  );
  TRes inspectionMedia(
    Iterable<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets _instance;

  final TRes Function(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketCategory = _undefined,
    Object? ticketStatus = _undefined,
    Object? ticketType = _undefined,
    Object? price = _undefined,
    Object? lines = _undefined,
    Object? mediaAssets = _undefined,
    Object? inspectionMedia = _undefined,
    Object? currency = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      ticketCategory: ticketCategory == _undefined || ticketCategory == null
          ? _instance.ticketCategory
          : (ticketCategory as Enum$TicketCategory),
      ticketStatus: ticketStatus == _undefined || ticketStatus == null
          ? _instance.ticketStatus
          : (ticketStatus as Enum$TicketStatus),
      ticketType: ticketType == _undefined || ticketType == null
          ? _instance.ticketType
          : (ticketType as Enum$TicketType),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines
                as List<
                  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines
                >),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
                >),
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
                >),
      currency: currency == _undefined
          ? _instance.currency
          : (currency as String?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes lines(
    Iterable<Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines>
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) =>
            CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes mediaAssets(
    Iterable<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes inspectionMedia(
    Iterable<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? yardCode,
    int? ticketNumber,
    Enum$TicketCategory? ticketCategory,
    Enum$TicketStatus? ticketStatus,
    Enum$TicketType? ticketType,
    double? price,
    List<Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines>?
    lines,
    List<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
    >?
    mediaAssets,
    List<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
    >?
    inspectionMedia,
    String? currency,
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created?
    created,
    String? $__typename,
  }) => _res;

  lines(_fn) => _res;

  mediaAssets(_fn) => _res;

  inspectionMedia(_fn) => _res;

  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created.stub(
        _res,
      );
}

class Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines {
  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines({
    required this.lineNumber,
    required this.deductions,
    required this.mediaAssets,
    required this.totalCostImpact,
    required this.elvQuoteIds,
    required this.isActive,
    required this.provPrice,
    required this.confPrice,
    required this.price,
    required this.isGrossFromPreviousWeight,
    required this.hasSeenZero,
    this.$__typename = 'TicketLine',
  });

  factory Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$lineNumber = json['lineNumber'];
    final l$deductions = json['deductions'];
    final l$mediaAssets = json['mediaAssets'];
    final l$totalCostImpact = json['totalCostImpact'];
    final l$elvQuoteIds = json['elvQuoteIds'];
    final l$isActive = json['isActive'];
    final l$provPrice = json['provPrice'];
    final l$confPrice = json['confPrice'];
    final l$price = json['price'];
    final l$isGrossFromPreviousWeight = json['isGrossFromPreviousWeight'];
    final l$hasSeenZero = json['hasSeenZero'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines(
      lineNumber: (l$lineNumber as int),
      deductions: (l$deductions as List<dynamic>)
          .map(
            (e) =>
                Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      totalCostImpact: (l$totalCostImpact as num).toDouble(),
      elvQuoteIds: (l$elvQuoteIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      isActive: (l$isActive as bool),
      provPrice: (l$provPrice as num).toDouble(),
      confPrice: (l$confPrice as num).toDouble(),
      price: (l$price as num).toDouble(),
      isGrossFromPreviousWeight: (l$isGrossFromPreviousWeight as bool),
      hasSeenZero: (l$hasSeenZero as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final int lineNumber;

  final List<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
  >
  deductions;

  final List<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
  >
  mediaAssets;

  final double totalCostImpact;

  final List<String> elvQuoteIds;

  final bool isActive;

  final double provPrice;

  final double confPrice;

  final double price;

  final bool isGrossFromPreviousWeight;

  final bool hasSeenZero;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lineNumber = lineNumber;
    _resultData['lineNumber'] = l$lineNumber;
    final l$deductions = deductions;
    _resultData['deductions'] = l$deductions.map((e) => e.toJson()).toList();
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$totalCostImpact = totalCostImpact;
    _resultData['totalCostImpact'] = l$totalCostImpact;
    final l$elvQuoteIds = elvQuoteIds;
    _resultData['elvQuoteIds'] = l$elvQuoteIds.map((e) => e).toList();
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$provPrice = provPrice;
    _resultData['provPrice'] = l$provPrice;
    final l$confPrice = confPrice;
    _resultData['confPrice'] = l$confPrice;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$isGrossFromPreviousWeight = isGrossFromPreviousWeight;
    _resultData['isGrossFromPreviousWeight'] = l$isGrossFromPreviousWeight;
    final l$hasSeenZero = hasSeenZero;
    _resultData['hasSeenZero'] = l$hasSeenZero;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lineNumber = lineNumber;
    final l$deductions = deductions;
    final l$mediaAssets = mediaAssets;
    final l$totalCostImpact = totalCostImpact;
    final l$elvQuoteIds = elvQuoteIds;
    final l$isActive = isActive;
    final l$provPrice = provPrice;
    final l$confPrice = confPrice;
    final l$price = price;
    final l$isGrossFromPreviousWeight = isGrossFromPreviousWeight;
    final l$hasSeenZero = hasSeenZero;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lineNumber,
      Object.hashAll(l$deductions.map((v) => v)),
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$totalCostImpact,
      Object.hashAll(l$elvQuoteIds.map((v) => v)),
      l$isActive,
      l$provPrice,
      l$confPrice,
      l$price,
      l$isGrossFromPreviousWeight,
      l$hasSeenZero,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$deductions = deductions;
    final lOther$deductions = other.deductions;
    if (l$deductions.length != lOther$deductions.length) {
      return false;
    }
    for (int i = 0; i < l$deductions.length; i++) {
      final l$deductions$entry = l$deductions[i];
      final lOther$deductions$entry = lOther$deductions[i];
      if (l$deductions$entry != lOther$deductions$entry) {
        return false;
      }
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$totalCostImpact = totalCostImpact;
    final lOther$totalCostImpact = other.totalCostImpact;
    if (l$totalCostImpact != lOther$totalCostImpact) {
      return false;
    }
    final l$elvQuoteIds = elvQuoteIds;
    final lOther$elvQuoteIds = other.elvQuoteIds;
    if (l$elvQuoteIds.length != lOther$elvQuoteIds.length) {
      return false;
    }
    for (int i = 0; i < l$elvQuoteIds.length; i++) {
      final l$elvQuoteIds$entry = l$elvQuoteIds[i];
      final lOther$elvQuoteIds$entry = lOther$elvQuoteIds[i];
      if (l$elvQuoteIds$entry != lOther$elvQuoteIds$entry) {
        return false;
      }
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$provPrice = provPrice;
    final lOther$provPrice = other.provPrice;
    if (l$provPrice != lOther$provPrice) {
      return false;
    }
    final l$confPrice = confPrice;
    final lOther$confPrice = other.confPrice;
    if (l$confPrice != lOther$confPrice) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$isGrossFromPreviousWeight = isGrossFromPreviousWeight;
    final lOther$isGrossFromPreviousWeight = other.isGrossFromPreviousWeight;
    if (l$isGrossFromPreviousWeight != lOther$isGrossFromPreviousWeight) {
      return false;
    }
    final l$hasSeenZero = hasSeenZero;
    final lOther$hasSeenZero = other.hasSeenZero;
    if (l$hasSeenZero != lOther$hasSeenZero) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines
    on Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines {
  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines instance,
    TRes Function(
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines,
    )
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines;

  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines;

  TRes call({
    int? lineNumber,
    List<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
    >?
    deductions,
    List<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
    >?
    mediaAssets,
    double? totalCostImpact,
    List<String>? elvQuoteIds,
    bool? isActive,
    double? provPrice,
    double? confPrice,
    double? price,
    bool? isGrossFromPreviousWeight,
    bool? hasSeenZero,
    String? $__typename,
  });
  TRes deductions(
    Iterable<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
    >
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
        >
      >,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines
  _instance;

  final TRes Function(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lineNumber = _undefined,
    Object? deductions = _undefined,
    Object? mediaAssets = _undefined,
    Object? totalCostImpact = _undefined,
    Object? elvQuoteIds = _undefined,
    Object? isActive = _undefined,
    Object? provPrice = _undefined,
    Object? confPrice = _undefined,
    Object? price = _undefined,
    Object? isGrossFromPreviousWeight = _undefined,
    Object? hasSeenZero = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines(
      lineNumber: lineNumber == _undefined || lineNumber == null
          ? _instance.lineNumber
          : (lineNumber as int),
      deductions: deductions == _undefined || deductions == null
          ? _instance.deductions
          : (deductions
                as List<
                  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
                >),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
                >),
      totalCostImpact: totalCostImpact == _undefined || totalCostImpact == null
          ? _instance.totalCostImpact
          : (totalCostImpact as double),
      elvQuoteIds: elvQuoteIds == _undefined || elvQuoteIds == null
          ? _instance.elvQuoteIds
          : (elvQuoteIds as List<String>),
      isActive: isActive == _undefined || isActive == null
          ? _instance.isActive
          : (isActive as bool),
      provPrice: provPrice == _undefined || provPrice == null
          ? _instance.provPrice
          : (provPrice as double),
      confPrice: confPrice == _undefined || confPrice == null
          ? _instance.confPrice
          : (confPrice as double),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      isGrossFromPreviousWeight:
          isGrossFromPreviousWeight == _undefined ||
              isGrossFromPreviousWeight == null
          ? _instance.isGrossFromPreviousWeight
          : (isGrossFromPreviousWeight as bool),
      hasSeenZero: hasSeenZero == _undefined || hasSeenZero == null
          ? _instance.hasSeenZero
          : (hasSeenZero as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes deductions(
    Iterable<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
    >
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
        >
      >,
    )
    _fn,
  ) => call(
    deductions: _fn(
      _instance.deductions.map(
        (e) =>
            CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes mediaAssets(
    Iterable<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines(
    this._res,
  );

  TRes _res;

  call({
    int? lineNumber,
    List<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
    >?
    deductions,
    List<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
    >?
    mediaAssets,
    double? totalCostImpact,
    List<String>? elvQuoteIds,
    bool? isActive,
    double? provPrice,
    double? confPrice,
    double? price,
    bool? isGrossFromPreviousWeight,
    bool? hasSeenZero,
    String? $__typename,
  }) => _res;

  deductions(_fn) => _res;

  mediaAssets(_fn) => _res;
}

class Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions {
  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions({
    required this.typeId,
    required this.mediaAssets,
    required this.isTareFromPreviousWeight,
    required this.hasSeenZero,
    this.$__typename = 'LineDeduction',
  });

  factory Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$typeId = json['typeId'];
    final l$mediaAssets = json['mediaAssets'];
    final l$isTareFromPreviousWeight = json['isTareFromPreviousWeight'];
    final l$hasSeenZero = json['hasSeenZero'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions(
      typeId: (l$typeId as String),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      isTareFromPreviousWeight: (l$isTareFromPreviousWeight as bool),
      hasSeenZero: (l$hasSeenZero as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String typeId;

  final List<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
  >
  mediaAssets;

  final bool isTareFromPreviousWeight;

  final bool hasSeenZero;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$typeId = typeId;
    _resultData['typeId'] = l$typeId;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$isTareFromPreviousWeight = isTareFromPreviousWeight;
    _resultData['isTareFromPreviousWeight'] = l$isTareFromPreviousWeight;
    final l$hasSeenZero = hasSeenZero;
    _resultData['hasSeenZero'] = l$hasSeenZero;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$typeId = typeId;
    final l$mediaAssets = mediaAssets;
    final l$isTareFromPreviousWeight = isTareFromPreviousWeight;
    final l$hasSeenZero = hasSeenZero;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$typeId,
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$isTareFromPreviousWeight,
      l$hasSeenZero,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$typeId = typeId;
    final lOther$typeId = other.typeId;
    if (l$typeId != lOther$typeId) {
      return false;
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$isTareFromPreviousWeight = isTareFromPreviousWeight;
    final lOther$isTareFromPreviousWeight = other.isTareFromPreviousWeight;
    if (l$isTareFromPreviousWeight != lOther$isTareFromPreviousWeight) {
      return false;
    }
    final l$hasSeenZero = hasSeenZero;
    final lOther$hasSeenZero = other.hasSeenZero;
    if (l$hasSeenZero != lOther$hasSeenZero) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
    on Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions {
  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
    instance,
    TRes Function(
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions,
    )
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions;

  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions;

  TRes call({
    String? typeId,
    List<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
    >?
    mediaAssets,
    bool? isTareFromPreviousWeight,
    bool? hasSeenZero,
    String? $__typename,
  });
  TRes mediaAssets(
    Iterable<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions
  _instance;

  final TRes Function(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typeId = _undefined,
    Object? mediaAssets = _undefined,
    Object? isTareFromPreviousWeight = _undefined,
    Object? hasSeenZero = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions(
      typeId: typeId == _undefined || typeId == null
          ? _instance.typeId
          : (typeId as String),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
                >),
      isTareFromPreviousWeight:
          isTareFromPreviousWeight == _undefined ||
              isTareFromPreviousWeight == null
          ? _instance.isTareFromPreviousWeight
          : (isTareFromPreviousWeight as bool),
      hasSeenZero: hasSeenZero == _undefined || hasSeenZero == null
          ? _instance.hasSeenZero
          : (hasSeenZero as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes mediaAssets(
    Iterable<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets<
          Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions(
    this._res,
  );

  TRes _res;

  call({
    String? typeId,
    List<
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
    >?
    mediaAssets,
    bool? isTareFromPreviousWeight,
    bool? hasSeenZero,
    String? $__typename,
  }) => _res;

  mediaAssets(_fn) => _res;
}

class Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets {
  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets({
    required this.url,
    this.sasUrl,
    this.sasThumbnailUrl,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$sasThumbnailUrl = json['sasThumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      sasThumbnailUrl: (l$sasThumbnailUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final String? sasThumbnailUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    _resultData['sasThumbnailUrl'] = l$sasThumbnailUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$sasUrl, l$sasThumbnailUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets ||
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
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final lOther$sasThumbnailUrl = other.sasThumbnailUrl;
    if (l$sasThumbnailUrl != lOther$sasThumbnailUrl) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
    on
        Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets {
  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
    instance,
    TRes Function(
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets;

  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets;

  TRes call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets
  _instance;

  final TRes Function(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? sasThumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      sasThumbnailUrl: sasThumbnailUrl == _undefined
          ? _instance.sasThumbnailUrl
          : (sasThumbnailUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$deductions$mediaAssets(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  }) => _res;
}

class Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets {
  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets({
    required this.url,
    this.sasUrl,
    this.sasThumbnailUrl,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$sasThumbnailUrl = json['sasThumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      sasThumbnailUrl: (l$sasThumbnailUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final String? sasThumbnailUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    _resultData['sasThumbnailUrl'] = l$sasThumbnailUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$sasUrl, l$sasThumbnailUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets ||
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
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final lOther$sasThumbnailUrl = other.sasThumbnailUrl;
    if (l$sasThumbnailUrl != lOther$sasThumbnailUrl) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
    on Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets {
  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
    instance,
    TRes Function(
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets;

  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets;

  TRes call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets
  _instance;

  final TRes Function(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? sasThumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      sasThumbnailUrl: sasThumbnailUrl == _undefined
          ? _instance.sasThumbnailUrl
          : (sasThumbnailUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$lines$mediaAssets(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  }) => _res;
}

class Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets {
  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets({
    required this.url,
    this.sasUrl,
    this.sasThumbnailUrl,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$sasThumbnailUrl = json['sasThumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      sasThumbnailUrl: (l$sasThumbnailUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final String? sasThumbnailUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    _resultData['sasThumbnailUrl'] = l$sasThumbnailUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$sasUrl, l$sasThumbnailUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets ||
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
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final lOther$sasThumbnailUrl = other.sasThumbnailUrl;
    if (l$sasThumbnailUrl != lOther$sasThumbnailUrl) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
    on Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets {
  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
    instance,
    TRes Function(
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets;

  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets;

  TRes call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets
  _instance;

  final TRes Function(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? sasThumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      sasThumbnailUrl: sasThumbnailUrl == _undefined
          ? _instance.sasThumbnailUrl
          : (sasThumbnailUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$mediaAssets(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  }) => _res;
}

class Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia {
  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia({
    required this.url,
    this.sasUrl,
    this.sasThumbnailUrl,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$sasThumbnailUrl = json['sasThumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      sasThumbnailUrl: (l$sasThumbnailUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final String? sasThumbnailUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    _resultData['sasThumbnailUrl'] = l$sasThumbnailUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$sasUrl, l$sasThumbnailUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia ||
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
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final lOther$sasThumbnailUrl = other.sasThumbnailUrl;
    if (l$sasThumbnailUrl != lOther$sasThumbnailUrl) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
    on Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia {
  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
    instance,
    TRes Function(
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia,
    )
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia;

  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia;

  TRes call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia
  _instance;

  final TRes Function(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? sasThumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      sasThumbnailUrl: sasThumbnailUrl == _undefined
          ? _instance.sasThumbnailUrl
          : (sasThumbnailUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  }) => _res;
}

class Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created {
  Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userInfoId, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created
    on Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created {
  CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created<
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created
    instance,
    TRes Function(
      Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created;

  factory CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created<
          TRes
        > {
  _CopyWithImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created
  _instance;

  final TRes Function(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$PartialPayTermDetails$tickets$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$GetAdvance$advance$term$$PercentageTermDetails
    implements Query$GetAdvance$advance$term {
  Query$GetAdvance$advance$term$$PercentageTermDetails({
    required this.amount,
    required this.percentage,
    required this.termType,
    this.$__typename = 'PercentageTermDetails',
  });

  factory Query$GetAdvance$advance$term$$PercentageTermDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$amount = json['amount'];
    final l$percentage = json['percentage'];
    final l$termType = json['termType'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$term$$PercentageTermDetails(
      amount: (l$amount as num).toDouble(),
      percentage: (l$percentage as num).toDouble(),
      termType: fromJson$Enum$AdvanceTermType((l$termType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final double percentage;

  final Enum$AdvanceTermType termType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$percentage = percentage;
    _resultData['percentage'] = l$percentage;
    final l$termType = termType;
    _resultData['termType'] = toJson$Enum$AdvanceTermType(l$termType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$percentage = percentage;
    final l$termType = termType;
    final l$$__typename = $__typename;
    return Object.hashAll([l$amount, l$percentage, l$termType, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$term$$PercentageTermDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$percentage = percentage;
    final lOther$percentage = other.percentage;
    if (l$percentage != lOther$percentage) {
      return false;
    }
    final l$termType = termType;
    final lOther$termType = other.termType;
    if (l$termType != lOther$termType) {
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

extension UtilityExtension$Query$GetAdvance$advance$term$$PercentageTermDetails
    on Query$GetAdvance$advance$term$$PercentageTermDetails {
  CopyWith$Query$GetAdvance$advance$term$$PercentageTermDetails<
    Query$GetAdvance$advance$term$$PercentageTermDetails
  >
  get copyWith => CopyWith$Query$GetAdvance$advance$term$$PercentageTermDetails(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetAdvance$advance$term$$PercentageTermDetails<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$term$$PercentageTermDetails(
    Query$GetAdvance$advance$term$$PercentageTermDetails instance,
    TRes Function(Query$GetAdvance$advance$term$$PercentageTermDetails) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$term$$PercentageTermDetails;

  factory CopyWith$Query$GetAdvance$advance$term$$PercentageTermDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$term$$PercentageTermDetails;

  TRes call({
    double? amount,
    double? percentage,
    Enum$AdvanceTermType? termType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$term$$PercentageTermDetails<TRes>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PercentageTermDetails<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$term$$PercentageTermDetails(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$term$$PercentageTermDetails _instance;

  final TRes Function(Query$GetAdvance$advance$term$$PercentageTermDetails)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? percentage = _undefined,
    Object? termType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$term$$PercentageTermDetails(
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      percentage: percentage == _undefined || percentage == null
          ? _instance.percentage
          : (percentage as double),
      termType: termType == _undefined || termType == null
          ? _instance.termType
          : (termType as Enum$AdvanceTermType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$term$$PercentageTermDetails<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$term$$PercentageTermDetails<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$term$$PercentageTermDetails(
    this._res,
  );

  TRes _res;

  call({
    double? amount,
    double? percentage,
    Enum$AdvanceTermType? termType,
    String? $__typename,
  }) => _res;
}

class Query$GetAdvance$advance$arrangedByUser {
  Query$GetAdvance$advance$arrangedByUser({
    required this.allAccountAccess,
    required this.azureAdGroups,
    required this.azureUserId,
    required this.clientCredentials,
    required this.cmpCode,
    required this.codaUserCode,
    required this.companyAccess,
    required this.defaultDepot,
    this.defaultOrderBookTypeId,
    required this.defaultTerritory,
    required this.defaultTimeZoneId,
    required this.directReports,
    required this.emailAddress,
    required this.id,
    required this.name,
    required this.partyAccess,
    required this.permissions,
    required this.t2UserId,
    required this.username,
    required this.yardAccess,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetAdvance$advance$arrangedByUser.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$allAccountAccess = json['allAccountAccess'];
    final l$azureAdGroups = json['azureAdGroups'];
    final l$azureUserId = json['azureUserId'];
    final l$clientCredentials = json['clientCredentials'];
    final l$cmpCode = json['cmpCode'];
    final l$codaUserCode = json['codaUserCode'];
    final l$companyAccess = json['companyAccess'];
    final l$defaultDepot = json['defaultDepot'];
    final l$defaultOrderBookTypeId = json['defaultOrderBookTypeId'];
    final l$defaultTerritory = json['defaultTerritory'];
    final l$defaultTimeZoneId = json['defaultTimeZoneId'];
    final l$directReports = json['directReports'];
    final l$emailAddress = json['emailAddress'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$partyAccess = json['partyAccess'];
    final l$permissions = json['permissions'];
    final l$t2UserId = json['t2UserId'];
    final l$username = json['username'];
    final l$yardAccess = json['yardAccess'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$arrangedByUser(
      allAccountAccess: (l$allAccountAccess as bool),
      azureAdGroups: (l$azureAdGroups as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      azureUserId: (l$azureUserId as String),
      clientCredentials: (l$clientCredentials as bool),
      cmpCode: (l$cmpCode as String),
      codaUserCode: (l$codaUserCode as String),
      companyAccess: (l$companyAccess as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      defaultDepot: (l$defaultDepot as String),
      defaultOrderBookTypeId: (l$defaultOrderBookTypeId as int?),
      defaultTerritory: (l$defaultTerritory as String),
      defaultTimeZoneId: (l$defaultTimeZoneId as String),
      directReports: (l$directReports as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      emailAddress: (l$emailAddress as String),
      id: (l$id as String),
      name: (l$name as String),
      partyAccess: (l$partyAccess as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      permissions: (l$permissions as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      t2UserId: (l$t2UserId as int),
      username: (l$username as String),
      yardAccess: (l$yardAccess as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool allAccountAccess;

  final List<String> azureAdGroups;

  final String azureUserId;

  final bool clientCredentials;

  final String cmpCode;

  final String codaUserCode;

  final List<String> companyAccess;

  final String defaultDepot;

  final int? defaultOrderBookTypeId;

  final String defaultTerritory;

  final String defaultTimeZoneId;

  final List<String> directReports;

  final String emailAddress;

  final String id;

  final String name;

  final List<String> partyAccess;

  final List<String> permissions;

  final int t2UserId;

  final String username;

  final List<String> yardAccess;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allAccountAccess = allAccountAccess;
    _resultData['allAccountAccess'] = l$allAccountAccess;
    final l$azureAdGroups = azureAdGroups;
    _resultData['azureAdGroups'] = l$azureAdGroups.map((e) => e).toList();
    final l$azureUserId = azureUserId;
    _resultData['azureUserId'] = l$azureUserId;
    final l$clientCredentials = clientCredentials;
    _resultData['clientCredentials'] = l$clientCredentials;
    final l$cmpCode = cmpCode;
    _resultData['cmpCode'] = l$cmpCode;
    final l$codaUserCode = codaUserCode;
    _resultData['codaUserCode'] = l$codaUserCode;
    final l$companyAccess = companyAccess;
    _resultData['companyAccess'] = l$companyAccess.map((e) => e).toList();
    final l$defaultDepot = defaultDepot;
    _resultData['defaultDepot'] = l$defaultDepot;
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    _resultData['defaultOrderBookTypeId'] = l$defaultOrderBookTypeId;
    final l$defaultTerritory = defaultTerritory;
    _resultData['defaultTerritory'] = l$defaultTerritory;
    final l$defaultTimeZoneId = defaultTimeZoneId;
    _resultData['defaultTimeZoneId'] = l$defaultTimeZoneId;
    final l$directReports = directReports;
    _resultData['directReports'] = l$directReports.map((e) => e).toList();
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$partyAccess = partyAccess;
    _resultData['partyAccess'] = l$partyAccess.map((e) => e).toList();
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e).toList();
    final l$t2UserId = t2UserId;
    _resultData['t2UserId'] = l$t2UserId;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$yardAccess = yardAccess;
    _resultData['yardAccess'] = l$yardAccess.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allAccountAccess = allAccountAccess;
    final l$azureAdGroups = azureAdGroups;
    final l$azureUserId = azureUserId;
    final l$clientCredentials = clientCredentials;
    final l$cmpCode = cmpCode;
    final l$codaUserCode = codaUserCode;
    final l$companyAccess = companyAccess;
    final l$defaultDepot = defaultDepot;
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    final l$defaultTerritory = defaultTerritory;
    final l$defaultTimeZoneId = defaultTimeZoneId;
    final l$directReports = directReports;
    final l$emailAddress = emailAddress;
    final l$id = id;
    final l$name = name;
    final l$partyAccess = partyAccess;
    final l$permissions = permissions;
    final l$t2UserId = t2UserId;
    final l$username = username;
    final l$yardAccess = yardAccess;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$allAccountAccess,
      Object.hashAll(l$azureAdGroups.map((v) => v)),
      l$azureUserId,
      l$clientCredentials,
      l$cmpCode,
      l$codaUserCode,
      Object.hashAll(l$companyAccess.map((v) => v)),
      l$defaultDepot,
      l$defaultOrderBookTypeId,
      l$defaultTerritory,
      l$defaultTimeZoneId,
      Object.hashAll(l$directReports.map((v) => v)),
      l$emailAddress,
      l$id,
      l$name,
      Object.hashAll(l$partyAccess.map((v) => v)),
      Object.hashAll(l$permissions.map((v) => v)),
      l$t2UserId,
      l$username,
      Object.hashAll(l$yardAccess.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$arrangedByUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allAccountAccess = allAccountAccess;
    final lOther$allAccountAccess = other.allAccountAccess;
    if (l$allAccountAccess != lOther$allAccountAccess) {
      return false;
    }
    final l$azureAdGroups = azureAdGroups;
    final lOther$azureAdGroups = other.azureAdGroups;
    if (l$azureAdGroups.length != lOther$azureAdGroups.length) {
      return false;
    }
    for (int i = 0; i < l$azureAdGroups.length; i++) {
      final l$azureAdGroups$entry = l$azureAdGroups[i];
      final lOther$azureAdGroups$entry = lOther$azureAdGroups[i];
      if (l$azureAdGroups$entry != lOther$azureAdGroups$entry) {
        return false;
      }
    }
    final l$azureUserId = azureUserId;
    final lOther$azureUserId = other.azureUserId;
    if (l$azureUserId != lOther$azureUserId) {
      return false;
    }
    final l$clientCredentials = clientCredentials;
    final lOther$clientCredentials = other.clientCredentials;
    if (l$clientCredentials != lOther$clientCredentials) {
      return false;
    }
    final l$cmpCode = cmpCode;
    final lOther$cmpCode = other.cmpCode;
    if (l$cmpCode != lOther$cmpCode) {
      return false;
    }
    final l$codaUserCode = codaUserCode;
    final lOther$codaUserCode = other.codaUserCode;
    if (l$codaUserCode != lOther$codaUserCode) {
      return false;
    }
    final l$companyAccess = companyAccess;
    final lOther$companyAccess = other.companyAccess;
    if (l$companyAccess.length != lOther$companyAccess.length) {
      return false;
    }
    for (int i = 0; i < l$companyAccess.length; i++) {
      final l$companyAccess$entry = l$companyAccess[i];
      final lOther$companyAccess$entry = lOther$companyAccess[i];
      if (l$companyAccess$entry != lOther$companyAccess$entry) {
        return false;
      }
    }
    final l$defaultDepot = defaultDepot;
    final lOther$defaultDepot = other.defaultDepot;
    if (l$defaultDepot != lOther$defaultDepot) {
      return false;
    }
    final l$defaultOrderBookTypeId = defaultOrderBookTypeId;
    final lOther$defaultOrderBookTypeId = other.defaultOrderBookTypeId;
    if (l$defaultOrderBookTypeId != lOther$defaultOrderBookTypeId) {
      return false;
    }
    final l$defaultTerritory = defaultTerritory;
    final lOther$defaultTerritory = other.defaultTerritory;
    if (l$defaultTerritory != lOther$defaultTerritory) {
      return false;
    }
    final l$defaultTimeZoneId = defaultTimeZoneId;
    final lOther$defaultTimeZoneId = other.defaultTimeZoneId;
    if (l$defaultTimeZoneId != lOther$defaultTimeZoneId) {
      return false;
    }
    final l$directReports = directReports;
    final lOther$directReports = other.directReports;
    if (l$directReports.length != lOther$directReports.length) {
      return false;
    }
    for (int i = 0; i < l$directReports.length; i++) {
      final l$directReports$entry = l$directReports[i];
      final lOther$directReports$entry = lOther$directReports[i];
      if (l$directReports$entry != lOther$directReports$entry) {
        return false;
      }
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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
    final l$partyAccess = partyAccess;
    final lOther$partyAccess = other.partyAccess;
    if (l$partyAccess.length != lOther$partyAccess.length) {
      return false;
    }
    for (int i = 0; i < l$partyAccess.length; i++) {
      final l$partyAccess$entry = l$partyAccess[i];
      final lOther$partyAccess$entry = lOther$partyAccess[i];
      if (l$partyAccess$entry != lOther$partyAccess$entry) {
        return false;
      }
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
    final l$t2UserId = t2UserId;
    final lOther$t2UserId = other.t2UserId;
    if (l$t2UserId != lOther$t2UserId) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$yardAccess = yardAccess;
    final lOther$yardAccess = other.yardAccess;
    if (l$yardAccess.length != lOther$yardAccess.length) {
      return false;
    }
    for (int i = 0; i < l$yardAccess.length; i++) {
      final l$yardAccess$entry = l$yardAccess[i];
      final lOther$yardAccess$entry = lOther$yardAccess[i];
      if (l$yardAccess$entry != lOther$yardAccess$entry) {
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

extension UtilityExtension$Query$GetAdvance$advance$arrangedByUser
    on Query$GetAdvance$advance$arrangedByUser {
  CopyWith$Query$GetAdvance$advance$arrangedByUser<
    Query$GetAdvance$advance$arrangedByUser
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$arrangedByUser(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance$advance$arrangedByUser<TRes> {
  factory CopyWith$Query$GetAdvance$advance$arrangedByUser(
    Query$GetAdvance$advance$arrangedByUser instance,
    TRes Function(Query$GetAdvance$advance$arrangedByUser) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$arrangedByUser;

  factory CopyWith$Query$GetAdvance$advance$arrangedByUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdvance$advance$arrangedByUser;

  TRes call({
    bool? allAccountAccess,
    List<String>? azureAdGroups,
    String? azureUserId,
    bool? clientCredentials,
    String? cmpCode,
    String? codaUserCode,
    List<String>? companyAccess,
    String? defaultDepot,
    int? defaultOrderBookTypeId,
    String? defaultTerritory,
    String? defaultTimeZoneId,
    List<String>? directReports,
    String? emailAddress,
    String? id,
    String? name,
    List<String>? partyAccess,
    List<String>? permissions,
    int? t2UserId,
    String? username,
    List<String>? yardAccess,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$arrangedByUser<TRes>
    implements CopyWith$Query$GetAdvance$advance$arrangedByUser<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$arrangedByUser(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$arrangedByUser _instance;

  final TRes Function(Query$GetAdvance$advance$arrangedByUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allAccountAccess = _undefined,
    Object? azureAdGroups = _undefined,
    Object? azureUserId = _undefined,
    Object? clientCredentials = _undefined,
    Object? cmpCode = _undefined,
    Object? codaUserCode = _undefined,
    Object? companyAccess = _undefined,
    Object? defaultDepot = _undefined,
    Object? defaultOrderBookTypeId = _undefined,
    Object? defaultTerritory = _undefined,
    Object? defaultTimeZoneId = _undefined,
    Object? directReports = _undefined,
    Object? emailAddress = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? partyAccess = _undefined,
    Object? permissions = _undefined,
    Object? t2UserId = _undefined,
    Object? username = _undefined,
    Object? yardAccess = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$arrangedByUser(
      allAccountAccess:
          allAccountAccess == _undefined || allAccountAccess == null
          ? _instance.allAccountAccess
          : (allAccountAccess as bool),
      azureAdGroups: azureAdGroups == _undefined || azureAdGroups == null
          ? _instance.azureAdGroups
          : (azureAdGroups as List<String>),
      azureUserId: azureUserId == _undefined || azureUserId == null
          ? _instance.azureUserId
          : (azureUserId as String),
      clientCredentials:
          clientCredentials == _undefined || clientCredentials == null
          ? _instance.clientCredentials
          : (clientCredentials as bool),
      cmpCode: cmpCode == _undefined || cmpCode == null
          ? _instance.cmpCode
          : (cmpCode as String),
      codaUserCode: codaUserCode == _undefined || codaUserCode == null
          ? _instance.codaUserCode
          : (codaUserCode as String),
      companyAccess: companyAccess == _undefined || companyAccess == null
          ? _instance.companyAccess
          : (companyAccess as List<String>),
      defaultDepot: defaultDepot == _undefined || defaultDepot == null
          ? _instance.defaultDepot
          : (defaultDepot as String),
      defaultOrderBookTypeId: defaultOrderBookTypeId == _undefined
          ? _instance.defaultOrderBookTypeId
          : (defaultOrderBookTypeId as int?),
      defaultTerritory:
          defaultTerritory == _undefined || defaultTerritory == null
          ? _instance.defaultTerritory
          : (defaultTerritory as String),
      defaultTimeZoneId:
          defaultTimeZoneId == _undefined || defaultTimeZoneId == null
          ? _instance.defaultTimeZoneId
          : (defaultTimeZoneId as String),
      directReports: directReports == _undefined || directReports == null
          ? _instance.directReports
          : (directReports as List<String>),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      partyAccess: partyAccess == _undefined || partyAccess == null
          ? _instance.partyAccess
          : (partyAccess as List<String>),
      permissions: permissions == _undefined || permissions == null
          ? _instance.permissions
          : (permissions as List<String>),
      t2UserId: t2UserId == _undefined || t2UserId == null
          ? _instance.t2UserId
          : (t2UserId as int),
      username: username == _undefined || username == null
          ? _instance.username
          : (username as String),
      yardAccess: yardAccess == _undefined || yardAccess == null
          ? _instance.yardAccess
          : (yardAccess as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$arrangedByUser<TRes>
    implements CopyWith$Query$GetAdvance$advance$arrangedByUser<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$arrangedByUser(this._res);

  TRes _res;

  call({
    bool? allAccountAccess,
    List<String>? azureAdGroups,
    String? azureUserId,
    bool? clientCredentials,
    String? cmpCode,
    String? codaUserCode,
    List<String>? companyAccess,
    String? defaultDepot,
    int? defaultOrderBookTypeId,
    String? defaultTerritory,
    String? defaultTimeZoneId,
    List<String>? directReports,
    String? emailAddress,
    String? id,
    String? name,
    List<String>? partyAccess,
    List<String>? permissions,
    int? t2UserId,
    String? username,
    List<String>? yardAccess,
    String? $__typename,
  }) => _res;
}

class Query$GetAdvance$advance$comments {
  Query$GetAdvance$advance$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetAdvance$advance$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$comments(
      content: (l$content as String),
      created: Query$GetAdvance$advance$comments$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetAdvance$advance$comments$created created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$comments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
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

extension UtilityExtension$Query$GetAdvance$advance$comments
    on Query$GetAdvance$advance$comments {
  CopyWith$Query$GetAdvance$advance$comments<Query$GetAdvance$advance$comments>
  get copyWith => CopyWith$Query$GetAdvance$advance$comments(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance$advance$comments<TRes> {
  factory CopyWith$Query$GetAdvance$advance$comments(
    Query$GetAdvance$advance$comments instance,
    TRes Function(Query$GetAdvance$advance$comments) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$comments;

  factory CopyWith$Query$GetAdvance$advance$comments.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdvance$advance$comments;

  TRes call({
    String? content,
    Query$GetAdvance$advance$comments$created? created,
    String? $__typename,
  });
  CopyWith$Query$GetAdvance$advance$comments$created<TRes> get created;
}

class _CopyWithImpl$Query$GetAdvance$advance$comments<TRes>
    implements CopyWith$Query$GetAdvance$advance$comments<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$comments(this._instance, this._then);

  final Query$GetAdvance$advance$comments _instance;

  final TRes Function(Query$GetAdvance$advance$comments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$GetAdvance$advance$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAdvance$advance$comments$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetAdvance$advance$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAdvance$advance$comments<TRes>
    implements CopyWith$Query$GetAdvance$advance$comments<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$comments(this._res);

  TRes _res;

  call({
    String? content,
    Query$GetAdvance$advance$comments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAdvance$advance$comments$created<TRes> get created =>
      CopyWith$Query$GetAdvance$advance$comments$created.stub(_res);
}

class Query$GetAdvance$advance$comments$created {
  Query$GetAdvance$advance$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetAdvance$advance$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$comments$created(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userInfoId, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$comments$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Query$GetAdvance$advance$comments$created
    on Query$GetAdvance$advance$comments$created {
  CopyWith$Query$GetAdvance$advance$comments$created<
    Query$GetAdvance$advance$comments$created
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$comments$created(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance$advance$comments$created<TRes> {
  factory CopyWith$Query$GetAdvance$advance$comments$created(
    Query$GetAdvance$advance$comments$created instance,
    TRes Function(Query$GetAdvance$advance$comments$created) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$comments$created;

  factory CopyWith$Query$GetAdvance$advance$comments$created.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdvance$advance$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$comments$created<TRes>
    implements CopyWith$Query$GetAdvance$advance$comments$created<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$comments$created(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$comments$created _instance;

  final TRes Function(Query$GetAdvance$advance$comments$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$comments$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$comments$created<TRes>
    implements CopyWith$Query$GetAdvance$advance$comments$created<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$comments$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$GetAdvance$advance$paymentInfo {
  Query$GetAdvance$advance$paymentInfo({
    required this.outstandingBalance,
    required this.transactionDetails,
    this.$__typename = 'AdvancePaymentInfo',
  });

  factory Query$GetAdvance$advance$paymentInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$outstandingBalance = json['outstandingBalance'];
    final l$transactionDetails = json['transactionDetails'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$paymentInfo(
      outstandingBalance: (l$outstandingBalance as num).toDouble(),
      transactionDetails: (l$transactionDetails as List<dynamic>)
          .map(
            (e) =>
                Query$GetAdvance$advance$paymentInfo$transactionDetails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double outstandingBalance;

  final List<Query$GetAdvance$advance$paymentInfo$transactionDetails>
  transactionDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$outstandingBalance = outstandingBalance;
    _resultData['outstandingBalance'] = l$outstandingBalance;
    final l$transactionDetails = transactionDetails;
    _resultData['transactionDetails'] = l$transactionDetails
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$outstandingBalance = outstandingBalance;
    final l$transactionDetails = transactionDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$outstandingBalance,
      Object.hashAll(l$transactionDetails.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$paymentInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$outstandingBalance = outstandingBalance;
    final lOther$outstandingBalance = other.outstandingBalance;
    if (l$outstandingBalance != lOther$outstandingBalance) {
      return false;
    }
    final l$transactionDetails = transactionDetails;
    final lOther$transactionDetails = other.transactionDetails;
    if (l$transactionDetails.length != lOther$transactionDetails.length) {
      return false;
    }
    for (int i = 0; i < l$transactionDetails.length; i++) {
      final l$transactionDetails$entry = l$transactionDetails[i];
      final lOther$transactionDetails$entry = lOther$transactionDetails[i];
      if (l$transactionDetails$entry != lOther$transactionDetails$entry) {
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

extension UtilityExtension$Query$GetAdvance$advance$paymentInfo
    on Query$GetAdvance$advance$paymentInfo {
  CopyWith$Query$GetAdvance$advance$paymentInfo<
    Query$GetAdvance$advance$paymentInfo
  >
  get copyWith => CopyWith$Query$GetAdvance$advance$paymentInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetAdvance$advance$paymentInfo<TRes> {
  factory CopyWith$Query$GetAdvance$advance$paymentInfo(
    Query$GetAdvance$advance$paymentInfo instance,
    TRes Function(Query$GetAdvance$advance$paymentInfo) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$paymentInfo;

  factory CopyWith$Query$GetAdvance$advance$paymentInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdvance$advance$paymentInfo;

  TRes call({
    double? outstandingBalance,
    List<Query$GetAdvance$advance$paymentInfo$transactionDetails>?
    transactionDetails,
    String? $__typename,
  });
  TRes transactionDetails(
    Iterable<Query$GetAdvance$advance$paymentInfo$transactionDetails> Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$paymentInfo$transactionDetails<
          Query$GetAdvance$advance$paymentInfo$transactionDetails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAdvance$advance$paymentInfo<TRes>
    implements CopyWith$Query$GetAdvance$advance$paymentInfo<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$paymentInfo(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$paymentInfo _instance;

  final TRes Function(Query$GetAdvance$advance$paymentInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? outstandingBalance = _undefined,
    Object? transactionDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$paymentInfo(
      outstandingBalance:
          outstandingBalance == _undefined || outstandingBalance == null
          ? _instance.outstandingBalance
          : (outstandingBalance as double),
      transactionDetails:
          transactionDetails == _undefined || transactionDetails == null
          ? _instance.transactionDetails
          : (transactionDetails
                as List<
                  Query$GetAdvance$advance$paymentInfo$transactionDetails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes transactionDetails(
    Iterable<Query$GetAdvance$advance$paymentInfo$transactionDetails> Function(
      Iterable<
        CopyWith$Query$GetAdvance$advance$paymentInfo$transactionDetails<
          Query$GetAdvance$advance$paymentInfo$transactionDetails
        >
      >,
    )
    _fn,
  ) => call(
    transactionDetails: _fn(
      _instance.transactionDetails.map(
        (e) => CopyWith$Query$GetAdvance$advance$paymentInfo$transactionDetails(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$paymentInfo<TRes>
    implements CopyWith$Query$GetAdvance$advance$paymentInfo<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$paymentInfo(this._res);

  TRes _res;

  call({
    double? outstandingBalance,
    List<Query$GetAdvance$advance$paymentInfo$transactionDetails>?
    transactionDetails,
    String? $__typename,
  }) => _res;

  transactionDetails(_fn) => _res;
}

class Query$GetAdvance$advance$paymentInfo$transactionDetails {
  Query$GetAdvance$advance$paymentInfo$transactionDetails({
    required this.at,
    required this.amount,
    required this.paymentRecordId,
    required this.transactionType,
    this.$__typename = 'TransactionDetail',
  });

  factory Query$GetAdvance$advance$paymentInfo$transactionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$amount = json['amount'];
    final l$paymentRecordId = json['paymentRecordId'];
    final l$transactionType = json['transactionType'];
    final l$$__typename = json['__typename'];
    return Query$GetAdvance$advance$paymentInfo$transactionDetails(
      at: DateTime.parse((l$at as String)),
      amount: (l$amount as num).toDouble(),
      paymentRecordId: (l$paymentRecordId as String),
      transactionType: fromJson$Enum$TransactionType(
        (l$transactionType as String),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final double amount;

  final String paymentRecordId;

  final Enum$TransactionType transactionType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$paymentRecordId = paymentRecordId;
    _resultData['paymentRecordId'] = l$paymentRecordId;
    final l$transactionType = transactionType;
    _resultData['transactionType'] = toJson$Enum$TransactionType(
      l$transactionType,
    );
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$amount = amount;
    final l$paymentRecordId = paymentRecordId;
    final l$transactionType = transactionType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$at,
      l$amount,
      l$paymentRecordId,
      l$transactionType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdvance$advance$paymentInfo$transactionDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$paymentRecordId = paymentRecordId;
    final lOther$paymentRecordId = other.paymentRecordId;
    if (l$paymentRecordId != lOther$paymentRecordId) {
      return false;
    }
    final l$transactionType = transactionType;
    final lOther$transactionType = other.transactionType;
    if (l$transactionType != lOther$transactionType) {
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

extension UtilityExtension$Query$GetAdvance$advance$paymentInfo$transactionDetails
    on Query$GetAdvance$advance$paymentInfo$transactionDetails {
  CopyWith$Query$GetAdvance$advance$paymentInfo$transactionDetails<
    Query$GetAdvance$advance$paymentInfo$transactionDetails
  >
  get copyWith =>
      CopyWith$Query$GetAdvance$advance$paymentInfo$transactionDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdvance$advance$paymentInfo$transactionDetails<
  TRes
> {
  factory CopyWith$Query$GetAdvance$advance$paymentInfo$transactionDetails(
    Query$GetAdvance$advance$paymentInfo$transactionDetails instance,
    TRes Function(Query$GetAdvance$advance$paymentInfo$transactionDetails) then,
  ) = _CopyWithImpl$Query$GetAdvance$advance$paymentInfo$transactionDetails;

  factory CopyWith$Query$GetAdvance$advance$paymentInfo$transactionDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAdvance$advance$paymentInfo$transactionDetails;

  TRes call({
    DateTime? at,
    double? amount,
    String? paymentRecordId,
    Enum$TransactionType? transactionType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdvance$advance$paymentInfo$transactionDetails<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$paymentInfo$transactionDetails<TRes> {
  _CopyWithImpl$Query$GetAdvance$advance$paymentInfo$transactionDetails(
    this._instance,
    this._then,
  );

  final Query$GetAdvance$advance$paymentInfo$transactionDetails _instance;

  final TRes Function(Query$GetAdvance$advance$paymentInfo$transactionDetails)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? amount = _undefined,
    Object? paymentRecordId = _undefined,
    Object? transactionType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAdvance$advance$paymentInfo$transactionDetails(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      paymentRecordId: paymentRecordId == _undefined || paymentRecordId == null
          ? _instance.paymentRecordId
          : (paymentRecordId as String),
      transactionType: transactionType == _undefined || transactionType == null
          ? _instance.transactionType
          : (transactionType as Enum$TransactionType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAdvance$advance$paymentInfo$transactionDetails<
  TRes
>
    implements
        CopyWith$Query$GetAdvance$advance$paymentInfo$transactionDetails<TRes> {
  _CopyWithStubImpl$Query$GetAdvance$advance$paymentInfo$transactionDetails(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    double? amount,
    String? paymentRecordId,
    Enum$TransactionType? transactionType,
    String? $__typename,
  }) => _res;
}
