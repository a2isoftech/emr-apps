import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveFavouriteFilterParameters {
  factory Variables$Mutation$SaveFavouriteFilterParameters(
          {required Input$SaveFilterParametersInput input}) =>
      Variables$Mutation$SaveFavouriteFilterParameters._({
        r'input': input,
      });

  Variables$Mutation$SaveFavouriteFilterParameters._(this._$data);

  factory Variables$Mutation$SaveFavouriteFilterParameters.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SaveFilterParametersInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$SaveFavouriteFilterParameters._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SaveFilterParametersInput get input =>
      (_$data['input'] as Input$SaveFilterParametersInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveFavouriteFilterParameters<
          Variables$Mutation$SaveFavouriteFilterParameters>
      get copyWith => CopyWith$Variables$Mutation$SaveFavouriteFilterParameters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveFavouriteFilterParameters ||
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

abstract class CopyWith$Variables$Mutation$SaveFavouriteFilterParameters<TRes> {
  factory CopyWith$Variables$Mutation$SaveFavouriteFilterParameters(
    Variables$Mutation$SaveFavouriteFilterParameters instance,
    TRes Function(Variables$Mutation$SaveFavouriteFilterParameters) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveFavouriteFilterParameters;

  factory CopyWith$Variables$Mutation$SaveFavouriteFilterParameters.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveFavouriteFilterParameters;

  TRes call({Input$SaveFilterParametersInput? input});
}

class _CopyWithImpl$Variables$Mutation$SaveFavouriteFilterParameters<TRes>
    implements CopyWith$Variables$Mutation$SaveFavouriteFilterParameters<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveFavouriteFilterParameters(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveFavouriteFilterParameters _instance;

  final TRes Function(Variables$Mutation$SaveFavouriteFilterParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SaveFavouriteFilterParameters._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SaveFilterParametersInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveFavouriteFilterParameters<TRes>
    implements CopyWith$Variables$Mutation$SaveFavouriteFilterParameters<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveFavouriteFilterParameters(this._res);

  TRes _res;

  call({Input$SaveFilterParametersInput? input}) => _res;
}

class Mutation$SaveFavouriteFilterParameters {
  Mutation$SaveFavouriteFilterParameters({
    required this.saveFilterParameters,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveFavouriteFilterParameters.fromJson(
      Map<String, dynamic> json) {
    final l$saveFilterParameters = json['saveFilterParameters'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveFavouriteFilterParameters(
      saveFilterParameters:
          Mutation$SaveFavouriteFilterParameters$saveFilterParameters.fromJson(
              (l$saveFilterParameters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveFavouriteFilterParameters$saveFilterParameters
      saveFilterParameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveFilterParameters = saveFilterParameters;
    _resultData['saveFilterParameters'] = l$saveFilterParameters.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveFilterParameters = saveFilterParameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$saveFilterParameters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveFavouriteFilterParameters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveFilterParameters = saveFilterParameters;
    final lOther$saveFilterParameters = other.saveFilterParameters;
    if (l$saveFilterParameters != lOther$saveFilterParameters) {
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

extension UtilityExtension$Mutation$SaveFavouriteFilterParameters
    on Mutation$SaveFavouriteFilterParameters {
  CopyWith$Mutation$SaveFavouriteFilterParameters<
          Mutation$SaveFavouriteFilterParameters>
      get copyWith => CopyWith$Mutation$SaveFavouriteFilterParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveFavouriteFilterParameters<TRes> {
  factory CopyWith$Mutation$SaveFavouriteFilterParameters(
    Mutation$SaveFavouriteFilterParameters instance,
    TRes Function(Mutation$SaveFavouriteFilterParameters) then,
  ) = _CopyWithImpl$Mutation$SaveFavouriteFilterParameters;

  factory CopyWith$Mutation$SaveFavouriteFilterParameters.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveFavouriteFilterParameters;

  TRes call({
    Mutation$SaveFavouriteFilterParameters$saveFilterParameters?
        saveFilterParameters,
    String? $__typename,
  });
  CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters<TRes>
      get saveFilterParameters;
}

class _CopyWithImpl$Mutation$SaveFavouriteFilterParameters<TRes>
    implements CopyWith$Mutation$SaveFavouriteFilterParameters<TRes> {
  _CopyWithImpl$Mutation$SaveFavouriteFilterParameters(
    this._instance,
    this._then,
  );

  final Mutation$SaveFavouriteFilterParameters _instance;

  final TRes Function(Mutation$SaveFavouriteFilterParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveFilterParameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveFavouriteFilterParameters(
        saveFilterParameters: saveFilterParameters == _undefined ||
                saveFilterParameters == null
            ? _instance.saveFilterParameters
            : (saveFilterParameters
                as Mutation$SaveFavouriteFilterParameters$saveFilterParameters),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters<TRes>
      get saveFilterParameters {
    final local$saveFilterParameters = _instance.saveFilterParameters;
    return CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters(
        local$saveFilterParameters, (e) => call(saveFilterParameters: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveFavouriteFilterParameters<TRes>
    implements CopyWith$Mutation$SaveFavouriteFilterParameters<TRes> {
  _CopyWithStubImpl$Mutation$SaveFavouriteFilterParameters(this._res);

  TRes _res;

  call({
    Mutation$SaveFavouriteFilterParameters$saveFilterParameters?
        saveFilterParameters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters<TRes>
      get saveFilterParameters =>
          CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters
              .stub(_res);
}

const documentNodeMutationSaveFavouriteFilterParameters =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveFavouriteFilterParameters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SaveFilterParametersInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'saveFilterParameters'),
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

class Mutation$SaveFavouriteFilterParameters$saveFilterParameters {
  Mutation$SaveFavouriteFilterParameters$saveFilterParameters({
    required this.filterName,
    required this.moduleName,
    required this.filterParameters,
    this.$__typename = 'FilterPreferences',
  });

  factory Mutation$SaveFavouriteFilterParameters$saveFilterParameters.fromJson(
      Map<String, dynamic> json) {
    final l$filterName = json['filterName'];
    final l$moduleName = json['moduleName'];
    final l$filterParameters = json['filterParameters'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveFavouriteFilterParameters$saveFilterParameters(
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
    if (other is! Mutation$SaveFavouriteFilterParameters$saveFilterParameters ||
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

extension UtilityExtension$Mutation$SaveFavouriteFilterParameters$saveFilterParameters
    on Mutation$SaveFavouriteFilterParameters$saveFilterParameters {
  CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters<
          Mutation$SaveFavouriteFilterParameters$saveFilterParameters>
      get copyWith =>
          CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters<
    TRes> {
  factory CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters(
    Mutation$SaveFavouriteFilterParameters$saveFilterParameters instance,
    TRes Function(Mutation$SaveFavouriteFilterParameters$saveFilterParameters)
        then,
  ) = _CopyWithImpl$Mutation$SaveFavouriteFilterParameters$saveFilterParameters;

  factory CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SaveFavouriteFilterParameters$saveFilterParameters;

  TRes call({
    String? filterName,
    String? moduleName,
    String? filterParameters,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveFavouriteFilterParameters$saveFilterParameters<
        TRes>
    implements
        CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters<
            TRes> {
  _CopyWithImpl$Mutation$SaveFavouriteFilterParameters$saveFilterParameters(
    this._instance,
    this._then,
  );

  final Mutation$SaveFavouriteFilterParameters$saveFilterParameters _instance;

  final TRes Function(
      Mutation$SaveFavouriteFilterParameters$saveFilterParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filterName = _undefined,
    Object? moduleName = _undefined,
    Object? filterParameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveFavouriteFilterParameters$saveFilterParameters(
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

class _CopyWithStubImpl$Mutation$SaveFavouriteFilterParameters$saveFilterParameters<
        TRes>
    implements
        CopyWith$Mutation$SaveFavouriteFilterParameters$saveFilterParameters<
            TRes> {
  _CopyWithStubImpl$Mutation$SaveFavouriteFilterParameters$saveFilterParameters(
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
