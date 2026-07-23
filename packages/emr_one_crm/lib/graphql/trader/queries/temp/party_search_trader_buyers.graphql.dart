import 'package:gql/ast.dart';

class Variables$Query$PartySearchTradeRBuyers {
  factory Variables$Query$PartySearchTradeRBuyers({required String buyerId}) =>
      Variables$Query$PartySearchTradeRBuyers._({
        r'buyerId': buyerId,
      });

  Variables$Query$PartySearchTradeRBuyers._(this._$data);

  factory Variables$Query$PartySearchTradeRBuyers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buyerId = data['buyerId'];
    result$data['buyerId'] = (l$buyerId as String);
    return Variables$Query$PartySearchTradeRBuyers._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buyerId => (_$data['buyerId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buyerId = buyerId;
    result$data['buyerId'] = l$buyerId;
    return result$data;
  }

  CopyWith$Variables$Query$PartySearchTradeRBuyers<
          Variables$Query$PartySearchTradeRBuyers>
      get copyWith => CopyWith$Variables$Query$PartySearchTradeRBuyers(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PartySearchTradeRBuyers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buyerId = buyerId;
    final lOther$buyerId = other.buyerId;
    if (l$buyerId != lOther$buyerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buyerId = buyerId;
    return Object.hashAll([l$buyerId]);
  }
}

abstract class CopyWith$Variables$Query$PartySearchTradeRBuyers<TRes> {
  factory CopyWith$Variables$Query$PartySearchTradeRBuyers(
    Variables$Query$PartySearchTradeRBuyers instance,
    TRes Function(Variables$Query$PartySearchTradeRBuyers) then,
  ) = _CopyWithImpl$Variables$Query$PartySearchTradeRBuyers;

  factory CopyWith$Variables$Query$PartySearchTradeRBuyers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PartySearchTradeRBuyers;

  TRes call({String? buyerId});
}

class _CopyWithImpl$Variables$Query$PartySearchTradeRBuyers<TRes>
    implements CopyWith$Variables$Query$PartySearchTradeRBuyers<TRes> {
  _CopyWithImpl$Variables$Query$PartySearchTradeRBuyers(
    this._instance,
    this._then,
  );

  final Variables$Query$PartySearchTradeRBuyers _instance;

  final TRes Function(Variables$Query$PartySearchTradeRBuyers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? buyerId = _undefined}) =>
      _then(Variables$Query$PartySearchTradeRBuyers._({
        ..._instance._$data,
        if (buyerId != _undefined && buyerId != null)
          'buyerId': (buyerId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$PartySearchTradeRBuyers<TRes>
    implements CopyWith$Variables$Query$PartySearchTradeRBuyers<TRes> {
  _CopyWithStubImpl$Variables$Query$PartySearchTradeRBuyers(this._res);

  TRes _res;

  call({String? buyerId}) => _res;
}

class Query$PartySearchTradeRBuyers {
  Query$PartySearchTradeRBuyers({
    required this.buyerParties,
    this.$__typename = 'Query',
  });

  factory Query$PartySearchTradeRBuyers.fromJson(Map<String, dynamic> json) {
    final l$buyerParties = json['buyerParties'];
    final l$$__typename = json['__typename'];
    return Query$PartySearchTradeRBuyers(
      buyerParties: (l$buyerParties as List<dynamic>)
          .map((e) => Query$PartySearchTradeRBuyers$buyerParties.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PartySearchTradeRBuyers$buyerParties> buyerParties;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$buyerParties = buyerParties;
    _resultData['buyerParties'] =
        l$buyerParties.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$buyerParties = buyerParties;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$buyerParties.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PartySearchTradeRBuyers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buyerParties = buyerParties;
    final lOther$buyerParties = other.buyerParties;
    if (l$buyerParties.length != lOther$buyerParties.length) {
      return false;
    }
    for (int i = 0; i < l$buyerParties.length; i++) {
      final l$buyerParties$entry = l$buyerParties[i];
      final lOther$buyerParties$entry = lOther$buyerParties[i];
      if (l$buyerParties$entry != lOther$buyerParties$entry) {
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

extension UtilityExtension$Query$PartySearchTradeRBuyers
    on Query$PartySearchTradeRBuyers {
  CopyWith$Query$PartySearchTradeRBuyers<Query$PartySearchTradeRBuyers>
      get copyWith => CopyWith$Query$PartySearchTradeRBuyers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PartySearchTradeRBuyers<TRes> {
  factory CopyWith$Query$PartySearchTradeRBuyers(
    Query$PartySearchTradeRBuyers instance,
    TRes Function(Query$PartySearchTradeRBuyers) then,
  ) = _CopyWithImpl$Query$PartySearchTradeRBuyers;

  factory CopyWith$Query$PartySearchTradeRBuyers.stub(TRes res) =
      _CopyWithStubImpl$Query$PartySearchTradeRBuyers;

  TRes call({
    List<Query$PartySearchTradeRBuyers$buyerParties>? buyerParties,
    String? $__typename,
  });
  TRes buyerParties(
      Iterable<Query$PartySearchTradeRBuyers$buyerParties> Function(
              Iterable<
                  CopyWith$Query$PartySearchTradeRBuyers$buyerParties<
                      Query$PartySearchTradeRBuyers$buyerParties>>)
          _fn);
}

class _CopyWithImpl$Query$PartySearchTradeRBuyers<TRes>
    implements CopyWith$Query$PartySearchTradeRBuyers<TRes> {
  _CopyWithImpl$Query$PartySearchTradeRBuyers(
    this._instance,
    this._then,
  );

  final Query$PartySearchTradeRBuyers _instance;

  final TRes Function(Query$PartySearchTradeRBuyers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buyerParties = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PartySearchTradeRBuyers(
        buyerParties: buyerParties == _undefined || buyerParties == null
            ? _instance.buyerParties
            : (buyerParties
                as List<Query$PartySearchTradeRBuyers$buyerParties>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes buyerParties(
          Iterable<Query$PartySearchTradeRBuyers$buyerParties> Function(
                  Iterable<
                      CopyWith$Query$PartySearchTradeRBuyers$buyerParties<
                          Query$PartySearchTradeRBuyers$buyerParties>>)
              _fn) =>
      call(
          buyerParties: _fn(_instance.buyerParties
              .map((e) => CopyWith$Query$PartySearchTradeRBuyers$buyerParties(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PartySearchTradeRBuyers<TRes>
    implements CopyWith$Query$PartySearchTradeRBuyers<TRes> {
  _CopyWithStubImpl$Query$PartySearchTradeRBuyers(this._res);

  TRes _res;

  call({
    List<Query$PartySearchTradeRBuyers$buyerParties>? buyerParties,
    String? $__typename,
  }) =>
      _res;

  buyerParties(_fn) => _res;
}

const documentNodeQueryPartySearchTradeRBuyers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PartySearchTradeRBuyers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'buyerId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'buyerParties'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'buyerId'),
                value: VariableNode(name: NameNode(value: 'buyerId')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'party_account_no'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'party_name'),
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
]);

class Query$PartySearchTradeRBuyers$buyerParties {
  Query$PartySearchTradeRBuyers$buyerParties({
    this.party_account_no,
    this.party_name,
    this.$__typename = 'T2_CRM_GetPartiesManagedResult',
  });

  factory Query$PartySearchTradeRBuyers$buyerParties.fromJson(
      Map<String, dynamic> json) {
    final l$party_account_no = json['party_account_no'];
    final l$party_name = json['party_name'];
    final l$$__typename = json['__typename'];
    return Query$PartySearchTradeRBuyers$buyerParties(
      party_account_no: (l$party_account_no as String?),
      party_name: (l$party_name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? party_account_no;

  final String? party_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$party_account_no = party_account_no;
    _resultData['party_account_no'] = l$party_account_no;
    final l$party_name = party_name;
    _resultData['party_name'] = l$party_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$party_account_no = party_account_no;
    final l$party_name = party_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$party_account_no,
      l$party_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PartySearchTradeRBuyers$buyerParties ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$party_account_no = party_account_no;
    final lOther$party_account_no = other.party_account_no;
    if (l$party_account_no != lOther$party_account_no) {
      return false;
    }
    final l$party_name = party_name;
    final lOther$party_name = other.party_name;
    if (l$party_name != lOther$party_name) {
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

extension UtilityExtension$Query$PartySearchTradeRBuyers$buyerParties
    on Query$PartySearchTradeRBuyers$buyerParties {
  CopyWith$Query$PartySearchTradeRBuyers$buyerParties<
          Query$PartySearchTradeRBuyers$buyerParties>
      get copyWith => CopyWith$Query$PartySearchTradeRBuyers$buyerParties(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PartySearchTradeRBuyers$buyerParties<TRes> {
  factory CopyWith$Query$PartySearchTradeRBuyers$buyerParties(
    Query$PartySearchTradeRBuyers$buyerParties instance,
    TRes Function(Query$PartySearchTradeRBuyers$buyerParties) then,
  ) = _CopyWithImpl$Query$PartySearchTradeRBuyers$buyerParties;

  factory CopyWith$Query$PartySearchTradeRBuyers$buyerParties.stub(TRes res) =
      _CopyWithStubImpl$Query$PartySearchTradeRBuyers$buyerParties;

  TRes call({
    String? party_account_no,
    String? party_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PartySearchTradeRBuyers$buyerParties<TRes>
    implements CopyWith$Query$PartySearchTradeRBuyers$buyerParties<TRes> {
  _CopyWithImpl$Query$PartySearchTradeRBuyers$buyerParties(
    this._instance,
    this._then,
  );

  final Query$PartySearchTradeRBuyers$buyerParties _instance;

  final TRes Function(Query$PartySearchTradeRBuyers$buyerParties) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? party_account_no = _undefined,
    Object? party_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PartySearchTradeRBuyers$buyerParties(
        party_account_no: party_account_no == _undefined
            ? _instance.party_account_no
            : (party_account_no as String?),
        party_name: party_name == _undefined
            ? _instance.party_name
            : (party_name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PartySearchTradeRBuyers$buyerParties<TRes>
    implements CopyWith$Query$PartySearchTradeRBuyers$buyerParties<TRes> {
  _CopyWithStubImpl$Query$PartySearchTradeRBuyers$buyerParties(this._res);

  TRes _res;

  call({
    String? party_account_no,
    String? party_name,
    String? $__typename,
  }) =>
      _res;
}
