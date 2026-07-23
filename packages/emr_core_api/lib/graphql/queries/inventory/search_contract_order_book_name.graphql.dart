import 'package:gql/ast.dart';

class Variables$Query$SearchContractOrderBookName {
  factory Variables$Query$SearchContractOrderBookName({
    required String input,
  }) => Variables$Query$SearchContractOrderBookName._({r'input': input});

  Variables$Query$SearchContractOrderBookName._(this._$data);

  factory Variables$Query$SearchContractOrderBookName.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    return Variables$Query$SearchContractOrderBookName._(result$data);
  }

  Map<String, dynamic> _$data;

  String get input => (_$data['input'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input;
    return result$data;
  }

  CopyWith$Variables$Query$SearchContractOrderBookName<
    Variables$Query$SearchContractOrderBookName
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchContractOrderBookName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchContractOrderBookName ||
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

abstract class CopyWith$Variables$Query$SearchContractOrderBookName<TRes> {
  factory CopyWith$Variables$Query$SearchContractOrderBookName(
    Variables$Query$SearchContractOrderBookName instance,
    TRes Function(Variables$Query$SearchContractOrderBookName) then,
  ) = _CopyWithImpl$Variables$Query$SearchContractOrderBookName;

  factory CopyWith$Variables$Query$SearchContractOrderBookName.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchContractOrderBookName;

  TRes call({String? input});
}

class _CopyWithImpl$Variables$Query$SearchContractOrderBookName<TRes>
    implements CopyWith$Variables$Query$SearchContractOrderBookName<TRes> {
  _CopyWithImpl$Variables$Query$SearchContractOrderBookName(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchContractOrderBookName _instance;

  final TRes Function(Variables$Query$SearchContractOrderBookName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchContractOrderBookName._({
      ..._instance._$data,
      if (input != _undefined && input != null) 'input': (input as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchContractOrderBookName<TRes>
    implements CopyWith$Variables$Query$SearchContractOrderBookName<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchContractOrderBookName(this._res);

  TRes _res;

  call({String? input}) => _res;
}

class Query$SearchContractOrderBookName {
  Query$SearchContractOrderBookName({
    required this.searchContractOrderBookName,
    this.$__typename = 'Query',
  });

  factory Query$SearchContractOrderBookName.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$searchContractOrderBookName = json['searchContractOrderBookName'];
    final l$$__typename = json['__typename'];
    return Query$SearchContractOrderBookName(
      searchContractOrderBookName:
          (l$searchContractOrderBookName as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> searchContractOrderBookName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchContractOrderBookName = searchContractOrderBookName;
    _resultData['searchContractOrderBookName'] = l$searchContractOrderBookName
        .map((e) => e)
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchContractOrderBookName = searchContractOrderBookName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchContractOrderBookName.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchContractOrderBookName ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchContractOrderBookName = searchContractOrderBookName;
    final lOther$searchContractOrderBookName =
        other.searchContractOrderBookName;
    if (l$searchContractOrderBookName.length !=
        lOther$searchContractOrderBookName.length) {
      return false;
    }
    for (int i = 0; i < l$searchContractOrderBookName.length; i++) {
      final l$searchContractOrderBookName$entry =
          l$searchContractOrderBookName[i];
      final lOther$searchContractOrderBookName$entry =
          lOther$searchContractOrderBookName[i];
      if (l$searchContractOrderBookName$entry !=
          lOther$searchContractOrderBookName$entry) {
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

extension UtilityExtension$Query$SearchContractOrderBookName
    on Query$SearchContractOrderBookName {
  CopyWith$Query$SearchContractOrderBookName<Query$SearchContractOrderBookName>
  get copyWith => CopyWith$Query$SearchContractOrderBookName(this, (i) => i);
}

abstract class CopyWith$Query$SearchContractOrderBookName<TRes> {
  factory CopyWith$Query$SearchContractOrderBookName(
    Query$SearchContractOrderBookName instance,
    TRes Function(Query$SearchContractOrderBookName) then,
  ) = _CopyWithImpl$Query$SearchContractOrderBookName;

  factory CopyWith$Query$SearchContractOrderBookName.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchContractOrderBookName;

  TRes call({List<String>? searchContractOrderBookName, String? $__typename});
}

class _CopyWithImpl$Query$SearchContractOrderBookName<TRes>
    implements CopyWith$Query$SearchContractOrderBookName<TRes> {
  _CopyWithImpl$Query$SearchContractOrderBookName(this._instance, this._then);

  final Query$SearchContractOrderBookName _instance;

  final TRes Function(Query$SearchContractOrderBookName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchContractOrderBookName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchContractOrderBookName(
      searchContractOrderBookName:
          searchContractOrderBookName == _undefined ||
              searchContractOrderBookName == null
          ? _instance.searchContractOrderBookName
          : (searchContractOrderBookName as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchContractOrderBookName<TRes>
    implements CopyWith$Query$SearchContractOrderBookName<TRes> {
  _CopyWithStubImpl$Query$SearchContractOrderBookName(this._res);

  TRes _res;

  call({List<String>? searchContractOrderBookName, String? $__typename}) =>
      _res;
}

const documentNodeQuerySearchContractOrderBookName = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchContractOrderBookName'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchContractOrderBookName'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
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
        ],
      ),
    ),
  ],
);
