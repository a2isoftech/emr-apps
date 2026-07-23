import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetTicketDetails {
  factory Variables$Query$GetTicketDetails({required String input}) =>
      Variables$Query$GetTicketDetails._({r'input': input});

  Variables$Query$GetTicketDetails._(this._$data);

  factory Variables$Query$GetTicketDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    return Variables$Query$GetTicketDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get input => (_$data['input'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input;
    return result$data;
  }

  CopyWith$Variables$Query$GetTicketDetails<Variables$Query$GetTicketDetails>
  get copyWith => CopyWith$Variables$Query$GetTicketDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTicketDetails ||
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

abstract class CopyWith$Variables$Query$GetTicketDetails<TRes> {
  factory CopyWith$Variables$Query$GetTicketDetails(
    Variables$Query$GetTicketDetails instance,
    TRes Function(Variables$Query$GetTicketDetails) then,
  ) = _CopyWithImpl$Variables$Query$GetTicketDetails;

  factory CopyWith$Variables$Query$GetTicketDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTicketDetails;

  TRes call({String? input});
}

class _CopyWithImpl$Variables$Query$GetTicketDetails<TRes>
    implements CopyWith$Variables$Query$GetTicketDetails<TRes> {
  _CopyWithImpl$Variables$Query$GetTicketDetails(this._instance, this._then);

  final Variables$Query$GetTicketDetails _instance;

  final TRes Function(Variables$Query$GetTicketDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$GetTicketDetails._({
      ..._instance._$data,
      if (input != _undefined && input != null) 'input': (input as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetTicketDetails<TRes>
    implements CopyWith$Variables$Query$GetTicketDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTicketDetails(this._res);

  TRes _res;

  call({String? input}) => _res;
}

class Query$GetTicketDetails {
  Query$GetTicketDetails({required this.ticket, this.$__typename = 'Query'});

  factory Query$GetTicketDetails.fromJson(Map<String, dynamic> json) {
    final l$ticket = json['ticket'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails(
      ticket: Query$GetTicketDetails$ticket.fromJson(
        (l$ticket as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetails$ticket ticket;

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
    if (other is! Query$GetTicketDetails || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTicketDetails on Query$GetTicketDetails {
  CopyWith$Query$GetTicketDetails<Query$GetTicketDetails> get copyWith =>
      CopyWith$Query$GetTicketDetails(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails<TRes> {
  factory CopyWith$Query$GetTicketDetails(
    Query$GetTicketDetails instance,
    TRes Function(Query$GetTicketDetails) then,
  ) = _CopyWithImpl$Query$GetTicketDetails;

  factory CopyWith$Query$GetTicketDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetails;

  TRes call({Query$GetTicketDetails$ticket? ticket, String? $__typename});
  CopyWith$Query$GetTicketDetails$ticket<TRes> get ticket;
}

class _CopyWithImpl$Query$GetTicketDetails<TRes>
    implements CopyWith$Query$GetTicketDetails<TRes> {
  _CopyWithImpl$Query$GetTicketDetails(this._instance, this._then);

  final Query$GetTicketDetails _instance;

  final TRes Function(Query$GetTicketDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ticket = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetTicketDetails(
          ticket: ticket == _undefined || ticket == null
              ? _instance.ticket
              : (ticket as Query$GetTicketDetails$ticket),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetTicketDetails$ticket<TRes> get ticket {
    final local$ticket = _instance.ticket;
    return CopyWith$Query$GetTicketDetails$ticket(
      local$ticket,
      (e) => call(ticket: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetails<TRes>
    implements CopyWith$Query$GetTicketDetails<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails(this._res);

  TRes _res;

  call({Query$GetTicketDetails$ticket? ticket, String? $__typename}) => _res;

  CopyWith$Query$GetTicketDetails$ticket<TRes> get ticket =>
      CopyWith$Query$GetTicketDetails$ticket.stub(_res);
}

const documentNodeQueryGetTicketDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetTicketDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
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
                  name: NameNode(value: 'yardCode'),
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
                  name: NameNode(value: 'containerNumber'),
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
                  name: NameNode(value: 'ticketNumber'),
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
                        name: NameNode(value: 'details'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
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
                  name: NameNode(value: 'transportDetails'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
                  name: NameNode(value: 'lines'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'isActive'),
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
                        name: NameNode(value: 'inspectionDetails'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'discrepancies'),
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
                                          name: NameNode(value: 'user'),
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
                                                name: NameNode(value: 'id'),
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
                                          name: NameNode(value: 'at'),
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
                              name: NameNode(value: 'inspectionMedia'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'inspectionNote'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'discrepantReason'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
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
                        name: NameNode(value: 'netWeight'),
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
                        name: NameNode(value: 'deductions'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'weight'),
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
                  name: NameNode(value: 'inspectionMedia'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'inspectionNote'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'discrepantReason'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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

class Query$GetTicketDetails$ticket {
  Query$GetTicketDetails$ticket({
    required this.id,
    required this.yardCode,
    required this.ticketType,
    this.containerNumber,
    required this.created,
    required this.ticketNumber,
    required this.account,
    required this.transportDetails,
    required this.lines,
    required this.inspectionMedia,
    this.$__typename = 'Ticket',
  });

  factory Query$GetTicketDetails$ticket.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$yardCode = json['yardCode'];
    final l$ticketType = json['ticketType'];
    final l$containerNumber = json['containerNumber'];
    final l$created = json['created'];
    final l$ticketNumber = json['ticketNumber'];
    final l$account = json['account'];
    final l$transportDetails = json['transportDetails'];
    final l$lines = json['lines'];
    final l$inspectionMedia = json['inspectionMedia'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket(
      id: (l$id as String),
      yardCode: (l$yardCode as String),
      ticketType: fromJson$Enum$TicketType((l$ticketType as String)),
      containerNumber: (l$containerNumber as String?),
      created: Query$GetTicketDetails$ticket$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      ticketNumber: (l$ticketNumber as int),
      account: Query$GetTicketDetails$ticket$account.fromJson(
        (l$account as Map<String, dynamic>),
      ),
      transportDetails: Query$GetTicketDetails$ticket$transportDetails.fromJson(
        (l$transportDetails as Map<String, dynamic>),
      ),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetails$ticket$lines.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetails$ticket$inspectionMedia.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String yardCode;

  final Enum$TicketType ticketType;

  final String? containerNumber;

  final Query$GetTicketDetails$ticket$created created;

  final int ticketNumber;

  final Query$GetTicketDetails$ticket$account account;

  final Query$GetTicketDetails$ticket$transportDetails transportDetails;

  final List<Query$GetTicketDetails$ticket$lines> lines;

  final List<Query$GetTicketDetails$ticket$inspectionMedia> inspectionMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$ticketType = ticketType;
    _resultData['ticketType'] = toJson$Enum$TicketType(l$ticketType);
    final l$containerNumber = containerNumber;
    _resultData['containerNumber'] = l$containerNumber;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$transportDetails = transportDetails;
    _resultData['transportDetails'] = l$transportDetails.toJson();
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
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
    final l$id = id;
    final l$yardCode = yardCode;
    final l$ticketType = ticketType;
    final l$containerNumber = containerNumber;
    final l$created = created;
    final l$ticketNumber = ticketNumber;
    final l$account = account;
    final l$transportDetails = transportDetails;
    final l$lines = lines;
    final l$inspectionMedia = inspectionMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$yardCode,
      l$ticketType,
      l$containerNumber,
      l$created,
      l$ticketNumber,
      l$account,
      l$transportDetails,
      Object.hashAll(l$lines.map((v) => v)),
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket ||
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
    final l$ticketType = ticketType;
    final lOther$ticketType = other.ticketType;
    if (l$ticketType != lOther$ticketType) {
      return false;
    }
    final l$containerNumber = containerNumber;
    final lOther$containerNumber = other.containerNumber;
    if (l$containerNumber != lOther$containerNumber) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$transportDetails = transportDetails;
    final lOther$transportDetails = other.transportDetails;
    if (l$transportDetails != lOther$transportDetails) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket
    on Query$GetTicketDetails$ticket {
  CopyWith$Query$GetTicketDetails$ticket<Query$GetTicketDetails$ticket>
  get copyWith => CopyWith$Query$GetTicketDetails$ticket(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket(
    Query$GetTicketDetails$ticket instance,
    TRes Function(Query$GetTicketDetails$ticket) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket;

  factory CopyWith$Query$GetTicketDetails$ticket.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetails$ticket;

  TRes call({
    String? id,
    String? yardCode,
    Enum$TicketType? ticketType,
    String? containerNumber,
    Query$GetTicketDetails$ticket$created? created,
    int? ticketNumber,
    Query$GetTicketDetails$ticket$account? account,
    Query$GetTicketDetails$ticket$transportDetails? transportDetails,
    List<Query$GetTicketDetails$ticket$lines>? lines,
    List<Query$GetTicketDetails$ticket$inspectionMedia>? inspectionMedia,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetails$ticket$created<TRes> get created;
  CopyWith$Query$GetTicketDetails$ticket$account<TRes> get account;
  CopyWith$Query$GetTicketDetails$ticket$transportDetails<TRes>
  get transportDetails;
  TRes lines(
    Iterable<Query$GetTicketDetails$ticket$lines> Function(
      Iterable<
        CopyWith$Query$GetTicketDetails$ticket$lines<
          Query$GetTicketDetails$ticket$lines
        >
      >,
    )
    _fn,
  );
  TRes inspectionMedia(
    Iterable<Query$GetTicketDetails$ticket$inspectionMedia> Function(
      Iterable<
        CopyWith$Query$GetTicketDetails$ticket$inspectionMedia<
          Query$GetTicketDetails$ticket$inspectionMedia
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetTicketDetails$ticket<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket(this._instance, this._then);

  final Query$GetTicketDetails$ticket _instance;

  final TRes Function(Query$GetTicketDetails$ticket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardCode = _undefined,
    Object? ticketType = _undefined,
    Object? containerNumber = _undefined,
    Object? created = _undefined,
    Object? ticketNumber = _undefined,
    Object? account = _undefined,
    Object? transportDetails = _undefined,
    Object? lines = _undefined,
    Object? inspectionMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      ticketType: ticketType == _undefined || ticketType == null
          ? _instance.ticketType
          : (ticketType as Enum$TicketType),
      containerNumber: containerNumber == _undefined
          ? _instance.containerNumber
          : (containerNumber as String?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$GetTicketDetails$ticket$created),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      account: account == _undefined || account == null
          ? _instance.account
          : (account as Query$GetTicketDetails$ticket$account),
      transportDetails:
          transportDetails == _undefined || transportDetails == null
          ? _instance.transportDetails
          : (transportDetails
                as Query$GetTicketDetails$ticket$transportDetails),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines as List<Query$GetTicketDetails$ticket$lines>),
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<Query$GetTicketDetails$ticket$inspectionMedia>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetails$ticket$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetails$ticket$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$GetTicketDetails$ticket$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$GetTicketDetails$ticket$account(
      local$account,
      (e) => call(account: e),
    );
  }

  CopyWith$Query$GetTicketDetails$ticket$transportDetails<TRes>
  get transportDetails {
    final local$transportDetails = _instance.transportDetails;
    return CopyWith$Query$GetTicketDetails$ticket$transportDetails(
      local$transportDetails,
      (e) => call(transportDetails: e),
    );
  }

  TRes lines(
    Iterable<Query$GetTicketDetails$ticket$lines> Function(
      Iterable<
        CopyWith$Query$GetTicketDetails$ticket$lines<
          Query$GetTicketDetails$ticket$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) => CopyWith$Query$GetTicketDetails$ticket$lines(e, (i) => i),
      ),
    ).toList(),
  );

  TRes inspectionMedia(
    Iterable<Query$GetTicketDetails$ticket$inspectionMedia> Function(
      Iterable<
        CopyWith$Query$GetTicketDetails$ticket$inspectionMedia<
          Query$GetTicketDetails$ticket$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Query$GetTicketDetails$ticket$inspectionMedia(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket(this._res);

  TRes _res;

  call({
    String? id,
    String? yardCode,
    Enum$TicketType? ticketType,
    String? containerNumber,
    Query$GetTicketDetails$ticket$created? created,
    int? ticketNumber,
    Query$GetTicketDetails$ticket$account? account,
    Query$GetTicketDetails$ticket$transportDetails? transportDetails,
    List<Query$GetTicketDetails$ticket$lines>? lines,
    List<Query$GetTicketDetails$ticket$inspectionMedia>? inspectionMedia,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetails$ticket$created<TRes> get created =>
      CopyWith$Query$GetTicketDetails$ticket$created.stub(_res);

  CopyWith$Query$GetTicketDetails$ticket$account<TRes> get account =>
      CopyWith$Query$GetTicketDetails$ticket$account.stub(_res);

  CopyWith$Query$GetTicketDetails$ticket$transportDetails<TRes>
  get transportDetails =>
      CopyWith$Query$GetTicketDetails$ticket$transportDetails.stub(_res);

  lines(_fn) => _res;

  inspectionMedia(_fn) => _res;
}

class Query$GetTicketDetails$ticket$created {
  Query$GetTicketDetails$ticket$created({
    required this.at,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetails$ticket$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$created(
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$created
    on Query$GetTicketDetails$ticket$created {
  CopyWith$Query$GetTicketDetails$ticket$created<
    Query$GetTicketDetails$ticket$created
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$created(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket$created<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket$created(
    Query$GetTicketDetails$ticket$created instance,
    TRes Function(Query$GetTicketDetails$ticket$created) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$created;

  factory CopyWith$Query$GetTicketDetails$ticket$created.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetails$ticket$created;

  TRes call({DateTime? at, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$created<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$created<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$created _instance;

  final TRes Function(Query$GetTicketDetails$ticket$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? at = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetTicketDetails$ticket$created(
          at: at == _undefined || at == null ? _instance.at : (at as DateTime),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$created<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$created<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$created(this._res);

  TRes _res;

  call({DateTime? at, String? $__typename}) => _res;
}

class Query$GetTicketDetails$ticket$account {
  Query$GetTicketDetails$ticket$account({
    this.details,
    required this.accountNumber,
    required this.name,
    this.$__typename = 'TicketAccount',
  });

  factory Query$GetTicketDetails$ticket$account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$details = json['details'];
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$account(
      details: l$details == null
          ? null
          : Query$GetTicketDetails$ticket$account$details.fromJson(
              (l$details as Map<String, dynamic>),
            ),
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetails$ticket$account$details? details;

  final String accountNumber;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$details = details;
    _resultData['details'] = l$details?.toJson();
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
    final l$details = details;
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$details, l$accountNumber, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$account
    on Query$GetTicketDetails$ticket$account {
  CopyWith$Query$GetTicketDetails$ticket$account<
    Query$GetTicketDetails$ticket$account
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$account(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket$account<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket$account(
    Query$GetTicketDetails$ticket$account instance,
    TRes Function(Query$GetTicketDetails$ticket$account) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$account;

  factory CopyWith$Query$GetTicketDetails$ticket$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetails$ticket$account;

  TRes call({
    Query$GetTicketDetails$ticket$account$details? details,
    String? accountNumber,
    String? name,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetails$ticket$account$details<TRes> get details;
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$account<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$account<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$account(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$account _instance;

  final TRes Function(Query$GetTicketDetails$ticket$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? details = _undefined,
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$account(
      details: details == _undefined
          ? _instance.details
          : (details as Query$GetTicketDetails$ticket$account$details?),
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

  CopyWith$Query$GetTicketDetails$ticket$account$details<TRes> get details {
    final local$details = _instance.details;
    return local$details == null
        ? CopyWith$Query$GetTicketDetails$ticket$account$details.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetails$ticket$account$details(
            local$details,
            (e) => call(details: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$account<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$account<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$account(this._res);

  TRes _res;

  call({
    Query$GetTicketDetails$ticket$account$details? details,
    String? accountNumber,
    String? name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetails$ticket$account$details<TRes> get details =>
      CopyWith$Query$GetTicketDetails$ticket$account$details.stub(_res);
}

class Query$GetTicketDetails$ticket$account$details {
  Query$GetTicketDetails$ticket$account$details({
    required this.primaryManager,
    this.$__typename = 'Account',
  });

  factory Query$GetTicketDetails$ticket$account$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$primaryManager = json['primaryManager'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$account$details(
      primaryManager:
          Query$GetTicketDetails$ticket$account$details$primaryManager.fromJson(
            (l$primaryManager as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetails$ticket$account$details$primaryManager
  primaryManager;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$primaryManager = primaryManager;
    _resultData['primaryManager'] = l$primaryManager.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$primaryManager = primaryManager;
    final l$$__typename = $__typename;
    return Object.hashAll([l$primaryManager, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$account$details ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$primaryManager = primaryManager;
    final lOther$primaryManager = other.primaryManager;
    if (l$primaryManager != lOther$primaryManager) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$account$details
    on Query$GetTicketDetails$ticket$account$details {
  CopyWith$Query$GetTicketDetails$ticket$account$details<
    Query$GetTicketDetails$ticket$account$details
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$account$details(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket$account$details<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket$account$details(
    Query$GetTicketDetails$ticket$account$details instance,
    TRes Function(Query$GetTicketDetails$ticket$account$details) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$account$details;

  factory CopyWith$Query$GetTicketDetails$ticket$account$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$account$details;

  TRes call({
    Query$GetTicketDetails$ticket$account$details$primaryManager?
    primaryManager,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager<TRes>
  get primaryManager;
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$account$details<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$account$details<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$account$details(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$account$details _instance;

  final TRes Function(Query$GetTicketDetails$ticket$account$details) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? primaryManager = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$account$details(
      primaryManager: primaryManager == _undefined || primaryManager == null
          ? _instance.primaryManager
          : (primaryManager
                as Query$GetTicketDetails$ticket$account$details$primaryManager),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager<TRes>
  get primaryManager {
    final local$primaryManager = _instance.primaryManager;
    return CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager(
      local$primaryManager,
      (e) => call(primaryManager: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$account$details<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$account$details<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$account$details(this._res);

  TRes _res;

  call({
    Query$GetTicketDetails$ticket$account$details$primaryManager?
    primaryManager,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager<TRes>
  get primaryManager =>
      CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager.stub(
        _res,
      );
}

class Query$GetTicketDetails$ticket$account$details$primaryManager {
  Query$GetTicketDetails$ticket$account$details$primaryManager({
    this.type,
    this.name,
    this.$__typename = 'ManagementDetail',
  });

  factory Query$GetTicketDetails$ticket$account$details$primaryManager.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$account$details$primaryManager(
      type: l$type == null
          ? null
          : fromJson$Enum$ManagementType((l$type as String)),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ManagementType? type;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type == null
        ? null
        : toJson$Enum$ManagementType(l$type);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$type, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetails$ticket$account$details$primaryManager ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$account$details$primaryManager
    on Query$GetTicketDetails$ticket$account$details$primaryManager {
  CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager<
    Query$GetTicketDetails$ticket$account$details$primaryManager
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager<
  TRes
> {
  factory CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager(
    Query$GetTicketDetails$ticket$account$details$primaryManager instance,
    TRes Function(Query$GetTicketDetails$ticket$account$details$primaryManager)
    then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$account$details$primaryManager;

  factory CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$account$details$primaryManager;

  TRes call({Enum$ManagementType? type, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$account$details$primaryManager<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetails$ticket$account$details$primaryManager(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$account$details$primaryManager _instance;

  final TRes Function(
    Query$GetTicketDetails$ticket$account$details$primaryManager,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$account$details$primaryManager(
      type: type == _undefined
          ? _instance.type
          : (type as Enum$ManagementType?),
      name: name == _undefined ? _instance.name : (name as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$account$details$primaryManager<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$account$details$primaryManager<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$account$details$primaryManager(
    this._res,
  );

  TRes _res;

  call({Enum$ManagementType? type, String? name, String? $__typename}) => _res;
}

class Query$GetTicketDetails$ticket$transportDetails {
  Query$GetTicketDetails$ticket$transportDetails({
    this.vehicleReg,
    this.$__typename = 'TransportDetails',
  });

  factory Query$GetTicketDetails$ticket$transportDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vehicleReg = json['vehicleReg'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$transportDetails(
      vehicleReg: (l$vehicleReg as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? vehicleReg;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vehicleReg = vehicleReg;
    _resultData['vehicleReg'] = l$vehicleReg;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vehicleReg = vehicleReg;
    final l$$__typename = $__typename;
    return Object.hashAll([l$vehicleReg, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$transportDetails ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$transportDetails
    on Query$GetTicketDetails$ticket$transportDetails {
  CopyWith$Query$GetTicketDetails$ticket$transportDetails<
    Query$GetTicketDetails$ticket$transportDetails
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$transportDetails(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket$transportDetails<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket$transportDetails(
    Query$GetTicketDetails$ticket$transportDetails instance,
    TRes Function(Query$GetTicketDetails$ticket$transportDetails) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$transportDetails;

  factory CopyWith$Query$GetTicketDetails$ticket$transportDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$transportDetails;

  TRes call({String? vehicleReg, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$transportDetails<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$transportDetails<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$transportDetails(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$transportDetails _instance;

  final TRes Function(Query$GetTicketDetails$ticket$transportDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vehicleReg = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$transportDetails(
      vehicleReg: vehicleReg == _undefined
          ? _instance.vehicleReg
          : (vehicleReg as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$transportDetails<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$transportDetails<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$transportDetails(this._res);

  TRes _res;

  call({String? vehicleReg, String? $__typename}) => _res;
}

class Query$GetTicketDetails$ticket$lines {
  Query$GetTicketDetails$ticket$lines({
    required this.isActive,
    required this.lineNumber,
    this.product,
    this.inspectionDetails,
    required this.grossWeight,
    required this.netWeight,
    required this.deductions,
    this.$__typename = 'TicketLine',
  });

  factory Query$GetTicketDetails$ticket$lines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isActive = json['isActive'];
    final l$lineNumber = json['lineNumber'];
    final l$product = json['product'];
    final l$inspectionDetails = json['inspectionDetails'];
    final l$grossWeight = json['grossWeight'];
    final l$netWeight = json['netWeight'];
    final l$deductions = json['deductions'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines(
      isActive: (l$isActive as bool),
      lineNumber: (l$lineNumber as int),
      product: l$product == null
          ? null
          : Query$GetTicketDetails$ticket$lines$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      inspectionDetails: l$inspectionDetails == null
          ? null
          : Query$GetTicketDetails$ticket$lines$inspectionDetails.fromJson(
              (l$inspectionDetails as Map<String, dynamic>),
            ),
      grossWeight: Query$GetTicketDetails$ticket$lines$grossWeight.fromJson(
        (l$grossWeight as Map<String, dynamic>),
      ),
      netWeight: Query$GetTicketDetails$ticket$lines$netWeight.fromJson(
        (l$netWeight as Map<String, dynamic>),
      ),
      deductions: (l$deductions as List<dynamic>)
          .map(
            (e) => Query$GetTicketDetails$ticket$lines$deductions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isActive;

  final int lineNumber;

  final Query$GetTicketDetails$ticket$lines$product? product;

  final Query$GetTicketDetails$ticket$lines$inspectionDetails?
  inspectionDetails;

  final Query$GetTicketDetails$ticket$lines$grossWeight grossWeight;

  final Query$GetTicketDetails$ticket$lines$netWeight netWeight;

  final List<Query$GetTicketDetails$ticket$lines$deductions> deductions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$lineNumber = lineNumber;
    _resultData['lineNumber'] = l$lineNumber;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$inspectionDetails = inspectionDetails;
    _resultData['inspectionDetails'] = l$inspectionDetails?.toJson();
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$netWeight = netWeight;
    _resultData['netWeight'] = l$netWeight.toJson();
    final l$deductions = deductions;
    _resultData['deductions'] = l$deductions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isActive = isActive;
    final l$lineNumber = lineNumber;
    final l$product = product;
    final l$inspectionDetails = inspectionDetails;
    final l$grossWeight = grossWeight;
    final l$netWeight = netWeight;
    final l$deductions = deductions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isActive,
      l$lineNumber,
      l$product,
      l$inspectionDetails,
      l$grossWeight,
      l$netWeight,
      Object.hashAll(l$deductions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$lines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$inspectionDetails = inspectionDetails;
    final lOther$inspectionDetails = other.inspectionDetails;
    if (l$inspectionDetails != lOther$inspectionDetails) {
      return false;
    }
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$netWeight = netWeight;
    final lOther$netWeight = other.netWeight;
    if (l$netWeight != lOther$netWeight) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTicketDetails$ticket$lines
    on Query$GetTicketDetails$ticket$lines {
  CopyWith$Query$GetTicketDetails$ticket$lines<
    Query$GetTicketDetails$ticket$lines
  >
  get copyWith => CopyWith$Query$GetTicketDetails$ticket$lines(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines(
    Query$GetTicketDetails$ticket$lines instance,
    TRes Function(Query$GetTicketDetails$ticket$lines) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines;

  factory CopyWith$Query$GetTicketDetails$ticket$lines.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines;

  TRes call({
    bool? isActive,
    int? lineNumber,
    Query$GetTicketDetails$ticket$lines$product? product,
    Query$GetTicketDetails$ticket$lines$inspectionDetails? inspectionDetails,
    Query$GetTicketDetails$ticket$lines$grossWeight? grossWeight,
    Query$GetTicketDetails$ticket$lines$netWeight? netWeight,
    List<Query$GetTicketDetails$ticket$lines$deductions>? deductions,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetails$ticket$lines$product<TRes> get product;
  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails<TRes>
  get inspectionDetails;
  CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight<TRes>
  get grossWeight;
  CopyWith$Query$GetTicketDetails$ticket$lines$netWeight<TRes> get netWeight;
  TRes deductions(
    Iterable<Query$GetTicketDetails$ticket$lines$deductions> Function(
      Iterable<
        CopyWith$Query$GetTicketDetails$ticket$lines$deductions<
          Query$GetTicketDetails$ticket$lines$deductions
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$lines<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines(this._instance, this._then);

  final Query$GetTicketDetails$ticket$lines _instance;

  final TRes Function(Query$GetTicketDetails$ticket$lines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isActive = _undefined,
    Object? lineNumber = _undefined,
    Object? product = _undefined,
    Object? inspectionDetails = _undefined,
    Object? grossWeight = _undefined,
    Object? netWeight = _undefined,
    Object? deductions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$lines(
      isActive: isActive == _undefined || isActive == null
          ? _instance.isActive
          : (isActive as bool),
      lineNumber: lineNumber == _undefined || lineNumber == null
          ? _instance.lineNumber
          : (lineNumber as int),
      product: product == _undefined
          ? _instance.product
          : (product as Query$GetTicketDetails$ticket$lines$product?),
      inspectionDetails: inspectionDetails == _undefined
          ? _instance.inspectionDetails
          : (inspectionDetails
                as Query$GetTicketDetails$ticket$lines$inspectionDetails?),
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight as Query$GetTicketDetails$ticket$lines$grossWeight),
      netWeight: netWeight == _undefined || netWeight == null
          ? _instance.netWeight
          : (netWeight as Query$GetTicketDetails$ticket$lines$netWeight),
      deductions: deductions == _undefined || deductions == null
          ? _instance.deductions
          : (deductions
                as List<Query$GetTicketDetails$ticket$lines$deductions>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetails$ticket$lines$product<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$GetTicketDetails$ticket$lines$product.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetails$ticket$lines$product(
            local$product,
            (e) => call(product: e),
          );
  }

  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails<TRes>
  get inspectionDetails {
    final local$inspectionDetails = _instance.inspectionDetails;
    return local$inspectionDetails == null
        ? CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails(
            local$inspectionDetails,
            (e) => call(inspectionDetails: e),
          );
  }

  CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight<TRes>
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Query$GetTicketDetails$ticket$lines$netWeight<TRes> get netWeight {
    final local$netWeight = _instance.netWeight;
    return CopyWith$Query$GetTicketDetails$ticket$lines$netWeight(
      local$netWeight,
      (e) => call(netWeight: e),
    );
  }

  TRes deductions(
    Iterable<Query$GetTicketDetails$ticket$lines$deductions> Function(
      Iterable<
        CopyWith$Query$GetTicketDetails$ticket$lines$deductions<
          Query$GetTicketDetails$ticket$lines$deductions
        >
      >,
    )
    _fn,
  ) => call(
    deductions: _fn(
      _instance.deductions.map(
        (e) => CopyWith$Query$GetTicketDetails$ticket$lines$deductions(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$lines<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines(this._res);

  TRes _res;

  call({
    bool? isActive,
    int? lineNumber,
    Query$GetTicketDetails$ticket$lines$product? product,
    Query$GetTicketDetails$ticket$lines$inspectionDetails? inspectionDetails,
    Query$GetTicketDetails$ticket$lines$grossWeight? grossWeight,
    Query$GetTicketDetails$ticket$lines$netWeight? netWeight,
    List<Query$GetTicketDetails$ticket$lines$deductions>? deductions,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetails$ticket$lines$product<TRes> get product =>
      CopyWith$Query$GetTicketDetails$ticket$lines$product.stub(_res);

  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails<TRes>
  get inspectionDetails =>
      CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails.stub(_res);

  CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight<TRes>
  get grossWeight =>
      CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight.stub(_res);

  CopyWith$Query$GetTicketDetails$ticket$lines$netWeight<TRes> get netWeight =>
      CopyWith$Query$GetTicketDetails$ticket$lines$netWeight.stub(_res);

  deductions(_fn) => _res;
}

class Query$GetTicketDetails$ticket$lines$product {
  Query$GetTicketDetails$ticket$lines$product({
    required this.code,
    this.$__typename = 'Product',
  });

  factory Query$GetTicketDetails$ticket$lines$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines$product(
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$lines$product ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$lines$product
    on Query$GetTicketDetails$ticket$lines$product {
  CopyWith$Query$GetTicketDetails$ticket$lines$product<
    Query$GetTicketDetails$ticket$lines$product
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$lines$product(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines$product<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines$product(
    Query$GetTicketDetails$ticket$lines$product instance,
    TRes Function(Query$GetTicketDetails$ticket$lines$product) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines$product;

  factory CopyWith$Query$GetTicketDetails$ticket$lines$product.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$product;

  TRes call({String? code, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines$product<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$lines$product<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines$product(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$lines$product _instance;

  final TRes Function(Query$GetTicketDetails$ticket$lines$product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetTicketDetails$ticket$lines$product(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$product<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$lines$product<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$product(this._res);

  TRes _res;

  call({String? code, String? $__typename}) => _res;
}

class Query$GetTicketDetails$ticket$lines$inspectionDetails {
  Query$GetTicketDetails$ticket$lines$inspectionDetails({
    required this.discrepancies,
    required this.comments,
    required this.inspectionMedia,
    this.$__typename = 'InspectionDetails',
  });

  factory Query$GetTicketDetails$ticket$lines$inspectionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$discrepancies = json['discrepancies'];
    final l$comments = json['comments'];
    final l$inspectionMedia = json['inspectionMedia'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines$inspectionDetails(
      discrepancies: (l$discrepancies as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDetails$ticket$lines$inspectionDetails$comments.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> discrepancies;

  final List<Query$GetTicketDetails$ticket$lines$inspectionDetails$comments>
  comments;

  final List<
    Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia
  >
  inspectionMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$discrepancies = discrepancies;
    _resultData['discrepancies'] = l$discrepancies.map((e) => e).toList();
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
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
    final l$discrepancies = discrepancies;
    final l$comments = comments;
    final l$inspectionMedia = inspectionMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$discrepancies.map((v) => v)),
      Object.hashAll(l$comments.map((v) => v)),
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$lines$inspectionDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$discrepancies = discrepancies;
    final lOther$discrepancies = other.discrepancies;
    if (l$discrepancies.length != lOther$discrepancies.length) {
      return false;
    }
    for (int i = 0; i < l$discrepancies.length; i++) {
      final l$discrepancies$entry = l$discrepancies[i];
      final lOther$discrepancies$entry = lOther$discrepancies[i];
      if (l$discrepancies$entry != lOther$discrepancies$entry) {
        return false;
      }
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

extension UtilityExtension$Query$GetTicketDetails$ticket$lines$inspectionDetails
    on Query$GetTicketDetails$ticket$lines$inspectionDetails {
  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails<
    Query$GetTicketDetails$ticket$lines$inspectionDetails
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails<
  TRes
> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails(
    Query$GetTicketDetails$ticket$lines$inspectionDetails instance,
    TRes Function(Query$GetTicketDetails$ticket$lines$inspectionDetails) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails;

  factory CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails;

  TRes call({
    List<String>? discrepancies,
    List<Query$GetTicketDetails$ticket$lines$inspectionDetails$comments>?
    comments,
    List<Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia>?
    inspectionMedia,
    String? $__typename,
  });
  TRes comments(
    Iterable<Query$GetTicketDetails$ticket$lines$inspectionDetails$comments>
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments<
          Query$GetTicketDetails$ticket$lines$inspectionDetails$comments
        >
      >,
    )
    _fn,
  );
  TRes inspectionMedia(
    Iterable<
      Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia<
          Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails<TRes>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$lines$inspectionDetails _instance;

  final TRes Function(Query$GetTicketDetails$ticket$lines$inspectionDetails)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? discrepancies = _undefined,
    Object? comments = _undefined,
    Object? inspectionMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$lines$inspectionDetails(
      discrepancies: discrepancies == _undefined || discrepancies == null
          ? _instance.discrepancies
          : (discrepancies as List<String>),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments
                as List<
                  Query$GetTicketDetails$ticket$lines$inspectionDetails$comments
                >),
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes comments(
    Iterable<Query$GetTicketDetails$ticket$lines$inspectionDetails$comments>
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments<
          Query$GetTicketDetails$ticket$lines$inspectionDetails$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) =>
            CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes inspectionMedia(
    Iterable<
      Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia<
          Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails(
    this._res,
  );

  TRes _res;

  call({
    List<String>? discrepancies,
    List<Query$GetTicketDetails$ticket$lines$inspectionDetails$comments>?
    comments,
    List<Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia>?
    inspectionMedia,
    String? $__typename,
  }) => _res;

  comments(_fn) => _res;

  inspectionMedia(_fn) => _res;
}

class Query$GetTicketDetails$ticket$lines$inspectionDetails$comments {
  Query$GetTicketDetails$ticket$lines$inspectionDetails$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetTicketDetails$ticket$lines$inspectionDetails$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines$inspectionDetails$comments(
      content: (l$content as String),
      created:
          Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created
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
    if (other
            is! Query$GetTicketDetails$ticket$lines$inspectionDetails$comments ||
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

extension UtilityExtension$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments
    on Query$GetTicketDetails$ticket$lines$inspectionDetails$comments {
  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments<
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments<
  TRes
> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments instance,
    TRes Function(
      Query$GetTicketDetails$ticket$lines$inspectionDetails$comments,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments;

  factory CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments;

  TRes call({
    String? content,
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created?
    created,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$lines$inspectionDetails$comments
  _instance;

  final TRes Function(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created.stub(
        _res,
      );
}

class Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created {
  Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created({
    this.user,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$user = json['user'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created(
      user: l$user == null
          ? null
          : Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user?
  user;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created
    on Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created {
  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created<
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created<
  TRes
> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created
    instance,
    TRes Function(
      Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created;

  factory CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created;

  TRes call({
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user?
    user,
    DateTime? at,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created
  _instance;

  final TRes Function(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created(
      user: user == _undefined
          ? _instance.user
          : (user
                as Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user?),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created(
    this._res,
  );

  TRes _res;

  call({
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user?
    user,
    DateTime? at,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user<
    TRes
  >
  get user =>
      CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user.stub(
        _res,
      );
}

class Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user {
  Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user({
    required this.name,
    required this.id,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user(
      name: (l$name as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user
    on Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user {
  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user<
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user<
  TRes
> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user
    instance,
    TRes Function(
      Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user;

  factory CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user;

  TRes call({String? name, String? id, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user
  _instance;

  final TRes Function(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$comments$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? id, String? $__typename}) => _res;
}

class Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia {
  Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia({
    this.inspectionNote,
    this.discrepantReason,
    required this.url,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$inspectionNote = json['inspectionNote'];
    final l$discrepantReason = json['discrepantReason'];
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia(
      inspectionNote: (l$inspectionNote as String?),
      discrepantReason: (l$discrepantReason as String?),
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? inspectionNote;

  final String? discrepantReason;

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inspectionNote = inspectionNote;
    _resultData['inspectionNote'] = l$inspectionNote;
    final l$discrepantReason = discrepantReason;
    _resultData['discrepantReason'] = l$discrepantReason;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inspectionNote = inspectionNote;
    final l$discrepantReason = discrepantReason;
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$inspectionNote,
      l$discrepantReason,
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inspectionNote = inspectionNote;
    final lOther$inspectionNote = other.inspectionNote;
    if (l$inspectionNote != lOther$inspectionNote) {
      return false;
    }
    final l$discrepantReason = discrepantReason;
    final lOther$discrepantReason = other.discrepantReason;
    if (l$discrepantReason != lOther$discrepantReason) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia
    on Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia {
  CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia<
    Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia
    instance,
    TRes Function(
      Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia,
    )
    then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia;

  factory CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia;

  TRes call({
    String? inspectionNote,
    String? discrepantReason,
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia
  _instance;

  final TRes Function(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inspectionNote = _undefined,
    Object? discrepantReason = _undefined,
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia(
      inspectionNote: inspectionNote == _undefined
          ? _instance.inspectionNote
          : (inspectionNote as String?),
      discrepantReason: discrepantReason == _undefined
          ? _instance.discrepantReason
          : (discrepantReason as String?),
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$inspectionDetails$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({
    String? inspectionNote,
    String? discrepantReason,
    String? url,
    String? $__typename,
  }) => _res;
}

class Query$GetTicketDetails$ticket$lines$grossWeight {
  Query$GetTicketDetails$ticket$lines$grossWeight({
    required this.value,
    required this.uom,
    this.$__typename = 'UomValue',
  });

  factory Query$GetTicketDetails$ticket$lines$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines$grossWeight(
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$Uom uom;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$value = value;
    final l$uom = uom;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$uom, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$lines$grossWeight ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$lines$grossWeight
    on Query$GetTicketDetails$ticket$lines$grossWeight {
  CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight<
    Query$GetTicketDetails$ticket$lines$grossWeight
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight(
    Query$GetTicketDetails$ticket$lines$grossWeight instance,
    TRes Function(Query$GetTicketDetails$ticket$lines$grossWeight) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines$grossWeight;

  factory CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$grossWeight;

  TRes call({double? value, Enum$Uom? uom, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines$grossWeight<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines$grossWeight(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$lines$grossWeight _instance;

  final TRes Function(Query$GetTicketDetails$ticket$lines$grossWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$lines$grossWeight(
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

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$grossWeight<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$lines$grossWeight<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$grossWeight(this._res);

  TRes _res;

  call({double? value, Enum$Uom? uom, String? $__typename}) => _res;
}

class Query$GetTicketDetails$ticket$lines$netWeight {
  Query$GetTicketDetails$ticket$lines$netWeight({
    required this.value,
    required this.uom,
    this.$__typename = 'UomValue',
  });

  factory Query$GetTicketDetails$ticket$lines$netWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines$netWeight(
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$Uom uom;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$value = value;
    final l$uom = uom;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$uom, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$lines$netWeight ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$lines$netWeight
    on Query$GetTicketDetails$ticket$lines$netWeight {
  CopyWith$Query$GetTicketDetails$ticket$lines$netWeight<
    Query$GetTicketDetails$ticket$lines$netWeight
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$lines$netWeight(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines$netWeight<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines$netWeight(
    Query$GetTicketDetails$ticket$lines$netWeight instance,
    TRes Function(Query$GetTicketDetails$ticket$lines$netWeight) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines$netWeight;

  factory CopyWith$Query$GetTicketDetails$ticket$lines$netWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$netWeight;

  TRes call({double? value, Enum$Uom? uom, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines$netWeight<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$lines$netWeight<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines$netWeight(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$lines$netWeight _instance;

  final TRes Function(Query$GetTicketDetails$ticket$lines$netWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$lines$netWeight(
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

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$netWeight<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$lines$netWeight<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$netWeight(this._res);

  TRes _res;

  call({double? value, Enum$Uom? uom, String? $__typename}) => _res;
}

class Query$GetTicketDetails$ticket$lines$deductions {
  Query$GetTicketDetails$ticket$lines$deductions({
    this.weight,
    this.$__typename = 'LineDeduction',
  });

  factory Query$GetTicketDetails$ticket$lines$deductions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$weight = json['weight'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines$deductions(
      weight: l$weight == null
          ? null
          : Query$GetTicketDetails$ticket$lines$deductions$weight.fromJson(
              (l$weight as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicketDetails$ticket$lines$deductions$weight? weight;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$weight = weight;
    _resultData['weight'] = l$weight?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$weight = weight;
    final l$$__typename = $__typename;
    return Object.hashAll([l$weight, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$lines$deductions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$lines$deductions
    on Query$GetTicketDetails$ticket$lines$deductions {
  CopyWith$Query$GetTicketDetails$ticket$lines$deductions<
    Query$GetTicketDetails$ticket$lines$deductions
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$lines$deductions(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines$deductions<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines$deductions(
    Query$GetTicketDetails$ticket$lines$deductions instance,
    TRes Function(Query$GetTicketDetails$ticket$lines$deductions) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines$deductions;

  factory CopyWith$Query$GetTicketDetails$ticket$lines$deductions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$deductions;

  TRes call({
    Query$GetTicketDetails$ticket$lines$deductions$weight? weight,
    String? $__typename,
  });
  CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight<TRes>
  get weight;
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines$deductions<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$lines$deductions<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines$deductions(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$lines$deductions _instance;

  final TRes Function(Query$GetTicketDetails$ticket$lines$deductions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? weight = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetTicketDetails$ticket$lines$deductions(
          weight: weight == _undefined
              ? _instance.weight
              : (weight
                    as Query$GetTicketDetails$ticket$lines$deductions$weight?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight<TRes>
  get weight {
    final local$weight = _instance.weight;
    return local$weight == null
        ? CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight(
            local$weight,
            (e) => call(weight: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$deductions<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$lines$deductions<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$deductions(this._res);

  TRes _res;

  call({
    Query$GetTicketDetails$ticket$lines$deductions$weight? weight,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight<TRes>
  get weight =>
      CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight.stub(_res);
}

class Query$GetTicketDetails$ticket$lines$deductions$weight {
  Query$GetTicketDetails$ticket$lines$deductions$weight({
    required this.value,
    required this.uom,
    this.$__typename = 'UomValue',
  });

  factory Query$GetTicketDetails$ticket$lines$deductions$weight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$lines$deductions$weight(
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$Uom uom;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$value = value;
    final l$uom = uom;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$uom, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$lines$deductions$weight ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$lines$deductions$weight
    on Query$GetTicketDetails$ticket$lines$deductions$weight {
  CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight<
    Query$GetTicketDetails$ticket$lines$deductions$weight
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight<
  TRes
> {
  factory CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight(
    Query$GetTicketDetails$ticket$lines$deductions$weight instance,
    TRes Function(Query$GetTicketDetails$ticket$lines$deductions$weight) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$lines$deductions$weight;

  factory CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$deductions$weight;

  TRes call({double? value, Enum$Uom? uom, String? $__typename});
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$lines$deductions$weight<TRes>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$lines$deductions$weight(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$lines$deductions$weight _instance;

  final TRes Function(Query$GetTicketDetails$ticket$lines$deductions$weight)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$lines$deductions$weight(
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

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$deductions$weight<
  TRes
>
    implements
        CopyWith$Query$GetTicketDetails$ticket$lines$deductions$weight<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$lines$deductions$weight(
    this._res,
  );

  TRes _res;

  call({double? value, Enum$Uom? uom, String? $__typename}) => _res;
}

class Query$GetTicketDetails$ticket$inspectionMedia {
  Query$GetTicketDetails$ticket$inspectionMedia({
    this.inspectionNote,
    this.discrepantReason,
    required this.url,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$GetTicketDetails$ticket$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$inspectionNote = json['inspectionNote'];
    final l$discrepantReason = json['discrepantReason'];
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDetails$ticket$inspectionMedia(
      inspectionNote: (l$inspectionNote as String?),
      discrepantReason: (l$discrepantReason as String?),
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? inspectionNote;

  final String? discrepantReason;

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inspectionNote = inspectionNote;
    _resultData['inspectionNote'] = l$inspectionNote;
    final l$discrepantReason = discrepantReason;
    _resultData['discrepantReason'] = l$discrepantReason;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inspectionNote = inspectionNote;
    final l$discrepantReason = discrepantReason;
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$inspectionNote,
      l$discrepantReason,
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDetails$ticket$inspectionMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inspectionNote = inspectionNote;
    final lOther$inspectionNote = other.inspectionNote;
    if (l$inspectionNote != lOther$inspectionNote) {
      return false;
    }
    final l$discrepantReason = discrepantReason;
    final lOther$discrepantReason = other.discrepantReason;
    if (l$discrepantReason != lOther$discrepantReason) {
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

extension UtilityExtension$Query$GetTicketDetails$ticket$inspectionMedia
    on Query$GetTicketDetails$ticket$inspectionMedia {
  CopyWith$Query$GetTicketDetails$ticket$inspectionMedia<
    Query$GetTicketDetails$ticket$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$GetTicketDetails$ticket$inspectionMedia(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDetails$ticket$inspectionMedia<TRes> {
  factory CopyWith$Query$GetTicketDetails$ticket$inspectionMedia(
    Query$GetTicketDetails$ticket$inspectionMedia instance,
    TRes Function(Query$GetTicketDetails$ticket$inspectionMedia) then,
  ) = _CopyWithImpl$Query$GetTicketDetails$ticket$inspectionMedia;

  factory CopyWith$Query$GetTicketDetails$ticket$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDetails$ticket$inspectionMedia;

  TRes call({
    String? inspectionNote,
    String? discrepantReason,
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDetails$ticket$inspectionMedia<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$inspectionMedia<TRes> {
  _CopyWithImpl$Query$GetTicketDetails$ticket$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$GetTicketDetails$ticket$inspectionMedia _instance;

  final TRes Function(Query$GetTicketDetails$ticket$inspectionMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inspectionNote = _undefined,
    Object? discrepantReason = _undefined,
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDetails$ticket$inspectionMedia(
      inspectionNote: inspectionNote == _undefined
          ? _instance.inspectionNote
          : (inspectionNote as String?),
      discrepantReason: discrepantReason == _undefined
          ? _instance.discrepantReason
          : (discrepantReason as String?),
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDetails$ticket$inspectionMedia<TRes>
    implements CopyWith$Query$GetTicketDetails$ticket$inspectionMedia<TRes> {
  _CopyWithStubImpl$Query$GetTicketDetails$ticket$inspectionMedia(this._res);

  TRes _res;

  call({
    String? inspectionNote,
    String? discrepantReason,
    String? url,
    String? $__typename,
  }) => _res;
}
