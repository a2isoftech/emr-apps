import 'package:gql/ast.dart';

class Query$GetFavouriteSearchParameters {
  Query$GetFavouriteSearchParameters({
    required this.favouriteSearchParameters,
    this.$__typename = 'Query',
  });

  factory Query$GetFavouriteSearchParameters.fromJson(
      Map<String, dynamic> json) {
    final l$favouriteSearchParameters = json['favouriteSearchParameters'];
    final l$$__typename = json['__typename'];
    return Query$GetFavouriteSearchParameters(
      favouriteSearchParameters: (l$favouriteSearchParameters as List<dynamic>)
          .map((e) =>
              Query$GetFavouriteSearchParameters$favouriteSearchParameters
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetFavouriteSearchParameters$favouriteSearchParameters>
      favouriteSearchParameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favouriteSearchParameters = favouriteSearchParameters;
    _resultData['favouriteSearchParameters'] =
        l$favouriteSearchParameters.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favouriteSearchParameters = favouriteSearchParameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$favouriteSearchParameters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFavouriteSearchParameters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$favouriteSearchParameters = favouriteSearchParameters;
    final lOther$favouriteSearchParameters = other.favouriteSearchParameters;
    if (l$favouriteSearchParameters.length !=
        lOther$favouriteSearchParameters.length) {
      return false;
    }
    for (int i = 0; i < l$favouriteSearchParameters.length; i++) {
      final l$favouriteSearchParameters$entry = l$favouriteSearchParameters[i];
      final lOther$favouriteSearchParameters$entry =
          lOther$favouriteSearchParameters[i];
      if (l$favouriteSearchParameters$entry !=
          lOther$favouriteSearchParameters$entry) {
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

extension UtilityExtension$Query$GetFavouriteSearchParameters
    on Query$GetFavouriteSearchParameters {
  CopyWith$Query$GetFavouriteSearchParameters<
          Query$GetFavouriteSearchParameters>
      get copyWith => CopyWith$Query$GetFavouriteSearchParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFavouriteSearchParameters<TRes> {
  factory CopyWith$Query$GetFavouriteSearchParameters(
    Query$GetFavouriteSearchParameters instance,
    TRes Function(Query$GetFavouriteSearchParameters) then,
  ) = _CopyWithImpl$Query$GetFavouriteSearchParameters;

  factory CopyWith$Query$GetFavouriteSearchParameters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFavouriteSearchParameters;

  TRes call({
    List<Query$GetFavouriteSearchParameters$favouriteSearchParameters>?
        favouriteSearchParameters,
    String? $__typename,
  });
  TRes favouriteSearchParameters(
      Iterable<Query$GetFavouriteSearchParameters$favouriteSearchParameters> Function(
              Iterable<
                  CopyWith$Query$GetFavouriteSearchParameters$favouriteSearchParameters<
                      Query$GetFavouriteSearchParameters$favouriteSearchParameters>>)
          _fn);
}

class _CopyWithImpl$Query$GetFavouriteSearchParameters<TRes>
    implements CopyWith$Query$GetFavouriteSearchParameters<TRes> {
  _CopyWithImpl$Query$GetFavouriteSearchParameters(
    this._instance,
    this._then,
  );

  final Query$GetFavouriteSearchParameters _instance;

  final TRes Function(Query$GetFavouriteSearchParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favouriteSearchParameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFavouriteSearchParameters(
        favouriteSearchParameters: favouriteSearchParameters == _undefined ||
                favouriteSearchParameters == null
            ? _instance.favouriteSearchParameters
            : (favouriteSearchParameters as List<
                Query$GetFavouriteSearchParameters$favouriteSearchParameters>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes favouriteSearchParameters(
          Iterable<Query$GetFavouriteSearchParameters$favouriteSearchParameters> Function(
                  Iterable<
                      CopyWith$Query$GetFavouriteSearchParameters$favouriteSearchParameters<
                          Query$GetFavouriteSearchParameters$favouriteSearchParameters>>)
              _fn) =>
      call(
          favouriteSearchParameters: _fn(_instance.favouriteSearchParameters
              .map((e) =>
                  CopyWith$Query$GetFavouriteSearchParameters$favouriteSearchParameters(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFavouriteSearchParameters<TRes>
    implements CopyWith$Query$GetFavouriteSearchParameters<TRes> {
  _CopyWithStubImpl$Query$GetFavouriteSearchParameters(this._res);

  TRes _res;

  call({
    List<Query$GetFavouriteSearchParameters$favouriteSearchParameters>?
        favouriteSearchParameters,
    String? $__typename,
  }) =>
      _res;

  favouriteSearchParameters(_fn) => _res;
}

const documentNodeQueryGetFavouriteSearchParameters =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFavouriteSearchParameters'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'favouriteSearchParameters'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'parameters'),
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
]);

class Query$GetFavouriteSearchParameters$favouriteSearchParameters {
  Query$GetFavouriteSearchParameters$favouriteSearchParameters({
    required this.name,
    required this.parameters,
    this.$__typename = 'SearchParameters',
  });

  factory Query$GetFavouriteSearchParameters$favouriteSearchParameters.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$parameters = json['parameters'];
    final l$$__typename = json['__typename'];
    return Query$GetFavouriteSearchParameters$favouriteSearchParameters(
      name: (l$name as String),
      parameters: (l$parameters as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String parameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$parameters = parameters;
    _resultData['parameters'] = l$parameters;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$parameters = parameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$parameters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetFavouriteSearchParameters$favouriteSearchParameters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$parameters = parameters;
    final lOther$parameters = other.parameters;
    if (l$parameters != lOther$parameters) {
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

extension UtilityExtension$Query$GetFavouriteSearchParameters$favouriteSearchParameters
    on Query$GetFavouriteSearchParameters$favouriteSearchParameters {
  CopyWith$Query$GetFavouriteSearchParameters$favouriteSearchParameters<
          Query$GetFavouriteSearchParameters$favouriteSearchParameters>
      get copyWith =>
          CopyWith$Query$GetFavouriteSearchParameters$favouriteSearchParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFavouriteSearchParameters$favouriteSearchParameters<
    TRes> {
  factory CopyWith$Query$GetFavouriteSearchParameters$favouriteSearchParameters(
    Query$GetFavouriteSearchParameters$favouriteSearchParameters instance,
    TRes Function(Query$GetFavouriteSearchParameters$favouriteSearchParameters)
        then,
  ) = _CopyWithImpl$Query$GetFavouriteSearchParameters$favouriteSearchParameters;

  factory CopyWith$Query$GetFavouriteSearchParameters$favouriteSearchParameters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetFavouriteSearchParameters$favouriteSearchParameters;

  TRes call({
    String? name,
    String? parameters,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFavouriteSearchParameters$favouriteSearchParameters<
        TRes>
    implements
        CopyWith$Query$GetFavouriteSearchParameters$favouriteSearchParameters<
            TRes> {
  _CopyWithImpl$Query$GetFavouriteSearchParameters$favouriteSearchParameters(
    this._instance,
    this._then,
  );

  final Query$GetFavouriteSearchParameters$favouriteSearchParameters _instance;

  final TRes Function(
      Query$GetFavouriteSearchParameters$favouriteSearchParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? parameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFavouriteSearchParameters$favouriteSearchParameters(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        parameters: parameters == _undefined || parameters == null
            ? _instance.parameters
            : (parameters as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFavouriteSearchParameters$favouriteSearchParameters<
        TRes>
    implements
        CopyWith$Query$GetFavouriteSearchParameters$favouriteSearchParameters<
            TRes> {
  _CopyWithStubImpl$Query$GetFavouriteSearchParameters$favouriteSearchParameters(
      this._res);

  TRes _res;

  call({
    String? name,
    String? parameters,
    String? $__typename,
  }) =>
      _res;
}
