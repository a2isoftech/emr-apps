import 'package:gql/ast.dart';

class Variables$Query$PartySearchTradeR {
  factory Variables$Query$PartySearchTradeR({
    required String query,
    required int skip,
    required int take,
  }) =>
      Variables$Query$PartySearchTradeR._({
        r'query': query,
        r'skip': skip,
        r'take': take,
      });

  Variables$Query$PartySearchTradeR._(this._$data);

  factory Variables$Query$PartySearchTradeR.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    final l$skip = data['skip'];
    result$data['skip'] = (l$skip as int);
    final l$take = data['take'];
    result$data['take'] = (l$take as int);
    return Variables$Query$PartySearchTradeR._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  int get skip => (_$data['skip'] as int);

  int get take => (_$data['take'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    final l$skip = skip;
    result$data['skip'] = l$skip;
    final l$take = take;
    result$data['take'] = l$take;
    return result$data;
  }

  CopyWith$Variables$Query$PartySearchTradeR<Variables$Query$PartySearchTradeR>
      get copyWith => CopyWith$Variables$Query$PartySearchTradeR(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PartySearchTradeR ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) {
      return false;
    }
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$skip = skip;
    final l$take = take;
    return Object.hashAll([
      l$query,
      l$skip,
      l$take,
    ]);
  }
}

abstract class CopyWith$Variables$Query$PartySearchTradeR<TRes> {
  factory CopyWith$Variables$Query$PartySearchTradeR(
    Variables$Query$PartySearchTradeR instance,
    TRes Function(Variables$Query$PartySearchTradeR) then,
  ) = _CopyWithImpl$Variables$Query$PartySearchTradeR;

  factory CopyWith$Variables$Query$PartySearchTradeR.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PartySearchTradeR;

  TRes call({
    String? query,
    int? skip,
    int? take,
  });
}

class _CopyWithImpl$Variables$Query$PartySearchTradeR<TRes>
    implements CopyWith$Variables$Query$PartySearchTradeR<TRes> {
  _CopyWithImpl$Variables$Query$PartySearchTradeR(
    this._instance,
    this._then,
  );

  final Variables$Query$PartySearchTradeR _instance;

  final TRes Function(Variables$Query$PartySearchTradeR) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? skip = _undefined,
    Object? take = _undefined,
  }) =>
      _then(Variables$Query$PartySearchTradeR._({
        ..._instance._$data,
        if (query != _undefined && query != null) 'query': (query as String),
        if (skip != _undefined && skip != null) 'skip': (skip as int),
        if (take != _undefined && take != null) 'take': (take as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$PartySearchTradeR<TRes>
    implements CopyWith$Variables$Query$PartySearchTradeR<TRes> {
  _CopyWithStubImpl$Variables$Query$PartySearchTradeR(this._res);

  TRes _res;

  call({
    String? query,
    int? skip,
    int? take,
  }) =>
      _res;
}

class Query$PartySearchTradeR {
  Query$PartySearchTradeR({
    required this.partiesManaged,
    this.$__typename = 'Query',
  });

  factory Query$PartySearchTradeR.fromJson(Map<String, dynamic> json) {
    final l$partiesManaged = json['partiesManaged'];
    final l$$__typename = json['__typename'];
    return Query$PartySearchTradeR(
      partiesManaged: (l$partiesManaged as List<dynamic>)
          .map((e) => Query$PartySearchTradeR$partiesManaged.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PartySearchTradeR$partiesManaged> partiesManaged;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partiesManaged = partiesManaged;
    _resultData['partiesManaged'] =
        l$partiesManaged.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partiesManaged = partiesManaged;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$partiesManaged.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PartySearchTradeR || runtimeType != other.runtimeType) {
      return false;
    }
    final l$partiesManaged = partiesManaged;
    final lOther$partiesManaged = other.partiesManaged;
    if (l$partiesManaged.length != lOther$partiesManaged.length) {
      return false;
    }
    for (int i = 0; i < l$partiesManaged.length; i++) {
      final l$partiesManaged$entry = l$partiesManaged[i];
      final lOther$partiesManaged$entry = lOther$partiesManaged[i];
      if (l$partiesManaged$entry != lOther$partiesManaged$entry) {
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

extension UtilityExtension$Query$PartySearchTradeR on Query$PartySearchTradeR {
  CopyWith$Query$PartySearchTradeR<Query$PartySearchTradeR> get copyWith =>
      CopyWith$Query$PartySearchTradeR(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PartySearchTradeR<TRes> {
  factory CopyWith$Query$PartySearchTradeR(
    Query$PartySearchTradeR instance,
    TRes Function(Query$PartySearchTradeR) then,
  ) = _CopyWithImpl$Query$PartySearchTradeR;

  factory CopyWith$Query$PartySearchTradeR.stub(TRes res) =
      _CopyWithStubImpl$Query$PartySearchTradeR;

  TRes call({
    List<Query$PartySearchTradeR$partiesManaged>? partiesManaged,
    String? $__typename,
  });
  TRes partiesManaged(
      Iterable<Query$PartySearchTradeR$partiesManaged> Function(
              Iterable<
                  CopyWith$Query$PartySearchTradeR$partiesManaged<
                      Query$PartySearchTradeR$partiesManaged>>)
          _fn);
}

class _CopyWithImpl$Query$PartySearchTradeR<TRes>
    implements CopyWith$Query$PartySearchTradeR<TRes> {
  _CopyWithImpl$Query$PartySearchTradeR(
    this._instance,
    this._then,
  );

  final Query$PartySearchTradeR _instance;

  final TRes Function(Query$PartySearchTradeR) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partiesManaged = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PartySearchTradeR(
        partiesManaged: partiesManaged == _undefined || partiesManaged == null
            ? _instance.partiesManaged
            : (partiesManaged as List<Query$PartySearchTradeR$partiesManaged>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes partiesManaged(
          Iterable<Query$PartySearchTradeR$partiesManaged> Function(
                  Iterable<
                      CopyWith$Query$PartySearchTradeR$partiesManaged<
                          Query$PartySearchTradeR$partiesManaged>>)
              _fn) =>
      call(
          partiesManaged: _fn(_instance.partiesManaged
              .map((e) => CopyWith$Query$PartySearchTradeR$partiesManaged(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PartySearchTradeR<TRes>
    implements CopyWith$Query$PartySearchTradeR<TRes> {
  _CopyWithStubImpl$Query$PartySearchTradeR(this._res);

  TRes _res;

  call({
    List<Query$PartySearchTradeR$partiesManaged>? partiesManaged,
    String? $__typename,
  }) =>
      _res;

  partiesManaged(_fn) => _res;
}

const documentNodeQueryPartySearchTradeR = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PartySearchTradeR'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'skip')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'take')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'partiesManaged'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'query'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
          ArgumentNode(
            name: NameNode(value: 'skip'),
            value: VariableNode(name: NameNode(value: 'skip')),
          ),
          ArgumentNode(
            name: NameNode(value: 'take'),
            value: VariableNode(name: NameNode(value: 'take')),
          ),
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

class Query$PartySearchTradeR$partiesManaged {
  Query$PartySearchTradeR$partiesManaged({
    this.party_account_no,
    this.party_name,
    this.$__typename = 'T2_CRM_GetPartiesManagedResult',
  });

  factory Query$PartySearchTradeR$partiesManaged.fromJson(
      Map<String, dynamic> json) {
    final l$party_account_no = json['party_account_no'];
    final l$party_name = json['party_name'];
    final l$$__typename = json['__typename'];
    return Query$PartySearchTradeR$partiesManaged(
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
    if (other is! Query$PartySearchTradeR$partiesManaged ||
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

extension UtilityExtension$Query$PartySearchTradeR$partiesManaged
    on Query$PartySearchTradeR$partiesManaged {
  CopyWith$Query$PartySearchTradeR$partiesManaged<
          Query$PartySearchTradeR$partiesManaged>
      get copyWith => CopyWith$Query$PartySearchTradeR$partiesManaged(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PartySearchTradeR$partiesManaged<TRes> {
  factory CopyWith$Query$PartySearchTradeR$partiesManaged(
    Query$PartySearchTradeR$partiesManaged instance,
    TRes Function(Query$PartySearchTradeR$partiesManaged) then,
  ) = _CopyWithImpl$Query$PartySearchTradeR$partiesManaged;

  factory CopyWith$Query$PartySearchTradeR$partiesManaged.stub(TRes res) =
      _CopyWithStubImpl$Query$PartySearchTradeR$partiesManaged;

  TRes call({
    String? party_account_no,
    String? party_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PartySearchTradeR$partiesManaged<TRes>
    implements CopyWith$Query$PartySearchTradeR$partiesManaged<TRes> {
  _CopyWithImpl$Query$PartySearchTradeR$partiesManaged(
    this._instance,
    this._then,
  );

  final Query$PartySearchTradeR$partiesManaged _instance;

  final TRes Function(Query$PartySearchTradeR$partiesManaged) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? party_account_no = _undefined,
    Object? party_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PartySearchTradeR$partiesManaged(
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

class _CopyWithStubImpl$Query$PartySearchTradeR$partiesManaged<TRes>
    implements CopyWith$Query$PartySearchTradeR$partiesManaged<TRes> {
  _CopyWithStubImpl$Query$PartySearchTradeR$partiesManaged(this._res);

  TRes _res;

  call({
    String? party_account_no,
    String? party_name,
    String? $__typename,
  }) =>
      _res;
}
