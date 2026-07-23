import '../../fragments/weighbridge_configuration_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveWeighbridgeConfiguration {
  factory Variables$Mutation$SaveWeighbridgeConfiguration({
    required Input$DocumentOfWeighbridgeConfigurationInput input,
  }) => Variables$Mutation$SaveWeighbridgeConfiguration._({r'input': input});

  Variables$Mutation$SaveWeighbridgeConfiguration._(this._$data);

  factory Variables$Mutation$SaveWeighbridgeConfiguration.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$DocumentOfWeighbridgeConfigurationInput.fromJson(
          (l$input as Map<String, dynamic>),
        );
    return Variables$Mutation$SaveWeighbridgeConfiguration._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DocumentOfWeighbridgeConfigurationInput get input =>
      (_$data['input'] as Input$DocumentOfWeighbridgeConfigurationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveWeighbridgeConfiguration<
    Variables$Mutation$SaveWeighbridgeConfiguration
  >
  get copyWith =>
      CopyWith$Variables$Mutation$SaveWeighbridgeConfiguration(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveWeighbridgeConfiguration ||
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

abstract class CopyWith$Variables$Mutation$SaveWeighbridgeConfiguration<TRes> {
  factory CopyWith$Variables$Mutation$SaveWeighbridgeConfiguration(
    Variables$Mutation$SaveWeighbridgeConfiguration instance,
    TRes Function(Variables$Mutation$SaveWeighbridgeConfiguration) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveWeighbridgeConfiguration;

  factory CopyWith$Variables$Mutation$SaveWeighbridgeConfiguration.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$SaveWeighbridgeConfiguration;

  TRes call({Input$DocumentOfWeighbridgeConfigurationInput? input});
}

class _CopyWithImpl$Variables$Mutation$SaveWeighbridgeConfiguration<TRes>
    implements CopyWith$Variables$Mutation$SaveWeighbridgeConfiguration<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveWeighbridgeConfiguration(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveWeighbridgeConfiguration _instance;

  final TRes Function(Variables$Mutation$SaveWeighbridgeConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$SaveWeighbridgeConfiguration._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$DocumentOfWeighbridgeConfigurationInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SaveWeighbridgeConfiguration<TRes>
    implements CopyWith$Variables$Mutation$SaveWeighbridgeConfiguration<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveWeighbridgeConfiguration(this._res);

  TRes _res;

  call({Input$DocumentOfWeighbridgeConfigurationInput? input}) => _res;
}

class Mutation$SaveWeighbridgeConfiguration {
  Mutation$SaveWeighbridgeConfiguration({
    required this.saveWeighbridgeConfigurationDocument,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveWeighbridgeConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$saveWeighbridgeConfigurationDocument =
        json['saveWeighbridgeConfigurationDocument'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveWeighbridgeConfiguration(
      saveWeighbridgeConfigurationDocument:
          Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument.fromJson(
            (l$saveWeighbridgeConfigurationDocument as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument
  saveWeighbridgeConfigurationDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveWeighbridgeConfigurationDocument =
        saveWeighbridgeConfigurationDocument;
    _resultData['saveWeighbridgeConfigurationDocument'] =
        l$saveWeighbridgeConfigurationDocument.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveWeighbridgeConfigurationDocument =
        saveWeighbridgeConfigurationDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$saveWeighbridgeConfigurationDocument,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveWeighbridgeConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveWeighbridgeConfigurationDocument =
        saveWeighbridgeConfigurationDocument;
    final lOther$saveWeighbridgeConfigurationDocument =
        other.saveWeighbridgeConfigurationDocument;
    if (l$saveWeighbridgeConfigurationDocument !=
        lOther$saveWeighbridgeConfigurationDocument) {
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

extension UtilityExtension$Mutation$SaveWeighbridgeConfiguration
    on Mutation$SaveWeighbridgeConfiguration {
  CopyWith$Mutation$SaveWeighbridgeConfiguration<
    Mutation$SaveWeighbridgeConfiguration
  >
  get copyWith =>
      CopyWith$Mutation$SaveWeighbridgeConfiguration(this, (i) => i);
}

abstract class CopyWith$Mutation$SaveWeighbridgeConfiguration<TRes> {
  factory CopyWith$Mutation$SaveWeighbridgeConfiguration(
    Mutation$SaveWeighbridgeConfiguration instance,
    TRes Function(Mutation$SaveWeighbridgeConfiguration) then,
  ) = _CopyWithImpl$Mutation$SaveWeighbridgeConfiguration;

  factory CopyWith$Mutation$SaveWeighbridgeConfiguration.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveWeighbridgeConfiguration;

  TRes call({
    Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument?
    saveWeighbridgeConfigurationDocument,
    String? $__typename,
  });
  CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument<
    TRes
  >
  get saveWeighbridgeConfigurationDocument;
}

class _CopyWithImpl$Mutation$SaveWeighbridgeConfiguration<TRes>
    implements CopyWith$Mutation$SaveWeighbridgeConfiguration<TRes> {
  _CopyWithImpl$Mutation$SaveWeighbridgeConfiguration(
    this._instance,
    this._then,
  );

  final Mutation$SaveWeighbridgeConfiguration _instance;

  final TRes Function(Mutation$SaveWeighbridgeConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveWeighbridgeConfigurationDocument = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveWeighbridgeConfiguration(
      saveWeighbridgeConfigurationDocument:
          saveWeighbridgeConfigurationDocument == _undefined ||
              saveWeighbridgeConfigurationDocument == null
          ? _instance.saveWeighbridgeConfigurationDocument
          : (saveWeighbridgeConfigurationDocument
                as Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument<
    TRes
  >
  get saveWeighbridgeConfigurationDocument {
    final local$saveWeighbridgeConfigurationDocument =
        _instance.saveWeighbridgeConfigurationDocument;
    return CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument(
      local$saveWeighbridgeConfigurationDocument,
      (e) => call(saveWeighbridgeConfigurationDocument: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveWeighbridgeConfiguration<TRes>
    implements CopyWith$Mutation$SaveWeighbridgeConfiguration<TRes> {
  _CopyWithStubImpl$Mutation$SaveWeighbridgeConfiguration(this._res);

  TRes _res;

  call({
    Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument?
    saveWeighbridgeConfigurationDocument,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument<
    TRes
  >
  get saveWeighbridgeConfigurationDocument =>
      CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument.stub(
        _res,
      );
}

const documentNodeMutationSaveWeighbridgeConfiguration = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SaveWeighbridgeConfiguration'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'DocumentOfWeighbridgeConfigurationInput'),
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
            name: NameNode(value: 'saveWeighbridgeConfigurationDocument'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'changeVector'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'entity'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(
                          value: 'WeighbridgeConfigurationFragment',
                        ),
                        directives: [],
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
    fragmentDefinitionWeighbridgeConfigurationFragment,
  ],
);

class Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument {
  Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument({
    required this.changeVector,
    required this.entity,
    this.$__typename = 'DocumentOfWeighbridgeConfiguration',
  });

  factory Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$entity = json['entity'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument(
      changeVector: (l$changeVector as String),
      entity: Fragment$WeighbridgeConfigurationFragment.fromJson(
        (l$entity as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Fragment$WeighbridgeConfigurationFragment entity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeVector = changeVector;
    _resultData['changeVector'] = l$changeVector;
    final l$entity = entity;
    _resultData['entity'] = l$entity.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeVector = changeVector;
    final l$entity = entity;
    final l$$__typename = $__typename;
    return Object.hashAll([l$changeVector, l$entity, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeVector = changeVector;
    final lOther$changeVector = other.changeVector;
    if (l$changeVector != lOther$changeVector) {
      return false;
    }
    final l$entity = entity;
    final lOther$entity = other.entity;
    if (l$entity != lOther$entity) {
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

extension UtilityExtension$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument
    on Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument {
  CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument<
    Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument
  >
  get copyWith =>
      CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument<
  TRes
> {
  factory CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument(
    Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument
    instance,
    TRes Function(
      Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument,
    )
    then,
  ) = _CopyWithImpl$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument;

  factory CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument;

  TRes call({
    String? changeVector,
    Fragment$WeighbridgeConfigurationFragment? entity,
    String? $__typename,
  });
  CopyWith$Fragment$WeighbridgeConfigurationFragment<TRes> get entity;
}

class _CopyWithImpl$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument<
  TRes
>
    implements
        CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument<
          TRes
        > {
  _CopyWithImpl$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument(
    this._instance,
    this._then,
  );

  final Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument
  _instance;

  final TRes Function(
    Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? entity = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      entity: entity == _undefined || entity == null
          ? _instance.entity
          : (entity as Fragment$WeighbridgeConfigurationFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$WeighbridgeConfigurationFragment<TRes> get entity {
    final local$entity = _instance.entity;
    return CopyWith$Fragment$WeighbridgeConfigurationFragment(
      local$entity,
      (e) => call(entity: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument<
  TRes
>
    implements
        CopyWith$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SaveWeighbridgeConfiguration$saveWeighbridgeConfigurationDocument(
    this._res,
  );

  TRes _res;

  call({
    String? changeVector,
    Fragment$WeighbridgeConfigurationFragment? entity,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$WeighbridgeConfigurationFragment<TRes> get entity =>
      CopyWith$Fragment$WeighbridgeConfigurationFragment.stub(_res);
}
