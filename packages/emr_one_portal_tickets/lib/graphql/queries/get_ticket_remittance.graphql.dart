import 'package:gql/ast.dart';

class Variables$Query$ticketRemittance {
  factory Variables$Query$ticketRemittance({required int ticketNumber}) =>
      Variables$Query$ticketRemittance._({
        r'ticketNumber': ticketNumber,
      });

  Variables$Query$ticketRemittance._(this._$data);

  factory Variables$Query$ticketRemittance.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$ticketNumber = data['ticketNumber'];
    result$data['ticketNumber'] = (l$ticketNumber as int);
    return Variables$Query$ticketRemittance._(result$data);
  }

  Map<String, dynamic> _$data;

  int get ticketNumber => (_$data['ticketNumber'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$ticketNumber = ticketNumber;
    result$data['ticketNumber'] = l$ticketNumber;
    return result$data;
  }

  CopyWith$Variables$Query$ticketRemittance<Variables$Query$ticketRemittance>
      get copyWith => CopyWith$Variables$Query$ticketRemittance(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ticketRemittance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ticketNumber = ticketNumber;
    return Object.hashAll([l$ticketNumber]);
  }
}

abstract class CopyWith$Variables$Query$ticketRemittance<TRes> {
  factory CopyWith$Variables$Query$ticketRemittance(
    Variables$Query$ticketRemittance instance,
    TRes Function(Variables$Query$ticketRemittance) then,
  ) = _CopyWithImpl$Variables$Query$ticketRemittance;

  factory CopyWith$Variables$Query$ticketRemittance.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ticketRemittance;

  TRes call({int? ticketNumber});
}

class _CopyWithImpl$Variables$Query$ticketRemittance<TRes>
    implements CopyWith$Variables$Query$ticketRemittance<TRes> {
  _CopyWithImpl$Variables$Query$ticketRemittance(
    this._instance,
    this._then,
  );

  final Variables$Query$ticketRemittance _instance;

  final TRes Function(Variables$Query$ticketRemittance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ticketNumber = _undefined}) =>
      _then(Variables$Query$ticketRemittance._({
        ..._instance._$data,
        if (ticketNumber != _undefined && ticketNumber != null)
          'ticketNumber': (ticketNumber as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$ticketRemittance<TRes>
    implements CopyWith$Variables$Query$ticketRemittance<TRes> {
  _CopyWithStubImpl$Variables$Query$ticketRemittance(this._res);

  TRes _res;

  call({int? ticketNumber}) => _res;
}

class Query$ticketRemittance {
  Query$ticketRemittance({
    this.remittanceForTicket,
    this.$__typename = 'Query',
  });

  factory Query$ticketRemittance.fromJson(Map<String, dynamic> json) {
    final l$remittanceForTicket = json['remittanceForTicket'];
    final l$$__typename = json['__typename'];
    return Query$ticketRemittance(
      remittanceForTicket: (l$remittanceForTicket as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? remittanceForTicket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$remittanceForTicket = remittanceForTicket;
    _resultData['remittanceForTicket'] = l$remittanceForTicket;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$remittanceForTicket = remittanceForTicket;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$remittanceForTicket,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ticketRemittance || runtimeType != other.runtimeType) {
      return false;
    }
    final l$remittanceForTicket = remittanceForTicket;
    final lOther$remittanceForTicket = other.remittanceForTicket;
    if (l$remittanceForTicket != lOther$remittanceForTicket) {
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

extension UtilityExtension$Query$ticketRemittance on Query$ticketRemittance {
  CopyWith$Query$ticketRemittance<Query$ticketRemittance> get copyWith =>
      CopyWith$Query$ticketRemittance(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ticketRemittance<TRes> {
  factory CopyWith$Query$ticketRemittance(
    Query$ticketRemittance instance,
    TRes Function(Query$ticketRemittance) then,
  ) = _CopyWithImpl$Query$ticketRemittance;

  factory CopyWith$Query$ticketRemittance.stub(TRes res) =
      _CopyWithStubImpl$Query$ticketRemittance;

  TRes call({
    String? remittanceForTicket,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ticketRemittance<TRes>
    implements CopyWith$Query$ticketRemittance<TRes> {
  _CopyWithImpl$Query$ticketRemittance(
    this._instance,
    this._then,
  );

  final Query$ticketRemittance _instance;

  final TRes Function(Query$ticketRemittance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? remittanceForTicket = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ticketRemittance(
        remittanceForTicket: remittanceForTicket == _undefined
            ? _instance.remittanceForTicket
            : (remittanceForTicket as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ticketRemittance<TRes>
    implements CopyWith$Query$ticketRemittance<TRes> {
  _CopyWithStubImpl$Query$ticketRemittance(this._res);

  TRes _res;

  call({
    String? remittanceForTicket,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryticketRemittance = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ticketRemittance'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ticketNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'remittanceForTicket'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'ticketNumber'),
            value: VariableNode(name: NameNode(value: 'ticketNumber')),
          )
        ],
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
]);
