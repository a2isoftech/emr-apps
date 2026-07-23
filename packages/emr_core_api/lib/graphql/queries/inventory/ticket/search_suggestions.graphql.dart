import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$searchSuggestions {
  factory Variables$Query$searchSuggestions({
    required String searchText,
    required Enum$TicketSearchPropertyType searchPropertyType,
  }) => Variables$Query$searchSuggestions._({
    r'searchText': searchText,
    r'searchPropertyType': searchPropertyType,
  });

  Variables$Query$searchSuggestions._(this._$data);

  factory Variables$Query$searchSuggestions.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$searchText = data['searchText'];
    result$data['searchText'] = (l$searchText as String);
    final l$searchPropertyType = data['searchPropertyType'];
    result$data['searchPropertyType'] = fromJson$Enum$TicketSearchPropertyType(
      (l$searchPropertyType as String),
    );
    return Variables$Query$searchSuggestions._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchText => (_$data['searchText'] as String);

  Enum$TicketSearchPropertyType get searchPropertyType =>
      (_$data['searchPropertyType'] as Enum$TicketSearchPropertyType);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchText = searchText;
    result$data['searchText'] = l$searchText;
    final l$searchPropertyType = searchPropertyType;
    result$data['searchPropertyType'] = toJson$Enum$TicketSearchPropertyType(
      l$searchPropertyType,
    );
    return result$data;
  }

  CopyWith$Variables$Query$searchSuggestions<Variables$Query$searchSuggestions>
  get copyWith => CopyWith$Variables$Query$searchSuggestions(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$searchSuggestions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$searchPropertyType = searchPropertyType;
    final lOther$searchPropertyType = other.searchPropertyType;
    if (l$searchPropertyType != lOther$searchPropertyType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchText = searchText;
    final l$searchPropertyType = searchPropertyType;
    return Object.hashAll([l$searchText, l$searchPropertyType]);
  }
}

abstract class CopyWith$Variables$Query$searchSuggestions<TRes> {
  factory CopyWith$Variables$Query$searchSuggestions(
    Variables$Query$searchSuggestions instance,
    TRes Function(Variables$Query$searchSuggestions) then,
  ) = _CopyWithImpl$Variables$Query$searchSuggestions;

  factory CopyWith$Variables$Query$searchSuggestions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$searchSuggestions;

  TRes call({
    String? searchText,
    Enum$TicketSearchPropertyType? searchPropertyType,
  });
}

class _CopyWithImpl$Variables$Query$searchSuggestions<TRes>
    implements CopyWith$Variables$Query$searchSuggestions<TRes> {
  _CopyWithImpl$Variables$Query$searchSuggestions(this._instance, this._then);

  final Variables$Query$searchSuggestions _instance;

  final TRes Function(Variables$Query$searchSuggestions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchText = _undefined,
    Object? searchPropertyType = _undefined,
  }) => _then(
    Variables$Query$searchSuggestions._({
      ..._instance._$data,
      if (searchText != _undefined && searchText != null)
        'searchText': (searchText as String),
      if (searchPropertyType != _undefined && searchPropertyType != null)
        'searchPropertyType':
            (searchPropertyType as Enum$TicketSearchPropertyType),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$searchSuggestions<TRes>
    implements CopyWith$Variables$Query$searchSuggestions<TRes> {
  _CopyWithStubImpl$Variables$Query$searchSuggestions(this._res);

  TRes _res;

  call({
    String? searchText,
    Enum$TicketSearchPropertyType? searchPropertyType,
  }) => _res;
}

class Query$searchSuggestions {
  Query$searchSuggestions({
    required this.searchSuggestions,
    this.$__typename = 'Query',
  });

  factory Query$searchSuggestions.fromJson(Map<String, dynamic> json) {
    final l$searchSuggestions = json['searchSuggestions'];
    final l$$__typename = json['__typename'];
    return Query$searchSuggestions(
      searchSuggestions: (l$searchSuggestions as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> searchSuggestions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchSuggestions = searchSuggestions;
    _resultData['searchSuggestions'] = l$searchSuggestions
        .map((e) => e)
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchSuggestions = searchSuggestions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchSuggestions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchSuggestions || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchSuggestions = searchSuggestions;
    final lOther$searchSuggestions = other.searchSuggestions;
    if (l$searchSuggestions.length != lOther$searchSuggestions.length) {
      return false;
    }
    for (int i = 0; i < l$searchSuggestions.length; i++) {
      final l$searchSuggestions$entry = l$searchSuggestions[i];
      final lOther$searchSuggestions$entry = lOther$searchSuggestions[i];
      if (l$searchSuggestions$entry != lOther$searchSuggestions$entry) {
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

extension UtilityExtension$Query$searchSuggestions on Query$searchSuggestions {
  CopyWith$Query$searchSuggestions<Query$searchSuggestions> get copyWith =>
      CopyWith$Query$searchSuggestions(this, (i) => i);
}

abstract class CopyWith$Query$searchSuggestions<TRes> {
  factory CopyWith$Query$searchSuggestions(
    Query$searchSuggestions instance,
    TRes Function(Query$searchSuggestions) then,
  ) = _CopyWithImpl$Query$searchSuggestions;

  factory CopyWith$Query$searchSuggestions.stub(TRes res) =
      _CopyWithStubImpl$Query$searchSuggestions;

  TRes call({List<String>? searchSuggestions, String? $__typename});
}

class _CopyWithImpl$Query$searchSuggestions<TRes>
    implements CopyWith$Query$searchSuggestions<TRes> {
  _CopyWithImpl$Query$searchSuggestions(this._instance, this._then);

  final Query$searchSuggestions _instance;

  final TRes Function(Query$searchSuggestions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchSuggestions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchSuggestions(
      searchSuggestions:
          searchSuggestions == _undefined || searchSuggestions == null
          ? _instance.searchSuggestions
          : (searchSuggestions as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchSuggestions<TRes>
    implements CopyWith$Query$searchSuggestions<TRes> {
  _CopyWithStubImpl$Query$searchSuggestions(this._res);

  TRes _res;

  call({List<String>? searchSuggestions, String? $__typename}) => _res;
}

const documentNodeQuerysearchSuggestions = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchSuggestions'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'searchText')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'searchPropertyType')),
          type: NamedTypeNode(
            name: NameNode(value: 'TicketSearchPropertyType'),
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
            name: NameNode(value: 'searchSuggestions'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'searchText'),
                value: VariableNode(name: NameNode(value: 'searchText')),
              ),
              ArgumentNode(
                name: NameNode(value: 'searchPropertyType'),
                value: VariableNode(
                  name: NameNode(value: 'searchPropertyType'),
                ),
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
        ],
      ),
    ),
  ],
);
