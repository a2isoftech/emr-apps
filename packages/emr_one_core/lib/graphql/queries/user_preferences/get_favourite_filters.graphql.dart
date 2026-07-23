import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetFavouriteFilterParameters {
  factory Variables$Query$GetFavouriteFilterParameters(
          {required Input$GetFilterParametersInput input}) =>
      Variables$Query$GetFavouriteFilterParameters._({
        r'input': input,
      });

  Variables$Query$GetFavouriteFilterParameters._(this._$data);

  factory Variables$Query$GetFavouriteFilterParameters.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$GetFilterParametersInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$GetFavouriteFilterParameters._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetFilterParametersInput get input =>
      (_$data['input'] as Input$GetFilterParametersInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetFavouriteFilterParameters<
          Variables$Query$GetFavouriteFilterParameters>
      get copyWith => CopyWith$Variables$Query$GetFavouriteFilterParameters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetFavouriteFilterParameters ||
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

abstract class CopyWith$Variables$Query$GetFavouriteFilterParameters<TRes> {
  factory CopyWith$Variables$Query$GetFavouriteFilterParameters(
    Variables$Query$GetFavouriteFilterParameters instance,
    TRes Function(Variables$Query$GetFavouriteFilterParameters) then,
  ) = _CopyWithImpl$Variables$Query$GetFavouriteFilterParameters;

  factory CopyWith$Variables$Query$GetFavouriteFilterParameters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFavouriteFilterParameters;

  TRes call({Input$GetFilterParametersInput? input});
}

class _CopyWithImpl$Variables$Query$GetFavouriteFilterParameters<TRes>
    implements CopyWith$Variables$Query$GetFavouriteFilterParameters<TRes> {
  _CopyWithImpl$Variables$Query$GetFavouriteFilterParameters(
    this._instance,
    this._then,
  );

  final Variables$Query$GetFavouriteFilterParameters _instance;

  final TRes Function(Variables$Query$GetFavouriteFilterParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$GetFavouriteFilterParameters._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$GetFilterParametersInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetFavouriteFilterParameters<TRes>
    implements CopyWith$Variables$Query$GetFavouriteFilterParameters<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFavouriteFilterParameters(this._res);

  TRes _res;

  call({Input$GetFilterParametersInput? input}) => _res;
}

class Query$GetFavouriteFilterParameters {
  Query$GetFavouriteFilterParameters({
    required this.favouriteFilterParameters,
    this.$__typename = 'Query',
  });

  factory Query$GetFavouriteFilterParameters.fromJson(
      Map<String, dynamic> json) {
    final l$favouriteFilterParameters = json['favouriteFilterParameters'];
    final l$$__typename = json['__typename'];
    return Query$GetFavouriteFilterParameters(
      favouriteFilterParameters: (l$favouriteFilterParameters as List<dynamic>)
          .map((e) =>
              Query$GetFavouriteFilterParameters$favouriteFilterParameters
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetFavouriteFilterParameters$favouriteFilterParameters>
      favouriteFilterParameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favouriteFilterParameters = favouriteFilterParameters;
    _resultData['favouriteFilterParameters'] =
        l$favouriteFilterParameters.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favouriteFilterParameters = favouriteFilterParameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$favouriteFilterParameters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFavouriteFilterParameters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$favouriteFilterParameters = favouriteFilterParameters;
    final lOther$favouriteFilterParameters = other.favouriteFilterParameters;
    if (l$favouriteFilterParameters.length !=
        lOther$favouriteFilterParameters.length) {
      return false;
    }
    for (int i = 0; i < l$favouriteFilterParameters.length; i++) {
      final l$favouriteFilterParameters$entry = l$favouriteFilterParameters[i];
      final lOther$favouriteFilterParameters$entry =
          lOther$favouriteFilterParameters[i];
      if (l$favouriteFilterParameters$entry !=
          lOther$favouriteFilterParameters$entry) {
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

extension UtilityExtension$Query$GetFavouriteFilterParameters
    on Query$GetFavouriteFilterParameters {
  CopyWith$Query$GetFavouriteFilterParameters<
          Query$GetFavouriteFilterParameters>
      get copyWith => CopyWith$Query$GetFavouriteFilterParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFavouriteFilterParameters<TRes> {
  factory CopyWith$Query$GetFavouriteFilterParameters(
    Query$GetFavouriteFilterParameters instance,
    TRes Function(Query$GetFavouriteFilterParameters) then,
  ) = _CopyWithImpl$Query$GetFavouriteFilterParameters;

  factory CopyWith$Query$GetFavouriteFilterParameters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFavouriteFilterParameters;

  TRes call({
    List<Query$GetFavouriteFilterParameters$favouriteFilterParameters>?
        favouriteFilterParameters,
    String? $__typename,
  });
  TRes favouriteFilterParameters(
      Iterable<Query$GetFavouriteFilterParameters$favouriteFilterParameters> Function(
              Iterable<
                  CopyWith$Query$GetFavouriteFilterParameters$favouriteFilterParameters<
                      Query$GetFavouriteFilterParameters$favouriteFilterParameters>>)
          _fn);
}

class _CopyWithImpl$Query$GetFavouriteFilterParameters<TRes>
    implements CopyWith$Query$GetFavouriteFilterParameters<TRes> {
  _CopyWithImpl$Query$GetFavouriteFilterParameters(
    this._instance,
    this._then,
  );

  final Query$GetFavouriteFilterParameters _instance;

  final TRes Function(Query$GetFavouriteFilterParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favouriteFilterParameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFavouriteFilterParameters(
        favouriteFilterParameters: favouriteFilterParameters == _undefined ||
                favouriteFilterParameters == null
            ? _instance.favouriteFilterParameters
            : (favouriteFilterParameters as List<
                Query$GetFavouriteFilterParameters$favouriteFilterParameters>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes favouriteFilterParameters(
          Iterable<Query$GetFavouriteFilterParameters$favouriteFilterParameters> Function(
                  Iterable<
                      CopyWith$Query$GetFavouriteFilterParameters$favouriteFilterParameters<
                          Query$GetFavouriteFilterParameters$favouriteFilterParameters>>)
              _fn) =>
      call(
          favouriteFilterParameters: _fn(_instance.favouriteFilterParameters
              .map((e) =>
                  CopyWith$Query$GetFavouriteFilterParameters$favouriteFilterParameters(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFavouriteFilterParameters<TRes>
    implements CopyWith$Query$GetFavouriteFilterParameters<TRes> {
  _CopyWithStubImpl$Query$GetFavouriteFilterParameters(this._res);

  TRes _res;

  call({
    List<Query$GetFavouriteFilterParameters$favouriteFilterParameters>?
        favouriteFilterParameters,
    String? $__typename,
  }) =>
      _res;

  favouriteFilterParameters(_fn) => _res;
}

const documentNodeQueryGetFavouriteFilterParameters =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFavouriteFilterParameters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetFilterParametersInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'favouriteFilterParameters'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'filterName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'moduleName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'filterParameters'),
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

class Query$GetFavouriteFilterParameters$favouriteFilterParameters {
  Query$GetFavouriteFilterParameters$favouriteFilterParameters({
    required this.filterName,
    required this.moduleName,
    required this.filterParameters,
    this.$__typename = 'FilterPreferences',
  });

  factory Query$GetFavouriteFilterParameters$favouriteFilterParameters.fromJson(
      Map<String, dynamic> json) {
    final l$filterName = json['filterName'];
    final l$moduleName = json['moduleName'];
    final l$filterParameters = json['filterParameters'];
    final l$$__typename = json['__typename'];
    return Query$GetFavouriteFilterParameters$favouriteFilterParameters(
      filterName: (l$filterName as String),
      moduleName: (l$moduleName as String),
      filterParameters: (l$filterParameters as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String filterName;

  final String moduleName;

  final String filterParameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$filterName = filterName;
    _resultData['filterName'] = l$filterName;
    final l$moduleName = moduleName;
    _resultData['moduleName'] = l$moduleName;
    final l$filterParameters = filterParameters;
    _resultData['filterParameters'] = l$filterParameters;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$filterName = filterName;
    final l$moduleName = moduleName;
    final l$filterParameters = filterParameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$filterName,
      l$moduleName,
      l$filterParameters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetFavouriteFilterParameters$favouriteFilterParameters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filterName = filterName;
    final lOther$filterName = other.filterName;
    if (l$filterName != lOther$filterName) {
      return false;
    }
    final l$moduleName = moduleName;
    final lOther$moduleName = other.moduleName;
    if (l$moduleName != lOther$moduleName) {
      return false;
    }
    final l$filterParameters = filterParameters;
    final lOther$filterParameters = other.filterParameters;
    if (l$filterParameters != lOther$filterParameters) {
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

extension UtilityExtension$Query$GetFavouriteFilterParameters$favouriteFilterParameters
    on Query$GetFavouriteFilterParameters$favouriteFilterParameters {
  CopyWith$Query$GetFavouriteFilterParameters$favouriteFilterParameters<
          Query$GetFavouriteFilterParameters$favouriteFilterParameters>
      get copyWith =>
          CopyWith$Query$GetFavouriteFilterParameters$favouriteFilterParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFavouriteFilterParameters$favouriteFilterParameters<
    TRes> {
  factory CopyWith$Query$GetFavouriteFilterParameters$favouriteFilterParameters(
    Query$GetFavouriteFilterParameters$favouriteFilterParameters instance,
    TRes Function(Query$GetFavouriteFilterParameters$favouriteFilterParameters)
        then,
  ) = _CopyWithImpl$Query$GetFavouriteFilterParameters$favouriteFilterParameters;

  factory CopyWith$Query$GetFavouriteFilterParameters$favouriteFilterParameters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetFavouriteFilterParameters$favouriteFilterParameters;

  TRes call({
    String? filterName,
    String? moduleName,
    String? filterParameters,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFavouriteFilterParameters$favouriteFilterParameters<
        TRes>
    implements
        CopyWith$Query$GetFavouriteFilterParameters$favouriteFilterParameters<
            TRes> {
  _CopyWithImpl$Query$GetFavouriteFilterParameters$favouriteFilterParameters(
    this._instance,
    this._then,
  );

  final Query$GetFavouriteFilterParameters$favouriteFilterParameters _instance;

  final TRes Function(
      Query$GetFavouriteFilterParameters$favouriteFilterParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filterName = _undefined,
    Object? moduleName = _undefined,
    Object? filterParameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFavouriteFilterParameters$favouriteFilterParameters(
        filterName: filterName == _undefined || filterName == null
            ? _instance.filterName
            : (filterName as String),
        moduleName: moduleName == _undefined || moduleName == null
            ? _instance.moduleName
            : (moduleName as String),
        filterParameters:
            filterParameters == _undefined || filterParameters == null
                ? _instance.filterParameters
                : (filterParameters as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFavouriteFilterParameters$favouriteFilterParameters<
        TRes>
    implements
        CopyWith$Query$GetFavouriteFilterParameters$favouriteFilterParameters<
            TRes> {
  _CopyWithStubImpl$Query$GetFavouriteFilterParameters$favouriteFilterParameters(
      this._res);

  TRes _res;

  call({
    String? filterName,
    String? moduleName,
    String? filterParameters,
    String? $__typename,
  }) =>
      _res;
}
