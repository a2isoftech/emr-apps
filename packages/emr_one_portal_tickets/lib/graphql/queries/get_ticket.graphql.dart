import 'package:gql/ast.dart';

class Variables$Query$GetTicket {
  factory Variables$Query$GetTicket({
    required int ticketNumber,
    required String depotNumber,
  }) =>
      Variables$Query$GetTicket._({
        r'ticketNumber': ticketNumber,
        r'depotNumber': depotNumber,
      });

  Variables$Query$GetTicket._(this._$data);

  factory Variables$Query$GetTicket.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$ticketNumber = data['ticketNumber'];
    result$data['ticketNumber'] = (l$ticketNumber as int);
    final l$depotNumber = data['depotNumber'];
    result$data['depotNumber'] = (l$depotNumber as String);
    return Variables$Query$GetTicket._(result$data);
  }

  Map<String, dynamic> _$data;

  int get ticketNumber => (_$data['ticketNumber'] as int);

  String get depotNumber => (_$data['depotNumber'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$ticketNumber = ticketNumber;
    result$data['ticketNumber'] = l$ticketNumber;
    final l$depotNumber = depotNumber;
    result$data['depotNumber'] = l$depotNumber;
    return result$data;
  }

  CopyWith$Variables$Query$GetTicket<Variables$Query$GetTicket> get copyWith =>
      CopyWith$Variables$Query$GetTicket(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTicket ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$depotNumber = depotNumber;
    final lOther$depotNumber = other.depotNumber;
    if (l$depotNumber != lOther$depotNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ticketNumber = ticketNumber;
    final l$depotNumber = depotNumber;
    return Object.hashAll([
      l$ticketNumber,
      l$depotNumber,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetTicket<TRes> {
  factory CopyWith$Variables$Query$GetTicket(
    Variables$Query$GetTicket instance,
    TRes Function(Variables$Query$GetTicket) then,
  ) = _CopyWithImpl$Variables$Query$GetTicket;

  factory CopyWith$Variables$Query$GetTicket.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTicket;

  TRes call({
    int? ticketNumber,
    String? depotNumber,
  });
}

class _CopyWithImpl$Variables$Query$GetTicket<TRes>
    implements CopyWith$Variables$Query$GetTicket<TRes> {
  _CopyWithImpl$Variables$Query$GetTicket(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTicket _instance;

  final TRes Function(Variables$Query$GetTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ticketNumber = _undefined,
    Object? depotNumber = _undefined,
  }) =>
      _then(Variables$Query$GetTicket._({
        ..._instance._$data,
        if (ticketNumber != _undefined && ticketNumber != null)
          'ticketNumber': (ticketNumber as int),
        if (depotNumber != _undefined && depotNumber != null)
          'depotNumber': (depotNumber as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTicket<TRes>
    implements CopyWith$Variables$Query$GetTicket<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTicket(this._res);

  TRes _res;

  call({
    int? ticketNumber,
    String? depotNumber,
  }) =>
      _res;
}

class Query$GetTicket {
  Query$GetTicket({
    this.ticket,
    this.$__typename = 'Query',
  });

  factory Query$GetTicket.fromJson(Map<String, dynamic> json) {
    final l$ticket = json['ticket'];
    final l$$__typename = json['__typename'];
    return Query$GetTicket(
      ticket: l$ticket == null
          ? null
          : Query$GetTicket$ticket.fromJson((l$ticket as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTicket$ticket? ticket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ticket = ticket;
    _resultData['ticket'] = l$ticket?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ticket = ticket;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ticket,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicket || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTicket on Query$GetTicket {
  CopyWith$Query$GetTicket<Query$GetTicket> get copyWith =>
      CopyWith$Query$GetTicket(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicket<TRes> {
  factory CopyWith$Query$GetTicket(
    Query$GetTicket instance,
    TRes Function(Query$GetTicket) then,
  ) = _CopyWithImpl$Query$GetTicket;

  factory CopyWith$Query$GetTicket.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicket;

  TRes call({
    Query$GetTicket$ticket? ticket,
    String? $__typename,
  });
  CopyWith$Query$GetTicket$ticket<TRes> get ticket;
}

class _CopyWithImpl$Query$GetTicket<TRes>
    implements CopyWith$Query$GetTicket<TRes> {
  _CopyWithImpl$Query$GetTicket(
    this._instance,
    this._then,
  );

  final Query$GetTicket _instance;

  final TRes Function(Query$GetTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ticket = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTicket(
        ticket: ticket == _undefined
            ? _instance.ticket
            : (ticket as Query$GetTicket$ticket?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTicket$ticket<TRes> get ticket {
    final local$ticket = _instance.ticket;
    return local$ticket == null
        ? CopyWith$Query$GetTicket$ticket.stub(_then(_instance))
        : CopyWith$Query$GetTicket$ticket(local$ticket, (e) => call(ticket: e));
  }
}

class _CopyWithStubImpl$Query$GetTicket<TRes>
    implements CopyWith$Query$GetTicket<TRes> {
  _CopyWithStubImpl$Query$GetTicket(this._res);

  TRes _res;

  call({
    Query$GetTicket$ticket? ticket,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTicket$ticket<TRes> get ticket =>
      CopyWith$Query$GetTicket$ticket.stub(_res);
}

const documentNodeQueryGetTicket = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTicket'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ticketNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'depotNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ticket'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'ticketNumber'),
            value: VariableNode(name: NameNode(value: 'ticketNumber')),
          ),
          ArgumentNode(
            name: NameNode(value: 'depotNumber'),
            value: VariableNode(name: NameNode(value: 'depotNumber')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'depotNo'),
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
            name: NameNode(value: 'extendedAttributes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'ticketStatus'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'ticketDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currency'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'legacyTicketNumber'),
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
            name: NameNode(value: 'ticketLines'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'price'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'ewcCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'netWeight'),
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
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gradeName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gradeCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'netWeightUom'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'rateUom'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'yard'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'shortName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'wasteCarrierRegNo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'addressLine1'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'addressLine2'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'addressLine3'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'addressLine4'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'addressLine5'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'addressLine6'),
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
                name: NameNode(value: 'telephone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'wmlExemptionNo'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetTicket$ticket {
  Query$GetTicket$ticket({
    required this.depotNo,
    required this.yardCode,
    required this.extendedAttributes,
    required this.ticketDate,
    this.currency,
    required this.legacyTicketNumber,
    required this.ticketNumber,
    required this.ticketLines,
    required this.yard,
    this.$__typename = 'Trade2Ticket',
  });

  factory Query$GetTicket$ticket.fromJson(Map<String, dynamic> json) {
    final l$depotNo = json['depotNo'];
    final l$yardCode = json['yardCode'];
    final l$extendedAttributes = json['extendedAttributes'];
    final l$ticketDate = json['ticketDate'];
    final l$currency = json['currency'];
    final l$legacyTicketNumber = json['legacyTicketNumber'];
    final l$ticketNumber = json['ticketNumber'];
    final l$ticketLines = json['ticketLines'];
    final l$yard = json['yard'];
    final l$$__typename = json['__typename'];
    return Query$GetTicket$ticket(
      depotNo: (l$depotNo as String),
      yardCode: (l$yardCode as String),
      extendedAttributes: Query$GetTicket$ticket$extendedAttributes.fromJson(
          (l$extendedAttributes as Map<String, dynamic>)),
      ticketDate: DateTime.parse((l$ticketDate as String)),
      currency: (l$currency as String?),
      legacyTicketNumber: (l$legacyTicketNumber as int),
      ticketNumber: (l$ticketNumber as int),
      ticketLines: (l$ticketLines as List<dynamic>)
          .map((e) => Query$GetTicket$ticket$ticketLines.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      yard: Query$GetTicket$ticket$yard.fromJson(
          (l$yard as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String depotNo;

  final String yardCode;

  final Query$GetTicket$ticket$extendedAttributes extendedAttributes;

  final DateTime ticketDate;

  final String? currency;

  final int legacyTicketNumber;

  final int ticketNumber;

  final List<Query$GetTicket$ticket$ticketLines> ticketLines;

  final Query$GetTicket$ticket$yard yard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$extendedAttributes = extendedAttributes;
    _resultData['extendedAttributes'] = l$extendedAttributes.toJson();
    final l$ticketDate = ticketDate;
    _resultData['ticketDate'] = l$ticketDate.toIso8601String();
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$legacyTicketNumber = legacyTicketNumber;
    _resultData['legacyTicketNumber'] = l$legacyTicketNumber;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$ticketLines = ticketLines;
    _resultData['ticketLines'] = l$ticketLines.map((e) => e.toJson()).toList();
    final l$yard = yard;
    _resultData['yard'] = l$yard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depotNo = depotNo;
    final l$yardCode = yardCode;
    final l$extendedAttributes = extendedAttributes;
    final l$ticketDate = ticketDate;
    final l$currency = currency;
    final l$legacyTicketNumber = legacyTicketNumber;
    final l$ticketNumber = ticketNumber;
    final l$ticketLines = ticketLines;
    final l$yard = yard;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$depotNo,
      l$yardCode,
      l$extendedAttributes,
      l$ticketDate,
      l$currency,
      l$legacyTicketNumber,
      l$ticketNumber,
      Object.hashAll(l$ticketLines.map((v) => v)),
      l$yard,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicket$ticket || runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$extendedAttributes = extendedAttributes;
    final lOther$extendedAttributes = other.extendedAttributes;
    if (l$extendedAttributes != lOther$extendedAttributes) {
      return false;
    }
    final l$ticketDate = ticketDate;
    final lOther$ticketDate = other.ticketDate;
    if (l$ticketDate != lOther$ticketDate) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$legacyTicketNumber = legacyTicketNumber;
    final lOther$legacyTicketNumber = other.legacyTicketNumber;
    if (l$legacyTicketNumber != lOther$legacyTicketNumber) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$ticketLines = ticketLines;
    final lOther$ticketLines = other.ticketLines;
    if (l$ticketLines.length != lOther$ticketLines.length) {
      return false;
    }
    for (int i = 0; i < l$ticketLines.length; i++) {
      final l$ticketLines$entry = l$ticketLines[i];
      final lOther$ticketLines$entry = lOther$ticketLines[i];
      if (l$ticketLines$entry != lOther$ticketLines$entry) {
        return false;
      }
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (l$yard != lOther$yard) {
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

extension UtilityExtension$Query$GetTicket$ticket on Query$GetTicket$ticket {
  CopyWith$Query$GetTicket$ticket<Query$GetTicket$ticket> get copyWith =>
      CopyWith$Query$GetTicket$ticket(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTicket$ticket<TRes> {
  factory CopyWith$Query$GetTicket$ticket(
    Query$GetTicket$ticket instance,
    TRes Function(Query$GetTicket$ticket) then,
  ) = _CopyWithImpl$Query$GetTicket$ticket;

  factory CopyWith$Query$GetTicket$ticket.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicket$ticket;

  TRes call({
    String? depotNo,
    String? yardCode,
    Query$GetTicket$ticket$extendedAttributes? extendedAttributes,
    DateTime? ticketDate,
    String? currency,
    int? legacyTicketNumber,
    int? ticketNumber,
    List<Query$GetTicket$ticket$ticketLines>? ticketLines,
    Query$GetTicket$ticket$yard? yard,
    String? $__typename,
  });
  CopyWith$Query$GetTicket$ticket$extendedAttributes<TRes>
      get extendedAttributes;
  TRes ticketLines(
      Iterable<Query$GetTicket$ticket$ticketLines> Function(
              Iterable<
                  CopyWith$Query$GetTicket$ticket$ticketLines<
                      Query$GetTicket$ticket$ticketLines>>)
          _fn);
  CopyWith$Query$GetTicket$ticket$yard<TRes> get yard;
}

class _CopyWithImpl$Query$GetTicket$ticket<TRes>
    implements CopyWith$Query$GetTicket$ticket<TRes> {
  _CopyWithImpl$Query$GetTicket$ticket(
    this._instance,
    this._then,
  );

  final Query$GetTicket$ticket _instance;

  final TRes Function(Query$GetTicket$ticket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNo = _undefined,
    Object? yardCode = _undefined,
    Object? extendedAttributes = _undefined,
    Object? ticketDate = _undefined,
    Object? currency = _undefined,
    Object? legacyTicketNumber = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketLines = _undefined,
    Object? yard = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTicket$ticket(
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        extendedAttributes: extendedAttributes == _undefined ||
                extendedAttributes == null
            ? _instance.extendedAttributes
            : (extendedAttributes as Query$GetTicket$ticket$extendedAttributes),
        ticketDate: ticketDate == _undefined || ticketDate == null
            ? _instance.ticketDate
            : (ticketDate as DateTime),
        currency:
            currency == _undefined ? _instance.currency : (currency as String?),
        legacyTicketNumber:
            legacyTicketNumber == _undefined || legacyTicketNumber == null
                ? _instance.legacyTicketNumber
                : (legacyTicketNumber as int),
        ticketNumber: ticketNumber == _undefined || ticketNumber == null
            ? _instance.ticketNumber
            : (ticketNumber as int),
        ticketLines: ticketLines == _undefined || ticketLines == null
            ? _instance.ticketLines
            : (ticketLines as List<Query$GetTicket$ticket$ticketLines>),
        yard: yard == _undefined || yard == null
            ? _instance.yard
            : (yard as Query$GetTicket$ticket$yard),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTicket$ticket$extendedAttributes<TRes>
      get extendedAttributes {
    final local$extendedAttributes = _instance.extendedAttributes;
    return CopyWith$Query$GetTicket$ticket$extendedAttributes(
        local$extendedAttributes, (e) => call(extendedAttributes: e));
  }

  TRes ticketLines(
          Iterable<Query$GetTicket$ticket$ticketLines> Function(
                  Iterable<
                      CopyWith$Query$GetTicket$ticket$ticketLines<
                          Query$GetTicket$ticket$ticketLines>>)
              _fn) =>
      call(
          ticketLines: _fn(_instance.ticketLines
              .map((e) => CopyWith$Query$GetTicket$ticket$ticketLines(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$GetTicket$ticket$yard<TRes> get yard {
    final local$yard = _instance.yard;
    return CopyWith$Query$GetTicket$ticket$yard(
        local$yard, (e) => call(yard: e));
  }
}

class _CopyWithStubImpl$Query$GetTicket$ticket<TRes>
    implements CopyWith$Query$GetTicket$ticket<TRes> {
  _CopyWithStubImpl$Query$GetTicket$ticket(this._res);

  TRes _res;

  call({
    String? depotNo,
    String? yardCode,
    Query$GetTicket$ticket$extendedAttributes? extendedAttributes,
    DateTime? ticketDate,
    String? currency,
    int? legacyTicketNumber,
    int? ticketNumber,
    List<Query$GetTicket$ticket$ticketLines>? ticketLines,
    Query$GetTicket$ticket$yard? yard,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTicket$ticket$extendedAttributes<TRes>
      get extendedAttributes =>
          CopyWith$Query$GetTicket$ticket$extendedAttributes.stub(_res);

  ticketLines(_fn) => _res;

  CopyWith$Query$GetTicket$ticket$yard<TRes> get yard =>
      CopyWith$Query$GetTicket$ticket$yard.stub(_res);
}

class Query$GetTicket$ticket$extendedAttributes {
  Query$GetTicket$ticket$extendedAttributes({
    required this.ticketStatus,
    this.$__typename = 'Trade2Data',
  });

  factory Query$GetTicket$ticket$extendedAttributes.fromJson(
      Map<String, dynamic> json) {
    final l$ticketStatus = json['ticketStatus'];
    final l$$__typename = json['__typename'];
    return Query$GetTicket$ticket$extendedAttributes(
      ticketStatus: (l$ticketStatus as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String ticketStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ticketStatus = ticketStatus;
    _resultData['ticketStatus'] = l$ticketStatus;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ticketStatus = ticketStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ticketStatus,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicket$ticket$extendedAttributes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (l$ticketStatus != lOther$ticketStatus) {
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

extension UtilityExtension$Query$GetTicket$ticket$extendedAttributes
    on Query$GetTicket$ticket$extendedAttributes {
  CopyWith$Query$GetTicket$ticket$extendedAttributes<
          Query$GetTicket$ticket$extendedAttributes>
      get copyWith => CopyWith$Query$GetTicket$ticket$extendedAttributes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTicket$ticket$extendedAttributes<TRes> {
  factory CopyWith$Query$GetTicket$ticket$extendedAttributes(
    Query$GetTicket$ticket$extendedAttributes instance,
    TRes Function(Query$GetTicket$ticket$extendedAttributes) then,
  ) = _CopyWithImpl$Query$GetTicket$ticket$extendedAttributes;

  factory CopyWith$Query$GetTicket$ticket$extendedAttributes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicket$ticket$extendedAttributes;

  TRes call({
    String? ticketStatus,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicket$ticket$extendedAttributes<TRes>
    implements CopyWith$Query$GetTicket$ticket$extendedAttributes<TRes> {
  _CopyWithImpl$Query$GetTicket$ticket$extendedAttributes(
    this._instance,
    this._then,
  );

  final Query$GetTicket$ticket$extendedAttributes _instance;

  final TRes Function(Query$GetTicket$ticket$extendedAttributes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ticketStatus = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTicket$ticket$extendedAttributes(
        ticketStatus: ticketStatus == _undefined || ticketStatus == null
            ? _instance.ticketStatus
            : (ticketStatus as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTicket$ticket$extendedAttributes<TRes>
    implements CopyWith$Query$GetTicket$ticket$extendedAttributes<TRes> {
  _CopyWithStubImpl$Query$GetTicket$ticket$extendedAttributes(this._res);

  TRes _res;

  call({
    String? ticketStatus,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTicket$ticket$ticketLines {
  Query$GetTicket$ticket$ticketLines({
    required this.price,
    required this.ewcCode,
    required this.netWeight,
    required this.rate,
    required this.gradeName,
    required this.gradeCode,
    required this.netWeightUom,
    required this.rateUom,
    this.$__typename = 'TicketLine',
  });

  factory Query$GetTicket$ticket$ticketLines.fromJson(
      Map<String, dynamic> json) {
    final l$price = json['price'];
    final l$ewcCode = json['ewcCode'];
    final l$netWeight = json['netWeight'];
    final l$rate = json['rate'];
    final l$gradeName = json['gradeName'];
    final l$gradeCode = json['gradeCode'];
    final l$netWeightUom = json['netWeightUom'];
    final l$rateUom = json['rateUom'];
    final l$$__typename = json['__typename'];
    return Query$GetTicket$ticket$ticketLines(
      price: (l$price as num).toDouble(),
      ewcCode: (l$ewcCode as String),
      netWeight: (l$netWeight as num).toDouble(),
      rate: (l$rate as num).toDouble(),
      gradeName: (l$gradeName as String),
      gradeCode: (l$gradeCode as String),
      netWeightUom: (l$netWeightUom as String),
      rateUom: (l$rateUom as String),
      $__typename: (l$$__typename as String),
    );
  }

  final double price;

  final String ewcCode;

  final double netWeight;

  final double rate;

  final String gradeName;

  final String gradeCode;

  final String netWeightUom;

  final String rateUom;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$price = price;
    _resultData['price'] = l$price;
    final l$ewcCode = ewcCode;
    _resultData['ewcCode'] = l$ewcCode;
    final l$netWeight = netWeight;
    _resultData['netWeight'] = l$netWeight;
    final l$rate = rate;
    _resultData['rate'] = l$rate;
    final l$gradeName = gradeName;
    _resultData['gradeName'] = l$gradeName;
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$netWeightUom = netWeightUom;
    _resultData['netWeightUom'] = l$netWeightUom;
    final l$rateUom = rateUom;
    _resultData['rateUom'] = l$rateUom;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$price = price;
    final l$ewcCode = ewcCode;
    final l$netWeight = netWeight;
    final l$rate = rate;
    final l$gradeName = gradeName;
    final l$gradeCode = gradeCode;
    final l$netWeightUom = netWeightUom;
    final l$rateUom = rateUom;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$price,
      l$ewcCode,
      l$netWeight,
      l$rate,
      l$gradeName,
      l$gradeCode,
      l$netWeightUom,
      l$rateUom,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicket$ticket$ticketLines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$ewcCode = ewcCode;
    final lOther$ewcCode = other.ewcCode;
    if (l$ewcCode != lOther$ewcCode) {
      return false;
    }
    final l$netWeight = netWeight;
    final lOther$netWeight = other.netWeight;
    if (l$netWeight != lOther$netWeight) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$gradeName = gradeName;
    final lOther$gradeName = other.gradeName;
    if (l$gradeName != lOther$gradeName) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$netWeightUom = netWeightUom;
    final lOther$netWeightUom = other.netWeightUom;
    if (l$netWeightUom != lOther$netWeightUom) {
      return false;
    }
    final l$rateUom = rateUom;
    final lOther$rateUom = other.rateUom;
    if (l$rateUom != lOther$rateUom) {
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

extension UtilityExtension$Query$GetTicket$ticket$ticketLines
    on Query$GetTicket$ticket$ticketLines {
  CopyWith$Query$GetTicket$ticket$ticketLines<
          Query$GetTicket$ticket$ticketLines>
      get copyWith => CopyWith$Query$GetTicket$ticket$ticketLines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTicket$ticket$ticketLines<TRes> {
  factory CopyWith$Query$GetTicket$ticket$ticketLines(
    Query$GetTicket$ticket$ticketLines instance,
    TRes Function(Query$GetTicket$ticket$ticketLines) then,
  ) = _CopyWithImpl$Query$GetTicket$ticket$ticketLines;

  factory CopyWith$Query$GetTicket$ticket$ticketLines.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicket$ticket$ticketLines;

  TRes call({
    double? price,
    String? ewcCode,
    double? netWeight,
    double? rate,
    String? gradeName,
    String? gradeCode,
    String? netWeightUom,
    String? rateUom,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicket$ticket$ticketLines<TRes>
    implements CopyWith$Query$GetTicket$ticket$ticketLines<TRes> {
  _CopyWithImpl$Query$GetTicket$ticket$ticketLines(
    this._instance,
    this._then,
  );

  final Query$GetTicket$ticket$ticketLines _instance;

  final TRes Function(Query$GetTicket$ticket$ticketLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? price = _undefined,
    Object? ewcCode = _undefined,
    Object? netWeight = _undefined,
    Object? rate = _undefined,
    Object? gradeName = _undefined,
    Object? gradeCode = _undefined,
    Object? netWeightUom = _undefined,
    Object? rateUom = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTicket$ticket$ticketLines(
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
        ewcCode: ewcCode == _undefined || ewcCode == null
            ? _instance.ewcCode
            : (ewcCode as String),
        netWeight: netWeight == _undefined || netWeight == null
            ? _instance.netWeight
            : (netWeight as double),
        rate: rate == _undefined || rate == null
            ? _instance.rate
            : (rate as double),
        gradeName: gradeName == _undefined || gradeName == null
            ? _instance.gradeName
            : (gradeName as String),
        gradeCode: gradeCode == _undefined || gradeCode == null
            ? _instance.gradeCode
            : (gradeCode as String),
        netWeightUom: netWeightUom == _undefined || netWeightUom == null
            ? _instance.netWeightUom
            : (netWeightUom as String),
        rateUom: rateUom == _undefined || rateUom == null
            ? _instance.rateUom
            : (rateUom as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTicket$ticket$ticketLines<TRes>
    implements CopyWith$Query$GetTicket$ticket$ticketLines<TRes> {
  _CopyWithStubImpl$Query$GetTicket$ticket$ticketLines(this._res);

  TRes _res;

  call({
    double? price,
    String? ewcCode,
    double? netWeight,
    double? rate,
    String? gradeName,
    String? gradeCode,
    String? netWeightUom,
    String? rateUom,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTicket$ticket$yard {
  Query$GetTicket$ticket$yard({
    required this.shortName,
    this.wasteCarrierRegNo,
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.addressLine4,
    this.addressLine5,
    this.addressLine6,
    this.postCode,
    this.telephone,
    this.wmlExemptionNo,
    this.$__typename = 'Yard',
  });

  factory Query$GetTicket$ticket$yard.fromJson(Map<String, dynamic> json) {
    final l$shortName = json['shortName'];
    final l$wasteCarrierRegNo = json['wasteCarrierRegNo'];
    final l$addressLine1 = json['addressLine1'];
    final l$addressLine2 = json['addressLine2'];
    final l$addressLine3 = json['addressLine3'];
    final l$addressLine4 = json['addressLine4'];
    final l$addressLine5 = json['addressLine5'];
    final l$addressLine6 = json['addressLine6'];
    final l$postCode = json['postCode'];
    final l$telephone = json['telephone'];
    final l$wmlExemptionNo = json['wmlExemptionNo'];
    final l$$__typename = json['__typename'];
    return Query$GetTicket$ticket$yard(
      shortName: (l$shortName as String),
      wasteCarrierRegNo: (l$wasteCarrierRegNo as String?),
      addressLine1: (l$addressLine1 as String?),
      addressLine2: (l$addressLine2 as String?),
      addressLine3: (l$addressLine3 as String?),
      addressLine4: (l$addressLine4 as String?),
      addressLine5: (l$addressLine5 as String?),
      addressLine6: (l$addressLine6 as String?),
      postCode: (l$postCode as String?),
      telephone: (l$telephone as String?),
      wmlExemptionNo: (l$wmlExemptionNo as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String shortName;

  final String? wasteCarrierRegNo;

  final String? addressLine1;

  final String? addressLine2;

  final String? addressLine3;

  final String? addressLine4;

  final String? addressLine5;

  final String? addressLine6;

  final String? postCode;

  final String? telephone;

  final String? wmlExemptionNo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    _resultData['wasteCarrierRegNo'] = l$wasteCarrierRegNo;
    final l$addressLine1 = addressLine1;
    _resultData['addressLine1'] = l$addressLine1;
    final l$addressLine2 = addressLine2;
    _resultData['addressLine2'] = l$addressLine2;
    final l$addressLine3 = addressLine3;
    _resultData['addressLine3'] = l$addressLine3;
    final l$addressLine4 = addressLine4;
    _resultData['addressLine4'] = l$addressLine4;
    final l$addressLine5 = addressLine5;
    _resultData['addressLine5'] = l$addressLine5;
    final l$addressLine6 = addressLine6;
    _resultData['addressLine6'] = l$addressLine6;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
    final l$telephone = telephone;
    _resultData['telephone'] = l$telephone;
    final l$wmlExemptionNo = wmlExemptionNo;
    _resultData['wmlExemptionNo'] = l$wmlExemptionNo;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shortName = shortName;
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    final l$addressLine1 = addressLine1;
    final l$addressLine2 = addressLine2;
    final l$addressLine3 = addressLine3;
    final l$addressLine4 = addressLine4;
    final l$addressLine5 = addressLine5;
    final l$addressLine6 = addressLine6;
    final l$postCode = postCode;
    final l$telephone = telephone;
    final l$wmlExemptionNo = wmlExemptionNo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shortName,
      l$wasteCarrierRegNo,
      l$addressLine1,
      l$addressLine2,
      l$addressLine3,
      l$addressLine4,
      l$addressLine5,
      l$addressLine6,
      l$postCode,
      l$telephone,
      l$wmlExemptionNo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicket$ticket$yard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    final lOther$wasteCarrierRegNo = other.wasteCarrierRegNo;
    if (l$wasteCarrierRegNo != lOther$wasteCarrierRegNo) {
      return false;
    }
    final l$addressLine1 = addressLine1;
    final lOther$addressLine1 = other.addressLine1;
    if (l$addressLine1 != lOther$addressLine1) {
      return false;
    }
    final l$addressLine2 = addressLine2;
    final lOther$addressLine2 = other.addressLine2;
    if (l$addressLine2 != lOther$addressLine2) {
      return false;
    }
    final l$addressLine3 = addressLine3;
    final lOther$addressLine3 = other.addressLine3;
    if (l$addressLine3 != lOther$addressLine3) {
      return false;
    }
    final l$addressLine4 = addressLine4;
    final lOther$addressLine4 = other.addressLine4;
    if (l$addressLine4 != lOther$addressLine4) {
      return false;
    }
    final l$addressLine5 = addressLine5;
    final lOther$addressLine5 = other.addressLine5;
    if (l$addressLine5 != lOther$addressLine5) {
      return false;
    }
    final l$addressLine6 = addressLine6;
    final lOther$addressLine6 = other.addressLine6;
    if (l$addressLine6 != lOther$addressLine6) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
      return false;
    }
    final l$telephone = telephone;
    final lOther$telephone = other.telephone;
    if (l$telephone != lOther$telephone) {
      return false;
    }
    final l$wmlExemptionNo = wmlExemptionNo;
    final lOther$wmlExemptionNo = other.wmlExemptionNo;
    if (l$wmlExemptionNo != lOther$wmlExemptionNo) {
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

extension UtilityExtension$Query$GetTicket$ticket$yard
    on Query$GetTicket$ticket$yard {
  CopyWith$Query$GetTicket$ticket$yard<Query$GetTicket$ticket$yard>
      get copyWith => CopyWith$Query$GetTicket$ticket$yard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTicket$ticket$yard<TRes> {
  factory CopyWith$Query$GetTicket$ticket$yard(
    Query$GetTicket$ticket$yard instance,
    TRes Function(Query$GetTicket$ticket$yard) then,
  ) = _CopyWithImpl$Query$GetTicket$ticket$yard;

  factory CopyWith$Query$GetTicket$ticket$yard.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicket$ticket$yard;

  TRes call({
    String? shortName,
    String? wasteCarrierRegNo,
    String? addressLine1,
    String? addressLine2,
    String? addressLine3,
    String? addressLine4,
    String? addressLine5,
    String? addressLine6,
    String? postCode,
    String? telephone,
    String? wmlExemptionNo,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicket$ticket$yard<TRes>
    implements CopyWith$Query$GetTicket$ticket$yard<TRes> {
  _CopyWithImpl$Query$GetTicket$ticket$yard(
    this._instance,
    this._then,
  );

  final Query$GetTicket$ticket$yard _instance;

  final TRes Function(Query$GetTicket$ticket$yard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? shortName = _undefined,
    Object? wasteCarrierRegNo = _undefined,
    Object? addressLine1 = _undefined,
    Object? addressLine2 = _undefined,
    Object? addressLine3 = _undefined,
    Object? addressLine4 = _undefined,
    Object? addressLine5 = _undefined,
    Object? addressLine6 = _undefined,
    Object? postCode = _undefined,
    Object? telephone = _undefined,
    Object? wmlExemptionNo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTicket$ticket$yard(
        shortName: shortName == _undefined || shortName == null
            ? _instance.shortName
            : (shortName as String),
        wasteCarrierRegNo: wasteCarrierRegNo == _undefined
            ? _instance.wasteCarrierRegNo
            : (wasteCarrierRegNo as String?),
        addressLine1: addressLine1 == _undefined
            ? _instance.addressLine1
            : (addressLine1 as String?),
        addressLine2: addressLine2 == _undefined
            ? _instance.addressLine2
            : (addressLine2 as String?),
        addressLine3: addressLine3 == _undefined
            ? _instance.addressLine3
            : (addressLine3 as String?),
        addressLine4: addressLine4 == _undefined
            ? _instance.addressLine4
            : (addressLine4 as String?),
        addressLine5: addressLine5 == _undefined
            ? _instance.addressLine5
            : (addressLine5 as String?),
        addressLine6: addressLine6 == _undefined
            ? _instance.addressLine6
            : (addressLine6 as String?),
        postCode:
            postCode == _undefined ? _instance.postCode : (postCode as String?),
        telephone: telephone == _undefined
            ? _instance.telephone
            : (telephone as String?),
        wmlExemptionNo: wmlExemptionNo == _undefined
            ? _instance.wmlExemptionNo
            : (wmlExemptionNo as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTicket$ticket$yard<TRes>
    implements CopyWith$Query$GetTicket$ticket$yard<TRes> {
  _CopyWithStubImpl$Query$GetTicket$ticket$yard(this._res);

  TRes _res;

  call({
    String? shortName,
    String? wasteCarrierRegNo,
    String? addressLine1,
    String? addressLine2,
    String? addressLine3,
    String? addressLine4,
    String? addressLine5,
    String? addressLine6,
    String? postCode,
    String? telephone,
    String? wmlExemptionNo,
    String? $__typename,
  }) =>
      _res;
}
