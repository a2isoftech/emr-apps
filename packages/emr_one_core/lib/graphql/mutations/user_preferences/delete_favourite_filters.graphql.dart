import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteFilterParameters {
  factory Variables$Mutation$DeleteFilterParameters(
          {required Input$DeleteFilterParametersInput input}) =>
      Variables$Mutation$DeleteFilterParameters._({
        r'input': input,
      });

  Variables$Mutation$DeleteFilterParameters._(this._$data);

  factory Variables$Mutation$DeleteFilterParameters.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$DeleteFilterParametersInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$DeleteFilterParameters._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteFilterParametersInput get input =>
      (_$data['input'] as Input$DeleteFilterParametersInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteFilterParameters<
          Variables$Mutation$DeleteFilterParameters>
      get copyWith => CopyWith$Variables$Mutation$DeleteFilterParameters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteFilterParameters ||
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

abstract class CopyWith$Variables$Mutation$DeleteFilterParameters<TRes> {
  factory CopyWith$Variables$Mutation$DeleteFilterParameters(
    Variables$Mutation$DeleteFilterParameters instance,
    TRes Function(Variables$Mutation$DeleteFilterParameters) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteFilterParameters;

  factory CopyWith$Variables$Mutation$DeleteFilterParameters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteFilterParameters;

  TRes call({Input$DeleteFilterParametersInput? input});
}

class _CopyWithImpl$Variables$Mutation$DeleteFilterParameters<TRes>
    implements CopyWith$Variables$Mutation$DeleteFilterParameters<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteFilterParameters(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteFilterParameters _instance;

  final TRes Function(Variables$Mutation$DeleteFilterParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$DeleteFilterParameters._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$DeleteFilterParametersInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteFilterParameters<TRes>
    implements CopyWith$Variables$Mutation$DeleteFilterParameters<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteFilterParameters(this._res);

  TRes _res;

  call({Input$DeleteFilterParametersInput? input}) => _res;
}

class Mutation$DeleteFilterParameters {
  Mutation$DeleteFilterParameters({
    required this.deleteFilterParameters,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteFilterParameters.fromJson(Map<String, dynamic> json) {
    final l$deleteFilterParameters = json['deleteFilterParameters'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteFilterParameters(
      deleteFilterParameters: (l$deleteFilterParameters as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteFilterParameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFilterParameters = deleteFilterParameters;
    _resultData['deleteFilterParameters'] = l$deleteFilterParameters;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFilterParameters = deleteFilterParameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFilterParameters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteFilterParameters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFilterParameters = deleteFilterParameters;
    final lOther$deleteFilterParameters = other.deleteFilterParameters;
    if (l$deleteFilterParameters != lOther$deleteFilterParameters) {
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

extension UtilityExtension$Mutation$DeleteFilterParameters
    on Mutation$DeleteFilterParameters {
  CopyWith$Mutation$DeleteFilterParameters<Mutation$DeleteFilterParameters>
      get copyWith => CopyWith$Mutation$DeleteFilterParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteFilterParameters<TRes> {
  factory CopyWith$Mutation$DeleteFilterParameters(
    Mutation$DeleteFilterParameters instance,
    TRes Function(Mutation$DeleteFilterParameters) then,
  ) = _CopyWithImpl$Mutation$DeleteFilterParameters;

  factory CopyWith$Mutation$DeleteFilterParameters.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteFilterParameters;

  TRes call({
    bool? deleteFilterParameters,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteFilterParameters<TRes>
    implements CopyWith$Mutation$DeleteFilterParameters<TRes> {
  _CopyWithImpl$Mutation$DeleteFilterParameters(
    this._instance,
    this._then,
  );

  final Mutation$DeleteFilterParameters _instance;

  final TRes Function(Mutation$DeleteFilterParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFilterParameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteFilterParameters(
        deleteFilterParameters: deleteFilterParameters == _undefined ||
                deleteFilterParameters == null
            ? _instance.deleteFilterParameters
            : (deleteFilterParameters as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteFilterParameters<TRes>
    implements CopyWith$Mutation$DeleteFilterParameters<TRes> {
  _CopyWithStubImpl$Mutation$DeleteFilterParameters(this._res);

  TRes _res;

  call({
    bool? deleteFilterParameters,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteFilterParameters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteFilterParameters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'DeleteFilterParametersInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteFilterParameters'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
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
