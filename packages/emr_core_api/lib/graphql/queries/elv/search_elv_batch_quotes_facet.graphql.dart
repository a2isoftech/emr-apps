import '../../fragments/inventory/facet_response_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchElvBatchQuoteFacets {
  factory Variables$Query$SearchElvBatchQuoteFacets({
    required Input$ElvBatchQuotesSearchInput input,
  }) => Variables$Query$SearchElvBatchQuoteFacets._({r'input': input});

  Variables$Query$SearchElvBatchQuoteFacets._(this._$data);

  factory Variables$Query$SearchElvBatchQuoteFacets.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ElvBatchQuotesSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchElvBatchQuoteFacets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ElvBatchQuotesSearchInput get input =>
      (_$data['input'] as Input$ElvBatchQuotesSearchInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchElvBatchQuoteFacets<
    Variables$Query$SearchElvBatchQuoteFacets
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchElvBatchQuoteFacets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchElvBatchQuoteFacets ||
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

abstract class CopyWith$Variables$Query$SearchElvBatchQuoteFacets<TRes> {
  factory CopyWith$Variables$Query$SearchElvBatchQuoteFacets(
    Variables$Query$SearchElvBatchQuoteFacets instance,
    TRes Function(Variables$Query$SearchElvBatchQuoteFacets) then,
  ) = _CopyWithImpl$Variables$Query$SearchElvBatchQuoteFacets;

  factory CopyWith$Variables$Query$SearchElvBatchQuoteFacets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchElvBatchQuoteFacets;

  TRes call({Input$ElvBatchQuotesSearchInput? input});
}

class _CopyWithImpl$Variables$Query$SearchElvBatchQuoteFacets<TRes>
    implements CopyWith$Variables$Query$SearchElvBatchQuoteFacets<TRes> {
  _CopyWithImpl$Variables$Query$SearchElvBatchQuoteFacets(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchElvBatchQuoteFacets _instance;

  final TRes Function(Variables$Query$SearchElvBatchQuoteFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchElvBatchQuoteFacets._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$ElvBatchQuotesSearchInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchElvBatchQuoteFacets<TRes>
    implements CopyWith$Variables$Query$SearchElvBatchQuoteFacets<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchElvBatchQuoteFacets(this._res);

  TRes _res;

  call({Input$ElvBatchQuotesSearchInput? input}) => _res;
}

class Query$SearchElvBatchQuoteFacets {
  Query$SearchElvBatchQuoteFacets({
    required this.searchElvBatchQuoteFacets,
    this.$__typename = 'Query',
  });

  factory Query$SearchElvBatchQuoteFacets.fromJson(Map<String, dynamic> json) {
    final l$searchElvBatchQuoteFacets = json['searchElvBatchQuoteFacets'];
    final l$$__typename = json['__typename'];
    return Query$SearchElvBatchQuoteFacets(
      searchElvBatchQuoteFacets: (l$searchElvBatchQuoteFacets as List<dynamic>)
          .map(
            (e) => Fragment$FacetResponse.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$FacetResponse> searchElvBatchQuoteFacets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchElvBatchQuoteFacets = searchElvBatchQuoteFacets;
    _resultData['searchElvBatchQuoteFacets'] = l$searchElvBatchQuoteFacets
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchElvBatchQuoteFacets = searchElvBatchQuoteFacets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchElvBatchQuoteFacets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchElvBatchQuoteFacets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchElvBatchQuoteFacets = searchElvBatchQuoteFacets;
    final lOther$searchElvBatchQuoteFacets = other.searchElvBatchQuoteFacets;
    if (l$searchElvBatchQuoteFacets.length !=
        lOther$searchElvBatchQuoteFacets.length) {
      return false;
    }
    for (int i = 0; i < l$searchElvBatchQuoteFacets.length; i++) {
      final l$searchElvBatchQuoteFacets$entry = l$searchElvBatchQuoteFacets[i];
      final lOther$searchElvBatchQuoteFacets$entry =
          lOther$searchElvBatchQuoteFacets[i];
      if (l$searchElvBatchQuoteFacets$entry !=
          lOther$searchElvBatchQuoteFacets$entry) {
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

extension UtilityExtension$Query$SearchElvBatchQuoteFacets
    on Query$SearchElvBatchQuoteFacets {
  CopyWith$Query$SearchElvBatchQuoteFacets<Query$SearchElvBatchQuoteFacets>
  get copyWith => CopyWith$Query$SearchElvBatchQuoteFacets(this, (i) => i);
}

abstract class CopyWith$Query$SearchElvBatchQuoteFacets<TRes> {
  factory CopyWith$Query$SearchElvBatchQuoteFacets(
    Query$SearchElvBatchQuoteFacets instance,
    TRes Function(Query$SearchElvBatchQuoteFacets) then,
  ) = _CopyWithImpl$Query$SearchElvBatchQuoteFacets;

  factory CopyWith$Query$SearchElvBatchQuoteFacets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchElvBatchQuoteFacets;

  TRes call({
    List<Fragment$FacetResponse>? searchElvBatchQuoteFacets,
    String? $__typename,
  });
  TRes searchElvBatchQuoteFacets(
    Iterable<Fragment$FacetResponse> Function(
      Iterable<CopyWith$Fragment$FacetResponse<Fragment$FacetResponse>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchElvBatchQuoteFacets<TRes>
    implements CopyWith$Query$SearchElvBatchQuoteFacets<TRes> {
  _CopyWithImpl$Query$SearchElvBatchQuoteFacets(this._instance, this._then);

  final Query$SearchElvBatchQuoteFacets _instance;

  final TRes Function(Query$SearchElvBatchQuoteFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchElvBatchQuoteFacets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchElvBatchQuoteFacets(
      searchElvBatchQuoteFacets:
          searchElvBatchQuoteFacets == _undefined ||
              searchElvBatchQuoteFacets == null
          ? _instance.searchElvBatchQuoteFacets
          : (searchElvBatchQuoteFacets as List<Fragment$FacetResponse>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchElvBatchQuoteFacets(
    Iterable<Fragment$FacetResponse> Function(
      Iterable<CopyWith$Fragment$FacetResponse<Fragment$FacetResponse>>,
    )
    _fn,
  ) => call(
    searchElvBatchQuoteFacets: _fn(
      _instance.searchElvBatchQuoteFacets.map(
        (e) => CopyWith$Fragment$FacetResponse(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchElvBatchQuoteFacets<TRes>
    implements CopyWith$Query$SearchElvBatchQuoteFacets<TRes> {
  _CopyWithStubImpl$Query$SearchElvBatchQuoteFacets(this._res);

  TRes _res;

  call({
    List<Fragment$FacetResponse>? searchElvBatchQuoteFacets,
    String? $__typename,
  }) => _res;

  searchElvBatchQuoteFacets(_fn) => _res;
}

const documentNodeQuerySearchElvBatchQuoteFacets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchElvBatchQuoteFacets'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'ElvBatchQuotesSearchInput'),
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
            name: NameNode(value: 'searchElvBatchQuoteFacets'),
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
                FragmentSpreadNode(
                  name: NameNode(value: 'FacetResponse'),
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
    fragmentDefinitionFacetResponse,
  ],
);
