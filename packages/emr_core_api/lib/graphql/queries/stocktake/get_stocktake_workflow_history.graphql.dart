import '../../fragments/stocktake/stocktake_approval_fields.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetStocktakeWorkflowHistory {
  factory Variables$Query$GetStocktakeWorkflowHistory({required String id}) =>
      Variables$Query$GetStocktakeWorkflowHistory._({r'id': id});

  Variables$Query$GetStocktakeWorkflowHistory._(this._$data);

  factory Variables$Query$GetStocktakeWorkflowHistory.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetStocktakeWorkflowHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetStocktakeWorkflowHistory<
    Variables$Query$GetStocktakeWorkflowHistory
  >
  get copyWith =>
      CopyWith$Variables$Query$GetStocktakeWorkflowHistory(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetStocktakeWorkflowHistory ||
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

abstract class CopyWith$Variables$Query$GetStocktakeWorkflowHistory<TRes> {
  factory CopyWith$Variables$Query$GetStocktakeWorkflowHistory(
    Variables$Query$GetStocktakeWorkflowHistory instance,
    TRes Function(Variables$Query$GetStocktakeWorkflowHistory) then,
  ) = _CopyWithImpl$Variables$Query$GetStocktakeWorkflowHistory;

  factory CopyWith$Variables$Query$GetStocktakeWorkflowHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetStocktakeWorkflowHistory;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetStocktakeWorkflowHistory<TRes>
    implements CopyWith$Variables$Query$GetStocktakeWorkflowHistory<TRes> {
  _CopyWithImpl$Variables$Query$GetStocktakeWorkflowHistory(
    this._instance,
    this._then,
  );

  final Variables$Query$GetStocktakeWorkflowHistory _instance;

  final TRes Function(Variables$Query$GetStocktakeWorkflowHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetStocktakeWorkflowHistory._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetStocktakeWorkflowHistory<TRes>
    implements CopyWith$Variables$Query$GetStocktakeWorkflowHistory<TRes> {
  _CopyWithStubImpl$Variables$Query$GetStocktakeWorkflowHistory(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetStocktakeWorkflowHistory {
  Query$GetStocktakeWorkflowHistory({
    required this.stocktakeWorkFlowHistory,
    this.$__typename = 'Query',
  });

  factory Query$GetStocktakeWorkflowHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$stocktakeWorkFlowHistory = json['stocktakeWorkFlowHistory'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktakeWorkflowHistory(
      stocktakeWorkFlowHistory: (l$stocktakeWorkFlowHistory as List<dynamic>)
          .map(
            (e) => Fragment$StocktakeApprovalFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$StocktakeApprovalFields> stocktakeWorkFlowHistory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stocktakeWorkFlowHistory = stocktakeWorkFlowHistory;
    _resultData['stocktakeWorkFlowHistory'] = l$stocktakeWorkFlowHistory
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stocktakeWorkFlowHistory = stocktakeWorkFlowHistory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$stocktakeWorkFlowHistory.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktakeWorkflowHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stocktakeWorkFlowHistory = stocktakeWorkFlowHistory;
    final lOther$stocktakeWorkFlowHistory = other.stocktakeWorkFlowHistory;
    if (l$stocktakeWorkFlowHistory.length !=
        lOther$stocktakeWorkFlowHistory.length) {
      return false;
    }
    for (int i = 0; i < l$stocktakeWorkFlowHistory.length; i++) {
      final l$stocktakeWorkFlowHistory$entry = l$stocktakeWorkFlowHistory[i];
      final lOther$stocktakeWorkFlowHistory$entry =
          lOther$stocktakeWorkFlowHistory[i];
      if (l$stocktakeWorkFlowHistory$entry !=
          lOther$stocktakeWorkFlowHistory$entry) {
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

extension UtilityExtension$Query$GetStocktakeWorkflowHistory
    on Query$GetStocktakeWorkflowHistory {
  CopyWith$Query$GetStocktakeWorkflowHistory<Query$GetStocktakeWorkflowHistory>
  get copyWith => CopyWith$Query$GetStocktakeWorkflowHistory(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktakeWorkflowHistory<TRes> {
  factory CopyWith$Query$GetStocktakeWorkflowHistory(
    Query$GetStocktakeWorkflowHistory instance,
    TRes Function(Query$GetStocktakeWorkflowHistory) then,
  ) = _CopyWithImpl$Query$GetStocktakeWorkflowHistory;

  factory CopyWith$Query$GetStocktakeWorkflowHistory.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktakeWorkflowHistory;

  TRes call({
    List<Fragment$StocktakeApprovalFields>? stocktakeWorkFlowHistory,
    String? $__typename,
  });
  TRes stocktakeWorkFlowHistory(
    Iterable<Fragment$StocktakeApprovalFields> Function(
      Iterable<
        CopyWith$Fragment$StocktakeApprovalFields<
          Fragment$StocktakeApprovalFields
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetStocktakeWorkflowHistory<TRes>
    implements CopyWith$Query$GetStocktakeWorkflowHistory<TRes> {
  _CopyWithImpl$Query$GetStocktakeWorkflowHistory(this._instance, this._then);

  final Query$GetStocktakeWorkflowHistory _instance;

  final TRes Function(Query$GetStocktakeWorkflowHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stocktakeWorkFlowHistory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktakeWorkflowHistory(
      stocktakeWorkFlowHistory:
          stocktakeWorkFlowHistory == _undefined ||
              stocktakeWorkFlowHistory == null
          ? _instance.stocktakeWorkFlowHistory
          : (stocktakeWorkFlowHistory
                as List<Fragment$StocktakeApprovalFields>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes stocktakeWorkFlowHistory(
    Iterable<Fragment$StocktakeApprovalFields> Function(
      Iterable<
        CopyWith$Fragment$StocktakeApprovalFields<
          Fragment$StocktakeApprovalFields
        >
      >,
    )
    _fn,
  ) => call(
    stocktakeWorkFlowHistory: _fn(
      _instance.stocktakeWorkFlowHistory.map(
        (e) => CopyWith$Fragment$StocktakeApprovalFields(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetStocktakeWorkflowHistory<TRes>
    implements CopyWith$Query$GetStocktakeWorkflowHistory<TRes> {
  _CopyWithStubImpl$Query$GetStocktakeWorkflowHistory(this._res);

  TRes _res;

  call({
    List<Fragment$StocktakeApprovalFields>? stocktakeWorkFlowHistory,
    String? $__typename,
  }) => _res;

  stocktakeWorkFlowHistory(_fn) => _res;
}

const documentNodeQueryGetStocktakeWorkflowHistory = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetStocktakeWorkflowHistory'),
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
            name: NameNode(value: 'stocktakeWorkFlowHistory'),
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
                FragmentSpreadNode(
                  name: NameNode(value: 'StocktakeApprovalFields'),
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionStocktakeApprovalFields,
  ],
);
