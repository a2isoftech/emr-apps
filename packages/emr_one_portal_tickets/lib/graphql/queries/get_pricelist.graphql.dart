import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetPricelist {
  factory Variables$Query$GetPricelist({
    required String yardCode,
    required Enum$ProductType productType,
    String? searchText,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$PartyPricelistSummarySortInput>? order,
  }) =>
      Variables$Query$GetPricelist._({
        r'yardCode': yardCode,
        r'productType': productType,
        if (searchText != null) r'searchText': searchText,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (order != null) r'order': order,
      });

  Variables$Query$GetPricelist._(this._$data);

  factory Variables$Query$GetPricelist.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$productType = data['productType'];
    result$data['productType'] =
        fromJson$Enum$ProductType((l$productType as String));
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map((e) => Input$PartyPricelistSummarySortInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetPricelist._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  Enum$ProductType get productType =>
      (_$data['productType'] as Enum$ProductType);

  String? get searchText => (_$data['searchText'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  List<Input$PartyPricelistSummarySortInput>? get order =>
      (_$data['order'] as List<Input$PartyPricelistSummarySortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$productType = productType;
    result$data['productType'] = toJson$Enum$ProductType(l$productType);
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
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
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetPricelist<Variables$Query$GetPricelist>
      get copyWith => CopyWith$Variables$Query$GetPricelist(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetPricelist ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$productType = productType;
    final lOther$productType = other.productType;
    if (l$productType != lOther$productType) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != null && lOther$order != null) {
      if (l$order.length != lOther$order.length) {
        return false;
      }
      for (int i = 0; i < l$order.length; i++) {
        final l$order$entry = l$order[i];
        final lOther$order$entry = lOther$order[i];
        if (l$order$entry != lOther$order$entry) {
          return false;
        }
      }
    } else if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$productType = productType;
    final l$searchText = searchText;
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    final l$order = order;
    return Object.hashAll([
      l$yardCode,
      l$productType,
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('order')
          ? l$order == null
              ? null
              : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetPricelist<TRes> {
  factory CopyWith$Variables$Query$GetPricelist(
    Variables$Query$GetPricelist instance,
    TRes Function(Variables$Query$GetPricelist) then,
  ) = _CopyWithImpl$Variables$Query$GetPricelist;

  factory CopyWith$Variables$Query$GetPricelist.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPricelist;

  TRes call({
    String? yardCode,
    Enum$ProductType? productType,
    String? searchText,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$PartyPricelistSummarySortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$GetPricelist<TRes>
    implements CopyWith$Variables$Query$GetPricelist<TRes> {
  _CopyWithImpl$Variables$Query$GetPricelist(
    this._instance,
    this._then,
  );

  final Variables$Query$GetPricelist _instance;

  final TRes Function(Variables$Query$GetPricelist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? productType = _undefined,
    Object? searchText = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
  }) =>
      _then(Variables$Query$GetPricelist._({
        ..._instance._$data,
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (productType != _undefined && productType != null)
          'productType': (productType as Enum$ProductType),
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
        if (after != _undefined) 'after': (after as String?),
        if (order != _undefined)
          'order': (order as List<Input$PartyPricelistSummarySortInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetPricelist<TRes>
    implements CopyWith$Variables$Query$GetPricelist<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPricelist(this._res);

  TRes _res;

  call({
    String? yardCode,
    Enum$ProductType? productType,
    String? searchText,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$PartyPricelistSummarySortInput>? order,
  }) =>
      _res;
}

class Query$GetPricelist {
  Query$GetPricelist({
    this.partyPricelistSummary,
    this.$__typename = 'Query',
  });

  factory Query$GetPricelist.fromJson(Map<String, dynamic> json) {
    final l$partyPricelistSummary = json['partyPricelistSummary'];
    final l$$__typename = json['__typename'];
    return Query$GetPricelist(
      partyPricelistSummary: l$partyPricelistSummary == null
          ? null
          : Query$GetPricelist$partyPricelistSummary.fromJson(
              (l$partyPricelistSummary as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPricelist$partyPricelistSummary? partyPricelistSummary;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partyPricelistSummary = partyPricelistSummary;
    _resultData['partyPricelistSummary'] = l$partyPricelistSummary?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partyPricelistSummary = partyPricelistSummary;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$partyPricelistSummary,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPricelist || runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyPricelistSummary = partyPricelistSummary;
    final lOther$partyPricelistSummary = other.partyPricelistSummary;
    if (l$partyPricelistSummary != lOther$partyPricelistSummary) {
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

extension UtilityExtension$Query$GetPricelist on Query$GetPricelist {
  CopyWith$Query$GetPricelist<Query$GetPricelist> get copyWith =>
      CopyWith$Query$GetPricelist(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPricelist<TRes> {
  factory CopyWith$Query$GetPricelist(
    Query$GetPricelist instance,
    TRes Function(Query$GetPricelist) then,
  ) = _CopyWithImpl$Query$GetPricelist;

  factory CopyWith$Query$GetPricelist.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPricelist;

  TRes call({
    Query$GetPricelist$partyPricelistSummary? partyPricelistSummary,
    String? $__typename,
  });
  CopyWith$Query$GetPricelist$partyPricelistSummary<TRes>
      get partyPricelistSummary;
}

class _CopyWithImpl$Query$GetPricelist<TRes>
    implements CopyWith$Query$GetPricelist<TRes> {
  _CopyWithImpl$Query$GetPricelist(
    this._instance,
    this._then,
  );

  final Query$GetPricelist _instance;

  final TRes Function(Query$GetPricelist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyPricelistSummary = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPricelist(
        partyPricelistSummary: partyPricelistSummary == _undefined
            ? _instance.partyPricelistSummary
            : (partyPricelistSummary
                as Query$GetPricelist$partyPricelistSummary?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPricelist$partyPricelistSummary<TRes>
      get partyPricelistSummary {
    final local$partyPricelistSummary = _instance.partyPricelistSummary;
    return local$partyPricelistSummary == null
        ? CopyWith$Query$GetPricelist$partyPricelistSummary.stub(
            _then(_instance))
        : CopyWith$Query$GetPricelist$partyPricelistSummary(
            local$partyPricelistSummary, (e) => call(partyPricelistSummary: e));
  }
}

class _CopyWithStubImpl$Query$GetPricelist<TRes>
    implements CopyWith$Query$GetPricelist<TRes> {
  _CopyWithStubImpl$Query$GetPricelist(this._res);

  TRes _res;

  call({
    Query$GetPricelist$partyPricelistSummary? partyPricelistSummary,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPricelist$partyPricelistSummary<TRes>
      get partyPricelistSummary =>
          CopyWith$Query$GetPricelist$partyPricelistSummary.stub(_res);
}

const documentNodeQueryGetPricelist = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPricelist'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'yardCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'productType')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductType'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchText')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PartyPricelistSummarySortInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'partyPricelistSummary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'yardCode'),
            value: VariableNode(name: NameNode(value: 'yardCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'productType'),
            value: VariableNode(name: NameNode(value: 'productType')),
          ),
          ArgumentNode(
            name: NameNode(value: 'searchText'),
            value: VariableNode(name: NameNode(value: 'searchText')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
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
            name: NameNode(value: 'order'),
            value: VariableNode(name: NameNode(value: 'order')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
                name: NameNode(value: 'endCursor'),
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
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deliveryMethod'),
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
                name: NameNode(value: 'updatedDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'uoM'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'notes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'grade'),
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

class Query$GetPricelist$partyPricelistSummary {
  Query$GetPricelist$partyPricelistSummary({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'PartyPricelistSummaryConnection',
  });

  factory Query$GetPricelist$partyPricelistSummary.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetPricelist$partyPricelistSummary(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetPricelist$partyPricelistSummary$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$GetPricelist$partyPricelistSummary$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetPricelist$partyPricelistSummary$pageInfo pageInfo;

  final List<Query$GetPricelist$partyPricelistSummary$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPricelist$partyPricelistSummary ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$GetPricelist$partyPricelistSummary
    on Query$GetPricelist$partyPricelistSummary {
  CopyWith$Query$GetPricelist$partyPricelistSummary<
          Query$GetPricelist$partyPricelistSummary>
      get copyWith => CopyWith$Query$GetPricelist$partyPricelistSummary(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPricelist$partyPricelistSummary<TRes> {
  factory CopyWith$Query$GetPricelist$partyPricelistSummary(
    Query$GetPricelist$partyPricelistSummary instance,
    TRes Function(Query$GetPricelist$partyPricelistSummary) then,
  ) = _CopyWithImpl$Query$GetPricelist$partyPricelistSummary;

  factory CopyWith$Query$GetPricelist$partyPricelistSummary.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPricelist$partyPricelistSummary;

  TRes call({
    int? totalCount,
    Query$GetPricelist$partyPricelistSummary$pageInfo? pageInfo,
    List<Query$GetPricelist$partyPricelistSummary$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$GetPricelist$partyPricelistSummary$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetPricelist$partyPricelistSummary$nodes<
                      Query$GetPricelist$partyPricelistSummary$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetPricelist$partyPricelistSummary<TRes>
    implements CopyWith$Query$GetPricelist$partyPricelistSummary<TRes> {
  _CopyWithImpl$Query$GetPricelist$partyPricelistSummary(
    this._instance,
    this._then,
  );

  final Query$GetPricelist$partyPricelistSummary _instance;

  final TRes Function(Query$GetPricelist$partyPricelistSummary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPricelist$partyPricelistSummary(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetPricelist$partyPricelistSummary$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetPricelist$partyPricelistSummary$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetPricelist$partyPricelistSummary$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetPricelist$partyPricelistSummary$nodes<
                          Query$GetPricelist$partyPricelistSummary$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map(
              (e) => CopyWith$Query$GetPricelist$partyPricelistSummary$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetPricelist$partyPricelistSummary<TRes>
    implements CopyWith$Query$GetPricelist$partyPricelistSummary<TRes> {
  _CopyWithStubImpl$Query$GetPricelist$partyPricelistSummary(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetPricelist$partyPricelistSummary$pageInfo? pageInfo,
    List<Query$GetPricelist$partyPricelistSummary$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetPricelist$partyPricelistSummary$pageInfo {
  Query$GetPricelist$partyPricelistSummary$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetPricelist$partyPricelistSummary$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetPricelist$partyPricelistSummary$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
      l$startCursor,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPricelist$partyPricelistSummary$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$GetPricelist$partyPricelistSummary$pageInfo
    on Query$GetPricelist$partyPricelistSummary$pageInfo {
  CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo<
          Query$GetPricelist$partyPricelistSummary$pageInfo>
      get copyWith =>
          CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo<
    TRes> {
  factory CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo(
    Query$GetPricelist$partyPricelistSummary$pageInfo instance,
    TRes Function(Query$GetPricelist$partyPricelistSummary$pageInfo) then,
  ) = _CopyWithImpl$Query$GetPricelist$partyPricelistSummary$pageInfo;

  factory CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPricelist$partyPricelistSummary$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPricelist$partyPricelistSummary$pageInfo<TRes>
    implements
        CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo<TRes> {
  _CopyWithImpl$Query$GetPricelist$partyPricelistSummary$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetPricelist$partyPricelistSummary$pageInfo _instance;

  final TRes Function(Query$GetPricelist$partyPricelistSummary$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPricelist$partyPricelistSummary$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPricelist$partyPricelistSummary$pageInfo<TRes>
    implements
        CopyWith$Query$GetPricelist$partyPricelistSummary$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetPricelist$partyPricelistSummary$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPricelist$partyPricelistSummary$nodes {
  Query$GetPricelist$partyPricelistSummary$nodes({
    this.description,
    this.deliveryMethod,
    this.price,
    this.updatedDate,
    this.uoM,
    this.notes,
    this.grade,
    this.$__typename = 'PartyPricelistSummary',
  });

  factory Query$GetPricelist$partyPricelistSummary$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$description = json['description'];
    final l$deliveryMethod = json['deliveryMethod'];
    final l$price = json['price'];
    final l$updatedDate = json['updatedDate'];
    final l$uoM = json['uoM'];
    final l$notes = json['notes'];
    final l$grade = json['grade'];
    final l$$__typename = json['__typename'];
    return Query$GetPricelist$partyPricelistSummary$nodes(
      description: (l$description as String?),
      deliveryMethod: (l$deliveryMethod as String?),
      price: (l$price as String?),
      updatedDate: l$updatedDate == null
          ? null
          : DateTime.parse((l$updatedDate as String)),
      uoM: (l$uoM as String?),
      notes: (l$notes as String?),
      grade: (l$grade as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? description;

  final String? deliveryMethod;

  final String? price;

  final DateTime? updatedDate;

  final String? uoM;

  final String? notes;

  final String? grade;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$deliveryMethod = deliveryMethod;
    _resultData['deliveryMethod'] = l$deliveryMethod;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$updatedDate = updatedDate;
    _resultData['updatedDate'] = l$updatedDate?.toIso8601String();
    final l$uoM = uoM;
    _resultData['uoM'] = l$uoM;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$grade = grade;
    _resultData['grade'] = l$grade;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$deliveryMethod = deliveryMethod;
    final l$price = price;
    final l$updatedDate = updatedDate;
    final l$uoM = uoM;
    final l$notes = notes;
    final l$grade = grade;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$deliveryMethod,
      l$price,
      l$updatedDate,
      l$uoM,
      l$notes,
      l$grade,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPricelist$partyPricelistSummary$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$deliveryMethod = deliveryMethod;
    final lOther$deliveryMethod = other.deliveryMethod;
    if (l$deliveryMethod != lOther$deliveryMethod) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$updatedDate = updatedDate;
    final lOther$updatedDate = other.updatedDate;
    if (l$updatedDate != lOther$updatedDate) {
      return false;
    }
    final l$uoM = uoM;
    final lOther$uoM = other.uoM;
    if (l$uoM != lOther$uoM) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$grade = grade;
    final lOther$grade = other.grade;
    if (l$grade != lOther$grade) {
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

extension UtilityExtension$Query$GetPricelist$partyPricelistSummary$nodes
    on Query$GetPricelist$partyPricelistSummary$nodes {
  CopyWith$Query$GetPricelist$partyPricelistSummary$nodes<
          Query$GetPricelist$partyPricelistSummary$nodes>
      get copyWith => CopyWith$Query$GetPricelist$partyPricelistSummary$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPricelist$partyPricelistSummary$nodes<TRes> {
  factory CopyWith$Query$GetPricelist$partyPricelistSummary$nodes(
    Query$GetPricelist$partyPricelistSummary$nodes instance,
    TRes Function(Query$GetPricelist$partyPricelistSummary$nodes) then,
  ) = _CopyWithImpl$Query$GetPricelist$partyPricelistSummary$nodes;

  factory CopyWith$Query$GetPricelist$partyPricelistSummary$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPricelist$partyPricelistSummary$nodes;

  TRes call({
    String? description,
    String? deliveryMethod,
    String? price,
    DateTime? updatedDate,
    String? uoM,
    String? notes,
    String? grade,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPricelist$partyPricelistSummary$nodes<TRes>
    implements CopyWith$Query$GetPricelist$partyPricelistSummary$nodes<TRes> {
  _CopyWithImpl$Query$GetPricelist$partyPricelistSummary$nodes(
    this._instance,
    this._then,
  );

  final Query$GetPricelist$partyPricelistSummary$nodes _instance;

  final TRes Function(Query$GetPricelist$partyPricelistSummary$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? deliveryMethod = _undefined,
    Object? price = _undefined,
    Object? updatedDate = _undefined,
    Object? uoM = _undefined,
    Object? notes = _undefined,
    Object? grade = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPricelist$partyPricelistSummary$nodes(
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        deliveryMethod: deliveryMethod == _undefined
            ? _instance.deliveryMethod
            : (deliveryMethod as String?),
        price: price == _undefined ? _instance.price : (price as String?),
        updatedDate: updatedDate == _undefined
            ? _instance.updatedDate
            : (updatedDate as DateTime?),
        uoM: uoM == _undefined ? _instance.uoM : (uoM as String?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        grade: grade == _undefined ? _instance.grade : (grade as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPricelist$partyPricelistSummary$nodes<TRes>
    implements CopyWith$Query$GetPricelist$partyPricelistSummary$nodes<TRes> {
  _CopyWithStubImpl$Query$GetPricelist$partyPricelistSummary$nodes(this._res);

  TRes _res;

  call({
    String? description,
    String? deliveryMethod,
    String? price,
    DateTime? updatedDate,
    String? uoM,
    String? notes,
    String? grade,
    String? $__typename,
  }) =>
      _res;
}
