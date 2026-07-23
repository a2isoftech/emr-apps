import 'package:gql/ast.dart';

class Variables$Mutation$DeleteSearchParameters {
  factory Variables$Mutation$DeleteSearchParameters({required String name}) =>
      Variables$Mutation$DeleteSearchParameters._({
        r'name': name,
      });

  Variables$Mutation$DeleteSearchParameters._(this._$data);

  factory Variables$Mutation$DeleteSearchParameters.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Mutation$DeleteSearchParameters._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteSearchParameters<
          Variables$Mutation$DeleteSearchParameters>
      get copyWith => CopyWith$Variables$Mutation$DeleteSearchParameters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteSearchParameters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteSearchParameters<TRes> {
  factory CopyWith$Variables$Mutation$DeleteSearchParameters(
    Variables$Mutation$DeleteSearchParameters instance,
    TRes Function(Variables$Mutation$DeleteSearchParameters) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteSearchParameters;

  factory CopyWith$Variables$Mutation$DeleteSearchParameters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteSearchParameters;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Mutation$DeleteSearchParameters<TRes>
    implements CopyWith$Variables$Mutation$DeleteSearchParameters<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteSearchParameters(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteSearchParameters _instance;

  final TRes Function(Variables$Mutation$DeleteSearchParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Mutation$DeleteSearchParameters._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteSearchParameters<TRes>
    implements CopyWith$Variables$Mutation$DeleteSearchParameters<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteSearchParameters(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Mutation$DeleteSearchParameters {
  Mutation$DeleteSearchParameters({
    required this.deleteSearchParameters,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteSearchParameters.fromJson(Map<String, dynamic> json) {
    final l$deleteSearchParameters = json['deleteSearchParameters'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteSearchParameters(
      deleteSearchParameters: (l$deleteSearchParameters as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteSearchParameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteSearchParameters = deleteSearchParameters;
    _resultData['deleteSearchParameters'] = l$deleteSearchParameters;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteSearchParameters = deleteSearchParameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteSearchParameters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteSearchParameters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteSearchParameters = deleteSearchParameters;
    final lOther$deleteSearchParameters = other.deleteSearchParameters;
    if (l$deleteSearchParameters != lOther$deleteSearchParameters) {
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

extension UtilityExtension$Mutation$DeleteSearchParameters
    on Mutation$DeleteSearchParameters {
  CopyWith$Mutation$DeleteSearchParameters<Mutation$DeleteSearchParameters>
      get copyWith => CopyWith$Mutation$DeleteSearchParameters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteSearchParameters<TRes> {
  factory CopyWith$Mutation$DeleteSearchParameters(
    Mutation$DeleteSearchParameters instance,
    TRes Function(Mutation$DeleteSearchParameters) then,
  ) = _CopyWithImpl$Mutation$DeleteSearchParameters;

  factory CopyWith$Mutation$DeleteSearchParameters.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteSearchParameters;

  TRes call({
    bool? deleteSearchParameters,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteSearchParameters<TRes>
    implements CopyWith$Mutation$DeleteSearchParameters<TRes> {
  _CopyWithImpl$Mutation$DeleteSearchParameters(
    this._instance,
    this._then,
  );

  final Mutation$DeleteSearchParameters _instance;

  final TRes Function(Mutation$DeleteSearchParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteSearchParameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteSearchParameters(
        deleteSearchParameters: deleteSearchParameters == _undefined ||
                deleteSearchParameters == null
            ? _instance.deleteSearchParameters
            : (deleteSearchParameters as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteSearchParameters<TRes>
    implements CopyWith$Mutation$DeleteSearchParameters<TRes> {
  _CopyWithStubImpl$Mutation$DeleteSearchParameters(this._res);

  TRes _res;

  call({
    bool? deleteSearchParameters,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteSearchParameters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteSearchParameters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteSearchParameters'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
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
