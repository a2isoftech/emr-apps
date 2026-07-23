import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$searchSyncTaskTicketIdSuggestions {
  factory Variables$Query$searchSyncTaskTicketIdSuggestions({
    required Input$SyncWeighbridgeTicketTasksSuggestionsInput input,
    required String searchText,
  }) => Variables$Query$searchSyncTaskTicketIdSuggestions._({
    r'input': input,
    r'searchText': searchText,
  });

  Variables$Query$searchSyncTaskTicketIdSuggestions._(this._$data);

  factory Variables$Query$searchSyncTaskTicketIdSuggestions.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$SyncWeighbridgeTicketTasksSuggestionsInput.fromJson(
          (l$input as Map<String, dynamic>),
        );
    final l$searchText = data['searchText'];
    result$data['searchText'] = (l$searchText as String);
    return Variables$Query$searchSyncTaskTicketIdSuggestions._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SyncWeighbridgeTicketTasksSuggestionsInput get input =>
      (_$data['input'] as Input$SyncWeighbridgeTicketTasksSuggestionsInput);

  String get searchText => (_$data['searchText'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    final l$searchText = searchText;
    result$data['searchText'] = l$searchText;
    return result$data;
  }

  CopyWith$Variables$Query$searchSyncTaskTicketIdSuggestions<
    Variables$Query$searchSyncTaskTicketIdSuggestions
  >
  get copyWith => CopyWith$Variables$Query$searchSyncTaskTicketIdSuggestions(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$searchSyncTaskTicketIdSuggestions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$searchText = searchText;
    return Object.hashAll([l$input, l$searchText]);
  }
}

abstract class CopyWith$Variables$Query$searchSyncTaskTicketIdSuggestions<
  TRes
> {
  factory CopyWith$Variables$Query$searchSyncTaskTicketIdSuggestions(
    Variables$Query$searchSyncTaskTicketIdSuggestions instance,
    TRes Function(Variables$Query$searchSyncTaskTicketIdSuggestions) then,
  ) = _CopyWithImpl$Variables$Query$searchSyncTaskTicketIdSuggestions;

  factory CopyWith$Variables$Query$searchSyncTaskTicketIdSuggestions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$searchSyncTaskTicketIdSuggestions;

  TRes call({
    Input$SyncWeighbridgeTicketTasksSuggestionsInput? input,
    String? searchText,
  });
}

class _CopyWithImpl$Variables$Query$searchSyncTaskTicketIdSuggestions<TRes>
    implements
        CopyWith$Variables$Query$searchSyncTaskTicketIdSuggestions<TRes> {
  _CopyWithImpl$Variables$Query$searchSyncTaskTicketIdSuggestions(
    this._instance,
    this._then,
  );

  final Variables$Query$searchSyncTaskTicketIdSuggestions _instance;

  final TRes Function(Variables$Query$searchSyncTaskTicketIdSuggestions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined, Object? searchText = _undefined}) =>
      _then(
        Variables$Query$searchSyncTaskTicketIdSuggestions._({
          ..._instance._$data,
          if (input != _undefined && input != null)
            'input':
                (input as Input$SyncWeighbridgeTicketTasksSuggestionsInput),
          if (searchText != _undefined && searchText != null)
            'searchText': (searchText as String),
        }),
      );
}

class _CopyWithStubImpl$Variables$Query$searchSyncTaskTicketIdSuggestions<TRes>
    implements
        CopyWith$Variables$Query$searchSyncTaskTicketIdSuggestions<TRes> {
  _CopyWithStubImpl$Variables$Query$searchSyncTaskTicketIdSuggestions(
    this._res,
  );

  TRes _res;

  call({
    Input$SyncWeighbridgeTicketTasksSuggestionsInput? input,
    String? searchText,
  }) => _res;
}

class Query$searchSyncTaskTicketIdSuggestions {
  Query$searchSyncTaskTicketIdSuggestions({
    required this.searchSyncTaskTicketIdSuggestions,
    this.$__typename = 'Query',
  });

  factory Query$searchSyncTaskTicketIdSuggestions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$searchSyncTaskTicketIdSuggestions =
        json['searchSyncTaskTicketIdSuggestions'];
    final l$$__typename = json['__typename'];
    return Query$searchSyncTaskTicketIdSuggestions(
      searchSyncTaskTicketIdSuggestions:
          (l$searchSyncTaskTicketIdSuggestions as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> searchSyncTaskTicketIdSuggestions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchSyncTaskTicketIdSuggestions =
        searchSyncTaskTicketIdSuggestions;
    _resultData['searchSyncTaskTicketIdSuggestions'] =
        l$searchSyncTaskTicketIdSuggestions.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchSyncTaskTicketIdSuggestions =
        searchSyncTaskTicketIdSuggestions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchSyncTaskTicketIdSuggestions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchSyncTaskTicketIdSuggestions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchSyncTaskTicketIdSuggestions =
        searchSyncTaskTicketIdSuggestions;
    final lOther$searchSyncTaskTicketIdSuggestions =
        other.searchSyncTaskTicketIdSuggestions;
    if (l$searchSyncTaskTicketIdSuggestions.length !=
        lOther$searchSyncTaskTicketIdSuggestions.length) {
      return false;
    }
    for (int i = 0; i < l$searchSyncTaskTicketIdSuggestions.length; i++) {
      final l$searchSyncTaskTicketIdSuggestions$entry =
          l$searchSyncTaskTicketIdSuggestions[i];
      final lOther$searchSyncTaskTicketIdSuggestions$entry =
          lOther$searchSyncTaskTicketIdSuggestions[i];
      if (l$searchSyncTaskTicketIdSuggestions$entry !=
          lOther$searchSyncTaskTicketIdSuggestions$entry) {
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

extension UtilityExtension$Query$searchSyncTaskTicketIdSuggestions
    on Query$searchSyncTaskTicketIdSuggestions {
  CopyWith$Query$searchSyncTaskTicketIdSuggestions<
    Query$searchSyncTaskTicketIdSuggestions
  >
  get copyWith =>
      CopyWith$Query$searchSyncTaskTicketIdSuggestions(this, (i) => i);
}

abstract class CopyWith$Query$searchSyncTaskTicketIdSuggestions<TRes> {
  factory CopyWith$Query$searchSyncTaskTicketIdSuggestions(
    Query$searchSyncTaskTicketIdSuggestions instance,
    TRes Function(Query$searchSyncTaskTicketIdSuggestions) then,
  ) = _CopyWithImpl$Query$searchSyncTaskTicketIdSuggestions;

  factory CopyWith$Query$searchSyncTaskTicketIdSuggestions.stub(TRes res) =
      _CopyWithStubImpl$Query$searchSyncTaskTicketIdSuggestions;

  TRes call({
    List<String>? searchSyncTaskTicketIdSuggestions,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchSyncTaskTicketIdSuggestions<TRes>
    implements CopyWith$Query$searchSyncTaskTicketIdSuggestions<TRes> {
  _CopyWithImpl$Query$searchSyncTaskTicketIdSuggestions(
    this._instance,
    this._then,
  );

  final Query$searchSyncTaskTicketIdSuggestions _instance;

  final TRes Function(Query$searchSyncTaskTicketIdSuggestions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchSyncTaskTicketIdSuggestions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchSyncTaskTicketIdSuggestions(
      searchSyncTaskTicketIdSuggestions:
          searchSyncTaskTicketIdSuggestions == _undefined ||
              searchSyncTaskTicketIdSuggestions == null
          ? _instance.searchSyncTaskTicketIdSuggestions
          : (searchSyncTaskTicketIdSuggestions as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchSyncTaskTicketIdSuggestions<TRes>
    implements CopyWith$Query$searchSyncTaskTicketIdSuggestions<TRes> {
  _CopyWithStubImpl$Query$searchSyncTaskTicketIdSuggestions(this._res);

  TRes _res;

  call({
    List<String>? searchSyncTaskTicketIdSuggestions,
    String? $__typename,
  }) => _res;
}

const documentNodeQuerysearchSyncTaskTicketIdSuggestions = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchSyncTaskTicketIdSuggestions'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SyncWeighbridgeTicketTasksSuggestionsInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'searchText')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchSyncTaskTicketIdSuggestions'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
              ArgumentNode(
                name: NameNode(value: 'searchText'),
                value: VariableNode(name: NameNode(value: 'searchText')),
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
