import '../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetTicketDetailsById {
  factory Variables$Query$GetTicketDetailsById({required String id}) =>
      Variables$Query$GetTicketDetailsById._({r'id': id});

  Variables$Query$GetTicketDetailsById._(this._$data);

  factory Variables$Query$GetTicketDetailsById.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetTicketDetailsById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetTicketDetailsById<
    Variables$Query$GetTicketDetailsById
  >
  get copyWith => CopyWith$Variables$Query$GetTicketDetailsById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTicketDetailsById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetTicketDetailsById<TRes> {
  factory CopyWith$Variables$Query$GetTicketDetailsById(
    Variables$Query$GetTicketDetailsById instance,
    TRes Function(Variables$Query$GetTicketDetailsById) then,
  ) = _CopyWithImpl$Variables$Query$GetTicketDetailsById;

  factory CopyWith$Variables$Query$GetTicketDetailsById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTicketDetailsById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetTicketDetailsById<TRes>
    implements CopyWith$Variables$Query$GetTicketDetailsById<TRes> {
  _CopyWithImpl$Variables$Query$GetTicketDetailsById(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTicketDetailsById _instance;

  final TRes Function(Variables$Query$GetTicketDetailsById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetTicketDetailsById._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetTicketDetailsById<TRes>
    implements CopyWith$Variables$Query$GetTicketDetailsById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTicketDetailsById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetTicketDetailsById {
  Query$GetTicketDetailsById({
    required this.ticket,
    this.$__typename = 'Query',
  });

  factory Query$GetTicketDetailsById.fromJson(Map<String, dynamic> json) {
    final l$ticket = json['ticket'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById(
      ticket: Query$GetTicketDetailsById$ticket.fromJson(
        (l$ticket as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetailsById$ticket ticket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ticket = ticket;
    _resultData['ticket'] = l$ticket.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ticket = ticket;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ticket, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticket = ticket;
    final lOther$ticket = other.ticket;
    if (l$ticket != lOther$ticket) {
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

extension UtilityExtension$Query$GetTicketDetailsById
    on Query$GetTicketDetailsById {
  CopyWith$Query$GetTicketDetailsById<Query$GetTicketDetailsById>
  get copyWith => CopyWith$Query$GetTicketDetailsById(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById<TRes> {
  factory CopyWith$Query$GetTicketDetailsById(
    Query$GetTicketDetailsById instance,
    TRes Function(Query$GetTicketDetailsById) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById;

  factory CopyWith$Query$GetTicketDetailsById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById;

  TRes call({Query$GetTicketDetailsById$ticket? ticket, String? $__typename});
  CopyWith$Query$GetTicketDetailsById$ticket<TRes> get ticket;
}

class _CopyWithImpl$Query$GetTicketDetailsById<TRes>
    implements CopyWith$Query$GetTicketDetailsById<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById(this._instance, this._then);

  final Query$GetTicketDetailsById _instance;

  final TRes Function(Query$GetTicketDetailsById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ticket = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetTicketDetailsById(
          ticket: ticket == _undefined || ticket == null
              ? _instance.ticket
              : (ticket as Query$GetTicketDetailsById$ticket),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetTicketDetailsById$ticket<TRes> get ticket {
    final local$ticket = _instance.ticket;
    return CopyWith$Query$GetTicketDetailsById$ticket(
      local$ticket,
      (e) => call(ticket: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById<TRes>
    implements CopyWith$Query$GetTicketDetailsById<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById(this._res);

  TRes _res;

  call({Query$GetTicketDetailsById$ticket? ticket, String? $__typename}) =>
      _res;

  CopyWith$Query$GetTicketDetailsById$ticket<TRes> get ticket =>
      CopyWith$Query$GetTicketDetailsById$ticket.stub(_res);
}

const documentNodeQueryGetTicketDetailsById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetTicketDetailsById'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'ticket'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'account'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'accountNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'details'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
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
                                          name: NameNode(
                                            value: 'proofOfAddress',
                                          ),
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
                                            value: 'proofOfIdentification',
                                          ),
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
                                          name: NameNode(value: 'signature'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'sasUrl'),
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
                        name: NameNode(value: 'locationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'locationName'),
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
                  name: NameNode(value: 'containerNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'contract'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'internalReference'),
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
                  name: NameNode(value: 'costs'),
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
                        name: NameNode(value: 'costParty'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'partyAccountNo'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'partyName'),
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
                        name: NameNode(value: 'rate'),
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
                              name: NameNode(value: 'isRate'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'uom'),
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
                        name: NameNode(value: 'costStatus'),
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
                        name: NameNode(value: 'costType'),
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
                              name: NameNode(value: 'type'),
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
                  name: NameNode(value: 'currency'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'date'),
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
                  name: NameNode(value: 'deletionDetails'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
                  name: NameNode(value: 'haulier'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'accountNumber'),
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
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'inspectionMedia'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'sasUrl'),
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
                  name: NameNode(value: 'internalComments'),
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
                  name: NameNode(value: 'lines'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'binNo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'consignmentNoteNo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'costs'),
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
                              name: NameNode(value: 'costParty'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'partyAccountNo'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'partyName'),
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
                              name: NameNode(value: 'rate'),
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
                                    name: NameNode(value: 'isRate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'uom'),
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
                              name: NameNode(value: 'costStatus'),
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
                              name: NameNode(value: 'costType'),
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
                                    name: NameNode(value: 'type'),
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
                        name: NameNode(value: 'deductions'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mediaAssets'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sasUrl'),
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
                              name: NameNode(value: 'typeId'),
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
                              name: NameNode(value: 'weight'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'uom'),
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
                                    name: NameNode(value: 'id'),
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
                              name: NameNode(value: 'weightSerial'),
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
                        name: NameNode(value: 'grossWeight'),
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
                              name: NameNode(value: 'value'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'uom'),
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
                        name: NameNode(value: 'grossWeightDateTime'),
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
                        name: NameNode(value: 'inspectionDetails'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'inspectionMedia'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'sasUrl'),
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
                        name: NameNode(value: 'internalComments'),
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
                        name: NameNode(value: 'isGrossFromPreviousWeight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lineNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'locationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'location'),
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
                              name: NameNode(value: 'description'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'product'),
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
                        name: NameNode(value: 'manualGrossWeightReason'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mediaAssets'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sasUrl'),
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
                        name: NameNode(value: 'modified'),
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
                        name: NameNode(value: 'netWeight'),
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
                              name: NameNode(value: 'value'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'uom'),
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
                        name: NameNode(value: 'packingListReference'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'partyWasteStreamNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'priceOrigin'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'rate'),
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
                              name: NameNode(value: 'value'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'uom'),
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
                        name: NameNode(value: 'payableBeforeCostAndDeduction'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'payableAfterCostAndDeduction'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sealNo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stockAsProduct'),
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
                        name: NameNode(value: 'weightSerial'),
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
                  name: NameNode(value: 'modified'),
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
                  name: NameNode(value: 'outwardTicketNo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'serviceType'),
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
                  name: NameNode(value: 'ticketNumber'),
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
                  name: NameNode(value: 'transportDetails'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'deliveryNote'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'jobNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transportType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'vehicleReg'),
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
                  name: NameNode(value: 'weightValidation'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'internalNet'),
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
                              name: NameNode(value: 'uom'),
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
  ],
);

class Query$GetTicketDetailsById$ticket {
  Query$GetTicketDetailsById$ticket({
    required this.account,
    this.containerNumber,
    this.contract,
    required this.comments,
    required this.costs,
    required this.created,
    this.currency,
    required this.date,
    required this.deductions,
    this.deletionDetails,
    this.haulier,
    required this.id,
    required this.inspectionMedia,
    required this.internalComments,
    required this.lines,
    required this.mediaAssets,
    required this.modified,
    this.outwardTicketNo,
    required this.serviceType,
    required this.ticketCategory,
    required this.ticketNumber,
    required this.ticketStatus,
    required this.ticketType,
    required this.transportDetails,
    required this.weightValidation,
    required this.yardCode,
    this.$__typename = 'Ticket',
  });

  factory Query$GetTicketDetailsById$ticket.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$account = json['account'];
    final l$containerNumber = json['containerNumber'];
    final l$contract = json['contract'];
    final l$comments = json['comments'];
    final l$costs = json['costs'];
    final l$created = json['created'];
    final l$currency = json['currency'];
    final l$date = json['date'];
    final l$deductions = json['deductions'];
    final l$deletionDetails = json['deletionDetails'];
    final l$haulier = json['haulier'];
    final l$id = json['id'];
    final l$inspectionMedia = json['inspectionMedia'];
    final l$internalComments = json['internalComments'];
    final l$lines = json['lines'];
    final l$mediaAssets = json['mediaAssets'];
    final l$modified = json['modified'];
    final l$outwardTicketNo = json['outwardTicketNo'];
    final l$serviceType = json['serviceType'];
    final l$ticketCategory = json['ticketCategory'];
    final l$ticketNumber = json['ticketNumber'];
    final l$ticketStatus = json['ticketStatus'];
    final l$ticketType = json['ticketType'];
    final l$transportDetails = json['transportDetails'];
    final l$weightValidation = json['weightValidation'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket(
      account: Query$GetTicketDetailsById$ticket$account.fromJson(
        (l$account as Map<String, dynamic>),
      ),
      containerNumber: (l$containerNumber as String?),
      contract: l$contract == null
          ? null
          : Query$GetTicketDetailsById$ticket$contract.fromJson(
              (l$contract as Map<String, dynamic>),
            ),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$comments.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      costs: (l$costs as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$costs.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      created: Query$GetTicketDetailsById$ticket$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      currency: (l$currency as String?),
      date: LocalDate.fromJson(l$date),
      deductions: (l$deductions as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$deductions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      deletionDetails: l$deletionDetails == null
          ? null
          : Query$GetTicketDetailsById$ticket$deletionDetails.fromJson(
              (l$deletionDetails as Map<String, dynamic>),
            ),
      haulier: l$haulier == null
          ? null
          : Query$GetTicketDetailsById$ticket$haulier.fromJson(
              (l$haulier as Map<String, dynamic>),
            ),
      id: (l$id as String),
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$inspectionMedia.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      internalComments: (l$internalComments as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$internalComments.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$lines.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$mediaAssets.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      modified: Query$GetTicketDetailsById$ticket$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      outwardTicketNo: (l$outwardTicketNo as String?),
      serviceType: fromJson$Enum$TicketServiceType((l$serviceType as String)),
      ticketCategory: fromJson$Enum$TicketCategory(
        (l$ticketCategory as String),
      ),
      ticketNumber: (l$ticketNumber as int),
      ticketStatus: fromJson$Enum$TicketStatus((l$ticketStatus as String)),
      ticketType: fromJson$Enum$TicketType((l$ticketType as String)),
      transportDetails:
          Query$GetTicketDetailsById$ticket$transportDetails.fromJson(
            (l$transportDetails as Map<String, dynamic>),
          ),
      weightValidation:
          Query$GetTicketDetailsById$ticket$weightValidation.fromJson(
            (l$weightValidation as Map<String, dynamic>),
          ),
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetailsById$ticket$account account;

  final String? containerNumber;

  final Query$GetTicketDetailsById$ticket$contract? contract;

  final List<Query$GetTicketDetailsById$ticket$comments> comments;

  final List<Query$GetTicketDetailsById$ticket$costs> costs;

  final Query$GetTicketDetailsById$ticket$created created;

  final String? currency;

  final DateTime date;

  final List<Query$GetTicketDetailsById$ticket$deductions> deductions;

  final Query$GetTicketDetailsById$ticket$deletionDetails? deletionDetails;

  final Query$GetTicketDetailsById$ticket$haulier? haulier;

  final String id;

  final List<Query$GetTicketDetailsById$ticket$inspectionMedia> inspectionMedia;

  final List<Query$GetTicketDetailsById$ticket$internalComments>
  internalComments;

  final List<Query$GetTicketDetailsById$ticket$lines> lines;

  final List<Query$GetTicketDetailsById$ticket$mediaAssets> mediaAssets;

  final Query$GetTicketDetailsById$ticket$modified modified;

  final String? outwardTicketNo;

  final Enum$TicketServiceType serviceType;

  final Enum$TicketCategory ticketCategory;

  final int ticketNumber;

  final Enum$TicketStatus ticketStatus;

  final Enum$TicketType ticketType;

  final Query$GetTicketDetailsById$ticket$transportDetails transportDetails;

  final Query$GetTicketDetailsById$ticket$weightValidation weightValidation;

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$containerNumber = containerNumber;
    _resultData['containerNumber'] = l$containerNumber;
    final l$contract = contract;
    _resultData['contract'] = l$contract?.toJson();
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    final l$costs = costs;
    _resultData['costs'] = l$costs.map((e) => e.toJson()).toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$date = date;
    _resultData['date'] = LocalDate.toJson(l$date);
    final l$deductions = deductions;
    _resultData['deductions'] = l$deductions.map((e) => e.toJson()).toList();
    final l$deletionDetails = deletionDetails;
    _resultData['deletionDetails'] = l$deletionDetails?.toJson();
    final l$haulier = haulier;
    _resultData['haulier'] = l$haulier?.toJson();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$internalComments = internalComments;
    _resultData['internalComments'] = l$internalComments
        .map((e) => e.toJson())
        .toList();
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$outwardTicketNo = outwardTicketNo;
    _resultData['outwardTicketNo'] = l$outwardTicketNo;
    final l$serviceType = serviceType;
    _resultData['serviceType'] = toJson$Enum$TicketServiceType(l$serviceType);
    final l$ticketCategory = ticketCategory;
    _resultData['ticketCategory'] = toJson$Enum$TicketCategory(
      l$ticketCategory,
    );
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$ticketStatus = ticketStatus;
    _resultData['ticketStatus'] = toJson$Enum$TicketStatus(l$ticketStatus);
    final l$ticketType = ticketType;
    _resultData['ticketType'] = toJson$Enum$TicketType(l$ticketType);
    final l$transportDetails = transportDetails;
    _resultData['transportDetails'] = l$transportDetails.toJson();
    final l$weightValidation = weightValidation;
    _resultData['weightValidation'] = l$weightValidation.toJson();
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$account = account;
    final l$containerNumber = containerNumber;
    final l$contract = contract;
    final l$comments = comments;
    final l$costs = costs;
    final l$created = created;
    final l$currency = currency;
    final l$date = date;
    final l$deductions = deductions;
    final l$deletionDetails = deletionDetails;
    final l$haulier = haulier;
    final l$id = id;
    final l$inspectionMedia = inspectionMedia;
    final l$internalComments = internalComments;
    final l$lines = lines;
    final l$mediaAssets = mediaAssets;
    final l$modified = modified;
    final l$outwardTicketNo = outwardTicketNo;
    final l$serviceType = serviceType;
    final l$ticketCategory = ticketCategory;
    final l$ticketNumber = ticketNumber;
    final l$ticketStatus = ticketStatus;
    final l$ticketType = ticketType;
    final l$transportDetails = transportDetails;
    final l$weightValidation = weightValidation;
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$account,
      l$containerNumber,
      l$contract,
      Object.hashAll(l$comments.map((v) => v)),
      Object.hashAll(l$costs.map((v) => v)),
      l$created,
      l$currency,
      l$date,
      Object.hashAll(l$deductions.map((v) => v)),
      l$deletionDetails,
      l$haulier,
      l$id,
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      Object.hashAll(l$internalComments.map((v) => v)),
      Object.hashAll(l$lines.map((v) => v)),
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$modified,
      l$outwardTicketNo,
      l$serviceType,
      l$ticketCategory,
      l$ticketNumber,
      l$ticketStatus,
      l$ticketType,
      l$transportDetails,
      l$weightValidation,
      l$yardCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$containerNumber = containerNumber;
    final lOther$containerNumber = other.containerNumber;
    if (l$containerNumber != lOther$containerNumber) {
      return false;
    }
    final l$contract = contract;
    final lOther$contract = other.contract;
    if (l$contract != lOther$contract) {
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
    final l$costs = costs;
    final lOther$costs = other.costs;
    if (l$costs.length != lOther$costs.length) {
      return false;
    }
    for (int i = 0; i < l$costs.length; i++) {
      final l$costs$entry = l$costs[i];
      final lOther$costs$entry = lOther$costs[i];
      if (l$costs$entry != lOther$costs$entry) {
        return false;
      }
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
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
    final l$deletionDetails = deletionDetails;
    final lOther$deletionDetails = other.deletionDetails;
    if (l$deletionDetails != lOther$deletionDetails) {
      return false;
    }
    final l$haulier = haulier;
    final lOther$haulier = other.haulier;
    if (l$haulier != lOther$haulier) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
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
    final l$internalComments = internalComments;
    final lOther$internalComments = other.internalComments;
    if (l$internalComments.length != lOther$internalComments.length) {
      return false;
    }
    for (int i = 0; i < l$internalComments.length; i++) {
      final l$internalComments$entry = l$internalComments[i];
      final lOther$internalComments$entry = lOther$internalComments[i];
      if (l$internalComments$entry != lOther$internalComments$entry) {
        return false;
      }
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
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$outwardTicketNo = outwardTicketNo;
    final lOther$outwardTicketNo = other.outwardTicketNo;
    if (l$outwardTicketNo != lOther$outwardTicketNo) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$ticketCategory = ticketCategory;
    final lOther$ticketCategory = other.ticketCategory;
    if (l$ticketCategory != lOther$ticketCategory) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
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
    final l$transportDetails = transportDetails;
    final lOther$transportDetails = other.transportDetails;
    if (l$transportDetails != lOther$transportDetails) {
      return false;
    }
    final l$weightValidation = weightValidation;
    final lOther$weightValidation = other.weightValidation;
    if (l$weightValidation != lOther$weightValidation) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket
    on Query$GetTicketDetailsById$ticket {
  CopyWith$Query$GetTicketDetailsById$ticket<Query$GetTicketDetailsById$ticket>
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket(
    Query$GetTicketDetailsById$ticket instance,
    TRes Function(Query$GetTicketDetailsById$ticket) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket;

  factory CopyWith$Query$GetTicketDetailsById$ticket.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket;

  TRes call({
    Query$GetTicketDetailsById$ticket$account? account,
    String? containerNumber,
    Query$GetTicketDetailsById$ticket$contract? contract,
    List<Query$GetTicketDetailsById$ticket$comments>? comments,
    List<Query$GetTicketDetailsById$ticket$costs>? costs,
    Query$GetTicketDetailsById$ticket$created? created,
    String? currency,
    DateTime? date,
    List<Query$GetTicketDetailsById$ticket$deductions>? deductions,
    Query$GetTicketDetailsById$ticket$deletionDetails? deletionDetails,
    Query$GetTicketDetailsById$ticket$haulier? haulier,
    String? id,
    List<Query$GetTicketDetailsById$ticket$inspectionMedia>? inspectionMedia,
    List<Query$GetTicketDetailsById$ticket$internalComments>? internalComments,
    List<Query$GetTicketDetailsById$ticket$lines>? lines,
    List<Query$GetTicketDetailsById$ticket$mediaAssets>? mediaAssets,
    Query$GetTicketDetailsById$ticket$modified? modified,
    String? outwardTicketNo,
    Enum$TicketServiceType? serviceType,
    Enum$TicketCategory? ticketCategory,
    int? ticketNumber,
    Enum$TicketStatus? ticketStatus,
    Enum$TicketType? ticketType,
    Query$GetTicketDetailsById$ticket$transportDetails? transportDetails,
    Query$GetTicketDetailsById$ticket$weightValidation? weightValidation,
    String? yardCode,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$account<TRes> get account;
  CopyWith$Query$GetTicketDetailsById$ticket$contract<TRes> get contract;
  TRes comments(
    Iterable<Query$GetTicketDetailsById$ticket$comments> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$comments<
          Query$GetTicketDetailsById$ticket$comments
        >
      >,
    )
    _fn,
  );
  TRes costs(
    Iterable<Query$GetTicketDetailsById$ticket$costs> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$costs<
          Query$GetTicketDetailsById$ticket$costs
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$created<TRes> get created;
  TRes deductions(
    Iterable<Query$GetTicketDetailsById$ticket$deductions> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$deductions<
          Query$GetTicketDetailsById$ticket$deductions
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails<TRes>
  get deletionDetails;
  CopyWith$Query$GetTicketDetailsById$ticket$haulier<TRes> get haulier;
  TRes inspectionMedia(
    Iterable<Query$GetTicketDetailsById$ticket$inspectionMedia> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$inspectionMedia<
          Query$GetTicketDetailsById$ticket$inspectionMedia
        >
      >,
    )
    _fn,
  );
  TRes internalComments(
    Iterable<Query$GetTicketDetailsById$ticket$internalComments> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$internalComments<
          Query$GetTicketDetailsById$ticket$internalComments
        >
      >,
    )
    _fn,
  );
  TRes lines(
    Iterable<Query$GetTicketDetailsById$ticket$lines> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines<
          Query$GetTicketDetailsById$ticket$lines
        >
      >,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<Query$GetTicketDetailsById$ticket$mediaAssets> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$mediaAssets<
          Query$GetTicketDetailsById$ticket$mediaAssets
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$modified<TRes> get modified;
  CopyWith$Query$GetTicketDetailsById$ticket$transportDetails<TRes>
  get transportDetails;
  CopyWith$Query$GetTicketDetailsById$ticket$weightValidation<TRes>
  get weightValidation;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket(this._instance, this._then);

  final Query$GetTicketDetailsById$ticket _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account = _undefined,
    Object? containerNumber = _undefined,
    Object? contract = _undefined,
    Object? comments = _undefined,
    Object? costs = _undefined,
    Object? created = _undefined,
    Object? currency = _undefined,
    Object? date = _undefined,
    Object? deductions = _undefined,
    Object? deletionDetails = _undefined,
    Object? haulier = _undefined,
    Object? id = _undefined,
    Object? inspectionMedia = _undefined,
    Object? internalComments = _undefined,
    Object? lines = _undefined,
    Object? mediaAssets = _undefined,
    Object? modified = _undefined,
    Object? outwardTicketNo = _undefined,
    Object? serviceType = _undefined,
    Object? ticketCategory = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketStatus = _undefined,
    Object? ticketType = _undefined,
    Object? transportDetails = _undefined,
    Object? weightValidation = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket(
      account: account == _undefined || account == null
          ? _instance.account
          : (account as Query$GetTicketDetailsById$ticket$account),
      containerNumber: containerNumber == _undefined
          ? _instance.containerNumber
          : (containerNumber as String?),
      contract: contract == _undefined
          ? _instance.contract
          : (contract as Query$GetTicketDetailsById$ticket$contract?),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments as List<Query$GetTicketDetailsById$ticket$comments>),
      costs: costs == _undefined || costs == null
          ? _instance.costs
          : (costs as List<Query$GetTicketDetailsById$ticket$costs>),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$GetTicketDetailsById$ticket$created),
      currency: currency == _undefined
          ? _instance.currency
          : (currency as String?),
      date: date == _undefined || date == null
          ? _instance.date
          : (date as DateTime),
      deductions: deductions == _undefined || deductions == null
          ? _instance.deductions
          : (deductions as List<Query$GetTicketDetailsById$ticket$deductions>),
      deletionDetails: deletionDetails == _undefined
          ? _instance.deletionDetails
          : (deletionDetails
                as Query$GetTicketDetailsById$ticket$deletionDetails?),
      haulier: haulier == _undefined
          ? _instance.haulier
          : (haulier as Query$GetTicketDetailsById$ticket$haulier?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<Query$GetTicketDetailsById$ticket$inspectionMedia>),
      internalComments:
          internalComments == _undefined || internalComments == null
          ? _instance.internalComments
          : (internalComments
                as List<Query$GetTicketDetailsById$ticket$internalComments>),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines as List<Query$GetTicketDetailsById$ticket$lines>),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<Query$GetTicketDetailsById$ticket$mediaAssets>),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Query$GetTicketDetailsById$ticket$modified),
      outwardTicketNo: outwardTicketNo == _undefined
          ? _instance.outwardTicketNo
          : (outwardTicketNo as String?),
      serviceType: serviceType == _undefined || serviceType == null
          ? _instance.serviceType
          : (serviceType as Enum$TicketServiceType),
      ticketCategory: ticketCategory == _undefined || ticketCategory == null
          ? _instance.ticketCategory
          : (ticketCategory as Enum$TicketCategory),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      ticketStatus: ticketStatus == _undefined || ticketStatus == null
          ? _instance.ticketStatus
          : (ticketStatus as Enum$TicketStatus),
      ticketType: ticketType == _undefined || ticketType == null
          ? _instance.ticketType
          : (ticketType as Enum$TicketType),
      transportDetails:
          transportDetails == _undefined || transportDetails == null
          ? _instance.transportDetails
          : (transportDetails
                as Query$GetTicketDetailsById$ticket$transportDetails),
      weightValidation:
          weightValidation == _undefined || weightValidation == null
          ? _instance.weightValidation
          : (weightValidation
                as Query$GetTicketDetailsById$ticket$weightValidation),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$GetTicketDetailsById$ticket$account(
      local$account,
      (e) => call(account: e),
    );
  }

  CopyWith$Query$GetTicketDetailsById$ticket$contract<TRes> get contract {
    final local$contract = _instance.contract;
    return local$contract == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$contract.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$contract(
            local$contract,
            (e) => call(contract: e),
          );
  }

  TRes comments(
    Iterable<Query$GetTicketDetailsById$ticket$comments> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$comments<
          Query$GetTicketDetailsById$ticket$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) => CopyWith$Query$GetTicketDetailsById$ticket$comments(e, (i) => i),
      ),
    ).toList(),
  );

  TRes costs(
    Iterable<Query$GetTicketDetailsById$ticket$costs> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$costs<
          Query$GetTicketDetailsById$ticket$costs
        >
      >,
    )
    _fn,
  ) => call(
    costs: _fn(
      _instance.costs.map(
        (e) => CopyWith$Query$GetTicketDetailsById$ticket$costs(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetailsById$ticket$created(
      local$created,
      (e) => call(created: e),
    );
  }

  TRes deductions(
    Iterable<Query$GetTicketDetailsById$ticket$deductions> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$deductions<
          Query$GetTicketDetailsById$ticket$deductions
        >
      >,
    )
    _fn,
  ) => call(
    deductions: _fn(
      _instance.deductions.map(
        (e) =>
            CopyWith$Query$GetTicketDetailsById$ticket$deductions(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails<TRes>
  get deletionDetails {
    final local$deletionDetails = _instance.deletionDetails;
    return local$deletionDetails == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails(
            local$deletionDetails,
            (e) => call(deletionDetails: e),
          );
  }

  CopyWith$Query$GetTicketDetailsById$ticket$haulier<TRes> get haulier {
    final local$haulier = _instance.haulier;
    return local$haulier == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$haulier.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$haulier(
            local$haulier,
            (e) => call(haulier: e),
          );
  }

  TRes inspectionMedia(
    Iterable<Query$GetTicketDetailsById$ticket$inspectionMedia> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$inspectionMedia<
          Query$GetTicketDetailsById$ticket$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) => CopyWith$Query$GetTicketDetailsById$ticket$inspectionMedia(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes internalComments(
    Iterable<Query$GetTicketDetailsById$ticket$internalComments> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$internalComments<
          Query$GetTicketDetailsById$ticket$internalComments
        >
      >,
    )
    _fn,
  ) => call(
    internalComments: _fn(
      _instance.internalComments.map(
        (e) => CopyWith$Query$GetTicketDetailsById$ticket$internalComments(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes lines(
    Iterable<Query$GetTicketDetailsById$ticket$lines> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines<
          Query$GetTicketDetailsById$ticket$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) => CopyWith$Query$GetTicketDetailsById$ticket$lines(e, (i) => i),
      ),
    ).toList(),
  );

  TRes mediaAssets(
    Iterable<Query$GetTicketDetailsById$ticket$mediaAssets> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$mediaAssets<
          Query$GetTicketDetailsById$ticket$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$GetTicketDetailsById$ticket$mediaAssets(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Query$GetTicketDetailsById$ticket$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }

  CopyWith$Query$GetTicketDetailsById$ticket$transportDetails<TRes>
  get transportDetails {
    final local$transportDetails = _instance.transportDetails;
    return CopyWith$Query$GetTicketDetailsById$ticket$transportDetails(
      local$transportDetails,
      (e) => call(transportDetails: e),
    );
  }

  CopyWith$Query$GetTicketDetailsById$ticket$weightValidation<TRes>
  get weightValidation {
    final local$weightValidation = _instance.weightValidation;
    return CopyWith$Query$GetTicketDetailsById$ticket$weightValidation(
      local$weightValidation,
      (e) => call(weightValidation: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket(this._res);

  TRes _res;

  call({
    Query$GetTicketDetailsById$ticket$account? account,
    String? containerNumber,
    Query$GetTicketDetailsById$ticket$contract? contract,
    List<Query$GetTicketDetailsById$ticket$comments>? comments,
    List<Query$GetTicketDetailsById$ticket$costs>? costs,
    Query$GetTicketDetailsById$ticket$created? created,
    String? currency,
    DateTime? date,
    List<Query$GetTicketDetailsById$ticket$deductions>? deductions,
    Query$GetTicketDetailsById$ticket$deletionDetails? deletionDetails,
    Query$GetTicketDetailsById$ticket$haulier? haulier,
    String? id,
    List<Query$GetTicketDetailsById$ticket$inspectionMedia>? inspectionMedia,
    List<Query$GetTicketDetailsById$ticket$internalComments>? internalComments,
    List<Query$GetTicketDetailsById$ticket$lines>? lines,
    List<Query$GetTicketDetailsById$ticket$mediaAssets>? mediaAssets,
    Query$GetTicketDetailsById$ticket$modified? modified,
    String? outwardTicketNo,
    Enum$TicketServiceType? serviceType,
    Enum$TicketCategory? ticketCategory,
    int? ticketNumber,
    Enum$TicketStatus? ticketStatus,
    Enum$TicketType? ticketType,
    Query$GetTicketDetailsById$ticket$transportDetails? transportDetails,
    Query$GetTicketDetailsById$ticket$weightValidation? weightValidation,
    String? yardCode,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$account<TRes> get account =>
      CopyWith$Query$GetTicketDetailsById$ticket$account.stub(_res);

  CopyWith$Query$GetTicketDetailsById$ticket$contract<TRes> get contract =>
      CopyWith$Query$GetTicketDetailsById$ticket$contract.stub(_res);

  comments(_fn) => _res;

  costs(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$created<TRes> get created =>
      CopyWith$Query$GetTicketDetailsById$ticket$created.stub(_res);

  deductions(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails<TRes>
  get deletionDetails =>
      CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails.stub(_res);

  CopyWith$Query$GetTicketDetailsById$ticket$haulier<TRes> get haulier =>
      CopyWith$Query$GetTicketDetailsById$ticket$haulier.stub(_res);

  inspectionMedia(_fn) => _res;

  internalComments(_fn) => _res;

  lines(_fn) => _res;

  mediaAssets(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$modified<TRes> get modified =>
      CopyWith$Query$GetTicketDetailsById$ticket$modified.stub(_res);

  CopyWith$Query$GetTicketDetailsById$ticket$transportDetails<TRes>
  get transportDetails =>
      CopyWith$Query$GetTicketDetailsById$ticket$transportDetails.stub(_res);

  CopyWith$Query$GetTicketDetailsById$ticket$weightValidation<TRes>
  get weightValidation =>
      CopyWith$Query$GetTicketDetailsById$ticket$weightValidation.stub(_res);
}

class Query$GetTicketDetailsById$ticket$account {
  Query$GetTicketDetailsById$ticket$account({
    required this.accountNumber,
    this.details,
    this.locationId,
    this.locationName,
    required this.name,
    this.$__typename = 'TicketAccount',
  });

  factory Query$GetTicketDetailsById$ticket$account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$details = json['details'];
    final l$locationId = json['locationId'];
    final l$locationName = json['locationName'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$account(
      accountNumber: (l$accountNumber as String),
      details: l$details == null
          ? null
          : Query$GetTicketDetailsById$ticket$account$details.fromJson(
              (l$details as Map<String, dynamic>),
            ),
      locationId: (l$locationId as String?),
      locationName: (l$locationName as String?),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountNumber;

  final Query$GetTicketDetailsById$ticket$account$details? details;

  final String? locationId;

  final String? locationName;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$details = details;
    _resultData['details'] = l$details?.toJson();
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$locationName = locationName;
    _resultData['locationName'] = l$locationName;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$details = details;
    final l$locationId = locationId;
    final l$locationName = locationName;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      l$details,
      l$locationId,
      l$locationName,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (l$locationName != lOther$locationName) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$account
    on Query$GetTicketDetailsById$ticket$account {
  CopyWith$Query$GetTicketDetailsById$ticket$account<
    Query$GetTicketDetailsById$ticket$account
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$account(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$account<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$account(
    Query$GetTicketDetailsById$ticket$account instance,
    TRes Function(Query$GetTicketDetailsById$ticket$account) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$account;

  factory CopyWith$Query$GetTicketDetailsById$ticket$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account;

  TRes call({
    String? accountNumber,
    Query$GetTicketDetailsById$ticket$account$details? details,
    String? locationId,
    String? locationName,
    String? name,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$account$details<TRes> get details;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$account<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$account<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$account(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$account _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? details = _undefined,
    Object? locationId = _undefined,
    Object? locationName = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$account(
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      details: details == _undefined
          ? _instance.details
          : (details as Query$GetTicketDetailsById$ticket$account$details?),
      locationId: locationId == _undefined
          ? _instance.locationId
          : (locationId as String?),
      locationName: locationName == _undefined
          ? _instance.locationName
          : (locationName as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$account$details<TRes> get details {
    final local$details = _instance.details;
    return local$details == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$account$details.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$account$details(
            local$details,
            (e) => call(details: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$account<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account(this._res);

  TRes _res;

  call({
    String? accountNumber,
    Query$GetTicketDetailsById$ticket$account$details? details,
    String? locationId,
    String? locationName,
    String? name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$account$details<TRes>
  get details =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details.stub(_res);
}

class Query$GetTicketDetailsById$ticket$account$details {
  Query$GetTicketDetailsById$ticket$account$details({
    required this.contacts,
    this.$__typename = 'Account',
  });

  factory Query$GetTicketDetailsById$ticket$account$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$contacts = json['contacts'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$account$details(
      contacts: (l$contacts as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDetailsById$ticket$account$details$contacts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetTicketDetailsById$ticket$account$details$contacts>
  contacts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contacts = contacts;
    _resultData['contacts'] = l$contacts.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contacts = contacts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$contacts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$account$details ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTicketDetailsById$ticket$account$details
    on Query$GetTicketDetailsById$ticket$account$details {
  CopyWith$Query$GetTicketDetailsById$ticket$account$details<
    Query$GetTicketDetailsById$ticket$account$details
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$account$details(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$account$details<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details(
    Query$GetTicketDetailsById$ticket$account$details instance,
    TRes Function(Query$GetTicketDetailsById$ticket$account$details) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details;

  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details;

  TRes call({
    List<Query$GetTicketDetailsById$ticket$account$details$contacts>? contacts,
    String? $__typename,
  });
  TRes contacts(
    Iterable<Query$GetTicketDetailsById$ticket$account$details$contacts>
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts<
          Query$GetTicketDetailsById$ticket$account$details$contacts
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$account$details _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$account$details) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contacts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$account$details(
      contacts: contacts == _undefined || contacts == null
          ? _instance.contacts
          : (contacts
                as List<
                  Query$GetTicketDetailsById$ticket$account$details$contacts
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes contacts(
    Iterable<Query$GetTicketDetailsById$ticket$account$details$contacts>
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts<
          Query$GetTicketDetailsById$ticket$account$details$contacts
        >
      >,
    )
    _fn,
  ) => call(
    contacts: _fn(
      _instance.contacts.map(
        (e) =>
            CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details(
    this._res,
  );

  TRes _res;

  call({
    List<Query$GetTicketDetailsById$ticket$account$details$contacts>? contacts,
    String? $__typename,
  }) => _res;

  contacts(_fn) => _res;
}

class Query$GetTicketDetailsById$ticket$account$details$contacts {
  Query$GetTicketDetailsById$ticket$account$details$contacts({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfGuidAndContact',
  });

  factory Query$GetTicketDetailsById$ticket$account$details$contacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$account$details$contacts(
      key: (l$key as String),
      value:
          Query$GetTicketDetailsById$ticket$account$details$contacts$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetTicketDetailsById$ticket$account$details$contacts$value value;

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
    if (other is! Query$GetTicketDetailsById$ticket$account$details$contacts ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$account$details$contacts
    on Query$GetTicketDetailsById$ticket$account$details$contacts {
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts<
    Query$GetTicketDetailsById$ticket$account$details$contacts
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts(
    Query$GetTicketDetailsById$ticket$account$details$contacts instance,
    TRes Function(Query$GetTicketDetailsById$ticket$account$details$contacts)
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts;

  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts;

  TRes call({
    String? key,
    Query$GetTicketDetailsById$ticket$account$details$contacts$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$account$details$contacts _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$account$details$contacts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$account$details$contacts(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetTicketDetailsById$ticket$account$details$contacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$GetTicketDetailsById$ticket$account$details$contacts$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$account$details$contacts$value {
  Query$GetTicketDetailsById$ticket$account$details$contacts$value({
    required this.proofOfAddress,
    required this.proofOfIdentification,
    this.signature,
    this.$__typename = 'Contact',
  });

  factory Query$GetTicketDetailsById$ticket$account$details$contacts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$proofOfAddress = json['proofOfAddress'];
    final l$proofOfIdentification = json['proofOfIdentification'];
    final l$signature = json['signature'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$account$details$contacts$value(
      proofOfAddress: (l$proofOfAddress as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      proofOfIdentification: (l$proofOfIdentification as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      signature: l$signature == null
          ? null
          : Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature.fromJson(
              (l$signature as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
  >
  proofOfAddress;

  final List<
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
  >
  proofOfIdentification;

  final Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature?
  signature;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proofOfAddress = proofOfAddress;
    final l$proofOfIdentification = proofOfIdentification;
    final l$signature = signature;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$proofOfAddress.map((v) => v)),
      Object.hashAll(l$proofOfIdentification.map((v) => v)),
      l$signature,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetailsById$ticket$account$details$contacts$value ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTicketDetailsById$ticket$account$details$contacts$value
    on Query$GetTicketDetailsById$ticket$account$details$contacts$value {
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value<
    Query$GetTicketDetailsById$ticket$account$details$contacts$value
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$account$details$contacts$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value;

  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value;

  TRes call({
    List<
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature?
    signature,
    String? $__typename,
  });
  TRes proofOfAddress(
    Iterable<
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress<
          Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  );
  TRes proofOfIdentification(
    Iterable<
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification<
          Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature<
    TRes
  >
  get signature;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$account$details$contacts$value
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proofOfAddress = _undefined,
    Object? proofOfIdentification = _undefined,
    Object? signature = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value(
      proofOfAddress: proofOfAddress == _undefined || proofOfAddress == null
          ? _instance.proofOfAddress
          : (proofOfAddress
                as List<
                  Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
                >),
      proofOfIdentification:
          proofOfIdentification == _undefined || proofOfIdentification == null
          ? _instance.proofOfIdentification
          : (proofOfIdentification
                as List<
                  Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
                >),
      signature: signature == _undefined
          ? _instance.signature
          : (signature
                as Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes proofOfAddress(
    Iterable<
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress<
          Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  ) => call(
    proofOfAddress: _fn(
      _instance.proofOfAddress.map(
        (e) =>
            CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes proofOfIdentification(
    Iterable<
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification<
          Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  ) => call(
    proofOfIdentification: _fn(
      _instance.proofOfIdentification.map(
        (e) =>
            CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature<
    TRes
  >
  get signature {
    final local$signature = _instance.signature;
    return local$signature == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature(
            local$signature,
            (e) => call(signature: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature?
    signature,
    String? $__typename,
  }) => _res;

  proofOfAddress(_fn) => _res;

  proofOfIdentification(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature<
    TRes
  >
  get signature =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress {
  Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress({
    required this.media,
    this.$__typename = 'Identification',
  });

  factory Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress(
      media:
          Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media
  media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([l$media, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
    on
        Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress {
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress<
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
    instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress;

  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress;

  TRes call({
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media?
    media,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress(
    this._res,
  );

  TRes _res;

  call({
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media?
    media,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media {
  Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media({
    this.sasUrl,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media(
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sasUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media
    on
        Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media {
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media<
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media
    instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media;

  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media;

  TRes call({String? sasUrl, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sasUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media(
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfAddress$media(
    this._res,
  );

  TRes _res;

  call({String? sasUrl, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification {
  Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification({
    required this.media,
    this.$__typename = 'Identification',
  });

  factory Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification(
      media:
          Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media
  media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([l$media, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
    on
        Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification {
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification<
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
    instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification;

  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification;

  TRes call({
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media?
    media,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification(
    this._res,
  );

  TRes _res;

  call({
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media?
    media,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media<
    TRes
  >
  get media =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media {
  Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media({
    this.sasUrl,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media(
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sasUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media
    on
        Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media {
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media<
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media
    instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media;

  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media;

  TRes call({String? sasUrl, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sasUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media(
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$proofOfIdentification$media(
    this._res,
  );

  TRes _res;

  call({String? sasUrl, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature {
  Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature({
    this.sasUrl,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature(
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sasUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature
    on Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature {
  CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature<
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature
    instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature;

  factory CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature;

  TRes call({String? sasUrl, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sasUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature(
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$account$details$contacts$value$signature(
    this._res,
  );

  TRes _res;

  call({String? sasUrl, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$contract {
  Query$GetTicketDetailsById$ticket$contract({
    required this.internalReference,
    this.$__typename = 'Contract',
  });

  factory Query$GetTicketDetailsById$ticket$contract.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$internalReference = json['internalReference'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$contract(
      internalReference: (l$internalReference as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String internalReference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$internalReference = internalReference;
    _resultData['internalReference'] = l$internalReference;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$internalReference = internalReference;
    final l$$__typename = $__typename;
    return Object.hashAll([l$internalReference, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$contract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$internalReference = internalReference;
    final lOther$internalReference = other.internalReference;
    if (l$internalReference != lOther$internalReference) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$contract
    on Query$GetTicketDetailsById$ticket$contract {
  CopyWith$Query$GetTicketDetailsById$ticket$contract<
    Query$GetTicketDetailsById$ticket$contract
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$contract(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$contract<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$contract(
    Query$GetTicketDetailsById$ticket$contract instance,
    TRes Function(Query$GetTicketDetailsById$ticket$contract) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$contract;

  factory CopyWith$Query$GetTicketDetailsById$ticket$contract.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$contract;

  TRes call({String? internalReference, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$contract<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$contract<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$contract(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$contract _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$contract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? internalReference = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$contract(
      internalReference:
          internalReference == _undefined || internalReference == null
          ? _instance.internalReference
          : (internalReference as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$contract<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$contract<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$contract(this._res);

  TRes _res;

  call({String? internalReference, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$comments {
  Query$GetTicketDetailsById$ticket$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetTicketDetailsById$ticket$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$comments(
      content: (l$content as String),
      created: Query$GetTicketDetailsById$ticket$comments$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetTicketDetailsById$ticket$comments$created created;

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
    if (other is! Query$GetTicketDetailsById$ticket$comments ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$comments
    on Query$GetTicketDetailsById$ticket$comments {
  CopyWith$Query$GetTicketDetailsById$ticket$comments<
    Query$GetTicketDetailsById$ticket$comments
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$comments(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$comments<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$comments(
    Query$GetTicketDetailsById$ticket$comments instance,
    TRes Function(Query$GetTicketDetailsById$ticket$comments) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$comments;

  factory CopyWith$Query$GetTicketDetailsById$ticket$comments.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$comments;

  TRes call({
    String? content,
    Query$GetTicketDetailsById$ticket$comments$created? created,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$comments$created<TRes> get created;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$comments<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$comments<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$comments(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$comments _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$comments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$GetTicketDetailsById$ticket$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$comments$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetailsById$ticket$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$comments<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$comments<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$comments(this._res);

  TRes _res;

  call({
    String? content,
    Query$GetTicketDetailsById$ticket$comments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$comments$created<TRes>
  get created =>
      CopyWith$Query$GetTicketDetailsById$ticket$comments$created.stub(_res);
}

class Query$GetTicketDetailsById$ticket$comments$created {
  Query$GetTicketDetailsById$ticket$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetailsById$ticket$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$comments$created(
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
    if (other is! Query$GetTicketDetailsById$ticket$comments$created ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$comments$created
    on Query$GetTicketDetailsById$ticket$comments$created {
  CopyWith$Query$GetTicketDetailsById$ticket$comments$created<
    Query$GetTicketDetailsById$ticket$comments$created
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$comments$created(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$comments$created<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$comments$created(
    Query$GetTicketDetailsById$ticket$comments$created instance,
    TRes Function(Query$GetTicketDetailsById$ticket$comments$created) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$comments$created;

  factory CopyWith$Query$GetTicketDetailsById$ticket$comments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$comments$created<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$comments$created<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$comments$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$comments$created _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$comments$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$comments$created(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$comments$created<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$comments$created<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$comments$created(
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

class Query$GetTicketDetailsById$ticket$costs {
  Query$GetTicketDetailsById$ticket$costs({
    required this.typeId,
    required this.costParty,
    this.value,
    this.rate,
    required this.costStatus,
    required this.comments,
    this.costType,
    this.$__typename = 'CostDefinition',
  });

  factory Query$GetTicketDetailsById$ticket$costs.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$typeId = json['typeId'];
    final l$costParty = json['costParty'];
    final l$value = json['value'];
    final l$rate = json['rate'];
    final l$costStatus = json['costStatus'];
    final l$comments = json['comments'];
    final l$costType = json['costType'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$costs(
      typeId: (l$typeId as String),
      costParty: Query$GetTicketDetailsById$ticket$costs$costParty.fromJson(
        (l$costParty as Map<String, dynamic>),
      ),
      value: (l$value as num?)?.toDouble(),
      rate: l$rate == null
          ? null
          : Query$GetTicketDetailsById$ticket$costs$rate.fromJson(
              (l$rate as Map<String, dynamic>),
            ),
      costStatus: fromJson$Enum$CostStatus((l$costStatus as String)),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$costs$comments.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      costType: l$costType == null
          ? null
          : Query$GetTicketDetailsById$ticket$costs$costType.fromJson(
              (l$costType as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String typeId;

  final Query$GetTicketDetailsById$ticket$costs$costParty costParty;

  final double? value;

  final Query$GetTicketDetailsById$ticket$costs$rate? rate;

  final Enum$CostStatus costStatus;

  final List<Query$GetTicketDetailsById$ticket$costs$comments> comments;

  final Query$GetTicketDetailsById$ticket$costs$costType? costType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$typeId = typeId;
    _resultData['typeId'] = l$typeId;
    final l$costParty = costParty;
    _resultData['costParty'] = l$costParty.toJson();
    final l$value = value;
    _resultData['value'] = l$value;
    final l$rate = rate;
    _resultData['rate'] = l$rate?.toJson();
    final l$costStatus = costStatus;
    _resultData['costStatus'] = toJson$Enum$CostStatus(l$costStatus);
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    final l$costType = costType;
    _resultData['costType'] = l$costType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$typeId = typeId;
    final l$costParty = costParty;
    final l$value = value;
    final l$rate = rate;
    final l$costStatus = costStatus;
    final l$comments = comments;
    final l$costType = costType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$typeId,
      l$costParty,
      l$value,
      l$rate,
      l$costStatus,
      Object.hashAll(l$comments.map((v) => v)),
      l$costType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$costs ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$typeId = typeId;
    final lOther$typeId = other.typeId;
    if (l$typeId != lOther$typeId) {
      return false;
    }
    final l$costParty = costParty;
    final lOther$costParty = other.costParty;
    if (l$costParty != lOther$costParty) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$costStatus = costStatus;
    final lOther$costStatus = other.costStatus;
    if (l$costStatus != lOther$costStatus) {
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
    final l$costType = costType;
    final lOther$costType = other.costType;
    if (l$costType != lOther$costType) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$costs
    on Query$GetTicketDetailsById$ticket$costs {
  CopyWith$Query$GetTicketDetailsById$ticket$costs<
    Query$GetTicketDetailsById$ticket$costs
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$costs(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$costs<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$costs(
    Query$GetTicketDetailsById$ticket$costs instance,
    TRes Function(Query$GetTicketDetailsById$ticket$costs) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs;

  factory CopyWith$Query$GetTicketDetailsById$ticket$costs.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs;

  TRes call({
    String? typeId,
    Query$GetTicketDetailsById$ticket$costs$costParty? costParty,
    double? value,
    Query$GetTicketDetailsById$ticket$costs$rate? rate,
    Enum$CostStatus? costStatus,
    List<Query$GetTicketDetailsById$ticket$costs$comments>? comments,
    Query$GetTicketDetailsById$ticket$costs$costType? costType,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty<TRes>
  get costParty;
  CopyWith$Query$GetTicketDetailsById$ticket$costs$rate<TRes> get rate;
  TRes comments(
    Iterable<Query$GetTicketDetailsById$ticket$costs$comments> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$costs$comments<
          Query$GetTicketDetailsById$ticket$costs$comments
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$costs$costType<TRes> get costType;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$costs<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$costs _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$costs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typeId = _undefined,
    Object? costParty = _undefined,
    Object? value = _undefined,
    Object? rate = _undefined,
    Object? costStatus = _undefined,
    Object? comments = _undefined,
    Object? costType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$costs(
      typeId: typeId == _undefined || typeId == null
          ? _instance.typeId
          : (typeId as String),
      costParty: costParty == _undefined || costParty == null
          ? _instance.costParty
          : (costParty as Query$GetTicketDetailsById$ticket$costs$costParty),
      value: value == _undefined ? _instance.value : (value as double?),
      rate: rate == _undefined
          ? _instance.rate
          : (rate as Query$GetTicketDetailsById$ticket$costs$rate?),
      costStatus: costStatus == _undefined || costStatus == null
          ? _instance.costStatus
          : (costStatus as Enum$CostStatus),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments
                as List<Query$GetTicketDetailsById$ticket$costs$comments>),
      costType: costType == _undefined
          ? _instance.costType
          : (costType as Query$GetTicketDetailsById$ticket$costs$costType?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty<TRes>
  get costParty {
    final local$costParty = _instance.costParty;
    return CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty(
      local$costParty,
      (e) => call(costParty: e),
    );
  }

  CopyWith$Query$GetTicketDetailsById$ticket$costs$rate<TRes> get rate {
    final local$rate = _instance.rate;
    return local$rate == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$costs$rate.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$costs$rate(
            local$rate,
            (e) => call(rate: e),
          );
  }

  TRes comments(
    Iterable<Query$GetTicketDetailsById$ticket$costs$comments> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$costs$comments<
          Query$GetTicketDetailsById$ticket$costs$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) => CopyWith$Query$GetTicketDetailsById$ticket$costs$comments(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$costs$costType<TRes> get costType {
    final local$costType = _instance.costType;
    return local$costType == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$costs$costType.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$costs$costType(
            local$costType,
            (e) => call(costType: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$costs<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs(this._res);

  TRes _res;

  call({
    String? typeId,
    Query$GetTicketDetailsById$ticket$costs$costParty? costParty,
    double? value,
    Query$GetTicketDetailsById$ticket$costs$rate? rate,
    Enum$CostStatus? costStatus,
    List<Query$GetTicketDetailsById$ticket$costs$comments>? comments,
    Query$GetTicketDetailsById$ticket$costs$costType? costType,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty<TRes>
  get costParty =>
      CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty.stub(_res);

  CopyWith$Query$GetTicketDetailsById$ticket$costs$rate<TRes> get rate =>
      CopyWith$Query$GetTicketDetailsById$ticket$costs$rate.stub(_res);

  comments(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$costs$costType<TRes>
  get costType =>
      CopyWith$Query$GetTicketDetailsById$ticket$costs$costType.stub(_res);
}

class Query$GetTicketDetailsById$ticket$costs$costParty {
  Query$GetTicketDetailsById$ticket$costs$costParty({
    required this.partyAccountNo,
    required this.partyName,
    this.$__typename = 'CostParty',
  });

  factory Query$GetTicketDetailsById$ticket$costs$costParty.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partyAccountNo = json['partyAccountNo'];
    final l$partyName = json['partyName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$costs$costParty(
      partyAccountNo: (l$partyAccountNo as String),
      partyName: (l$partyName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String partyAccountNo;

  final String partyName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    _resultData['partyAccountNo'] = l$partyAccountNo;
    final l$partyName = partyName;
    _resultData['partyName'] = l$partyName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    final l$partyName = partyName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$partyAccountNo, l$partyName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$costs$costParty ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (l$partyName != lOther$partyName) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$costs$costParty
    on Query$GetTicketDetailsById$ticket$costs$costParty {
  CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty<
    Query$GetTicketDetailsById$ticket$costs$costParty
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty(
    Query$GetTicketDetailsById$ticket$costs$costParty instance,
    TRes Function(Query$GetTicketDetailsById$ticket$costs$costParty) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$costParty;

  factory CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$costParty;

  TRes call({String? partyAccountNo, String? partyName, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$costParty<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$costParty(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$costs$costParty _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$costs$costParty) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyAccountNo = _undefined,
    Object? partyName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$costs$costParty(
      partyAccountNo: partyAccountNo == _undefined || partyAccountNo == null
          ? _instance.partyAccountNo
          : (partyAccountNo as String),
      partyName: partyName == _undefined || partyName == null
          ? _instance.partyName
          : (partyName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$costParty<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$costs$costParty<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$costParty(
    this._res,
  );

  TRes _res;

  call({String? partyAccountNo, String? partyName, String? $__typename}) =>
      _res;
}

class Query$GetTicketDetailsById$ticket$costs$rate {
  Query$GetTicketDetailsById$ticket$costs$rate({
    required this.id,
    required this.isRate,
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$GetTicketDetailsById$ticket$costs$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$isRate = json['isRate'];
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$costs$rate(
      id: (l$id as int),
      isRate: (l$isRate as bool),
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final bool isRate;

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isRate = isRate;
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$isRate, l$uom, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$costs$rate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$costs$rate
    on Query$GetTicketDetailsById$ticket$costs$rate {
  CopyWith$Query$GetTicketDetailsById$ticket$costs$rate<
    Query$GetTicketDetailsById$ticket$costs$rate
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$costs$rate(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$costs$rate<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$costs$rate(
    Query$GetTicketDetailsById$ticket$costs$rate instance,
    TRes Function(Query$GetTicketDetailsById$ticket$costs$rate) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$rate;

  factory CopyWith$Query$GetTicketDetailsById$ticket$costs$rate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$rate;

  TRes call({
    int? id,
    bool? isRate,
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$rate<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$costs$rate<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$rate(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$costs$rate _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$costs$rate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isRate = _undefined,
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$costs$rate(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$rate<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$costs$rate<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$rate(this._res);

  TRes _res;

  call({
    int? id,
    bool? isRate,
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) => _res;
}

class Query$GetTicketDetailsById$ticket$costs$comments {
  Query$GetTicketDetailsById$ticket$costs$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetTicketDetailsById$ticket$costs$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$costs$comments(
      content: (l$content as String),
      created:
          Query$GetTicketDetailsById$ticket$costs$comments$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetTicketDetailsById$ticket$costs$comments$created created;

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
    if (other is! Query$GetTicketDetailsById$ticket$costs$comments ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$costs$comments
    on Query$GetTicketDetailsById$ticket$costs$comments {
  CopyWith$Query$GetTicketDetailsById$ticket$costs$comments<
    Query$GetTicketDetailsById$ticket$costs$comments
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$costs$comments(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$costs$comments<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$costs$comments(
    Query$GetTicketDetailsById$ticket$costs$comments instance,
    TRes Function(Query$GetTicketDetailsById$ticket$costs$comments) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$comments;

  factory CopyWith$Query$GetTicketDetailsById$ticket$costs$comments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$comments;

  TRes call({
    String? content,
    Query$GetTicketDetailsById$ticket$costs$comments$created? created,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created<TRes>
  get created;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$comments<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$costs$comments<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$comments(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$costs$comments _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$costs$comments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$costs$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetTicketDetailsById$ticket$costs$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$comments<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$costs$comments<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$comments(this._res);

  TRes _res;

  call({
    String? content,
    Query$GetTicketDetailsById$ticket$costs$comments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created<TRes>
  get created =>
      CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$costs$comments$created {
  Query$GetTicketDetailsById$ticket$costs$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetailsById$ticket$costs$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$costs$comments$created(
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
    if (other is! Query$GetTicketDetailsById$ticket$costs$comments$created ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$costs$comments$created
    on Query$GetTicketDetailsById$ticket$costs$comments$created {
  CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created<
    Query$GetTicketDetailsById$ticket$costs$comments$created
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created(
    Query$GetTicketDetailsById$ticket$costs$comments$created instance,
    TRes Function(Query$GetTicketDetailsById$ticket$costs$comments$created)
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$comments$created;

  factory CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$comments$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$costs$comments$created _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$costs$comments$created)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$costs$comments$created(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$costs$comments$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$comments$created(
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

class Query$GetTicketDetailsById$ticket$costs$costType {
  Query$GetTicketDetailsById$ticket$costs$costType({
    required this.id,
    required this.type,
    this.$__typename = 'CostType',
  });

  factory Query$GetTicketDetailsById$ticket$costs$costType.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$costs$costType(
      id: (l$id as String),
      type: (l$type as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$type, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$costs$costType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$costs$costType
    on Query$GetTicketDetailsById$ticket$costs$costType {
  CopyWith$Query$GetTicketDetailsById$ticket$costs$costType<
    Query$GetTicketDetailsById$ticket$costs$costType
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$costs$costType(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$costs$costType<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$costs$costType(
    Query$GetTicketDetailsById$ticket$costs$costType instance,
    TRes Function(Query$GetTicketDetailsById$ticket$costs$costType) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$costType;

  factory CopyWith$Query$GetTicketDetailsById$ticket$costs$costType.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$costType;

  TRes call({String? id, String? type, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$costType<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$costs$costType<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$costs$costType(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$costs$costType _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$costs$costType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$costs$costType(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$costType<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$costs$costType<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$costs$costType(this._res);

  TRes _res;

  call({String? id, String? type, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$created {
  Query$GetTicketDetailsById$ticket$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetailsById$ticket$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$created(
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
    if (other is! Query$GetTicketDetailsById$ticket$created ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$created
    on Query$GetTicketDetailsById$ticket$created {
  CopyWith$Query$GetTicketDetailsById$ticket$created<
    Query$GetTicketDetailsById$ticket$created
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$created(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$created<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$created(
    Query$GetTicketDetailsById$ticket$created instance,
    TRes Function(Query$GetTicketDetailsById$ticket$created) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$created;

  factory CopyWith$Query$GetTicketDetailsById$ticket$created.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$created<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$created<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$created _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$created(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$created<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$created<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$GetTicketDetailsById$ticket$deductions {
  Query$GetTicketDetailsById$ticket$deductions({
    required this.typeId,
    this.value,
    this.$__typename = 'Deduction',
  });

  factory Query$GetTicketDetailsById$ticket$deductions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$typeId = json['typeId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$deductions(
      typeId: (l$typeId as String),
      value: (l$value as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String typeId;

  final double? value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$typeId = typeId;
    _resultData['typeId'] = l$typeId;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$typeId = typeId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$typeId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$deductions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$typeId = typeId;
    final lOther$typeId = other.typeId;
    if (l$typeId != lOther$typeId) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$deductions
    on Query$GetTicketDetailsById$ticket$deductions {
  CopyWith$Query$GetTicketDetailsById$ticket$deductions<
    Query$GetTicketDetailsById$ticket$deductions
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$deductions(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$deductions<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$deductions(
    Query$GetTicketDetailsById$ticket$deductions instance,
    TRes Function(Query$GetTicketDetailsById$ticket$deductions) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$deductions;

  factory CopyWith$Query$GetTicketDetailsById$ticket$deductions.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deductions;

  TRes call({String? typeId, double? value, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$deductions<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$deductions<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$deductions(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$deductions _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$deductions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typeId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$deductions(
      typeId: typeId == _undefined || typeId == null
          ? _instance.typeId
          : (typeId as String),
      value: value == _undefined ? _instance.value : (value as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deductions<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$deductions<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deductions(this._res);

  TRes _res;

  call({String? typeId, double? value, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$deletionDetails {
  Query$GetTicketDetailsById$ticket$deletionDetails({
    required this.created,
    required this.comments,
    this.$__typename = 'DeletionDetails',
  });

  factory Query$GetTicketDetailsById$ticket$deletionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$created = json['created'];
    final l$comments = json['comments'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$deletionDetails(
      created:
          Query$GetTicketDetailsById$ticket$deletionDetails$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDetailsById$ticket$deletionDetails$comments.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetailsById$ticket$deletionDetails$created created;

  final List<Query$GetTicketDetailsById$ticket$deletionDetails$comments>
  comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$created = created;
    final l$comments = comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$created,
      Object.hashAll(l$comments.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$deletionDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTicketDetailsById$ticket$deletionDetails
    on Query$GetTicketDetailsById$ticket$deletionDetails {
  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails<
    Query$GetTicketDetailsById$ticket$deletionDetails
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails(
    Query$GetTicketDetailsById$ticket$deletionDetails instance,
    TRes Function(Query$GetTicketDetailsById$ticket$deletionDetails) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails;

  factory CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails;

  TRes call({
    Query$GetTicketDetailsById$ticket$deletionDetails$created? created,
    List<Query$GetTicketDetailsById$ticket$deletionDetails$comments>? comments,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created<TRes>
  get created;
  TRes comments(
    Iterable<Query$GetTicketDetailsById$ticket$deletionDetails$comments>
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments<
          Query$GetTicketDetailsById$ticket$deletionDetails$comments
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$deletionDetails _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$deletionDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? created = _undefined,
    Object? comments = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$deletionDetails(
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetTicketDetailsById$ticket$deletionDetails$created),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments
                as List<
                  Query$GetTicketDetailsById$ticket$deletionDetails$comments
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created(
      local$created,
      (e) => call(created: e),
    );
  }

  TRes comments(
    Iterable<Query$GetTicketDetailsById$ticket$deletionDetails$comments>
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments<
          Query$GetTicketDetailsById$ticket$deletionDetails$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) =>
            CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails(
    this._res,
  );

  TRes _res;

  call({
    Query$GetTicketDetailsById$ticket$deletionDetails$created? created,
    List<Query$GetTicketDetailsById$ticket$deletionDetails$comments>? comments,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created<TRes>
  get created =>
      CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created.stub(
        _res,
      );

  comments(_fn) => _res;
}

class Query$GetTicketDetailsById$ticket$deletionDetails$created {
  Query$GetTicketDetailsById$ticket$deletionDetails$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetailsById$ticket$deletionDetails$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$deletionDetails$created(
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
    if (other is! Query$GetTicketDetailsById$ticket$deletionDetails$created ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$deletionDetails$created
    on Query$GetTicketDetailsById$ticket$deletionDetails$created {
  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created<
    Query$GetTicketDetailsById$ticket$deletionDetails$created
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created(
    Query$GetTicketDetailsById$ticket$deletionDetails$created instance,
    TRes Function(Query$GetTicketDetailsById$ticket$deletionDetails$created)
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails$created;

  factory CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$deletionDetails$created _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$deletionDetails$created)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$deletionDetails$created(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails$created(
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

class Query$GetTicketDetailsById$ticket$deletionDetails$comments {
  Query$GetTicketDetailsById$ticket$deletionDetails$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetTicketDetailsById$ticket$deletionDetails$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$deletionDetails$comments(
      content: (l$content as String),
      created:
          Query$GetTicketDetailsById$ticket$deletionDetails$comments$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetTicketDetailsById$ticket$deletionDetails$comments$created
  created;

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
    if (other is! Query$GetTicketDetailsById$ticket$deletionDetails$comments ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$deletionDetails$comments
    on Query$GetTicketDetailsById$ticket$deletionDetails$comments {
  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments<
    Query$GetTicketDetailsById$ticket$deletionDetails$comments
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments(
    Query$GetTicketDetailsById$ticket$deletionDetails$comments instance,
    TRes Function(Query$GetTicketDetailsById$ticket$deletionDetails$comments)
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments;

  factory CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments;

  TRes call({
    String? content,
    Query$GetTicketDetailsById$ticket$deletionDetails$comments$created? created,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$deletionDetails$comments _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$deletionDetails$comments,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$deletionDetails$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetTicketDetailsById$ticket$deletionDetails$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Query$GetTicketDetailsById$ticket$deletionDetails$comments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$deletionDetails$comments$created {
  Query$GetTicketDetailsById$ticket$deletionDetails$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetailsById$ticket$deletionDetails$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$deletionDetails$comments$created(
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
            is! Query$GetTicketDetailsById$ticket$deletionDetails$comments$created ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created
    on Query$GetTicketDetailsById$ticket$deletionDetails$comments$created {
  CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created<
    Query$GetTicketDetailsById$ticket$deletionDetails$comments$created
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created(
    Query$GetTicketDetailsById$ticket$deletionDetails$comments$created instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$deletionDetails$comments$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created;

  factory CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$deletionDetails$comments$created
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$deletionDetails$comments$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$deletionDetails$comments$created(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$deletionDetails$comments$created(
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

class Query$GetTicketDetailsById$ticket$haulier {
  Query$GetTicketDetailsById$ticket$haulier({
    required this.accountNumber,
    required this.name,
    this.$__typename = 'TicketAccount',
  });

  factory Query$GetTicketDetailsById$ticket$haulier.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$haulier(
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountNumber;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$accountNumber, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$haulier ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTicketDetailsById$ticket$haulier
    on Query$GetTicketDetailsById$ticket$haulier {
  CopyWith$Query$GetTicketDetailsById$ticket$haulier<
    Query$GetTicketDetailsById$ticket$haulier
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$haulier(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$haulier<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$haulier(
    Query$GetTicketDetailsById$ticket$haulier instance,
    TRes Function(Query$GetTicketDetailsById$ticket$haulier) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$haulier;

  factory CopyWith$Query$GetTicketDetailsById$ticket$haulier.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$haulier;

  TRes call({String? accountNumber, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$haulier<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$haulier<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$haulier(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$haulier _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$haulier) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$haulier(
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$haulier<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$haulier<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$haulier(this._res);

  TRes _res;

  call({String? accountNumber, String? name, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$inspectionMedia {
  Query$GetTicketDetailsById$ticket$inspectionMedia({
    this.sasUrl,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$GetTicketDetailsById$ticket$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$inspectionMedia(
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sasUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$inspectionMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$inspectionMedia
    on Query$GetTicketDetailsById$ticket$inspectionMedia {
  CopyWith$Query$GetTicketDetailsById$ticket$inspectionMedia<
    Query$GetTicketDetailsById$ticket$inspectionMedia
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$inspectionMedia(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$inspectionMedia(
    Query$GetTicketDetailsById$ticket$inspectionMedia instance,
    TRes Function(Query$GetTicketDetailsById$ticket$inspectionMedia) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$inspectionMedia;

  factory CopyWith$Query$GetTicketDetailsById$ticket$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$inspectionMedia;

  TRes call({String? sasUrl, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$inspectionMedia<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$inspectionMedia<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$inspectionMedia _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$inspectionMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sasUrl = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetTicketDetailsById$ticket$inspectionMedia(
          sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$inspectionMedia<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$inspectionMedia<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({String? sasUrl, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$internalComments {
  Query$GetTicketDetailsById$ticket$internalComments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetTicketDetailsById$ticket$internalComments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$internalComments(
      content: (l$content as String),
      created:
          Query$GetTicketDetailsById$ticket$internalComments$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetTicketDetailsById$ticket$internalComments$created created;

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
    if (other is! Query$GetTicketDetailsById$ticket$internalComments ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$internalComments
    on Query$GetTicketDetailsById$ticket$internalComments {
  CopyWith$Query$GetTicketDetailsById$ticket$internalComments<
    Query$GetTicketDetailsById$ticket$internalComments
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$internalComments(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$internalComments<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$internalComments(
    Query$GetTicketDetailsById$ticket$internalComments instance,
    TRes Function(Query$GetTicketDetailsById$ticket$internalComments) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$internalComments;

  factory CopyWith$Query$GetTicketDetailsById$ticket$internalComments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$internalComments;

  TRes call({
    String? content,
    Query$GetTicketDetailsById$ticket$internalComments$created? created,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created<TRes>
  get created;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$internalComments<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$internalComments<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$internalComments(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$internalComments _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$internalComments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$internalComments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetTicketDetailsById$ticket$internalComments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$internalComments<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$internalComments<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$internalComments(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Query$GetTicketDetailsById$ticket$internalComments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created<TRes>
  get created =>
      CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$internalComments$created {
  Query$GetTicketDetailsById$ticket$internalComments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetailsById$ticket$internalComments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$internalComments$created(
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
    if (other is! Query$GetTicketDetailsById$ticket$internalComments$created ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$internalComments$created
    on Query$GetTicketDetailsById$ticket$internalComments$created {
  CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created<
    Query$GetTicketDetailsById$ticket$internalComments$created
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created(
    Query$GetTicketDetailsById$ticket$internalComments$created instance,
    TRes Function(Query$GetTicketDetailsById$ticket$internalComments$created)
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$internalComments$created;

  factory CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$internalComments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$internalComments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$internalComments$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$internalComments$created _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$internalComments$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$internalComments$created(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$internalComments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$internalComments$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$internalComments$created(
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

class Query$GetTicketDetailsById$ticket$lines {
  Query$GetTicketDetailsById$ticket$lines({
    this.binNo,
    this.consignmentNoteNo,
    required this.costs,
    required this.created,
    required this.deductions,
    required this.grossWeight,
    required this.grossWeightDateTime,
    required this.hasSeenZero,
    this.inspectionDetails,
    required this.internalComments,
    required this.isGrossFromPreviousWeight,
    required this.lineNumber,
    required this.locationId,
    this.location,
    this.manualGrossWeightReason,
    required this.mediaAssets,
    required this.modified,
    required this.netWeight,
    this.packingListReference,
    this.partyWasteStreamNumber,
    required this.priceOrigin,
    required this.rate,
    required this.payableBeforeCostAndDeduction,
    required this.payableAfterCostAndDeduction,
    this.sealNo,
    this.stockAsProduct,
    this.weightSerial,
    this.$__typename = 'TicketLine',
  });

  factory Query$GetTicketDetailsById$ticket$lines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$binNo = json['binNo'];
    final l$consignmentNoteNo = json['consignmentNoteNo'];
    final l$costs = json['costs'];
    final l$created = json['created'];
    final l$deductions = json['deductions'];
    final l$grossWeight = json['grossWeight'];
    final l$grossWeightDateTime = json['grossWeightDateTime'];
    final l$hasSeenZero = json['hasSeenZero'];
    final l$inspectionDetails = json['inspectionDetails'];
    final l$internalComments = json['internalComments'];
    final l$isGrossFromPreviousWeight = json['isGrossFromPreviousWeight'];
    final l$lineNumber = json['lineNumber'];
    final l$locationId = json['locationId'];
    final l$location = json['location'];
    final l$manualGrossWeightReason = json['manualGrossWeightReason'];
    final l$mediaAssets = json['mediaAssets'];
    final l$modified = json['modified'];
    final l$netWeight = json['netWeight'];
    final l$packingListReference = json['packingListReference'];
    final l$partyWasteStreamNumber = json['partyWasteStreamNumber'];
    final l$priceOrigin = json['priceOrigin'];
    final l$rate = json['rate'];
    final l$payableBeforeCostAndDeduction =
        json['payableBeforeCostAndDeduction'];
    final l$payableAfterCostAndDeduction = json['payableAfterCostAndDeduction'];
    final l$sealNo = json['sealNo'];
    final l$stockAsProduct = json['stockAsProduct'];
    final l$weightSerial = json['weightSerial'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines(
      binNo: (l$binNo as String?),
      consignmentNoteNo: (l$consignmentNoteNo as String?),
      costs: (l$costs as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$lines$costs.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      created: Query$GetTicketDetailsById$ticket$lines$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      deductions: (l$deductions as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$lines$deductions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      grossWeight: Query$GetTicketDetailsById$ticket$lines$grossWeight.fromJson(
        (l$grossWeight as Map<String, dynamic>),
      ),
      grossWeightDateTime: DateTime.parse((l$grossWeightDateTime as String)),
      hasSeenZero: (l$hasSeenZero as bool),
      inspectionDetails: l$inspectionDetails == null
          ? null
          : Query$GetTicketDetailsById$ticket$lines$inspectionDetails.fromJson(
              (l$inspectionDetails as Map<String, dynamic>),
            ),
      internalComments: (l$internalComments as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDetailsById$ticket$lines$internalComments.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      isGrossFromPreviousWeight: (l$isGrossFromPreviousWeight as bool),
      lineNumber: (l$lineNumber as int),
      locationId: (l$locationId as String),
      location: l$location == null
          ? null
          : Query$GetTicketDetailsById$ticket$lines$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      manualGrossWeightReason: (l$manualGrossWeightReason as String?),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetailsById$ticket$lines$mediaAssets.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      modified: Query$GetTicketDetailsById$ticket$lines$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      netWeight: Query$GetTicketDetailsById$ticket$lines$netWeight.fromJson(
        (l$netWeight as Map<String, dynamic>),
      ),
      packingListReference: (l$packingListReference as String?),
      partyWasteStreamNumber: (l$partyWasteStreamNumber as String?),
      priceOrigin: fromJson$Enum$PriceOriginType((l$priceOrigin as String)),
      rate: Query$GetTicketDetailsById$ticket$lines$rate.fromJson(
        (l$rate as Map<String, dynamic>),
      ),
      payableBeforeCostAndDeduction: (l$payableBeforeCostAndDeduction as num)
          .toDouble(),
      payableAfterCostAndDeduction: (l$payableAfterCostAndDeduction as num)
          .toDouble(),
      sealNo: (l$sealNo as String?),
      stockAsProduct: l$stockAsProduct == null
          ? null
          : Query$GetTicketDetailsById$ticket$lines$stockAsProduct.fromJson(
              (l$stockAsProduct as Map<String, dynamic>),
            ),
      weightSerial: (l$weightSerial as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? binNo;

  final String? consignmentNoteNo;

  final List<Query$GetTicketDetailsById$ticket$lines$costs> costs;

  final Query$GetTicketDetailsById$ticket$lines$created created;

  final List<Query$GetTicketDetailsById$ticket$lines$deductions> deductions;

  final Query$GetTicketDetailsById$ticket$lines$grossWeight grossWeight;

  final DateTime grossWeightDateTime;

  final bool hasSeenZero;

  final Query$GetTicketDetailsById$ticket$lines$inspectionDetails?
  inspectionDetails;

  final List<Query$GetTicketDetailsById$ticket$lines$internalComments>
  internalComments;

  final bool isGrossFromPreviousWeight;

  final int lineNumber;

  final String locationId;

  final Query$GetTicketDetailsById$ticket$lines$location? location;

  final String? manualGrossWeightReason;

  final List<Query$GetTicketDetailsById$ticket$lines$mediaAssets> mediaAssets;

  final Query$GetTicketDetailsById$ticket$lines$modified modified;

  final Query$GetTicketDetailsById$ticket$lines$netWeight netWeight;

  final String? packingListReference;

  final String? partyWasteStreamNumber;

  final Enum$PriceOriginType priceOrigin;

  final Query$GetTicketDetailsById$ticket$lines$rate rate;

  final double payableBeforeCostAndDeduction;

  final double payableAfterCostAndDeduction;

  final String? sealNo;

  final Query$GetTicketDetailsById$ticket$lines$stockAsProduct? stockAsProduct;

  final String? weightSerial;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$binNo = binNo;
    _resultData['binNo'] = l$binNo;
    final l$consignmentNoteNo = consignmentNoteNo;
    _resultData['consignmentNoteNo'] = l$consignmentNoteNo;
    final l$costs = costs;
    _resultData['costs'] = l$costs.map((e) => e.toJson()).toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$deductions = deductions;
    _resultData['deductions'] = l$deductions.map((e) => e.toJson()).toList();
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$grossWeightDateTime = grossWeightDateTime;
    _resultData['grossWeightDateTime'] = l$grossWeightDateTime
        .toIso8601String();
    final l$hasSeenZero = hasSeenZero;
    _resultData['hasSeenZero'] = l$hasSeenZero;
    final l$inspectionDetails = inspectionDetails;
    _resultData['inspectionDetails'] = l$inspectionDetails?.toJson();
    final l$internalComments = internalComments;
    _resultData['internalComments'] = l$internalComments
        .map((e) => e.toJson())
        .toList();
    final l$isGrossFromPreviousWeight = isGrossFromPreviousWeight;
    _resultData['isGrossFromPreviousWeight'] = l$isGrossFromPreviousWeight;
    final l$lineNumber = lineNumber;
    _resultData['lineNumber'] = l$lineNumber;
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$manualGrossWeightReason = manualGrossWeightReason;
    _resultData['manualGrossWeightReason'] = l$manualGrossWeightReason;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$netWeight = netWeight;
    _resultData['netWeight'] = l$netWeight.toJson();
    final l$packingListReference = packingListReference;
    _resultData['packingListReference'] = l$packingListReference;
    final l$partyWasteStreamNumber = partyWasteStreamNumber;
    _resultData['partyWasteStreamNumber'] = l$partyWasteStreamNumber;
    final l$priceOrigin = priceOrigin;
    _resultData['priceOrigin'] = toJson$Enum$PriceOriginType(l$priceOrigin);
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$payableBeforeCostAndDeduction = payableBeforeCostAndDeduction;
    _resultData['payableBeforeCostAndDeduction'] =
        l$payableBeforeCostAndDeduction;
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    _resultData['payableAfterCostAndDeduction'] =
        l$payableAfterCostAndDeduction;
    final l$sealNo = sealNo;
    _resultData['sealNo'] = l$sealNo;
    final l$stockAsProduct = stockAsProduct;
    _resultData['stockAsProduct'] = l$stockAsProduct?.toJson();
    final l$weightSerial = weightSerial;
    _resultData['weightSerial'] = l$weightSerial;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$binNo = binNo;
    final l$consignmentNoteNo = consignmentNoteNo;
    final l$costs = costs;
    final l$created = created;
    final l$deductions = deductions;
    final l$grossWeight = grossWeight;
    final l$grossWeightDateTime = grossWeightDateTime;
    final l$hasSeenZero = hasSeenZero;
    final l$inspectionDetails = inspectionDetails;
    final l$internalComments = internalComments;
    final l$isGrossFromPreviousWeight = isGrossFromPreviousWeight;
    final l$lineNumber = lineNumber;
    final l$locationId = locationId;
    final l$location = location;
    final l$manualGrossWeightReason = manualGrossWeightReason;
    final l$mediaAssets = mediaAssets;
    final l$modified = modified;
    final l$netWeight = netWeight;
    final l$packingListReference = packingListReference;
    final l$partyWasteStreamNumber = partyWasteStreamNumber;
    final l$priceOrigin = priceOrigin;
    final l$rate = rate;
    final l$payableBeforeCostAndDeduction = payableBeforeCostAndDeduction;
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    final l$sealNo = sealNo;
    final l$stockAsProduct = stockAsProduct;
    final l$weightSerial = weightSerial;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$binNo,
      l$consignmentNoteNo,
      Object.hashAll(l$costs.map((v) => v)),
      l$created,
      Object.hashAll(l$deductions.map((v) => v)),
      l$grossWeight,
      l$grossWeightDateTime,
      l$hasSeenZero,
      l$inspectionDetails,
      Object.hashAll(l$internalComments.map((v) => v)),
      l$isGrossFromPreviousWeight,
      l$lineNumber,
      l$locationId,
      l$location,
      l$manualGrossWeightReason,
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$modified,
      l$netWeight,
      l$packingListReference,
      l$partyWasteStreamNumber,
      l$priceOrigin,
      l$rate,
      l$payableBeforeCostAndDeduction,
      l$payableAfterCostAndDeduction,
      l$sealNo,
      l$stockAsProduct,
      l$weightSerial,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$binNo = binNo;
    final lOther$binNo = other.binNo;
    if (l$binNo != lOther$binNo) {
      return false;
    }
    final l$consignmentNoteNo = consignmentNoteNo;
    final lOther$consignmentNoteNo = other.consignmentNoteNo;
    if (l$consignmentNoteNo != lOther$consignmentNoteNo) {
      return false;
    }
    final l$costs = costs;
    final lOther$costs = other.costs;
    if (l$costs.length != lOther$costs.length) {
      return false;
    }
    for (int i = 0; i < l$costs.length; i++) {
      final l$costs$entry = l$costs[i];
      final lOther$costs$entry = lOther$costs[i];
      if (l$costs$entry != lOther$costs$entry) {
        return false;
      }
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$grossWeightDateTime = grossWeightDateTime;
    final lOther$grossWeightDateTime = other.grossWeightDateTime;
    if (l$grossWeightDateTime != lOther$grossWeightDateTime) {
      return false;
    }
    final l$hasSeenZero = hasSeenZero;
    final lOther$hasSeenZero = other.hasSeenZero;
    if (l$hasSeenZero != lOther$hasSeenZero) {
      return false;
    }
    final l$inspectionDetails = inspectionDetails;
    final lOther$inspectionDetails = other.inspectionDetails;
    if (l$inspectionDetails != lOther$inspectionDetails) {
      return false;
    }
    final l$internalComments = internalComments;
    final lOther$internalComments = other.internalComments;
    if (l$internalComments.length != lOther$internalComments.length) {
      return false;
    }
    for (int i = 0; i < l$internalComments.length; i++) {
      final l$internalComments$entry = l$internalComments[i];
      final lOther$internalComments$entry = lOther$internalComments[i];
      if (l$internalComments$entry != lOther$internalComments$entry) {
        return false;
      }
    }
    final l$isGrossFromPreviousWeight = isGrossFromPreviousWeight;
    final lOther$isGrossFromPreviousWeight = other.isGrossFromPreviousWeight;
    if (l$isGrossFromPreviousWeight != lOther$isGrossFromPreviousWeight) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$manualGrossWeightReason = manualGrossWeightReason;
    final lOther$manualGrossWeightReason = other.manualGrossWeightReason;
    if (l$manualGrossWeightReason != lOther$manualGrossWeightReason) {
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
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$netWeight = netWeight;
    final lOther$netWeight = other.netWeight;
    if (l$netWeight != lOther$netWeight) {
      return false;
    }
    final l$packingListReference = packingListReference;
    final lOther$packingListReference = other.packingListReference;
    if (l$packingListReference != lOther$packingListReference) {
      return false;
    }
    final l$partyWasteStreamNumber = partyWasteStreamNumber;
    final lOther$partyWasteStreamNumber = other.partyWasteStreamNumber;
    if (l$partyWasteStreamNumber != lOther$partyWasteStreamNumber) {
      return false;
    }
    final l$priceOrigin = priceOrigin;
    final lOther$priceOrigin = other.priceOrigin;
    if (l$priceOrigin != lOther$priceOrigin) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$payableBeforeCostAndDeduction = payableBeforeCostAndDeduction;
    final lOther$payableBeforeCostAndDeduction =
        other.payableBeforeCostAndDeduction;
    if (l$payableBeforeCostAndDeduction !=
        lOther$payableBeforeCostAndDeduction) {
      return false;
    }
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    final lOther$payableAfterCostAndDeduction =
        other.payableAfterCostAndDeduction;
    if (l$payableAfterCostAndDeduction != lOther$payableAfterCostAndDeduction) {
      return false;
    }
    final l$sealNo = sealNo;
    final lOther$sealNo = other.sealNo;
    if (l$sealNo != lOther$sealNo) {
      return false;
    }
    final l$stockAsProduct = stockAsProduct;
    final lOther$stockAsProduct = other.stockAsProduct;
    if (l$stockAsProduct != lOther$stockAsProduct) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (l$weightSerial != lOther$weightSerial) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines
    on Query$GetTicketDetailsById$ticket$lines {
  CopyWith$Query$GetTicketDetailsById$ticket$lines<
    Query$GetTicketDetailsById$ticket$lines
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines(
    Query$GetTicketDetailsById$ticket$lines instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines;

  TRes call({
    String? binNo,
    String? consignmentNoteNo,
    List<Query$GetTicketDetailsById$ticket$lines$costs>? costs,
    Query$GetTicketDetailsById$ticket$lines$created? created,
    List<Query$GetTicketDetailsById$ticket$lines$deductions>? deductions,
    Query$GetTicketDetailsById$ticket$lines$grossWeight? grossWeight,
    DateTime? grossWeightDateTime,
    bool? hasSeenZero,
    Query$GetTicketDetailsById$ticket$lines$inspectionDetails?
    inspectionDetails,
    List<Query$GetTicketDetailsById$ticket$lines$internalComments>?
    internalComments,
    bool? isGrossFromPreviousWeight,
    int? lineNumber,
    String? locationId,
    Query$GetTicketDetailsById$ticket$lines$location? location,
    String? manualGrossWeightReason,
    List<Query$GetTicketDetailsById$ticket$lines$mediaAssets>? mediaAssets,
    Query$GetTicketDetailsById$ticket$lines$modified? modified,
    Query$GetTicketDetailsById$ticket$lines$netWeight? netWeight,
    String? packingListReference,
    String? partyWasteStreamNumber,
    Enum$PriceOriginType? priceOrigin,
    Query$GetTicketDetailsById$ticket$lines$rate? rate,
    double? payableBeforeCostAndDeduction,
    double? payableAfterCostAndDeduction,
    String? sealNo,
    Query$GetTicketDetailsById$ticket$lines$stockAsProduct? stockAsProduct,
    String? weightSerial,
    String? $__typename,
  });
  TRes costs(
    Iterable<Query$GetTicketDetailsById$ticket$lines$costs> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs<
          Query$GetTicketDetailsById$ticket$lines$costs
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$lines$created<TRes> get created;
  TRes deductions(
    Iterable<Query$GetTicketDetailsById$ticket$lines$deductions> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions<
          Query$GetTicketDetailsById$ticket$lines$deductions
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight<TRes>
  get grossWeight;
  CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails<TRes>
  get inspectionDetails;
  TRes internalComments(
    Iterable<Query$GetTicketDetailsById$ticket$lines$internalComments> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments<
          Query$GetTicketDetailsById$ticket$lines$internalComments
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$lines$location<TRes> get location;
  TRes mediaAssets(
    Iterable<Query$GetTicketDetailsById$ticket$lines$mediaAssets> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$mediaAssets<
          Query$GetTicketDetailsById$ticket$lines$mediaAssets
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$lines$modified<TRes> get modified;
  CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight<TRes>
  get netWeight;
  CopyWith$Query$GetTicketDetailsById$ticket$lines$rate<TRes> get rate;
  CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct<TRes>
  get stockAsProduct;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? binNo = _undefined,
    Object? consignmentNoteNo = _undefined,
    Object? costs = _undefined,
    Object? created = _undefined,
    Object? deductions = _undefined,
    Object? grossWeight = _undefined,
    Object? grossWeightDateTime = _undefined,
    Object? hasSeenZero = _undefined,
    Object? inspectionDetails = _undefined,
    Object? internalComments = _undefined,
    Object? isGrossFromPreviousWeight = _undefined,
    Object? lineNumber = _undefined,
    Object? locationId = _undefined,
    Object? location = _undefined,
    Object? manualGrossWeightReason = _undefined,
    Object? mediaAssets = _undefined,
    Object? modified = _undefined,
    Object? netWeight = _undefined,
    Object? packingListReference = _undefined,
    Object? partyWasteStreamNumber = _undefined,
    Object? priceOrigin = _undefined,
    Object? rate = _undefined,
    Object? payableBeforeCostAndDeduction = _undefined,
    Object? payableAfterCostAndDeduction = _undefined,
    Object? sealNo = _undefined,
    Object? stockAsProduct = _undefined,
    Object? weightSerial = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines(
      binNo: binNo == _undefined ? _instance.binNo : (binNo as String?),
      consignmentNoteNo: consignmentNoteNo == _undefined
          ? _instance.consignmentNoteNo
          : (consignmentNoteNo as String?),
      costs: costs == _undefined || costs == null
          ? _instance.costs
          : (costs as List<Query$GetTicketDetailsById$ticket$lines$costs>),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$GetTicketDetailsById$ticket$lines$created),
      deductions: deductions == _undefined || deductions == null
          ? _instance.deductions
          : (deductions
                as List<Query$GetTicketDetailsById$ticket$lines$deductions>),
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight
                as Query$GetTicketDetailsById$ticket$lines$grossWeight),
      grossWeightDateTime:
          grossWeightDateTime == _undefined || grossWeightDateTime == null
          ? _instance.grossWeightDateTime
          : (grossWeightDateTime as DateTime),
      hasSeenZero: hasSeenZero == _undefined || hasSeenZero == null
          ? _instance.hasSeenZero
          : (hasSeenZero as bool),
      inspectionDetails: inspectionDetails == _undefined
          ? _instance.inspectionDetails
          : (inspectionDetails
                as Query$GetTicketDetailsById$ticket$lines$inspectionDetails?),
      internalComments:
          internalComments == _undefined || internalComments == null
          ? _instance.internalComments
          : (internalComments
                as List<
                  Query$GetTicketDetailsById$ticket$lines$internalComments
                >),
      isGrossFromPreviousWeight:
          isGrossFromPreviousWeight == _undefined ||
              isGrossFromPreviousWeight == null
          ? _instance.isGrossFromPreviousWeight
          : (isGrossFromPreviousWeight as bool),
      lineNumber: lineNumber == _undefined || lineNumber == null
          ? _instance.lineNumber
          : (lineNumber as int),
      locationId: locationId == _undefined || locationId == null
          ? _instance.locationId
          : (locationId as String),
      location: location == _undefined
          ? _instance.location
          : (location as Query$GetTicketDetailsById$ticket$lines$location?),
      manualGrossWeightReason: manualGrossWeightReason == _undefined
          ? _instance.manualGrossWeightReason
          : (manualGrossWeightReason as String?),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<Query$GetTicketDetailsById$ticket$lines$mediaAssets>),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Query$GetTicketDetailsById$ticket$lines$modified),
      netWeight: netWeight == _undefined || netWeight == null
          ? _instance.netWeight
          : (netWeight as Query$GetTicketDetailsById$ticket$lines$netWeight),
      packingListReference: packingListReference == _undefined
          ? _instance.packingListReference
          : (packingListReference as String?),
      partyWasteStreamNumber: partyWasteStreamNumber == _undefined
          ? _instance.partyWasteStreamNumber
          : (partyWasteStreamNumber as String?),
      priceOrigin: priceOrigin == _undefined || priceOrigin == null
          ? _instance.priceOrigin
          : (priceOrigin as Enum$PriceOriginType),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate as Query$GetTicketDetailsById$ticket$lines$rate),
      payableBeforeCostAndDeduction:
          payableBeforeCostAndDeduction == _undefined ||
              payableBeforeCostAndDeduction == null
          ? _instance.payableBeforeCostAndDeduction
          : (payableBeforeCostAndDeduction as double),
      payableAfterCostAndDeduction:
          payableAfterCostAndDeduction == _undefined ||
              payableAfterCostAndDeduction == null
          ? _instance.payableAfterCostAndDeduction
          : (payableAfterCostAndDeduction as double),
      sealNo: sealNo == _undefined ? _instance.sealNo : (sealNo as String?),
      stockAsProduct: stockAsProduct == _undefined
          ? _instance.stockAsProduct
          : (stockAsProduct
                as Query$GetTicketDetailsById$ticket$lines$stockAsProduct?),
      weightSerial: weightSerial == _undefined
          ? _instance.weightSerial
          : (weightSerial as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes costs(
    Iterable<Query$GetTicketDetailsById$ticket$lines$costs> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs<
          Query$GetTicketDetailsById$ticket$lines$costs
        >
      >,
    )
    _fn,
  ) => call(
    costs: _fn(
      _instance.costs.map(
        (e) =>
            CopyWith$Query$GetTicketDetailsById$ticket$lines$costs(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetailsById$ticket$lines$created(
      local$created,
      (e) => call(created: e),
    );
  }

  TRes deductions(
    Iterable<Query$GetTicketDetailsById$ticket$lines$deductions> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions<
          Query$GetTicketDetailsById$ticket$lines$deductions
        >
      >,
    )
    _fn,
  ) => call(
    deductions: _fn(
      _instance.deductions.map(
        (e) => CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight<TRes>
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails<TRes>
  get inspectionDetails {
    final local$inspectionDetails = _instance.inspectionDetails;
    return local$inspectionDetails == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails(
            local$inspectionDetails,
            (e) => call(inspectionDetails: e),
          );
  }

  TRes internalComments(
    Iterable<Query$GetTicketDetailsById$ticket$lines$internalComments> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments<
          Query$GetTicketDetailsById$ticket$lines$internalComments
        >
      >,
    )
    _fn,
  ) => call(
    internalComments: _fn(
      _instance.internalComments.map(
        (e) =>
            CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$lines$location.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$lines$location(
            local$location,
            (e) => call(location: e),
          );
  }

  TRes mediaAssets(
    Iterable<Query$GetTicketDetailsById$ticket$lines$mediaAssets> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$mediaAssets<
          Query$GetTicketDetailsById$ticket$lines$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) => CopyWith$Query$GetTicketDetailsById$ticket$lines$mediaAssets(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Query$GetTicketDetailsById$ticket$lines$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }

  CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight<TRes>
  get netWeight {
    final local$netWeight = _instance.netWeight;
    return CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight(
      local$netWeight,
      (e) => call(netWeight: e),
    );
  }

  CopyWith$Query$GetTicketDetailsById$ticket$lines$rate<TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$GetTicketDetailsById$ticket$lines$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }

  CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct<TRes>
  get stockAsProduct {
    final local$stockAsProduct = _instance.stockAsProduct;
    return local$stockAsProduct == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct(
            local$stockAsProduct,
            (e) => call(stockAsProduct: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines(this._res);

  TRes _res;

  call({
    String? binNo,
    String? consignmentNoteNo,
    List<Query$GetTicketDetailsById$ticket$lines$costs>? costs,
    Query$GetTicketDetailsById$ticket$lines$created? created,
    List<Query$GetTicketDetailsById$ticket$lines$deductions>? deductions,
    Query$GetTicketDetailsById$ticket$lines$grossWeight? grossWeight,
    DateTime? grossWeightDateTime,
    bool? hasSeenZero,
    Query$GetTicketDetailsById$ticket$lines$inspectionDetails?
    inspectionDetails,
    List<Query$GetTicketDetailsById$ticket$lines$internalComments>?
    internalComments,
    bool? isGrossFromPreviousWeight,
    int? lineNumber,
    String? locationId,
    Query$GetTicketDetailsById$ticket$lines$location? location,
    String? manualGrossWeightReason,
    List<Query$GetTicketDetailsById$ticket$lines$mediaAssets>? mediaAssets,
    Query$GetTicketDetailsById$ticket$lines$modified? modified,
    Query$GetTicketDetailsById$ticket$lines$netWeight? netWeight,
    String? packingListReference,
    String? partyWasteStreamNumber,
    Enum$PriceOriginType? priceOrigin,
    Query$GetTicketDetailsById$ticket$lines$rate? rate,
    double? payableBeforeCostAndDeduction,
    double? payableAfterCostAndDeduction,
    String? sealNo,
    Query$GetTicketDetailsById$ticket$lines$stockAsProduct? stockAsProduct,
    String? weightSerial,
    String? $__typename,
  }) => _res;

  costs(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$lines$created<TRes> get created =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$created.stub(_res);

  deductions(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight<TRes>
  get grossWeight =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight.stub(_res);

  CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails<TRes>
  get inspectionDetails =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails.stub(
        _res,
      );

  internalComments(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$lines$location<TRes>
  get location =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$location.stub(_res);

  mediaAssets(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$lines$modified<TRes>
  get modified =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$modified.stub(_res);

  CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight<TRes>
  get netWeight =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight.stub(_res);

  CopyWith$Query$GetTicketDetailsById$ticket$lines$rate<TRes> get rate =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$rate.stub(_res);

  CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct<TRes>
  get stockAsProduct =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$lines$costs {
  Query$GetTicketDetailsById$ticket$lines$costs({
    required this.typeId,
    required this.costParty,
    this.value,
    this.rate,
    required this.costStatus,
    required this.comments,
    this.costType,
    this.$__typename = 'CostDefinition',
  });

  factory Query$GetTicketDetailsById$ticket$lines$costs.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$typeId = json['typeId'];
    final l$costParty = json['costParty'];
    final l$value = json['value'];
    final l$rate = json['rate'];
    final l$costStatus = json['costStatus'];
    final l$comments = json['comments'];
    final l$costType = json['costType'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$costs(
      typeId: (l$typeId as String),
      costParty:
          Query$GetTicketDetailsById$ticket$lines$costs$costParty.fromJson(
            (l$costParty as Map<String, dynamic>),
          ),
      value: (l$value as num?)?.toDouble(),
      rate: l$rate == null
          ? null
          : Query$GetTicketDetailsById$ticket$lines$costs$rate.fromJson(
              (l$rate as Map<String, dynamic>),
            ),
      costStatus: fromJson$Enum$CostStatus((l$costStatus as String)),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDetailsById$ticket$lines$costs$comments.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      costType: l$costType == null
          ? null
          : Query$GetTicketDetailsById$ticket$lines$costs$costType.fromJson(
              (l$costType as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String typeId;

  final Query$GetTicketDetailsById$ticket$lines$costs$costParty costParty;

  final double? value;

  final Query$GetTicketDetailsById$ticket$lines$costs$rate? rate;

  final Enum$CostStatus costStatus;

  final List<Query$GetTicketDetailsById$ticket$lines$costs$comments> comments;

  final Query$GetTicketDetailsById$ticket$lines$costs$costType? costType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$typeId = typeId;
    _resultData['typeId'] = l$typeId;
    final l$costParty = costParty;
    _resultData['costParty'] = l$costParty.toJson();
    final l$value = value;
    _resultData['value'] = l$value;
    final l$rate = rate;
    _resultData['rate'] = l$rate?.toJson();
    final l$costStatus = costStatus;
    _resultData['costStatus'] = toJson$Enum$CostStatus(l$costStatus);
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    final l$costType = costType;
    _resultData['costType'] = l$costType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$typeId = typeId;
    final l$costParty = costParty;
    final l$value = value;
    final l$rate = rate;
    final l$costStatus = costStatus;
    final l$comments = comments;
    final l$costType = costType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$typeId,
      l$costParty,
      l$value,
      l$rate,
      l$costStatus,
      Object.hashAll(l$comments.map((v) => v)),
      l$costType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$costs ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$typeId = typeId;
    final lOther$typeId = other.typeId;
    if (l$typeId != lOther$typeId) {
      return false;
    }
    final l$costParty = costParty;
    final lOther$costParty = other.costParty;
    if (l$costParty != lOther$costParty) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$costStatus = costStatus;
    final lOther$costStatus = other.costStatus;
    if (l$costStatus != lOther$costStatus) {
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
    final l$costType = costType;
    final lOther$costType = other.costType;
    if (l$costType != lOther$costType) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$costs
    on Query$GetTicketDetailsById$ticket$lines$costs {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs<
    Query$GetTicketDetailsById$ticket$lines$costs
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$costs(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$costs<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs(
    Query$GetTicketDetailsById$ticket$lines$costs instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$costs) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs;

  TRes call({
    String? typeId,
    Query$GetTicketDetailsById$ticket$lines$costs$costParty? costParty,
    double? value,
    Query$GetTicketDetailsById$ticket$lines$costs$rate? rate,
    Enum$CostStatus? costStatus,
    List<Query$GetTicketDetailsById$ticket$lines$costs$comments>? comments,
    Query$GetTicketDetailsById$ticket$lines$costs$costType? costType,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty<TRes>
  get costParty;
  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate<TRes> get rate;
  TRes comments(
    Iterable<Query$GetTicketDetailsById$ticket$lines$costs$comments> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments<
          Query$GetTicketDetailsById$ticket$lines$costs$comments
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType<TRes>
  get costType;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines$costs<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$costs _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$costs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typeId = _undefined,
    Object? costParty = _undefined,
    Object? value = _undefined,
    Object? rate = _undefined,
    Object? costStatus = _undefined,
    Object? comments = _undefined,
    Object? costType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$costs(
      typeId: typeId == _undefined || typeId == null
          ? _instance.typeId
          : (typeId as String),
      costParty: costParty == _undefined || costParty == null
          ? _instance.costParty
          : (costParty
                as Query$GetTicketDetailsById$ticket$lines$costs$costParty),
      value: value == _undefined ? _instance.value : (value as double?),
      rate: rate == _undefined
          ? _instance.rate
          : (rate as Query$GetTicketDetailsById$ticket$lines$costs$rate?),
      costStatus: costStatus == _undefined || costStatus == null
          ? _instance.costStatus
          : (costStatus as Enum$CostStatus),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments
                as List<
                  Query$GetTicketDetailsById$ticket$lines$costs$comments
                >),
      costType: costType == _undefined
          ? _instance.costType
          : (costType
                as Query$GetTicketDetailsById$ticket$lines$costs$costType?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty<TRes>
  get costParty {
    final local$costParty = _instance.costParty;
    return CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty(
      local$costParty,
      (e) => call(costParty: e),
    );
  }

  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate<TRes> get rate {
    final local$rate = _instance.rate;
    return local$rate == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate(
            local$rate,
            (e) => call(rate: e),
          );
  }

  TRes comments(
    Iterable<Query$GetTicketDetailsById$ticket$lines$costs$comments> Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments<
          Query$GetTicketDetailsById$ticket$lines$costs$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) => CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType<TRes>
  get costType {
    final local$costType = _instance.costType;
    return local$costType == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType(
            local$costType,
            (e) => call(costType: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines$costs<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs(this._res);

  TRes _res;

  call({
    String? typeId,
    Query$GetTicketDetailsById$ticket$lines$costs$costParty? costParty,
    double? value,
    Query$GetTicketDetailsById$ticket$lines$costs$rate? rate,
    Enum$CostStatus? costStatus,
    List<Query$GetTicketDetailsById$ticket$lines$costs$comments>? comments,
    Query$GetTicketDetailsById$ticket$lines$costs$costType? costType,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty<TRes>
  get costParty =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty.stub(
        _res,
      );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate<TRes> get rate =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate.stub(_res);

  comments(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType<TRes>
  get costType =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$lines$costs$costParty {
  Query$GetTicketDetailsById$ticket$lines$costs$costParty({
    required this.partyAccountNo,
    required this.partyName,
    this.$__typename = 'CostParty',
  });

  factory Query$GetTicketDetailsById$ticket$lines$costs$costParty.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partyAccountNo = json['partyAccountNo'];
    final l$partyName = json['partyName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$costs$costParty(
      partyAccountNo: (l$partyAccountNo as String),
      partyName: (l$partyName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String partyAccountNo;

  final String partyName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    _resultData['partyAccountNo'] = l$partyAccountNo;
    final l$partyName = partyName;
    _resultData['partyName'] = l$partyName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    final l$partyName = partyName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$partyAccountNo, l$partyName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$costs$costParty ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (l$partyName != lOther$partyName) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$costs$costParty
    on Query$GetTicketDetailsById$ticket$lines$costs$costParty {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty<
    Query$GetTicketDetailsById$ticket$lines$costs$costParty
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty(
    Query$GetTicketDetailsById$ticket$lines$costs$costParty instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$costs$costParty) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$costParty;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$costParty;

  TRes call({String? partyAccountNo, String? partyName, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$costParty<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$costParty(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$costs$costParty _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$costs$costParty)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyAccountNo = _undefined,
    Object? partyName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$costs$costParty(
      partyAccountNo: partyAccountNo == _undefined || partyAccountNo == null
          ? _instance.partyAccountNo
          : (partyAccountNo as String),
      partyName: partyName == _undefined || partyName == null
          ? _instance.partyName
          : (partyName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$costParty<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costParty<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$costParty(
    this._res,
  );

  TRes _res;

  call({String? partyAccountNo, String? partyName, String? $__typename}) =>
      _res;
}

class Query$GetTicketDetailsById$ticket$lines$costs$rate {
  Query$GetTicketDetailsById$ticket$lines$costs$rate({
    required this.id,
    required this.isRate,
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$GetTicketDetailsById$ticket$lines$costs$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$isRate = json['isRate'];
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$costs$rate(
      id: (l$id as int),
      isRate: (l$isRate as bool),
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final bool isRate;

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isRate = isRate;
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$isRate, l$uom, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$costs$rate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$costs$rate
    on Query$GetTicketDetailsById$ticket$lines$costs$rate {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate<
    Query$GetTicketDetailsById$ticket$lines$costs$rate
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate(
    Query$GetTicketDetailsById$ticket$lines$costs$rate instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$costs$rate) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$rate;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$rate;

  TRes call({
    int? id,
    bool? isRate,
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$rate<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$rate(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$costs$rate _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$costs$rate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isRate = _undefined,
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$costs$rate(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$rate<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$rate<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$rate(
    this._res,
  );

  TRes _res;

  call({
    int? id,
    bool? isRate,
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$costs$comments {
  Query$GetTicketDetailsById$ticket$lines$costs$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetTicketDetailsById$ticket$lines$costs$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$costs$comments(
      content: (l$content as String),
      created:
          Query$GetTicketDetailsById$ticket$lines$costs$comments$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetTicketDetailsById$ticket$lines$costs$comments$created created;

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
    if (other is! Query$GetTicketDetailsById$ticket$lines$costs$comments ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$costs$comments
    on Query$GetTicketDetailsById$ticket$lines$costs$comments {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments<
    Query$GetTicketDetailsById$ticket$lines$costs$comments
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments(
    Query$GetTicketDetailsById$ticket$lines$costs$comments instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$costs$comments) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments;

  TRes call({
    String? content,
    Query$GetTicketDetailsById$ticket$lines$costs$comments$created? created,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created<TRes>
  get created;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$costs$comments _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$costs$comments)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$costs$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetTicketDetailsById$ticket$lines$costs$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Query$GetTicketDetailsById$ticket$lines$costs$comments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created<TRes>
  get created =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$lines$costs$comments$created {
  Query$GetTicketDetailsById$ticket$lines$costs$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetailsById$ticket$lines$costs$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$costs$comments$created(
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
            is! Query$GetTicketDetailsById$ticket$lines$costs$comments$created ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$costs$comments$created
    on Query$GetTicketDetailsById$ticket$lines$costs$comments$created {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created<
    Query$GetTicketDetailsById$ticket$lines$costs$comments$created
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created(
    Query$GetTicketDetailsById$ticket$lines$costs$comments$created instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$lines$costs$comments$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments$created;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$costs$comments$created
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$lines$costs$comments$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$costs$comments$created(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$comments$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$comments$created(
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

class Query$GetTicketDetailsById$ticket$lines$costs$costType {
  Query$GetTicketDetailsById$ticket$lines$costs$costType({
    required this.id,
    required this.type,
    this.$__typename = 'CostType',
  });

  factory Query$GetTicketDetailsById$ticket$lines$costs$costType.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$costs$costType(
      id: (l$id as String),
      type: (l$type as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$type, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$costs$costType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$costs$costType
    on Query$GetTicketDetailsById$ticket$lines$costs$costType {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType<
    Query$GetTicketDetailsById$ticket$lines$costs$costType
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType(
    Query$GetTicketDetailsById$ticket$lines$costs$costType instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$costs$costType) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$costType;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$costType;

  TRes call({String? id, String? type, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$costType<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$costs$costType(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$costs$costType _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$costs$costType)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$costs$costType(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$costType<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$costs$costType<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$costs$costType(
    this._res,
  );

  TRes _res;

  call({String? id, String? type, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$created {
  Query$GetTicketDetailsById$ticket$lines$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetailsById$ticket$lines$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$created(
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
    if (other is! Query$GetTicketDetailsById$ticket$lines$created ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$created
    on Query$GetTicketDetailsById$ticket$lines$created {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$created<
    Query$GetTicketDetailsById$ticket$lines$created
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$created(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$created<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$created(
    Query$GetTicketDetailsById$ticket$lines$created instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$created) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$created;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$created<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines$created<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$created _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$created(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$created<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines$created<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$deductions {
  Query$GetTicketDetailsById$ticket$lines$deductions({
    required this.mediaAssets,
    required this.typeId,
    this.value,
    this.weight,
    this.weightSerial,
    this.$__typename = 'LineDeduction',
  });

  factory Query$GetTicketDetailsById$ticket$lines$deductions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mediaAssets = json['mediaAssets'];
    final l$typeId = json['typeId'];
    final l$value = json['value'];
    final l$weight = json['weight'];
    final l$weightSerial = json['weightSerial'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$deductions(
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      typeId: (l$typeId as String),
      value: (l$value as num?)?.toDouble(),
      weight: l$weight == null
          ? null
          : Query$GetTicketDetailsById$ticket$lines$deductions$weight.fromJson(
              (l$weight as Map<String, dynamic>),
            ),
      weightSerial: (l$weightSerial as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets>
  mediaAssets;

  final String typeId;

  final double? value;

  final Query$GetTicketDetailsById$ticket$lines$deductions$weight? weight;

  final String? weightSerial;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$typeId = typeId;
    _resultData['typeId'] = l$typeId;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$weight = weight;
    _resultData['weight'] = l$weight?.toJson();
    final l$weightSerial = weightSerial;
    _resultData['weightSerial'] = l$weightSerial;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaAssets = mediaAssets;
    final l$typeId = typeId;
    final l$value = value;
    final l$weight = weight;
    final l$weightSerial = weightSerial;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$typeId,
      l$value,
      l$weight,
      l$weightSerial,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$deductions ||
        runtimeType != other.runtimeType) {
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
    final l$typeId = typeId;
    final lOther$typeId = other.typeId;
    if (l$typeId != lOther$typeId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (l$weightSerial != lOther$weightSerial) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$deductions
    on Query$GetTicketDetailsById$ticket$lines$deductions {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions<
    Query$GetTicketDetailsById$ticket$lines$deductions
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions(
    Query$GetTicketDetailsById$ticket$lines$deductions instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$deductions) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$deductions;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$deductions;

  TRes call({
    List<Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets>?
    mediaAssets,
    String? typeId,
    double? value,
    Query$GetTicketDetailsById$ticket$lines$deductions$weight? weight,
    String? weightSerial,
    String? $__typename,
  });
  TRes mediaAssets(
    Iterable<Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets>
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets<
          Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight<TRes>
  get weight;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$deductions<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$deductions(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$deductions _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$deductions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaAssets = _undefined,
    Object? typeId = _undefined,
    Object? value = _undefined,
    Object? weight = _undefined,
    Object? weightSerial = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$deductions(
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets
                >),
      typeId: typeId == _undefined || typeId == null
          ? _instance.typeId
          : (typeId as String),
      value: value == _undefined ? _instance.value : (value as double?),
      weight: weight == _undefined
          ? _instance.weight
          : (weight
                as Query$GetTicketDetailsById$ticket$lines$deductions$weight?),
      weightSerial: weightSerial == _undefined
          ? _instance.weightSerial
          : (weightSerial as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes mediaAssets(
    Iterable<Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets>
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets<
          Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight<TRes>
  get weight {
    final local$weight = _instance.weight;
    return local$weight == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight(
            local$weight,
            (e) => call(weight: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$deductions<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$deductions(
    this._res,
  );

  TRes _res;

  call({
    List<Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets>?
    mediaAssets,
    String? typeId,
    double? value,
    Query$GetTicketDetailsById$ticket$lines$deductions$weight? weight,
    String? weightSerial,
    String? $__typename,
  }) => _res;

  mediaAssets(_fn) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight<TRes>
  get weight =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets {
  Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets({
    this.sasUrl,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets(
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sasUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets
    on Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets<
    Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets(
    Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets;

  TRes call({String? sasUrl, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sasUrl = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets(
          sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$deductions$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? sasUrl, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$deductions$weight {
  Query$GetTicketDetailsById$ticket$lines$deductions$weight({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Query$GetTicketDetailsById$ticket$lines$deductions$weight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$deductions$weight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$deductions$weight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$deductions$weight
    on Query$GetTicketDetailsById$ticket$lines$deductions$weight {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight<
    Query$GetTicketDetailsById$ticket$lines$deductions$weight
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight(
    Query$GetTicketDetailsById$ticket$lines$deductions$weight instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$deductions$weight)
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$deductions$weight;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$deductions$weight;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$deductions$weight<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$deductions$weight(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$deductions$weight _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$deductions$weight)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$deductions$weight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$deductions$weight<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$deductions$weight<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$deductions$weight(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$grossWeight {
  Query$GetTicketDetailsById$ticket$lines$grossWeight({
    required this.id,
    required this.value,
    required this.uom,
    this.$__typename = 'UomValue',
  });

  factory Query$GetTicketDetailsById$ticket$lines$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$grossWeight(
      id: (l$id as int),
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final double value;

  final Enum$Uom uom;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$value = value;
    final l$uom = uom;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$value, l$uom, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$grossWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$grossWeight
    on Query$GetTicketDetailsById$ticket$lines$grossWeight {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight<
    Query$GetTicketDetailsById$ticket$lines$grossWeight
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight(
    Query$GetTicketDetailsById$ticket$lines$grossWeight instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$grossWeight) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$grossWeight;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$grossWeight;

  TRes call({int? id, double? value, Enum$Uom? uom, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$grossWeight<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$grossWeight(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$grossWeight _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$grossWeight)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$grossWeight(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$grossWeight<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$grossWeight(
    this._res,
  );

  TRes _res;

  call({int? id, double? value, Enum$Uom? uom, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$inspectionDetails {
  Query$GetTicketDetailsById$ticket$lines$inspectionDetails({
    required this.inspectionMedia,
    this.$__typename = 'InspectionDetails',
  });

  factory Query$GetTicketDetailsById$ticket$lines$inspectionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$inspectionMedia = json['inspectionMedia'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$inspectionDetails(
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
  >
  inspectionMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inspectionMedia = inspectionMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$inspectionDetails ||
        runtimeType != other.runtimeType) {
      return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$inspectionDetails
    on Query$GetTicketDetailsById$ticket$lines$inspectionDetails {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails<
    Query$GetTicketDetailsById$ticket$lines$inspectionDetails
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails(
    Query$GetTicketDetailsById$ticket$lines$inspectionDetails instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$inspectionDetails)
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails;

  TRes call({
    List<
      Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
    >?
    inspectionMedia,
    String? $__typename,
  });
  TRes inspectionMedia(
    Iterable<
      Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia<
          Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$inspectionDetails _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$inspectionDetails)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inspectionMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$inspectionDetails(
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes inspectionMedia(
    Iterable<
      Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia<
          Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
    >?
    inspectionMedia,
    String? $__typename,
  }) => _res;

  inspectionMedia(_fn) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia {
  Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia({
    this.sasUrl,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia(
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sasUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
    on Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia<
    Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia(
    Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
    instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia;

  TRes call({String? sasUrl, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sasUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia(
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$inspectionDetails$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({String? sasUrl, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$internalComments {
  Query$GetTicketDetailsById$ticket$lines$internalComments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetTicketDetailsById$ticket$lines$internalComments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$internalComments(
      content: (l$content as String),
      created:
          Query$GetTicketDetailsById$ticket$lines$internalComments$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetTicketDetailsById$ticket$lines$internalComments$created
  created;

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
    if (other is! Query$GetTicketDetailsById$ticket$lines$internalComments ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$internalComments
    on Query$GetTicketDetailsById$ticket$lines$internalComments {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments<
    Query$GetTicketDetailsById$ticket$lines$internalComments
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments(
    Query$GetTicketDetailsById$ticket$lines$internalComments instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$internalComments)
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$internalComments;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$internalComments;

  TRes call({
    String? content,
    Query$GetTicketDetailsById$ticket$lines$internalComments$created? created,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$internalComments<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$internalComments(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$internalComments _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$internalComments)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$internalComments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetTicketDetailsById$ticket$lines$internalComments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$internalComments<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$internalComments(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Query$GetTicketDetailsById$ticket$lines$internalComments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$lines$internalComments$created {
  Query$GetTicketDetailsById$ticket$lines$internalComments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetailsById$ticket$lines$internalComments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$internalComments$created(
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
            is! Query$GetTicketDetailsById$ticket$lines$internalComments$created ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$internalComments$created
    on Query$GetTicketDetailsById$ticket$lines$internalComments$created {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created<
    Query$GetTicketDetailsById$ticket$lines$internalComments$created
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created(
    Query$GetTicketDetailsById$ticket$lines$internalComments$created instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$lines$internalComments$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$internalComments$created;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$internalComments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$internalComments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$internalComments$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$internalComments$created
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$lines$internalComments$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$internalComments$created(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$internalComments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$internalComments$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$internalComments$created(
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

class Query$GetTicketDetailsById$ticket$lines$location {
  Query$GetTicketDetailsById$ticket$lines$location({
    required this.code,
    required this.description,
    this.product,
    this.$__typename = 'InventoryLocation',
  });

  factory Query$GetTicketDetailsById$ticket$lines$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$product = json['product'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$location(
      code: (l$code as String),
      description: (l$description as String),
      product: l$product == null
          ? null
          : Query$GetTicketDetailsById$ticket$lines$location$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final Query$GetTicketDetailsById$ticket$lines$location$product? product;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$product = product;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$description, l$product, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$location ||
        runtimeType != other.runtimeType) {
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
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$location
    on Query$GetTicketDetailsById$ticket$lines$location {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$location<
    Query$GetTicketDetailsById$ticket$lines$location
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$location(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$location<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$location(
    Query$GetTicketDetailsById$ticket$lines$location instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$location) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$location;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$location.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$location;

  TRes call({
    String? code,
    String? description,
    Query$GetTicketDetailsById$ticket$lines$location$product? product,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product<TRes>
  get product;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$location<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines$location<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$location(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$location _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? product = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$location(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      product: product == _undefined
          ? _instance.product
          : (product
                as Query$GetTicketDetailsById$ticket$lines$location$product?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product<TRes>
  get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product(
            local$product,
            (e) => call(product: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$location<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines$location<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$location(this._res);

  TRes _res;

  call({
    String? code,
    String? description,
    Query$GetTicketDetailsById$ticket$lines$location$product? product,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product<TRes>
  get product =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$lines$location$product {
  Query$GetTicketDetailsById$ticket$lines$location$product({
    required this.code,
    required this.description,
    this.$__typename = 'Product',
  });

  factory Query$GetTicketDetailsById$ticket$lines$location$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$location$product(
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$location$product ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$location$product
    on Query$GetTicketDetailsById$ticket$lines$location$product {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product<
    Query$GetTicketDetailsById$ticket$lines$location$product
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product(
    Query$GetTicketDetailsById$ticket$lines$location$product instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$location$product)
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$location$product;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$location$product;

  TRes call({String? code, String? description, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$location$product<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$location$product(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$location$product _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$location$product)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$location$product(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$location$product<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$location$product<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$location$product(
    this._res,
  );

  TRes _res;

  call({String? code, String? description, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$mediaAssets {
  Query$GetTicketDetailsById$ticket$lines$mediaAssets({
    this.sasUrl,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetTicketDetailsById$ticket$lines$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$mediaAssets(
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sasUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$mediaAssets
    on Query$GetTicketDetailsById$ticket$lines$mediaAssets {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$mediaAssets<
    Query$GetTicketDetailsById$ticket$lines$mediaAssets
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$lines$mediaAssets(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$mediaAssets<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$mediaAssets(
    Query$GetTicketDetailsById$ticket$lines$mediaAssets instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$mediaAssets) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$mediaAssets;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$mediaAssets;

  TRes call({String? sasUrl, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$mediaAssets<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$mediaAssets<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$mediaAssets _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$mediaAssets)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sasUrl = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetTicketDetailsById$ticket$lines$mediaAssets(
          sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$mediaAssets<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? sasUrl, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$modified {
  Query$GetTicketDetailsById$ticket$lines$modified({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Query$GetTicketDetailsById$ticket$lines$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$modified(
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
    if (other is! Query$GetTicketDetailsById$ticket$lines$modified ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$modified
    on Query$GetTicketDetailsById$ticket$lines$modified {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$modified<
    Query$GetTicketDetailsById$ticket$lines$modified
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$modified(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$modified<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$modified(
    Query$GetTicketDetailsById$ticket$lines$modified instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$modified) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$modified;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$modified;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$modified<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines$modified<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$modified(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$modified _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$modified(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$modified<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines$modified<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$modified(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$netWeight {
  Query$GetTicketDetailsById$ticket$lines$netWeight({
    required this.id,
    required this.value,
    required this.uom,
    this.$__typename = 'UomValue',
  });

  factory Query$GetTicketDetailsById$ticket$lines$netWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$netWeight(
      id: (l$id as int),
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final double value;

  final Enum$Uom uom;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$value = value;
    final l$uom = uom;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$value, l$uom, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$netWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$netWeight
    on Query$GetTicketDetailsById$ticket$lines$netWeight {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight<
    Query$GetTicketDetailsById$ticket$lines$netWeight
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight(
    Query$GetTicketDetailsById$ticket$lines$netWeight instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$netWeight) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$netWeight;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$netWeight;

  TRes call({int? id, double? value, Enum$Uom? uom, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$netWeight<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$netWeight(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$netWeight _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$netWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$netWeight(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$netWeight<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$netWeight<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$netWeight(
    this._res,
  );

  TRes _res;

  call({int? id, double? value, Enum$Uom? uom, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$rate {
  Query$GetTicketDetailsById$ticket$lines$rate({
    required this.id,
    required this.value,
    required this.uom,
    this.$__typename = 'UomValue',
  });

  factory Query$GetTicketDetailsById$ticket$lines$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$rate(
      id: (l$id as int),
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final double value;

  final Enum$Uom uom;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$value = value;
    final l$uom = uom;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$value, l$uom, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$rate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$rate
    on Query$GetTicketDetailsById$ticket$lines$rate {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$rate<
    Query$GetTicketDetailsById$ticket$lines$rate
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$rate(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$rate<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$rate(
    Query$GetTicketDetailsById$ticket$lines$rate instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$rate) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$rate;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$rate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$rate;

  TRes call({int? id, double? value, Enum$Uom? uom, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$rate<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines$rate<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$rate(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$rate _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$rate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$rate(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$rate<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$lines$rate<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$rate(this._res);

  TRes _res;

  call({int? id, double? value, Enum$Uom? uom, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$lines$stockAsProduct {
  Query$GetTicketDetailsById$ticket$lines$stockAsProduct({
    required this.code,
    required this.description,
    this.$__typename = 'Product',
  });

  factory Query$GetTicketDetailsById$ticket$lines$stockAsProduct.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$lines$stockAsProduct(
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$lines$stockAsProduct ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$lines$stockAsProduct
    on Query$GetTicketDetailsById$ticket$lines$stockAsProduct {
  CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct<
    Query$GetTicketDetailsById$ticket$lines$stockAsProduct
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct(
    Query$GetTicketDetailsById$ticket$lines$stockAsProduct instance,
    TRes Function(Query$GetTicketDetailsById$ticket$lines$stockAsProduct) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$stockAsProduct;

  factory CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$stockAsProduct;

  TRes call({String? code, String? description, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$stockAsProduct<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$lines$stockAsProduct(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$lines$stockAsProduct _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$lines$stockAsProduct)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$lines$stockAsProduct(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$stockAsProduct<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$lines$stockAsProduct<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$lines$stockAsProduct(
    this._res,
  );

  TRes _res;

  call({String? code, String? description, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$mediaAssets {
  Query$GetTicketDetailsById$ticket$mediaAssets({
    required this.url,
    this.sasUrl,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetTicketDetailsById$ticket$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$mediaAssets(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$sasUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$mediaAssets ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTicketDetailsById$ticket$mediaAssets
    on Query$GetTicketDetailsById$ticket$mediaAssets {
  CopyWith$Query$GetTicketDetailsById$ticket$mediaAssets<
    Query$GetTicketDetailsById$ticket$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$mediaAssets(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$mediaAssets<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$mediaAssets(
    Query$GetTicketDetailsById$ticket$mediaAssets instance,
    TRes Function(Query$GetTicketDetailsById$ticket$mediaAssets) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$mediaAssets;

  factory CopyWith$Query$GetTicketDetailsById$ticket$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$mediaAssets;

  TRes call({String? url, String? sasUrl, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$mediaAssets<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$mediaAssets<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$mediaAssets _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$mediaAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$mediaAssets<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$mediaAssets<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$mediaAssets(this._res);

  TRes _res;

  call({String? url, String? sasUrl, String? $__typename}) => _res;
}

class Query$GetTicketDetailsById$ticket$modified {
  Query$GetTicketDetailsById$ticket$modified({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Query$GetTicketDetailsById$ticket$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$modified(
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
    if (other is! Query$GetTicketDetailsById$ticket$modified ||
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$modified
    on Query$GetTicketDetailsById$ticket$modified {
  CopyWith$Query$GetTicketDetailsById$ticket$modified<
    Query$GetTicketDetailsById$ticket$modified
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$modified(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$modified<TRes> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$modified(
    Query$GetTicketDetailsById$ticket$modified instance,
    TRes Function(Query$GetTicketDetailsById$ticket$modified) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$modified;

  factory CopyWith$Query$GetTicketDetailsById$ticket$modified.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$modified;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$modified<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$modified<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$modified(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$modified _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$modified(
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

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$modified<TRes>
    implements CopyWith$Query$GetTicketDetailsById$ticket$modified<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$modified(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$GetTicketDetailsById$ticket$transportDetails {
  Query$GetTicketDetailsById$ticket$transportDetails({
    this.deliveryNote,
    this.jobNumber,
    required this.transportType,
    this.vehicleReg,
    this.$__typename = 'TransportDetails',
  });

  factory Query$GetTicketDetailsById$ticket$transportDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$deliveryNote = json['deliveryNote'];
    final l$jobNumber = json['jobNumber'];
    final l$transportType = json['transportType'];
    final l$vehicleReg = json['vehicleReg'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$transportDetails(
      deliveryNote: (l$deliveryNote as String?),
      jobNumber: (l$jobNumber as int?),
      transportType: fromJson$Enum$TransportType((l$transportType as String)),
      vehicleReg: (l$vehicleReg as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? deliveryNote;

  final int? jobNumber;

  final Enum$TransportType transportType;

  final String? vehicleReg;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deliveryNote = deliveryNote;
    _resultData['deliveryNote'] = l$deliveryNote;
    final l$jobNumber = jobNumber;
    _resultData['jobNumber'] = l$jobNumber;
    final l$transportType = transportType;
    _resultData['transportType'] = toJson$Enum$TransportType(l$transportType);
    final l$vehicleReg = vehicleReg;
    _resultData['vehicleReg'] = l$vehicleReg;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deliveryNote = deliveryNote;
    final l$jobNumber = jobNumber;
    final l$transportType = transportType;
    final l$vehicleReg = vehicleReg;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deliveryNote,
      l$jobNumber,
      l$transportType,
      l$vehicleReg,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$transportDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deliveryNote = deliveryNote;
    final lOther$deliveryNote = other.deliveryNote;
    if (l$deliveryNote != lOther$deliveryNote) {
      return false;
    }
    final l$jobNumber = jobNumber;
    final lOther$jobNumber = other.jobNumber;
    if (l$jobNumber != lOther$jobNumber) {
      return false;
    }
    final l$transportType = transportType;
    final lOther$transportType = other.transportType;
    if (l$transportType != lOther$transportType) {
      return false;
    }
    final l$vehicleReg = vehicleReg;
    final lOther$vehicleReg = other.vehicleReg;
    if (l$vehicleReg != lOther$vehicleReg) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$transportDetails
    on Query$GetTicketDetailsById$ticket$transportDetails {
  CopyWith$Query$GetTicketDetailsById$ticket$transportDetails<
    Query$GetTicketDetailsById$ticket$transportDetails
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$transportDetails(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$transportDetails<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$transportDetails(
    Query$GetTicketDetailsById$ticket$transportDetails instance,
    TRes Function(Query$GetTicketDetailsById$ticket$transportDetails) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$transportDetails;

  factory CopyWith$Query$GetTicketDetailsById$ticket$transportDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$transportDetails;

  TRes call({
    String? deliveryNote,
    int? jobNumber,
    Enum$TransportType? transportType,
    String? vehicleReg,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$transportDetails<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$transportDetails<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$transportDetails(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$transportDetails _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$transportDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deliveryNote = _undefined,
    Object? jobNumber = _undefined,
    Object? transportType = _undefined,
    Object? vehicleReg = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$transportDetails(
      deliveryNote: deliveryNote == _undefined
          ? _instance.deliveryNote
          : (deliveryNote as String?),
      jobNumber: jobNumber == _undefined
          ? _instance.jobNumber
          : (jobNumber as int?),
      transportType: transportType == _undefined || transportType == null
          ? _instance.transportType
          : (transportType as Enum$TransportType),
      vehicleReg: vehicleReg == _undefined
          ? _instance.vehicleReg
          : (vehicleReg as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$transportDetails<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$transportDetails<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$transportDetails(
    this._res,
  );

  TRes _res;

  call({
    String? deliveryNote,
    int? jobNumber,
    Enum$TransportType? transportType,
    String? vehicleReg,
    String? $__typename,
  }) => _res;
}

class Query$GetTicketDetailsById$ticket$weightValidation {
  Query$GetTicketDetailsById$ticket$weightValidation({
    required this.internalNet,
    this.$__typename = 'InternalWeightValidation',
  });

  factory Query$GetTicketDetailsById$ticket$weightValidation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$internalNet = json['internalNet'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$weightValidation(
      internalNet:
          Query$GetTicketDetailsById$ticket$weightValidation$internalNet.fromJson(
            (l$internalNet as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetailsById$ticket$weightValidation$internalNet
  internalNet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$internalNet = internalNet;
    _resultData['internalNet'] = l$internalNet.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$internalNet = internalNet;
    final l$$__typename = $__typename;
    return Object.hashAll([l$internalNet, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetailsById$ticket$weightValidation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$internalNet = internalNet;
    final lOther$internalNet = other.internalNet;
    if (l$internalNet != lOther$internalNet) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$weightValidation
    on Query$GetTicketDetailsById$ticket$weightValidation {
  CopyWith$Query$GetTicketDetailsById$ticket$weightValidation<
    Query$GetTicketDetailsById$ticket$weightValidation
  >
  get copyWith => CopyWith$Query$GetTicketDetailsById$ticket$weightValidation(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$weightValidation<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$weightValidation(
    Query$GetTicketDetailsById$ticket$weightValidation instance,
    TRes Function(Query$GetTicketDetailsById$ticket$weightValidation) then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$weightValidation;

  factory CopyWith$Query$GetTicketDetailsById$ticket$weightValidation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$weightValidation;

  TRes call({
    Query$GetTicketDetailsById$ticket$weightValidation$internalNet? internalNet,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet<TRes>
  get internalNet;
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$weightValidation<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$weightValidation<TRes> {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$weightValidation(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$weightValidation _instance;

  final TRes Function(Query$GetTicketDetailsById$ticket$weightValidation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? internalNet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$weightValidation(
      internalNet: internalNet == _undefined || internalNet == null
          ? _instance.internalNet
          : (internalNet
                as Query$GetTicketDetailsById$ticket$weightValidation$internalNet),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet<TRes>
  get internalNet {
    final local$internalNet = _instance.internalNet;
    return CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet(
      local$internalNet,
      (e) => call(internalNet: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$weightValidation<TRes>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$weightValidation<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$weightValidation(
    this._res,
  );

  TRes _res;

  call({
    Query$GetTicketDetailsById$ticket$weightValidation$internalNet? internalNet,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet<TRes>
  get internalNet =>
      CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet.stub(
        _res,
      );
}

class Query$GetTicketDetailsById$ticket$weightValidation$internalNet {
  Query$GetTicketDetailsById$ticket$weightValidation$internalNet({
    required this.id,
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$GetTicketDetailsById$ticket$weightValidation$internalNet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetailsById$ticket$weightValidation$internalNet(
      id: (l$id as int),
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$uom, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetailsById$ticket$weightValidation$internalNet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$GetTicketDetailsById$ticket$weightValidation$internalNet
    on Query$GetTicketDetailsById$ticket$weightValidation$internalNet {
  CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet<
    Query$GetTicketDetailsById$ticket$weightValidation$internalNet
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet<
  TRes
> {
  factory CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet(
    Query$GetTicketDetailsById$ticket$weightValidation$internalNet instance,
    TRes Function(
      Query$GetTicketDetailsById$ticket$weightValidation$internalNet,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetailsById$ticket$weightValidation$internalNet;

  factory CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$weightValidation$internalNet;

  TRes call({int? id, Enum$Uom? uom, double? value, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetailsById$ticket$weightValidation$internalNet<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetailsById$ticket$weightValidation$internalNet(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetailsById$ticket$weightValidation$internalNet
  _instance;

  final TRes Function(
    Query$GetTicketDetailsById$ticket$weightValidation$internalNet,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetailsById$ticket$weightValidation$internalNet(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$weightValidation$internalNet<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetailsById$ticket$weightValidation$internalNet<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetailsById$ticket$weightValidation$internalNet(
    this._res,
  );

  TRes _res;

  call({int? id, Enum$Uom? uom, double? value, String? $__typename}) => _res;
}
