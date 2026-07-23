import '../../../fragments/inventory/facet_response_fragment.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchELVInventoryFacet {
  factory Variables$Query$SearchELVInventoryFacet({
    required Input$SearchELVInventoryInput input,
  }) => Variables$Query$SearchELVInventoryFacet._({r'input': input});

  Variables$Query$SearchELVInventoryFacet._(this._$data);

  factory Variables$Query$SearchELVInventoryFacet.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchELVInventoryInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchELVInventoryFacet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchELVInventoryInput get input =>
      (_$data['input'] as Input$SearchELVInventoryInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchELVInventoryFacet<
    Variables$Query$SearchELVInventoryFacet
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchELVInventoryFacet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchELVInventoryFacet ||
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

abstract class CopyWith$Variables$Query$SearchELVInventoryFacet<TRes> {
  factory CopyWith$Variables$Query$SearchELVInventoryFacet(
    Variables$Query$SearchELVInventoryFacet instance,
    TRes Function(Variables$Query$SearchELVInventoryFacet) then,
  ) = _CopyWithImpl$Variables$Query$SearchELVInventoryFacet;

  factory CopyWith$Variables$Query$SearchELVInventoryFacet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchELVInventoryFacet;

  TRes call({Input$SearchELVInventoryInput? input});
}

class _CopyWithImpl$Variables$Query$SearchELVInventoryFacet<TRes>
    implements CopyWith$Variables$Query$SearchELVInventoryFacet<TRes> {
  _CopyWithImpl$Variables$Query$SearchELVInventoryFacet(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchELVInventoryFacet _instance;

  final TRes Function(Variables$Query$SearchELVInventoryFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchELVInventoryFacet._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchELVInventoryInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchELVInventoryFacet<TRes>
    implements CopyWith$Variables$Query$SearchELVInventoryFacet<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchELVInventoryFacet(this._res);

  TRes _res;

  call({Input$SearchELVInventoryInput? input}) => _res;
}

class Query$SearchELVInventoryFacet {
  Query$SearchELVInventoryFacet({
    required this.searchELVInventoryFacet,
    this.$__typename = 'Query',
  });

  factory Query$SearchELVInventoryFacet.fromJson(Map<String, dynamic> json) {
    final l$searchELVInventoryFacet = json['searchELVInventoryFacet'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventoryFacet(
      searchELVInventoryFacet: (l$searchELVInventoryFacet as List<dynamic>)
          .map(
            (e) => Fragment$FacetResponse.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$FacetResponse> searchELVInventoryFacet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchELVInventoryFacet = searchELVInventoryFacet;
    _resultData['searchELVInventoryFacet'] = l$searchELVInventoryFacet
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchELVInventoryFacet = searchELVInventoryFacet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchELVInventoryFacet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchELVInventoryFacet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchELVInventoryFacet = searchELVInventoryFacet;
    final lOther$searchELVInventoryFacet = other.searchELVInventoryFacet;
    if (l$searchELVInventoryFacet.length !=
        lOther$searchELVInventoryFacet.length) {
      return false;
    }
    for (int i = 0; i < l$searchELVInventoryFacet.length; i++) {
      final l$searchELVInventoryFacet$entry = l$searchELVInventoryFacet[i];
      final lOther$searchELVInventoryFacet$entry =
          lOther$searchELVInventoryFacet[i];
      if (l$searchELVInventoryFacet$entry !=
          lOther$searchELVInventoryFacet$entry) {
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

extension UtilityExtension$Query$SearchELVInventoryFacet
    on Query$SearchELVInventoryFacet {
  CopyWith$Query$SearchELVInventoryFacet<Query$SearchELVInventoryFacet>
  get copyWith => CopyWith$Query$SearchELVInventoryFacet(this, (i) => i);
}

abstract class CopyWith$Query$SearchELVInventoryFacet<TRes> {
  factory CopyWith$Query$SearchELVInventoryFacet(
    Query$SearchELVInventoryFacet instance,
    TRes Function(Query$SearchELVInventoryFacet) then,
  ) = _CopyWithImpl$Query$SearchELVInventoryFacet;

  factory CopyWith$Query$SearchELVInventoryFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchELVInventoryFacet;

  TRes call({
    List<Fragment$FacetResponse>? searchELVInventoryFacet,
    String? $__typename,
  });
  TRes searchELVInventoryFacet(
    Iterable<Fragment$FacetResponse> Function(
      Iterable<CopyWith$Fragment$FacetResponse<Fragment$FacetResponse>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchELVInventoryFacet<TRes>
    implements CopyWith$Query$SearchELVInventoryFacet<TRes> {
  _CopyWithImpl$Query$SearchELVInventoryFacet(this._instance, this._then);

  final Query$SearchELVInventoryFacet _instance;

  final TRes Function(Query$SearchELVInventoryFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchELVInventoryFacet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventoryFacet(
      searchELVInventoryFacet:
          searchELVInventoryFacet == _undefined ||
              searchELVInventoryFacet == null
          ? _instance.searchELVInventoryFacet
          : (searchELVInventoryFacet as List<Fragment$FacetResponse>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchELVInventoryFacet(
    Iterable<Fragment$FacetResponse> Function(
      Iterable<CopyWith$Fragment$FacetResponse<Fragment$FacetResponse>>,
    )
    _fn,
  ) => call(
    searchELVInventoryFacet: _fn(
      _instance.searchELVInventoryFacet.map(
        (e) => CopyWith$Fragment$FacetResponse(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchELVInventoryFacet<TRes>
    implements CopyWith$Query$SearchELVInventoryFacet<TRes> {
  _CopyWithStubImpl$Query$SearchELVInventoryFacet(this._res);

  TRes _res;

  call({
    List<Fragment$FacetResponse>? searchELVInventoryFacet,
    String? $__typename,
  }) => _res;

  searchELVInventoryFacet(_fn) => _res;
}

const documentNodeQuerySearchELVInventoryFacet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchELVInventoryFacet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchELVInventoryInput'),
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
            name: NameNode(value: 'searchELVInventoryFacet'),
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
