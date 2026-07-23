import '../../fragments/commodity_source_types/commodity_source_types.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$searchCommoditySourceTypes {
  factory Variables$Query$searchCommoditySourceTypes({
    required Input$CommoditySourceTypeInput input,
  }) => Variables$Query$searchCommoditySourceTypes._({r'input': input});

  Variables$Query$searchCommoditySourceTypes._(this._$data);

  factory Variables$Query$searchCommoditySourceTypes.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CommoditySourceTypeInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$searchCommoditySourceTypes._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CommoditySourceTypeInput get input =>
      (_$data['input'] as Input$CommoditySourceTypeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$searchCommoditySourceTypes<
    Variables$Query$searchCommoditySourceTypes
  >
  get copyWith =>
      CopyWith$Variables$Query$searchCommoditySourceTypes(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$searchCommoditySourceTypes ||
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

abstract class CopyWith$Variables$Query$searchCommoditySourceTypes<TRes> {
  factory CopyWith$Variables$Query$searchCommoditySourceTypes(
    Variables$Query$searchCommoditySourceTypes instance,
    TRes Function(Variables$Query$searchCommoditySourceTypes) then,
  ) = _CopyWithImpl$Variables$Query$searchCommoditySourceTypes;

  factory CopyWith$Variables$Query$searchCommoditySourceTypes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$searchCommoditySourceTypes;

  TRes call({Input$CommoditySourceTypeInput? input});
}

class _CopyWithImpl$Variables$Query$searchCommoditySourceTypes<TRes>
    implements CopyWith$Variables$Query$searchCommoditySourceTypes<TRes> {
  _CopyWithImpl$Variables$Query$searchCommoditySourceTypes(
    this._instance,
    this._then,
  );

  final Variables$Query$searchCommoditySourceTypes _instance;

  final TRes Function(Variables$Query$searchCommoditySourceTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$searchCommoditySourceTypes._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CommoditySourceTypeInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$searchCommoditySourceTypes<TRes>
    implements CopyWith$Variables$Query$searchCommoditySourceTypes<TRes> {
  _CopyWithStubImpl$Variables$Query$searchCommoditySourceTypes(this._res);

  TRes _res;

  call({Input$CommoditySourceTypeInput? input}) => _res;
}

class Query$searchCommoditySourceTypes {
  Query$searchCommoditySourceTypes({
    required this.searchCommoditySourceTypes,
    this.$__typename = 'Query',
  });

  factory Query$searchCommoditySourceTypes.fromJson(Map<String, dynamic> json) {
    final l$searchCommoditySourceTypes = json['searchCommoditySourceTypes'];
    final l$$__typename = json['__typename'];
    return Query$searchCommoditySourceTypes(
      searchCommoditySourceTypes:
          (l$searchCommoditySourceTypes as List<dynamic>)
              .map(
                (e) => Fragment$CommoditySourceTypesFragment.fromJson(
                  (e as Map<String, dynamic>),
                ),
              )
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$CommoditySourceTypesFragment> searchCommoditySourceTypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchCommoditySourceTypes = searchCommoditySourceTypes;
    _resultData['searchCommoditySourceTypes'] = l$searchCommoditySourceTypes
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchCommoditySourceTypes = searchCommoditySourceTypes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchCommoditySourceTypes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchCommoditySourceTypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchCommoditySourceTypes = searchCommoditySourceTypes;
    final lOther$searchCommoditySourceTypes = other.searchCommoditySourceTypes;
    if (l$searchCommoditySourceTypes.length !=
        lOther$searchCommoditySourceTypes.length) {
      return false;
    }
    for (int i = 0; i < l$searchCommoditySourceTypes.length; i++) {
      final l$searchCommoditySourceTypes$entry =
          l$searchCommoditySourceTypes[i];
      final lOther$searchCommoditySourceTypes$entry =
          lOther$searchCommoditySourceTypes[i];
      if (l$searchCommoditySourceTypes$entry !=
          lOther$searchCommoditySourceTypes$entry) {
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

extension UtilityExtension$Query$searchCommoditySourceTypes
    on Query$searchCommoditySourceTypes {
  CopyWith$Query$searchCommoditySourceTypes<Query$searchCommoditySourceTypes>
  get copyWith => CopyWith$Query$searchCommoditySourceTypes(this, (i) => i);
}

abstract class CopyWith$Query$searchCommoditySourceTypes<TRes> {
  factory CopyWith$Query$searchCommoditySourceTypes(
    Query$searchCommoditySourceTypes instance,
    TRes Function(Query$searchCommoditySourceTypes) then,
  ) = _CopyWithImpl$Query$searchCommoditySourceTypes;

  factory CopyWith$Query$searchCommoditySourceTypes.stub(TRes res) =
      _CopyWithStubImpl$Query$searchCommoditySourceTypes;

  TRes call({
    List<Fragment$CommoditySourceTypesFragment>? searchCommoditySourceTypes,
    String? $__typename,
  });
  TRes searchCommoditySourceTypes(
    Iterable<Fragment$CommoditySourceTypesFragment> Function(
      Iterable<
        CopyWith$Fragment$CommoditySourceTypesFragment<
          Fragment$CommoditySourceTypesFragment
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$searchCommoditySourceTypes<TRes>
    implements CopyWith$Query$searchCommoditySourceTypes<TRes> {
  _CopyWithImpl$Query$searchCommoditySourceTypes(this._instance, this._then);

  final Query$searchCommoditySourceTypes _instance;

  final TRes Function(Query$searchCommoditySourceTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchCommoditySourceTypes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCommoditySourceTypes(
      searchCommoditySourceTypes:
          searchCommoditySourceTypes == _undefined ||
              searchCommoditySourceTypes == null
          ? _instance.searchCommoditySourceTypes
          : (searchCommoditySourceTypes
                as List<Fragment$CommoditySourceTypesFragment>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchCommoditySourceTypes(
    Iterable<Fragment$CommoditySourceTypesFragment> Function(
      Iterable<
        CopyWith$Fragment$CommoditySourceTypesFragment<
          Fragment$CommoditySourceTypesFragment
        >
      >,
    )
    _fn,
  ) => call(
    searchCommoditySourceTypes: _fn(
      _instance.searchCommoditySourceTypes.map(
        (e) => CopyWith$Fragment$CommoditySourceTypesFragment(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$searchCommoditySourceTypes<TRes>
    implements CopyWith$Query$searchCommoditySourceTypes<TRes> {
  _CopyWithStubImpl$Query$searchCommoditySourceTypes(this._res);

  TRes _res;

  call({
    List<Fragment$CommoditySourceTypesFragment>? searchCommoditySourceTypes,
    String? $__typename,
  }) => _res;

  searchCommoditySourceTypes(_fn) => _res;
}

const documentNodeQuerysearchCommoditySourceTypes = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchCommoditySourceTypes'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CommoditySourceTypeInput'),
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
            name: NameNode(value: 'searchCommoditySourceTypes'),
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
                  name: NameNode(value: 'CommoditySourceTypesFragment'),
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
    fragmentDefinitionCommoditySourceTypesFragment,
  ],
);
