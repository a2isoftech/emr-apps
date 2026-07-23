import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$searchSuggestion {
  factory Variables$Query$searchSuggestion({
    required String searchText,
    required Enum$SearchPropertyType input,
  }) =>
      Variables$Query$searchSuggestion._({
        r'searchText': searchText,
        r'input': input,
      });

  Variables$Query$searchSuggestion._(this._$data);

  factory Variables$Query$searchSuggestion.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$searchText = data['searchText'];
    result$data['searchText'] = (l$searchText as String);
    final l$input = data['input'];
    result$data['input'] =
        fromJson$Enum$SearchPropertyType((l$input as String));
    return Variables$Query$searchSuggestion._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchText => (_$data['searchText'] as String);

  Enum$SearchPropertyType get input =>
      (_$data['input'] as Enum$SearchPropertyType);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchText = searchText;
    result$data['searchText'] = l$searchText;
    final l$input = input;
    result$data['input'] = toJson$Enum$SearchPropertyType(l$input);
    return result$data;
  }

  CopyWith$Variables$Query$searchSuggestion<Variables$Query$searchSuggestion>
      get copyWith => CopyWith$Variables$Query$searchSuggestion(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$searchSuggestion) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) {
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
    final l$searchText = searchText;
    final l$input = input;
    return Object.hashAll([
      l$searchText,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Query$searchSuggestion<TRes> {
  factory CopyWith$Variables$Query$searchSuggestion(
    Variables$Query$searchSuggestion instance,
    TRes Function(Variables$Query$searchSuggestion) then,
  ) = _CopyWithImpl$Variables$Query$searchSuggestion;

  factory CopyWith$Variables$Query$searchSuggestion.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$searchSuggestion;

  TRes call({
    String? searchText,
    Enum$SearchPropertyType? input,
  });
}

class _CopyWithImpl$Variables$Query$searchSuggestion<TRes>
    implements CopyWith$Variables$Query$searchSuggestion<TRes> {
  _CopyWithImpl$Variables$Query$searchSuggestion(
    this._instance,
    this._then,
  );

  final Variables$Query$searchSuggestion _instance;

  final TRes Function(Variables$Query$searchSuggestion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchText = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Query$searchSuggestion._({
        ..._instance._$data,
        if (searchText != _undefined && searchText != null)
          'searchText': (searchText as String),
        if (input != _undefined && input != null)
          'input': (input as Enum$SearchPropertyType),
      }));
}

class _CopyWithStubImpl$Variables$Query$searchSuggestion<TRes>
    implements CopyWith$Variables$Query$searchSuggestion<TRes> {
  _CopyWithStubImpl$Variables$Query$searchSuggestion(this._res);

  TRes _res;

  call({
    String? searchText,
    Enum$SearchPropertyType? input,
  }) =>
      _res;
}

class Query$searchSuggestion {
  Query$searchSuggestion({
    required this.searchSuggestion,
    this.$__typename = 'Query',
  });

  factory Query$searchSuggestion.fromJson(Map<String, dynamic> json) {
    final l$searchSuggestion = json['searchSuggestion'];
    final l$$__typename = json['__typename'];
    return Query$searchSuggestion(
      searchSuggestion: (l$searchSuggestion as List<dynamic>)
          .map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?> searchSuggestion;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchSuggestion = searchSuggestion;
    _resultData['searchSuggestion'] = l$searchSuggestion.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchSuggestion = searchSuggestion;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchSuggestion.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$searchSuggestion) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchSuggestion = searchSuggestion;
    final lOther$searchSuggestion = other.searchSuggestion;
    if (l$searchSuggestion.length != lOther$searchSuggestion.length) {
      return false;
    }
    for (int i = 0; i < l$searchSuggestion.length; i++) {
      final l$searchSuggestion$entry = l$searchSuggestion[i];
      final lOther$searchSuggestion$entry = lOther$searchSuggestion[i];
      if (l$searchSuggestion$entry != lOther$searchSuggestion$entry) {
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

extension UtilityExtension$Query$searchSuggestion on Query$searchSuggestion {
  CopyWith$Query$searchSuggestion<Query$searchSuggestion> get copyWith =>
      CopyWith$Query$searchSuggestion(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchSuggestion<TRes> {
  factory CopyWith$Query$searchSuggestion(
    Query$searchSuggestion instance,
    TRes Function(Query$searchSuggestion) then,
  ) = _CopyWithImpl$Query$searchSuggestion;

  factory CopyWith$Query$searchSuggestion.stub(TRes res) =
      _CopyWithStubImpl$Query$searchSuggestion;

  TRes call({
    List<String?>? searchSuggestion,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchSuggestion<TRes>
    implements CopyWith$Query$searchSuggestion<TRes> {
  _CopyWithImpl$Query$searchSuggestion(
    this._instance,
    this._then,
  );

  final Query$searchSuggestion _instance;

  final TRes Function(Query$searchSuggestion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchSuggestion = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$searchSuggestion(
        searchSuggestion:
            searchSuggestion == _undefined || searchSuggestion == null
                ? _instance.searchSuggestion
                : (searchSuggestion as List<String?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$searchSuggestion<TRes>
    implements CopyWith$Query$searchSuggestion<TRes> {
  _CopyWithStubImpl$Query$searchSuggestion(this._res);

  TRes _res;

  call({
    List<String?>? searchSuggestion,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQuerysearchSuggestion = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'searchSuggestion'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchText')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchPropertyType'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'searchSuggestion'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'searchText'),
            value: VariableNode(name: NameNode(value: 'searchText')),
          ),
          ArgumentNode(
            name: NameNode(value: 'propertyType'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
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
