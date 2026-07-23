import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveFavouriteSearchParameters {
  factory Variables$Mutation$SaveFavouriteSearchParameters(
          {required Input$SaveSearchParametersInput input}) =>
      Variables$Mutation$SaveFavouriteSearchParameters._({
        r'input': input,
      });

  Variables$Mutation$SaveFavouriteSearchParameters._(this._$data);

  factory Variables$Mutation$SaveFavouriteSearchParameters.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SaveSearchParametersInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$SaveFavouriteSearchParameters._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SaveSearchParametersInput get input =>
      (_$data['input'] as Input$SaveSearchParametersInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveFavouriteSearchParameters<
          Variables$Mutation$SaveFavouriteSearchParameters>
      get copyWith => CopyWith$Variables$Mutation$SaveFavouriteSearchParameters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SaveFavouriteSearchParameters) ||
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

abstract class CopyWith$Variables$Mutation$SaveFavouriteSearchParameters<TRes> {
  factory CopyWith$Variables$Mutation$SaveFavouriteSearchParameters(
    Variables$Mutation$SaveFavouriteSearchParameters instance,
    TRes Function(Variables$Mutation$SaveFavouriteSearchParameters) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveFavouriteSearchParameters;

  factory CopyWith$Variables$Mutation$SaveFavouriteSearchParameters.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveFavouriteSearchParameters;

  TRes call({Input$SaveSearchParametersInput? input});
}

class _CopyWithImpl$Variables$Mutation$SaveFavouriteSearchParameters<TRes>
    implements CopyWith$Variables$Mutation$SaveFavouriteSearchParameters<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveFavouriteSearchParameters(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveFavouriteSearchParameters _instance;

  final TRes Function(Variables$Mutation$SaveFavouriteSearchParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SaveFavouriteSearchParameters._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SaveSearchParametersInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveFavouriteSearchParameters<TRes>
    implements CopyWith$Variables$Mutation$SaveFavouriteSearchParameters<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveFavouriteSearchParameters(this._res);

  TRes _res;

  call({Input$SaveSearchParametersInput? input}) => _res;
}

class Mutation$SaveFavouriteSearchParameters {
  Mutation$SaveFavouriteSearchParameters({
    required this.saveSearchParameters,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveFavouriteSearchParameters.fromJson(
      Map<String, dynamic> json) {
    final l$saveSearchParameters = json['saveSearchParameters'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveFavouriteSearchParameters(
      saveSearchParameters:
          Mutation$SaveFavouriteSearchParameters$saveSearchParameters.fromJson(
              (l$saveSearchParameters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveFavouriteSearchParameters$saveSearchParameters
      saveSearchParameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveSearchParameters = saveSearchParameters;
    _resultData['saveSearchParameters'] = l$saveSearchParameters.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveSearchParameters = saveSearchParameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$saveSearchParameters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveFavouriteSearchParameters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveSearchParameters = saveSearchParameters;
    final lOther$saveSearchParameters = other.saveSearchParameters;
    if (l$saveSearchParameters != lOther$saveSearchParameters) {
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

extension UtilityExtension$Mutation$SaveFavouriteSearchParameters
    on Mutation$SaveFavouriteSearchParameters {
  CopyWith$Mutation$SaveFavouriteSearchParameters<
          Mutation$SaveFavouriteSearchParameters>
      get copyWith => CopyWith$Mutation$SaveFavouriteSearchParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveFavouriteSearchParameters<TRes> {
  factory CopyWith$Mutation$SaveFavouriteSearchParameters(
    Mutation$SaveFavouriteSearchParameters instance,
    TRes Function(Mutation$SaveFavouriteSearchParameters) then,
  ) = _CopyWithImpl$Mutation$SaveFavouriteSearchParameters;

  factory CopyWith$Mutation$SaveFavouriteSearchParameters.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveFavouriteSearchParameters;

  TRes call({
    Mutation$SaveFavouriteSearchParameters$saveSearchParameters?
        saveSearchParameters,
    String? $__typename,
  });
  CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters<TRes>
      get saveSearchParameters;
}

class _CopyWithImpl$Mutation$SaveFavouriteSearchParameters<TRes>
    implements CopyWith$Mutation$SaveFavouriteSearchParameters<TRes> {
  _CopyWithImpl$Mutation$SaveFavouriteSearchParameters(
    this._instance,
    this._then,
  );

  final Mutation$SaveFavouriteSearchParameters _instance;

  final TRes Function(Mutation$SaveFavouriteSearchParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveSearchParameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveFavouriteSearchParameters(
        saveSearchParameters: saveSearchParameters == _undefined ||
                saveSearchParameters == null
            ? _instance.saveSearchParameters
            : (saveSearchParameters
                as Mutation$SaveFavouriteSearchParameters$saveSearchParameters),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters<TRes>
      get saveSearchParameters {
    final local$saveSearchParameters = _instance.saveSearchParameters;
    return CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters(
        local$saveSearchParameters, (e) => call(saveSearchParameters: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveFavouriteSearchParameters<TRes>
    implements CopyWith$Mutation$SaveFavouriteSearchParameters<TRes> {
  _CopyWithStubImpl$Mutation$SaveFavouriteSearchParameters(this._res);

  TRes _res;

  call({
    Mutation$SaveFavouriteSearchParameters$saveSearchParameters?
        saveSearchParameters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters<TRes>
      get saveSearchParameters =>
          CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters
              .stub(_res);
}

const documentNodeMutationSaveFavouriteSearchParameters =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveFavouriteSearchParameters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SaveSearchParametersInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'saveSearchParameters'),
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

class Mutation$SaveFavouriteSearchParameters$saveSearchParameters {
  Mutation$SaveFavouriteSearchParameters$saveSearchParameters({
    required this.name,
    required this.parameters,
    this.$__typename = 'SearchParameters',
  });

  factory Mutation$SaveFavouriteSearchParameters$saveSearchParameters.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$parameters = json['parameters'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveFavouriteSearchParameters$saveSearchParameters(
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
            is Mutation$SaveFavouriteSearchParameters$saveSearchParameters) ||
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

extension UtilityExtension$Mutation$SaveFavouriteSearchParameters$saveSearchParameters
    on Mutation$SaveFavouriteSearchParameters$saveSearchParameters {
  CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters<
          Mutation$SaveFavouriteSearchParameters$saveSearchParameters>
      get copyWith =>
          CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters<
    TRes> {
  factory CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters(
    Mutation$SaveFavouriteSearchParameters$saveSearchParameters instance,
    TRes Function(Mutation$SaveFavouriteSearchParameters$saveSearchParameters)
        then,
  ) = _CopyWithImpl$Mutation$SaveFavouriteSearchParameters$saveSearchParameters;

  factory CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SaveFavouriteSearchParameters$saveSearchParameters;

  TRes call({
    String? name,
    String? parameters,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveFavouriteSearchParameters$saveSearchParameters<
        TRes>
    implements
        CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters<
            TRes> {
  _CopyWithImpl$Mutation$SaveFavouriteSearchParameters$saveSearchParameters(
    this._instance,
    this._then,
  );

  final Mutation$SaveFavouriteSearchParameters$saveSearchParameters _instance;

  final TRes Function(
      Mutation$SaveFavouriteSearchParameters$saveSearchParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? parameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveFavouriteSearchParameters$saveSearchParameters(
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

class _CopyWithStubImpl$Mutation$SaveFavouriteSearchParameters$saveSearchParameters<
        TRes>
    implements
        CopyWith$Mutation$SaveFavouriteSearchParameters$saveSearchParameters<
            TRes> {
  _CopyWithStubImpl$Mutation$SaveFavouriteSearchParameters$saveSearchParameters(
      this._res);

  TRes _res;

  call({
    String? name,
    String? parameters,
    String? $__typename,
  }) =>
      _res;
}
