import '../../../fragments/inventory/facet_response_fragment.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchInventoryFacets {
  factory Variables$Query$SearchInventoryFacets({
    required Input$SearchInventoryInput input,
  }) => Variables$Query$SearchInventoryFacets._({r'input': input});

  Variables$Query$SearchInventoryFacets._(this._$data);

  factory Variables$Query$SearchInventoryFacets.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchInventoryInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchInventoryFacets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchInventoryInput get input =>
      (_$data['input'] as Input$SearchInventoryInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchInventoryFacets<
    Variables$Query$SearchInventoryFacets
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchInventoryFacets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchInventoryFacets ||
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

abstract class CopyWith$Variables$Query$SearchInventoryFacets<TRes> {
  factory CopyWith$Variables$Query$SearchInventoryFacets(
    Variables$Query$SearchInventoryFacets instance,
    TRes Function(Variables$Query$SearchInventoryFacets) then,
  ) = _CopyWithImpl$Variables$Query$SearchInventoryFacets;

  factory CopyWith$Variables$Query$SearchInventoryFacets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchInventoryFacets;

  TRes call({Input$SearchInventoryInput? input});
}

class _CopyWithImpl$Variables$Query$SearchInventoryFacets<TRes>
    implements CopyWith$Variables$Query$SearchInventoryFacets<TRes> {
  _CopyWithImpl$Variables$Query$SearchInventoryFacets(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchInventoryFacets _instance;

  final TRes Function(Variables$Query$SearchInventoryFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchInventoryFacets._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchInventoryInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchInventoryFacets<TRes>
    implements CopyWith$Variables$Query$SearchInventoryFacets<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchInventoryFacets(this._res);

  TRes _res;

  call({Input$SearchInventoryInput? input}) => _res;
}

class Query$SearchInventoryFacets {
  Query$SearchInventoryFacets({
    required this.searchInventoryFacets,
    this.$__typename = 'Query',
  });

  factory Query$SearchInventoryFacets.fromJson(Map<String, dynamic> json) {
    final l$searchInventoryFacets = json['searchInventoryFacets'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventoryFacets(
      searchInventoryFacets: (l$searchInventoryFacets as List<dynamic>)
          .map(
            (e) => Fragment$FacetResponse.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$FacetResponse> searchInventoryFacets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchInventoryFacets = searchInventoryFacets;
    _resultData['searchInventoryFacets'] = l$searchInventoryFacets
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchInventoryFacets = searchInventoryFacets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchInventoryFacets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchInventoryFacets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchInventoryFacets = searchInventoryFacets;
    final lOther$searchInventoryFacets = other.searchInventoryFacets;
    if (l$searchInventoryFacets.length != lOther$searchInventoryFacets.length) {
      return false;
    }
    for (int i = 0; i < l$searchInventoryFacets.length; i++) {
      final l$searchInventoryFacets$entry = l$searchInventoryFacets[i];
      final lOther$searchInventoryFacets$entry =
          lOther$searchInventoryFacets[i];
      if (l$searchInventoryFacets$entry != lOther$searchInventoryFacets$entry) {
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

extension UtilityExtension$Query$SearchInventoryFacets
    on Query$SearchInventoryFacets {
  CopyWith$Query$SearchInventoryFacets<Query$SearchInventoryFacets>
  get copyWith => CopyWith$Query$SearchInventoryFacets(this, (i) => i);
}

abstract class CopyWith$Query$SearchInventoryFacets<TRes> {
  factory CopyWith$Query$SearchInventoryFacets(
    Query$SearchInventoryFacets instance,
    TRes Function(Query$SearchInventoryFacets) then,
  ) = _CopyWithImpl$Query$SearchInventoryFacets;

  factory CopyWith$Query$SearchInventoryFacets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchInventoryFacets;

  TRes call({
    List<Fragment$FacetResponse>? searchInventoryFacets,
    String? $__typename,
  });
  TRes searchInventoryFacets(
    Iterable<Fragment$FacetResponse> Function(
      Iterable<CopyWith$Fragment$FacetResponse<Fragment$FacetResponse>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchInventoryFacets<TRes>
    implements CopyWith$Query$SearchInventoryFacets<TRes> {
  _CopyWithImpl$Query$SearchInventoryFacets(this._instance, this._then);

  final Query$SearchInventoryFacets _instance;

  final TRes Function(Query$SearchInventoryFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchInventoryFacets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventoryFacets(
      searchInventoryFacets:
          searchInventoryFacets == _undefined || searchInventoryFacets == null
          ? _instance.searchInventoryFacets
          : (searchInventoryFacets as List<Fragment$FacetResponse>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchInventoryFacets(
    Iterable<Fragment$FacetResponse> Function(
      Iterable<CopyWith$Fragment$FacetResponse<Fragment$FacetResponse>>,
    )
    _fn,
  ) => call(
    searchInventoryFacets: _fn(
      _instance.searchInventoryFacets.map(
        (e) => CopyWith$Fragment$FacetResponse(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchInventoryFacets<TRes>
    implements CopyWith$Query$SearchInventoryFacets<TRes> {
  _CopyWithStubImpl$Query$SearchInventoryFacets(this._res);

  TRes _res;

  call({
    List<Fragment$FacetResponse>? searchInventoryFacets,
    String? $__typename,
  }) => _res;

  searchInventoryFacets(_fn) => _res;
}

const documentNodeQuerySearchInventoryFacets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchInventoryFacets'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchInventoryInput'),
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
            name: NameNode(value: 'searchInventoryFacets'),
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
