import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddWorkflowConfiguration {
  factory Variables$Mutation$AddWorkflowConfiguration({
    required Input$AddWorkflowConfigurationInput input,
  }) => Variables$Mutation$AddWorkflowConfiguration._({r'input': input});

  Variables$Mutation$AddWorkflowConfiguration._(this._$data);

  factory Variables$Mutation$AddWorkflowConfiguration.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AddWorkflowConfigurationInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddWorkflowConfiguration._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddWorkflowConfigurationInput get input =>
      (_$data['input'] as Input$AddWorkflowConfigurationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddWorkflowConfiguration<
    Variables$Mutation$AddWorkflowConfiguration
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddWorkflowConfiguration(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddWorkflowConfiguration ||
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

abstract class CopyWith$Variables$Mutation$AddWorkflowConfiguration<TRes> {
  factory CopyWith$Variables$Mutation$AddWorkflowConfiguration(
    Variables$Mutation$AddWorkflowConfiguration instance,
    TRes Function(Variables$Mutation$AddWorkflowConfiguration) then,
  ) = _CopyWithImpl$Variables$Mutation$AddWorkflowConfiguration;

  factory CopyWith$Variables$Mutation$AddWorkflowConfiguration.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddWorkflowConfiguration;

  TRes call({Input$AddWorkflowConfigurationInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddWorkflowConfiguration<TRes>
    implements CopyWith$Variables$Mutation$AddWorkflowConfiguration<TRes> {
  _CopyWithImpl$Variables$Mutation$AddWorkflowConfiguration(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddWorkflowConfiguration _instance;

  final TRes Function(Variables$Mutation$AddWorkflowConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddWorkflowConfiguration._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AddWorkflowConfigurationInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddWorkflowConfiguration<TRes>
    implements CopyWith$Variables$Mutation$AddWorkflowConfiguration<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddWorkflowConfiguration(this._res);

  TRes _res;

  call({Input$AddWorkflowConfigurationInput? input}) => _res;
}

class Mutation$AddWorkflowConfiguration {
  Mutation$AddWorkflowConfiguration({
    required this.addWorkflowConfiguration,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddWorkflowConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$addWorkflowConfiguration = json['addWorkflowConfiguration'];
    final l$$__typename = json['__typename'];
    return Mutation$AddWorkflowConfiguration(
      addWorkflowConfiguration: (l$addWorkflowConfiguration as List<dynamic>)
          .map(
            (e) =>
                Mutation$AddWorkflowConfiguration$addWorkflowConfiguration.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$AddWorkflowConfiguration$addWorkflowConfiguration>
  addWorkflowConfiguration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addWorkflowConfiguration = addWorkflowConfiguration;
    _resultData['addWorkflowConfiguration'] = l$addWorkflowConfiguration
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addWorkflowConfiguration = addWorkflowConfiguration;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$addWorkflowConfiguration.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddWorkflowConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addWorkflowConfiguration = addWorkflowConfiguration;
    final lOther$addWorkflowConfiguration = other.addWorkflowConfiguration;
    if (l$addWorkflowConfiguration.length !=
        lOther$addWorkflowConfiguration.length) {
      return false;
    }
    for (int i = 0; i < l$addWorkflowConfiguration.length; i++) {
      final l$addWorkflowConfiguration$entry = l$addWorkflowConfiguration[i];
      final lOther$addWorkflowConfiguration$entry =
          lOther$addWorkflowConfiguration[i];
      if (l$addWorkflowConfiguration$entry !=
          lOther$addWorkflowConfiguration$entry) {
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

extension UtilityExtension$Mutation$AddWorkflowConfiguration
    on Mutation$AddWorkflowConfiguration {
  CopyWith$Mutation$AddWorkflowConfiguration<Mutation$AddWorkflowConfiguration>
  get copyWith => CopyWith$Mutation$AddWorkflowConfiguration(this, (i) => i);
}

abstract class CopyWith$Mutation$AddWorkflowConfiguration<TRes> {
  factory CopyWith$Mutation$AddWorkflowConfiguration(
    Mutation$AddWorkflowConfiguration instance,
    TRes Function(Mutation$AddWorkflowConfiguration) then,
  ) = _CopyWithImpl$Mutation$AddWorkflowConfiguration;

  factory CopyWith$Mutation$AddWorkflowConfiguration.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddWorkflowConfiguration;

  TRes call({
    List<Mutation$AddWorkflowConfiguration$addWorkflowConfiguration>?
    addWorkflowConfiguration,
    String? $__typename,
  });
  TRes addWorkflowConfiguration(
    Iterable<Mutation$AddWorkflowConfiguration$addWorkflowConfiguration>
    Function(
      Iterable<
        CopyWith$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration<
          Mutation$AddWorkflowConfiguration$addWorkflowConfiguration
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$AddWorkflowConfiguration<TRes>
    implements CopyWith$Mutation$AddWorkflowConfiguration<TRes> {
  _CopyWithImpl$Mutation$AddWorkflowConfiguration(this._instance, this._then);

  final Mutation$AddWorkflowConfiguration _instance;

  final TRes Function(Mutation$AddWorkflowConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addWorkflowConfiguration = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddWorkflowConfiguration(
      addWorkflowConfiguration:
          addWorkflowConfiguration == _undefined ||
              addWorkflowConfiguration == null
          ? _instance.addWorkflowConfiguration
          : (addWorkflowConfiguration
                as List<
                  Mutation$AddWorkflowConfiguration$addWorkflowConfiguration
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes addWorkflowConfiguration(
    Iterable<Mutation$AddWorkflowConfiguration$addWorkflowConfiguration>
    Function(
      Iterable<
        CopyWith$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration<
          Mutation$AddWorkflowConfiguration$addWorkflowConfiguration
        >
      >,
    )
    _fn,
  ) => call(
    addWorkflowConfiguration: _fn(
      _instance.addWorkflowConfiguration.map(
        (e) =>
            CopyWith$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$AddWorkflowConfiguration<TRes>
    implements CopyWith$Mutation$AddWorkflowConfiguration<TRes> {
  _CopyWithStubImpl$Mutation$AddWorkflowConfiguration(this._res);

  TRes _res;

  call({
    List<Mutation$AddWorkflowConfiguration$addWorkflowConfiguration>?
    addWorkflowConfiguration,
    String? $__typename,
  }) => _res;

  addWorkflowConfiguration(_fn) => _res;
}

const documentNodeMutationAddWorkflowConfiguration = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddWorkflowConfiguration'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AddWorkflowConfigurationInput'),
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
            name: NameNode(value: 'addWorkflowConfiguration'),
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
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'value'),
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
  ],
);

class Mutation$AddWorkflowConfiguration$addWorkflowConfiguration {
  Mutation$AddWorkflowConfiguration$addWorkflowConfiguration({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfInt32AndString',
  });

  factory Mutation$AddWorkflowConfiguration$addWorkflowConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$AddWorkflowConfiguration$addWorkflowConfiguration(
      key: (l$key as int),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int key;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddWorkflowConfiguration$addWorkflowConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration
    on Mutation$AddWorkflowConfiguration$addWorkflowConfiguration {
  CopyWith$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration<
    Mutation$AddWorkflowConfiguration$addWorkflowConfiguration
  >
  get copyWith =>
      CopyWith$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration<
  TRes
> {
  factory CopyWith$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration(
    Mutation$AddWorkflowConfiguration$addWorkflowConfiguration instance,
    TRes Function(Mutation$AddWorkflowConfiguration$addWorkflowConfiguration)
    then,
  ) = _CopyWithImpl$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration;

  factory CopyWith$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration;

  TRes call({int? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration<
  TRes
>
    implements
        CopyWith$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration<
          TRes
        > {
  _CopyWithImpl$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration(
    this._instance,
    this._then,
  );

  final Mutation$AddWorkflowConfiguration$addWorkflowConfiguration _instance;

  final TRes Function(
    Mutation$AddWorkflowConfiguration$addWorkflowConfiguration,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddWorkflowConfiguration$addWorkflowConfiguration(
      key: key == _undefined || key == null ? _instance.key : (key as int),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration<
  TRes
>
    implements
        CopyWith$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddWorkflowConfiguration$addWorkflowConfiguration(
    this._res,
  );

  TRes _res;

  call({int? key, String? value, String? $__typename}) => _res;
}
