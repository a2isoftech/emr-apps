import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetGuidePriceDetails {
  factory Variables$Query$GetGuidePriceDetails({
    required Input$GetGuidePricesInput input,
    int? first,
    int? last,
    String? before,
    String? after,
  }) =>
      Variables$Query$GetGuidePriceDetails._({
        r'input': input,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
      });

  Variables$Query$GetGuidePriceDetails._(this._$data);

  factory Variables$Query$GetGuidePriceDetails.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$GetGuidePricesInput.fromJson((l$input as Map<String, dynamic>));
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$GetGuidePriceDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetGuidePricesInput get input =>
      (_$data['input'] as Input$GetGuidePricesInput);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetGuidePriceDetails<
          Variables$Query$GetGuidePriceDetails>
      get copyWith => CopyWith$Variables$Query$GetGuidePriceDetails(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetGuidePriceDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    return Object.hashAll([
      l$input,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetGuidePriceDetails<TRes> {
  factory CopyWith$Variables$Query$GetGuidePriceDetails(
    Variables$Query$GetGuidePriceDetails instance,
    TRes Function(Variables$Query$GetGuidePriceDetails) then,
  ) = _CopyWithImpl$Variables$Query$GetGuidePriceDetails;

  factory CopyWith$Variables$Query$GetGuidePriceDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetGuidePriceDetails;

  TRes call({
    Input$GetGuidePricesInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$GetGuidePriceDetails<TRes>
    implements CopyWith$Variables$Query$GetGuidePriceDetails<TRes> {
  _CopyWithImpl$Variables$Query$GetGuidePriceDetails(
    this._instance,
    this._then,
  );

  final Variables$Query$GetGuidePriceDetails _instance;

  final TRes Function(Variables$Query$GetGuidePriceDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$GetGuidePriceDetails._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$GetGuidePricesInput),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetGuidePriceDetails<TRes>
    implements CopyWith$Variables$Query$GetGuidePriceDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$GetGuidePriceDetails(this._res);

  TRes _res;

  call({
    Input$GetGuidePricesInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
  }) =>
      _res;
}

class Query$GetGuidePriceDetails {
  Query$GetGuidePriceDetails({
    this.priceList,
    this.$__typename = 'Query',
  });

  factory Query$GetGuidePriceDetails.fromJson(Map<String, dynamic> json) {
    final l$priceList = json['priceList'];
    final l$$__typename = json['__typename'];
    return Query$GetGuidePriceDetails(
      priceList: l$priceList == null
          ? null
          : Query$GetGuidePriceDetails$priceList.fromJson(
              (l$priceList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetGuidePriceDetails$priceList? priceList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$priceList = priceList;
    _resultData['priceList'] = l$priceList?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$priceList = priceList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$priceList,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGuidePriceDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$priceList = priceList;
    final lOther$priceList = other.priceList;
    if (l$priceList != lOther$priceList) {
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

extension UtilityExtension$Query$GetGuidePriceDetails
    on Query$GetGuidePriceDetails {
  CopyWith$Query$GetGuidePriceDetails<Query$GetGuidePriceDetails>
      get copyWith => CopyWith$Query$GetGuidePriceDetails(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetGuidePriceDetails<TRes> {
  factory CopyWith$Query$GetGuidePriceDetails(
    Query$GetGuidePriceDetails instance,
    TRes Function(Query$GetGuidePriceDetails) then,
  ) = _CopyWithImpl$Query$GetGuidePriceDetails;

  factory CopyWith$Query$GetGuidePriceDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGuidePriceDetails;

  TRes call({
    Query$GetGuidePriceDetails$priceList? priceList,
    String? $__typename,
  });
  CopyWith$Query$GetGuidePriceDetails$priceList<TRes> get priceList;
}

class _CopyWithImpl$Query$GetGuidePriceDetails<TRes>
    implements CopyWith$Query$GetGuidePriceDetails<TRes> {
  _CopyWithImpl$Query$GetGuidePriceDetails(
    this._instance,
    this._then,
  );

  final Query$GetGuidePriceDetails _instance;

  final TRes Function(Query$GetGuidePriceDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priceList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGuidePriceDetails(
        priceList: priceList == _undefined
            ? _instance.priceList
            : (priceList as Query$GetGuidePriceDetails$priceList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetGuidePriceDetails$priceList<TRes> get priceList {
    final local$priceList = _instance.priceList;
    return local$priceList == null
        ? CopyWith$Query$GetGuidePriceDetails$priceList.stub(_then(_instance))
        : CopyWith$Query$GetGuidePriceDetails$priceList(
            local$priceList, (e) => call(priceList: e));
  }
}

class _CopyWithStubImpl$Query$GetGuidePriceDetails<TRes>
    implements CopyWith$Query$GetGuidePriceDetails<TRes> {
  _CopyWithStubImpl$Query$GetGuidePriceDetails(this._res);

  TRes _res;

  call({
    Query$GetGuidePriceDetails$priceList? priceList,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetGuidePriceDetails$priceList<TRes> get priceList =>
      CopyWith$Query$GetGuidePriceDetails$priceList.stub(_res);
}

const documentNodeQueryGetGuidePriceDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetGuidePriceDetails'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetGuidePricesInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'before')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'priceList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last'),
            value: VariableNode(name: NameNode(value: 'last')),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startCursor'),
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
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'contractHeaderId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'contractLineId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'internalNotes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'paymentNotes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'externalNotes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deliveryNotes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'longDescription'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'publicationId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'manager'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'accountNo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deliveryType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lineStart'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lineEnd'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'haulageAdjustment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'haulageCharge'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'haulageRateUoMValue'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'haulageChargeUoM'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'productCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'productType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'productDescription'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'baseMaterialPriceUoMValue'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'baseMaterialPriceUoM'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deltas'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'yard'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latestCommercialDeltaUoM'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latestCommercialDeltaUoMValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latestOperationalDeltaUoMValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latestOperationalDeltaUoM'),
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
                name: NameNode(value: 'tags'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'tagId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'category'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'active'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'startDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'endDate'),
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
                    name: NameNode(value: 'rateUoMValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rateUoM'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'functional'),
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

class Query$GetGuidePriceDetails$priceList {
  Query$GetGuidePriceDetails$priceList({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'PriceListConnection',
  });

  factory Query$GetGuidePriceDetails$priceList.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetGuidePriceDetails$priceList(
      pageInfo: Query$GetGuidePriceDetails$priceList$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$GetGuidePriceDetails$priceList$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetGuidePriceDetails$priceList$pageInfo pageInfo;

  final int totalCount;

  final List<Query$GetGuidePriceDetails$priceList$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGuidePriceDetails$priceList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$GetGuidePriceDetails$priceList
    on Query$GetGuidePriceDetails$priceList {
  CopyWith$Query$GetGuidePriceDetails$priceList<
          Query$GetGuidePriceDetails$priceList>
      get copyWith => CopyWith$Query$GetGuidePriceDetails$priceList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetGuidePriceDetails$priceList<TRes> {
  factory CopyWith$Query$GetGuidePriceDetails$priceList(
    Query$GetGuidePriceDetails$priceList instance,
    TRes Function(Query$GetGuidePriceDetails$priceList) then,
  ) = _CopyWithImpl$Query$GetGuidePriceDetails$priceList;

  factory CopyWith$Query$GetGuidePriceDetails$priceList.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList;

  TRes call({
    Query$GetGuidePriceDetails$priceList$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetGuidePriceDetails$priceList$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$GetGuidePriceDetails$priceList$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetGuidePriceDetails$priceList$nodes<
                      Query$GetGuidePriceDetails$priceList$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetGuidePriceDetails$priceList<TRes>
    implements CopyWith$Query$GetGuidePriceDetails$priceList<TRes> {
  _CopyWithImpl$Query$GetGuidePriceDetails$priceList(
    this._instance,
    this._then,
  );

  final Query$GetGuidePriceDetails$priceList _instance;

  final TRes Function(Query$GetGuidePriceDetails$priceList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGuidePriceDetails$priceList(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetGuidePriceDetails$priceList$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetGuidePriceDetails$priceList$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetGuidePriceDetails$priceList$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetGuidePriceDetails$priceList$nodes<
                          Query$GetGuidePriceDetails$priceList$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              ?.map((e) => CopyWith$Query$GetGuidePriceDetails$priceList$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList<TRes>
    implements CopyWith$Query$GetGuidePriceDetails$priceList<TRes> {
  _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList(this._res);

  TRes _res;

  call({
    Query$GetGuidePriceDetails$priceList$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetGuidePriceDetails$priceList$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetGuidePriceDetails$priceList$pageInfo {
  Query$GetGuidePriceDetails$priceList$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetGuidePriceDetails$priceList$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetGuidePriceDetails$priceList$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final bool hasPreviousPage;

  final String? startCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$endCursor,
      l$hasPreviousPage,
      l$startCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGuidePriceDetails$priceList$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
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

extension UtilityExtension$Query$GetGuidePriceDetails$priceList$pageInfo
    on Query$GetGuidePriceDetails$priceList$pageInfo {
  CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo<
          Query$GetGuidePriceDetails$priceList$pageInfo>
      get copyWith => CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo<TRes> {
  factory CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo(
    Query$GetGuidePriceDetails$priceList$pageInfo instance,
    TRes Function(Query$GetGuidePriceDetails$priceList$pageInfo) then,
  ) = _CopyWithImpl$Query$GetGuidePriceDetails$priceList$pageInfo;

  factory CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetGuidePriceDetails$priceList$pageInfo<TRes>
    implements CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo<TRes> {
  _CopyWithImpl$Query$GetGuidePriceDetails$priceList$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetGuidePriceDetails$priceList$pageInfo _instance;

  final TRes Function(Query$GetGuidePriceDetails$priceList$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGuidePriceDetails$priceList$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$pageInfo<TRes>
    implements CopyWith$Query$GetGuidePriceDetails$priceList$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetGuidePriceDetails$priceList$nodes {
  Query$GetGuidePriceDetails$priceList$nodes({
    this.id,
    required this.contractHeaderId,
    required this.contractLineId,
    required this.internalNotes,
    required this.paymentNotes,
    required this.externalNotes,
    required this.deliveryNotes,
    required this.longDescription,
    required this.publicationId,
    this.manager,
    this.accountNo,
    this.deliveryType,
    required this.lineStart,
    required this.lineEnd,
    this.haulageAdjustment,
    this.haulageCharge,
    this.haulageRateUoMValue,
    this.haulageChargeUoM,
    this.productCode,
    this.productType,
    required this.productDescription,
    this.baseMaterialPriceUoMValue,
    this.baseMaterialPriceUoM,
    required this.deltas,
    required this.tags,
    this.$__typename = 'FlattenedPriceList',
  });

  factory Query$GetGuidePriceDetails$priceList$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$contractHeaderId = json['contractHeaderId'];
    final l$contractLineId = json['contractLineId'];
    final l$internalNotes = json['internalNotes'];
    final l$paymentNotes = json['paymentNotes'];
    final l$externalNotes = json['externalNotes'];
    final l$deliveryNotes = json['deliveryNotes'];
    final l$longDescription = json['longDescription'];
    final l$publicationId = json['publicationId'];
    final l$manager = json['manager'];
    final l$accountNo = json['accountNo'];
    final l$deliveryType = json['deliveryType'];
    final l$lineStart = json['lineStart'];
    final l$lineEnd = json['lineEnd'];
    final l$haulageAdjustment = json['haulageAdjustment'];
    final l$haulageCharge = json['haulageCharge'];
    final l$haulageRateUoMValue = json['haulageRateUoMValue'];
    final l$haulageChargeUoM = json['haulageChargeUoM'];
    final l$productCode = json['productCode'];
    final l$productType = json['productType'];
    final l$productDescription = json['productDescription'];
    final l$baseMaterialPriceUoMValue = json['baseMaterialPriceUoMValue'];
    final l$baseMaterialPriceUoM = json['baseMaterialPriceUoM'];
    final l$deltas = json['deltas'];
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Query$GetGuidePriceDetails$priceList$nodes(
      id: (l$id as String?),
      contractHeaderId: (l$contractHeaderId as int),
      contractLineId: (l$contractLineId as int),
      internalNotes: (l$internalNotes as String),
      paymentNotes: (l$paymentNotes as String),
      externalNotes: (l$externalNotes as String),
      deliveryNotes: (l$deliveryNotes as String),
      longDescription: (l$longDescription as String),
      publicationId: (l$publicationId as int),
      manager: (l$manager as String?),
      accountNo: (l$accountNo as String?),
      deliveryType: (l$deliveryType as String?),
      lineStart: DateTime.parse((l$lineStart as String)),
      lineEnd: DateTime.parse((l$lineEnd as String)),
      haulageAdjustment: (l$haulageAdjustment as num?)?.toDouble(),
      haulageCharge: (l$haulageCharge as num?)?.toDouble(),
      haulageRateUoMValue: (l$haulageRateUoMValue as num?)?.toDouble(),
      haulageChargeUoM: (l$haulageChargeUoM as String?),
      productCode: (l$productCode as String?),
      productType: (l$productType as String?),
      productDescription: (l$productDescription as String),
      baseMaterialPriceUoMValue:
          (l$baseMaterialPriceUoMValue as num?)?.toDouble(),
      baseMaterialPriceUoM: (l$baseMaterialPriceUoM as String?),
      deltas: (l$deltas as List<dynamic>)
          .map((e) =>
              Query$GetGuidePriceDetails$priceList$nodes$deltas.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map((e) => Query$GetGuidePriceDetails$priceList$nodes$tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final int contractHeaderId;

  final int contractLineId;

  final String internalNotes;

  final String paymentNotes;

  final String externalNotes;

  final String deliveryNotes;

  final String longDescription;

  final int publicationId;

  final String? manager;

  final String? accountNo;

  final String? deliveryType;

  final DateTime lineStart;

  final DateTime lineEnd;

  final double? haulageAdjustment;

  final double? haulageCharge;

  final double? haulageRateUoMValue;

  final String? haulageChargeUoM;

  final String? productCode;

  final String? productType;

  final String productDescription;

  final double? baseMaterialPriceUoMValue;

  final String? baseMaterialPriceUoM;

  final List<Query$GetGuidePriceDetails$priceList$nodes$deltas> deltas;

  final List<Query$GetGuidePriceDetails$priceList$nodes$tags> tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$contractHeaderId = contractHeaderId;
    _resultData['contractHeaderId'] = l$contractHeaderId;
    final l$contractLineId = contractLineId;
    _resultData['contractLineId'] = l$contractLineId;
    final l$internalNotes = internalNotes;
    _resultData['internalNotes'] = l$internalNotes;
    final l$paymentNotes = paymentNotes;
    _resultData['paymentNotes'] = l$paymentNotes;
    final l$externalNotes = externalNotes;
    _resultData['externalNotes'] = l$externalNotes;
    final l$deliveryNotes = deliveryNotes;
    _resultData['deliveryNotes'] = l$deliveryNotes;
    final l$longDescription = longDescription;
    _resultData['longDescription'] = l$longDescription;
    final l$publicationId = publicationId;
    _resultData['publicationId'] = l$publicationId;
    final l$manager = manager;
    _resultData['manager'] = l$manager;
    final l$accountNo = accountNo;
    _resultData['accountNo'] = l$accountNo;
    final l$deliveryType = deliveryType;
    _resultData['deliveryType'] = l$deliveryType;
    final l$lineStart = lineStart;
    _resultData['lineStart'] = l$lineStart.toIso8601String();
    final l$lineEnd = lineEnd;
    _resultData['lineEnd'] = l$lineEnd.toIso8601String();
    final l$haulageAdjustment = haulageAdjustment;
    _resultData['haulageAdjustment'] = l$haulageAdjustment;
    final l$haulageCharge = haulageCharge;
    _resultData['haulageCharge'] = l$haulageCharge;
    final l$haulageRateUoMValue = haulageRateUoMValue;
    _resultData['haulageRateUoMValue'] = l$haulageRateUoMValue;
    final l$haulageChargeUoM = haulageChargeUoM;
    _resultData['haulageChargeUoM'] = l$haulageChargeUoM;
    final l$productCode = productCode;
    _resultData['productCode'] = l$productCode;
    final l$productType = productType;
    _resultData['productType'] = l$productType;
    final l$productDescription = productDescription;
    _resultData['productDescription'] = l$productDescription;
    final l$baseMaterialPriceUoMValue = baseMaterialPriceUoMValue;
    _resultData['baseMaterialPriceUoMValue'] = l$baseMaterialPriceUoMValue;
    final l$baseMaterialPriceUoM = baseMaterialPriceUoM;
    _resultData['baseMaterialPriceUoM'] = l$baseMaterialPriceUoM;
    final l$deltas = deltas;
    _resultData['deltas'] = l$deltas.map((e) => e.toJson()).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$contractHeaderId = contractHeaderId;
    final l$contractLineId = contractLineId;
    final l$internalNotes = internalNotes;
    final l$paymentNotes = paymentNotes;
    final l$externalNotes = externalNotes;
    final l$deliveryNotes = deliveryNotes;
    final l$longDescription = longDescription;
    final l$publicationId = publicationId;
    final l$manager = manager;
    final l$accountNo = accountNo;
    final l$deliveryType = deliveryType;
    final l$lineStart = lineStart;
    final l$lineEnd = lineEnd;
    final l$haulageAdjustment = haulageAdjustment;
    final l$haulageCharge = haulageCharge;
    final l$haulageRateUoMValue = haulageRateUoMValue;
    final l$haulageChargeUoM = haulageChargeUoM;
    final l$productCode = productCode;
    final l$productType = productType;
    final l$productDescription = productDescription;
    final l$baseMaterialPriceUoMValue = baseMaterialPriceUoMValue;
    final l$baseMaterialPriceUoM = baseMaterialPriceUoM;
    final l$deltas = deltas;
    final l$tags = tags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$contractHeaderId,
      l$contractLineId,
      l$internalNotes,
      l$paymentNotes,
      l$externalNotes,
      l$deliveryNotes,
      l$longDescription,
      l$publicationId,
      l$manager,
      l$accountNo,
      l$deliveryType,
      l$lineStart,
      l$lineEnd,
      l$haulageAdjustment,
      l$haulageCharge,
      l$haulageRateUoMValue,
      l$haulageChargeUoM,
      l$productCode,
      l$productType,
      l$productDescription,
      l$baseMaterialPriceUoMValue,
      l$baseMaterialPriceUoM,
      Object.hashAll(l$deltas.map((v) => v)),
      Object.hashAll(l$tags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGuidePriceDetails$priceList$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$contractHeaderId = contractHeaderId;
    final lOther$contractHeaderId = other.contractHeaderId;
    if (l$contractHeaderId != lOther$contractHeaderId) {
      return false;
    }
    final l$contractLineId = contractLineId;
    final lOther$contractLineId = other.contractLineId;
    if (l$contractLineId != lOther$contractLineId) {
      return false;
    }
    final l$internalNotes = internalNotes;
    final lOther$internalNotes = other.internalNotes;
    if (l$internalNotes != lOther$internalNotes) {
      return false;
    }
    final l$paymentNotes = paymentNotes;
    final lOther$paymentNotes = other.paymentNotes;
    if (l$paymentNotes != lOther$paymentNotes) {
      return false;
    }
    final l$externalNotes = externalNotes;
    final lOther$externalNotes = other.externalNotes;
    if (l$externalNotes != lOther$externalNotes) {
      return false;
    }
    final l$deliveryNotes = deliveryNotes;
    final lOther$deliveryNotes = other.deliveryNotes;
    if (l$deliveryNotes != lOther$deliveryNotes) {
      return false;
    }
    final l$longDescription = longDescription;
    final lOther$longDescription = other.longDescription;
    if (l$longDescription != lOther$longDescription) {
      return false;
    }
    final l$publicationId = publicationId;
    final lOther$publicationId = other.publicationId;
    if (l$publicationId != lOther$publicationId) {
      return false;
    }
    final l$manager = manager;
    final lOther$manager = other.manager;
    if (l$manager != lOther$manager) {
      return false;
    }
    final l$accountNo = accountNo;
    final lOther$accountNo = other.accountNo;
    if (l$accountNo != lOther$accountNo) {
      return false;
    }
    final l$deliveryType = deliveryType;
    final lOther$deliveryType = other.deliveryType;
    if (l$deliveryType != lOther$deliveryType) {
      return false;
    }
    final l$lineStart = lineStart;
    final lOther$lineStart = other.lineStart;
    if (l$lineStart != lOther$lineStart) {
      return false;
    }
    final l$lineEnd = lineEnd;
    final lOther$lineEnd = other.lineEnd;
    if (l$lineEnd != lOther$lineEnd) {
      return false;
    }
    final l$haulageAdjustment = haulageAdjustment;
    final lOther$haulageAdjustment = other.haulageAdjustment;
    if (l$haulageAdjustment != lOther$haulageAdjustment) {
      return false;
    }
    final l$haulageCharge = haulageCharge;
    final lOther$haulageCharge = other.haulageCharge;
    if (l$haulageCharge != lOther$haulageCharge) {
      return false;
    }
    final l$haulageRateUoMValue = haulageRateUoMValue;
    final lOther$haulageRateUoMValue = other.haulageRateUoMValue;
    if (l$haulageRateUoMValue != lOther$haulageRateUoMValue) {
      return false;
    }
    final l$haulageChargeUoM = haulageChargeUoM;
    final lOther$haulageChargeUoM = other.haulageChargeUoM;
    if (l$haulageChargeUoM != lOther$haulageChargeUoM) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (l$productCode != lOther$productCode) {
      return false;
    }
    final l$productType = productType;
    final lOther$productType = other.productType;
    if (l$productType != lOther$productType) {
      return false;
    }
    final l$productDescription = productDescription;
    final lOther$productDescription = other.productDescription;
    if (l$productDescription != lOther$productDescription) {
      return false;
    }
    final l$baseMaterialPriceUoMValue = baseMaterialPriceUoMValue;
    final lOther$baseMaterialPriceUoMValue = other.baseMaterialPriceUoMValue;
    if (l$baseMaterialPriceUoMValue != lOther$baseMaterialPriceUoMValue) {
      return false;
    }
    final l$baseMaterialPriceUoM = baseMaterialPriceUoM;
    final lOther$baseMaterialPriceUoM = other.baseMaterialPriceUoM;
    if (l$baseMaterialPriceUoM != lOther$baseMaterialPriceUoM) {
      return false;
    }
    final l$deltas = deltas;
    final lOther$deltas = other.deltas;
    if (l$deltas.length != lOther$deltas.length) {
      return false;
    }
    for (int i = 0; i < l$deltas.length; i++) {
      final l$deltas$entry = l$deltas[i];
      final lOther$deltas$entry = lOther$deltas[i];
      if (l$deltas$entry != lOther$deltas$entry) {
        return false;
      }
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
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

extension UtilityExtension$Query$GetGuidePriceDetails$priceList$nodes
    on Query$GetGuidePriceDetails$priceList$nodes {
  CopyWith$Query$GetGuidePriceDetails$priceList$nodes<
          Query$GetGuidePriceDetails$priceList$nodes>
      get copyWith => CopyWith$Query$GetGuidePriceDetails$priceList$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetGuidePriceDetails$priceList$nodes<TRes> {
  factory CopyWith$Query$GetGuidePriceDetails$priceList$nodes(
    Query$GetGuidePriceDetails$priceList$nodes instance,
    TRes Function(Query$GetGuidePriceDetails$priceList$nodes) then,
  ) = _CopyWithImpl$Query$GetGuidePriceDetails$priceList$nodes;

  factory CopyWith$Query$GetGuidePriceDetails$priceList$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$nodes;

  TRes call({
    String? id,
    int? contractHeaderId,
    int? contractLineId,
    String? internalNotes,
    String? paymentNotes,
    String? externalNotes,
    String? deliveryNotes,
    String? longDescription,
    int? publicationId,
    String? manager,
    String? accountNo,
    String? deliveryType,
    DateTime? lineStart,
    DateTime? lineEnd,
    double? haulageAdjustment,
    double? haulageCharge,
    double? haulageRateUoMValue,
    String? haulageChargeUoM,
    String? productCode,
    String? productType,
    String? productDescription,
    double? baseMaterialPriceUoMValue,
    String? baseMaterialPriceUoM,
    List<Query$GetGuidePriceDetails$priceList$nodes$deltas>? deltas,
    List<Query$GetGuidePriceDetails$priceList$nodes$tags>? tags,
    String? $__typename,
  });
  TRes deltas(
      Iterable<Query$GetGuidePriceDetails$priceList$nodes$deltas> Function(
              Iterable<
                  CopyWith$Query$GetGuidePriceDetails$priceList$nodes$deltas<
                      Query$GetGuidePriceDetails$priceList$nodes$deltas>>)
          _fn);
  TRes tags(
      Iterable<Query$GetGuidePriceDetails$priceList$nodes$tags> Function(
              Iterable<
                  CopyWith$Query$GetGuidePriceDetails$priceList$nodes$tags<
                      Query$GetGuidePriceDetails$priceList$nodes$tags>>)
          _fn);
}

class _CopyWithImpl$Query$GetGuidePriceDetails$priceList$nodes<TRes>
    implements CopyWith$Query$GetGuidePriceDetails$priceList$nodes<TRes> {
  _CopyWithImpl$Query$GetGuidePriceDetails$priceList$nodes(
    this._instance,
    this._then,
  );

  final Query$GetGuidePriceDetails$priceList$nodes _instance;

  final TRes Function(Query$GetGuidePriceDetails$priceList$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? contractHeaderId = _undefined,
    Object? contractLineId = _undefined,
    Object? internalNotes = _undefined,
    Object? paymentNotes = _undefined,
    Object? externalNotes = _undefined,
    Object? deliveryNotes = _undefined,
    Object? longDescription = _undefined,
    Object? publicationId = _undefined,
    Object? manager = _undefined,
    Object? accountNo = _undefined,
    Object? deliveryType = _undefined,
    Object? lineStart = _undefined,
    Object? lineEnd = _undefined,
    Object? haulageAdjustment = _undefined,
    Object? haulageCharge = _undefined,
    Object? haulageRateUoMValue = _undefined,
    Object? haulageChargeUoM = _undefined,
    Object? productCode = _undefined,
    Object? productType = _undefined,
    Object? productDescription = _undefined,
    Object? baseMaterialPriceUoMValue = _undefined,
    Object? baseMaterialPriceUoM = _undefined,
    Object? deltas = _undefined,
    Object? tags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGuidePriceDetails$priceList$nodes(
        id: id == _undefined ? _instance.id : (id as String?),
        contractHeaderId:
            contractHeaderId == _undefined || contractHeaderId == null
                ? _instance.contractHeaderId
                : (contractHeaderId as int),
        contractLineId: contractLineId == _undefined || contractLineId == null
            ? _instance.contractLineId
            : (contractLineId as int),
        internalNotes: internalNotes == _undefined || internalNotes == null
            ? _instance.internalNotes
            : (internalNotes as String),
        paymentNotes: paymentNotes == _undefined || paymentNotes == null
            ? _instance.paymentNotes
            : (paymentNotes as String),
        externalNotes: externalNotes == _undefined || externalNotes == null
            ? _instance.externalNotes
            : (externalNotes as String),
        deliveryNotes: deliveryNotes == _undefined || deliveryNotes == null
            ? _instance.deliveryNotes
            : (deliveryNotes as String),
        longDescription:
            longDescription == _undefined || longDescription == null
                ? _instance.longDescription
                : (longDescription as String),
        publicationId: publicationId == _undefined || publicationId == null
            ? _instance.publicationId
            : (publicationId as int),
        manager:
            manager == _undefined ? _instance.manager : (manager as String?),
        accountNo: accountNo == _undefined
            ? _instance.accountNo
            : (accountNo as String?),
        deliveryType: deliveryType == _undefined
            ? _instance.deliveryType
            : (deliveryType as String?),
        lineStart: lineStart == _undefined || lineStart == null
            ? _instance.lineStart
            : (lineStart as DateTime),
        lineEnd: lineEnd == _undefined || lineEnd == null
            ? _instance.lineEnd
            : (lineEnd as DateTime),
        haulageAdjustment: haulageAdjustment == _undefined
            ? _instance.haulageAdjustment
            : (haulageAdjustment as double?),
        haulageCharge: haulageCharge == _undefined
            ? _instance.haulageCharge
            : (haulageCharge as double?),
        haulageRateUoMValue: haulageRateUoMValue == _undefined
            ? _instance.haulageRateUoMValue
            : (haulageRateUoMValue as double?),
        haulageChargeUoM: haulageChargeUoM == _undefined
            ? _instance.haulageChargeUoM
            : (haulageChargeUoM as String?),
        productCode: productCode == _undefined
            ? _instance.productCode
            : (productCode as String?),
        productType: productType == _undefined
            ? _instance.productType
            : (productType as String?),
        productDescription:
            productDescription == _undefined || productDescription == null
                ? _instance.productDescription
                : (productDescription as String),
        baseMaterialPriceUoMValue: baseMaterialPriceUoMValue == _undefined
            ? _instance.baseMaterialPriceUoMValue
            : (baseMaterialPriceUoMValue as double?),
        baseMaterialPriceUoM: baseMaterialPriceUoM == _undefined
            ? _instance.baseMaterialPriceUoM
            : (baseMaterialPriceUoM as String?),
        deltas: deltas == _undefined || deltas == null
            ? _instance.deltas
            : (deltas
                as List<Query$GetGuidePriceDetails$priceList$nodes$deltas>),
        tags: tags == _undefined || tags == null
            ? _instance.tags
            : (tags as List<Query$GetGuidePriceDetails$priceList$nodes$tags>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes deltas(
          Iterable<Query$GetGuidePriceDetails$priceList$nodes$deltas> Function(
                  Iterable<
                      CopyWith$Query$GetGuidePriceDetails$priceList$nodes$deltas<
                          Query$GetGuidePriceDetails$priceList$nodes$deltas>>)
              _fn) =>
      call(
          deltas: _fn(_instance.deltas.map(
              (e) => CopyWith$Query$GetGuidePriceDetails$priceList$nodes$deltas(
                    e,
                    (i) => i,
                  ))).toList());

  TRes tags(
          Iterable<Query$GetGuidePriceDetails$priceList$nodes$tags> Function(
                  Iterable<
                      CopyWith$Query$GetGuidePriceDetails$priceList$nodes$tags<
                          Query$GetGuidePriceDetails$priceList$nodes$tags>>)
              _fn) =>
      call(
          tags: _fn(_instance.tags.map(
              (e) => CopyWith$Query$GetGuidePriceDetails$priceList$nodes$tags(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$nodes<TRes>
    implements CopyWith$Query$GetGuidePriceDetails$priceList$nodes<TRes> {
  _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$nodes(this._res);

  TRes _res;

  call({
    String? id,
    int? contractHeaderId,
    int? contractLineId,
    String? internalNotes,
    String? paymentNotes,
    String? externalNotes,
    String? deliveryNotes,
    String? longDescription,
    int? publicationId,
    String? manager,
    String? accountNo,
    String? deliveryType,
    DateTime? lineStart,
    DateTime? lineEnd,
    double? haulageAdjustment,
    double? haulageCharge,
    double? haulageRateUoMValue,
    String? haulageChargeUoM,
    String? productCode,
    String? productType,
    String? productDescription,
    double? baseMaterialPriceUoMValue,
    String? baseMaterialPriceUoM,
    List<Query$GetGuidePriceDetails$priceList$nodes$deltas>? deltas,
    List<Query$GetGuidePriceDetails$priceList$nodes$tags>? tags,
    String? $__typename,
  }) =>
      _res;

  deltas(_fn) => _res;

  tags(_fn) => _res;
}

class Query$GetGuidePriceDetails$priceList$nodes$deltas {
  Query$GetGuidePriceDetails$priceList$nodes$deltas({
    required this.yard,
    required this.latestCommercialDeltaUoM,
    this.latestCommercialDeltaUoMValue,
    this.latestOperationalDeltaUoMValue,
    required this.latestOperationalDeltaUoM,
    this.$__typename = 'Delta',
  });

  factory Query$GetGuidePriceDetails$priceList$nodes$deltas.fromJson(
      Map<String, dynamic> json) {
    final l$yard = json['yard'];
    final l$latestCommercialDeltaUoM = json['latestCommercialDeltaUoM'];
    final l$latestCommercialDeltaUoMValue =
        json['latestCommercialDeltaUoMValue'];
    final l$latestOperationalDeltaUoMValue =
        json['latestOperationalDeltaUoMValue'];
    final l$latestOperationalDeltaUoM = json['latestOperationalDeltaUoM'];
    final l$$__typename = json['__typename'];
    return Query$GetGuidePriceDetails$priceList$nodes$deltas(
      yard: (l$yard as String),
      latestCommercialDeltaUoM: (l$latestCommercialDeltaUoM as String),
      latestCommercialDeltaUoMValue:
          (l$latestCommercialDeltaUoMValue as num?)?.toDouble(),
      latestOperationalDeltaUoMValue:
          (l$latestOperationalDeltaUoMValue as num?)?.toDouble(),
      latestOperationalDeltaUoM: (l$latestOperationalDeltaUoM as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String yard;

  final String latestCommercialDeltaUoM;

  final double? latestCommercialDeltaUoMValue;

  final double? latestOperationalDeltaUoMValue;

  final String latestOperationalDeltaUoM;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yard = yard;
    _resultData['yard'] = l$yard;
    final l$latestCommercialDeltaUoM = latestCommercialDeltaUoM;
    _resultData['latestCommercialDeltaUoM'] = l$latestCommercialDeltaUoM;
    final l$latestCommercialDeltaUoMValue = latestCommercialDeltaUoMValue;
    _resultData['latestCommercialDeltaUoMValue'] =
        l$latestCommercialDeltaUoMValue;
    final l$latestOperationalDeltaUoMValue = latestOperationalDeltaUoMValue;
    _resultData['latestOperationalDeltaUoMValue'] =
        l$latestOperationalDeltaUoMValue;
    final l$latestOperationalDeltaUoM = latestOperationalDeltaUoM;
    _resultData['latestOperationalDeltaUoM'] = l$latestOperationalDeltaUoM;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yard = yard;
    final l$latestCommercialDeltaUoM = latestCommercialDeltaUoM;
    final l$latestCommercialDeltaUoMValue = latestCommercialDeltaUoMValue;
    final l$latestOperationalDeltaUoMValue = latestOperationalDeltaUoMValue;
    final l$latestOperationalDeltaUoM = latestOperationalDeltaUoM;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yard,
      l$latestCommercialDeltaUoM,
      l$latestCommercialDeltaUoMValue,
      l$latestOperationalDeltaUoMValue,
      l$latestOperationalDeltaUoM,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGuidePriceDetails$priceList$nodes$deltas ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (l$yard != lOther$yard) {
      return false;
    }
    final l$latestCommercialDeltaUoM = latestCommercialDeltaUoM;
    final lOther$latestCommercialDeltaUoM = other.latestCommercialDeltaUoM;
    if (l$latestCommercialDeltaUoM != lOther$latestCommercialDeltaUoM) {
      return false;
    }
    final l$latestCommercialDeltaUoMValue = latestCommercialDeltaUoMValue;
    final lOther$latestCommercialDeltaUoMValue =
        other.latestCommercialDeltaUoMValue;
    if (l$latestCommercialDeltaUoMValue !=
        lOther$latestCommercialDeltaUoMValue) {
      return false;
    }
    final l$latestOperationalDeltaUoMValue = latestOperationalDeltaUoMValue;
    final lOther$latestOperationalDeltaUoMValue =
        other.latestOperationalDeltaUoMValue;
    if (l$latestOperationalDeltaUoMValue !=
        lOther$latestOperationalDeltaUoMValue) {
      return false;
    }
    final l$latestOperationalDeltaUoM = latestOperationalDeltaUoM;
    final lOther$latestOperationalDeltaUoM = other.latestOperationalDeltaUoM;
    if (l$latestOperationalDeltaUoM != lOther$latestOperationalDeltaUoM) {
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

extension UtilityExtension$Query$GetGuidePriceDetails$priceList$nodes$deltas
    on Query$GetGuidePriceDetails$priceList$nodes$deltas {
  CopyWith$Query$GetGuidePriceDetails$priceList$nodes$deltas<
          Query$GetGuidePriceDetails$priceList$nodes$deltas>
      get copyWith =>
          CopyWith$Query$GetGuidePriceDetails$priceList$nodes$deltas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetGuidePriceDetails$priceList$nodes$deltas<
    TRes> {
  factory CopyWith$Query$GetGuidePriceDetails$priceList$nodes$deltas(
    Query$GetGuidePriceDetails$priceList$nodes$deltas instance,
    TRes Function(Query$GetGuidePriceDetails$priceList$nodes$deltas) then,
  ) = _CopyWithImpl$Query$GetGuidePriceDetails$priceList$nodes$deltas;

  factory CopyWith$Query$GetGuidePriceDetails$priceList$nodes$deltas.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$nodes$deltas;

  TRes call({
    String? yard,
    String? latestCommercialDeltaUoM,
    double? latestCommercialDeltaUoMValue,
    double? latestOperationalDeltaUoMValue,
    String? latestOperationalDeltaUoM,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetGuidePriceDetails$priceList$nodes$deltas<TRes>
    implements
        CopyWith$Query$GetGuidePriceDetails$priceList$nodes$deltas<TRes> {
  _CopyWithImpl$Query$GetGuidePriceDetails$priceList$nodes$deltas(
    this._instance,
    this._then,
  );

  final Query$GetGuidePriceDetails$priceList$nodes$deltas _instance;

  final TRes Function(Query$GetGuidePriceDetails$priceList$nodes$deltas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yard = _undefined,
    Object? latestCommercialDeltaUoM = _undefined,
    Object? latestCommercialDeltaUoMValue = _undefined,
    Object? latestOperationalDeltaUoMValue = _undefined,
    Object? latestOperationalDeltaUoM = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGuidePriceDetails$priceList$nodes$deltas(
        yard: yard == _undefined || yard == null
            ? _instance.yard
            : (yard as String),
        latestCommercialDeltaUoM: latestCommercialDeltaUoM == _undefined ||
                latestCommercialDeltaUoM == null
            ? _instance.latestCommercialDeltaUoM
            : (latestCommercialDeltaUoM as String),
        latestCommercialDeltaUoMValue:
            latestCommercialDeltaUoMValue == _undefined
                ? _instance.latestCommercialDeltaUoMValue
                : (latestCommercialDeltaUoMValue as double?),
        latestOperationalDeltaUoMValue:
            latestOperationalDeltaUoMValue == _undefined
                ? _instance.latestOperationalDeltaUoMValue
                : (latestOperationalDeltaUoMValue as double?),
        latestOperationalDeltaUoM: latestOperationalDeltaUoM == _undefined ||
                latestOperationalDeltaUoM == null
            ? _instance.latestOperationalDeltaUoM
            : (latestOperationalDeltaUoM as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$nodes$deltas<TRes>
    implements
        CopyWith$Query$GetGuidePriceDetails$priceList$nodes$deltas<TRes> {
  _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$nodes$deltas(
      this._res);

  TRes _res;

  call({
    String? yard,
    String? latestCommercialDeltaUoM,
    double? latestCommercialDeltaUoMValue,
    double? latestOperationalDeltaUoMValue,
    String? latestOperationalDeltaUoM,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetGuidePriceDetails$priceList$nodes$tags {
  Query$GetGuidePriceDetails$priceList$nodes$tags({
    this.id,
    required this.tagId,
    required this.category,
    required this.reason,
    required this.active,
    this.startDate,
    this.endDate,
    this.rate,
    this.rateUoMValue,
    required this.rateUoM,
    required this.functional,
    this.$__typename = 'ItemTag',
  });

  factory Query$GetGuidePriceDetails$priceList$nodes$tags.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$tagId = json['tagId'];
    final l$category = json['category'];
    final l$reason = json['reason'];
    final l$active = json['active'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$rate = json['rate'];
    final l$rateUoMValue = json['rateUoMValue'];
    final l$rateUoM = json['rateUoM'];
    final l$functional = json['functional'];
    final l$$__typename = json['__typename'];
    return Query$GetGuidePriceDetails$priceList$nodes$tags(
      id: (l$id as String?),
      tagId: (l$tagId as int),
      category: (l$category as String),
      reason: (l$reason as String),
      active: (l$active as bool),
      startDate:
          l$startDate == null ? null : DateTime.parse((l$startDate as String)),
      endDate: l$endDate == null ? null : DateTime.parse((l$endDate as String)),
      rate: (l$rate as num?)?.toDouble(),
      rateUoMValue: (l$rateUoMValue as num?)?.toDouble(),
      rateUoM: (l$rateUoM as String),
      functional: (l$functional as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final int tagId;

  final String category;

  final String reason;

  final bool active;

  final DateTime? startDate;

  final DateTime? endDate;

  final double? rate;

  final double? rateUoMValue;

  final String rateUoM;

  final bool functional;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$tagId = tagId;
    _resultData['tagId'] = l$tagId;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toIso8601String();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toIso8601String();
    final l$rate = rate;
    _resultData['rate'] = l$rate;
    final l$rateUoMValue = rateUoMValue;
    _resultData['rateUoMValue'] = l$rateUoMValue;
    final l$rateUoM = rateUoM;
    _resultData['rateUoM'] = l$rateUoM;
    final l$functional = functional;
    _resultData['functional'] = l$functional;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$tagId = tagId;
    final l$category = category;
    final l$reason = reason;
    final l$active = active;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$rate = rate;
    final l$rateUoMValue = rateUoMValue;
    final l$rateUoM = rateUoM;
    final l$functional = functional;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$tagId,
      l$category,
      l$reason,
      l$active,
      l$startDate,
      l$endDate,
      l$rate,
      l$rateUoMValue,
      l$rateUoM,
      l$functional,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGuidePriceDetails$priceList$nodes$tags ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$tagId = tagId;
    final lOther$tagId = other.tagId;
    if (l$tagId != lOther$tagId) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$rateUoMValue = rateUoMValue;
    final lOther$rateUoMValue = other.rateUoMValue;
    if (l$rateUoMValue != lOther$rateUoMValue) {
      return false;
    }
    final l$rateUoM = rateUoM;
    final lOther$rateUoM = other.rateUoM;
    if (l$rateUoM != lOther$rateUoM) {
      return false;
    }
    final l$functional = functional;
    final lOther$functional = other.functional;
    if (l$functional != lOther$functional) {
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

extension UtilityExtension$Query$GetGuidePriceDetails$priceList$nodes$tags
    on Query$GetGuidePriceDetails$priceList$nodes$tags {
  CopyWith$Query$GetGuidePriceDetails$priceList$nodes$tags<
          Query$GetGuidePriceDetails$priceList$nodes$tags>
      get copyWith => CopyWith$Query$GetGuidePriceDetails$priceList$nodes$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetGuidePriceDetails$priceList$nodes$tags<TRes> {
  factory CopyWith$Query$GetGuidePriceDetails$priceList$nodes$tags(
    Query$GetGuidePriceDetails$priceList$nodes$tags instance,
    TRes Function(Query$GetGuidePriceDetails$priceList$nodes$tags) then,
  ) = _CopyWithImpl$Query$GetGuidePriceDetails$priceList$nodes$tags;

  factory CopyWith$Query$GetGuidePriceDetails$priceList$nodes$tags.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$nodes$tags;

  TRes call({
    String? id,
    int? tagId,
    String? category,
    String? reason,
    bool? active,
    DateTime? startDate,
    DateTime? endDate,
    double? rate,
    double? rateUoMValue,
    String? rateUoM,
    bool? functional,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetGuidePriceDetails$priceList$nodes$tags<TRes>
    implements CopyWith$Query$GetGuidePriceDetails$priceList$nodes$tags<TRes> {
  _CopyWithImpl$Query$GetGuidePriceDetails$priceList$nodes$tags(
    this._instance,
    this._then,
  );

  final Query$GetGuidePriceDetails$priceList$nodes$tags _instance;

  final TRes Function(Query$GetGuidePriceDetails$priceList$nodes$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? tagId = _undefined,
    Object? category = _undefined,
    Object? reason = _undefined,
    Object? active = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? rate = _undefined,
    Object? rateUoMValue = _undefined,
    Object? rateUoM = _undefined,
    Object? functional = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGuidePriceDetails$priceList$nodes$tags(
        id: id == _undefined ? _instance.id : (id as String?),
        tagId: tagId == _undefined || tagId == null
            ? _instance.tagId
            : (tagId as int),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        reason: reason == _undefined || reason == null
            ? _instance.reason
            : (reason as String),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as DateTime?),
        endDate:
            endDate == _undefined ? _instance.endDate : (endDate as DateTime?),
        rate: rate == _undefined ? _instance.rate : (rate as double?),
        rateUoMValue: rateUoMValue == _undefined
            ? _instance.rateUoMValue
            : (rateUoMValue as double?),
        rateUoM: rateUoM == _undefined || rateUoM == null
            ? _instance.rateUoM
            : (rateUoM as String),
        functional: functional == _undefined || functional == null
            ? _instance.functional
            : (functional as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$nodes$tags<TRes>
    implements CopyWith$Query$GetGuidePriceDetails$priceList$nodes$tags<TRes> {
  _CopyWithStubImpl$Query$GetGuidePriceDetails$priceList$nodes$tags(this._res);

  TRes _res;

  call({
    String? id,
    int? tagId,
    String? category,
    String? reason,
    bool? active,
    DateTime? startDate,
    DateTime? endDate,
    double? rate,
    double? rateUoMValue,
    String? rateUoM,
    bool? functional,
    String? $__typename,
  }) =>
      _res;
}
