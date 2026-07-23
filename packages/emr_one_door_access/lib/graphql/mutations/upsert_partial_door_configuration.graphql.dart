import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpsertPartialDoorConfiguration {
  factory Variables$Mutation$UpsertPartialDoorConfiguration({
    required List<Input$UpsertPartialDoorConfigurationInput>
    upsertDoorConfigurations,
  }) => Variables$Mutation$UpsertPartialDoorConfiguration._({
    r'upsertDoorConfigurations': upsertDoorConfigurations,
  });

  Variables$Mutation$UpsertPartialDoorConfiguration._(this._$data);

  factory Variables$Mutation$UpsertPartialDoorConfiguration.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$upsertDoorConfigurations = data['upsertDoorConfigurations'];
    result$data['upsertDoorConfigurations'] =
        (l$upsertDoorConfigurations as List<dynamic>)
            .map(
              (e) => Input$UpsertPartialDoorConfigurationInput.fromJson(
                (e as Map<String, dynamic>),
              ),
            )
            .toList();
    return Variables$Mutation$UpsertPartialDoorConfiguration._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$UpsertPartialDoorConfigurationInput>
  get upsertDoorConfigurations =>
      (_$data['upsertDoorConfigurations']
          as List<Input$UpsertPartialDoorConfigurationInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$upsertDoorConfigurations = upsertDoorConfigurations;
    result$data['upsertDoorConfigurations'] = l$upsertDoorConfigurations
        .map((e) => e.toJson())
        .toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpsertPartialDoorConfiguration<
    Variables$Mutation$UpsertPartialDoorConfiguration
  >
  get copyWith => CopyWith$Variables$Mutation$UpsertPartialDoorConfiguration(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpsertPartialDoorConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$upsertDoorConfigurations = upsertDoorConfigurations;
    final lOther$upsertDoorConfigurations = other.upsertDoorConfigurations;
    if (l$upsertDoorConfigurations.length !=
        lOther$upsertDoorConfigurations.length) {
      return false;
    }
    for (int i = 0; i < l$upsertDoorConfigurations.length; i++) {
      final l$upsertDoorConfigurations$entry = l$upsertDoorConfigurations[i];
      final lOther$upsertDoorConfigurations$entry =
          lOther$upsertDoorConfigurations[i];
      if (l$upsertDoorConfigurations$entry !=
          lOther$upsertDoorConfigurations$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$upsertDoorConfigurations = upsertDoorConfigurations;
    return Object.hashAll([
      Object.hashAll(l$upsertDoorConfigurations.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpsertPartialDoorConfiguration<
  TRes
> {
  factory CopyWith$Variables$Mutation$UpsertPartialDoorConfiguration(
    Variables$Mutation$UpsertPartialDoorConfiguration instance,
    TRes Function(Variables$Mutation$UpsertPartialDoorConfiguration) then,
  ) = _CopyWithImpl$Variables$Mutation$UpsertPartialDoorConfiguration;

  factory CopyWith$Variables$Mutation$UpsertPartialDoorConfiguration.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UpsertPartialDoorConfiguration;

  TRes call({
    List<Input$UpsertPartialDoorConfigurationInput>? upsertDoorConfigurations,
  });
}

class _CopyWithImpl$Variables$Mutation$UpsertPartialDoorConfiguration<TRes>
    implements
        CopyWith$Variables$Mutation$UpsertPartialDoorConfiguration<TRes> {
  _CopyWithImpl$Variables$Mutation$UpsertPartialDoorConfiguration(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpsertPartialDoorConfiguration _instance;

  final TRes Function(Variables$Mutation$UpsertPartialDoorConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? upsertDoorConfigurations = _undefined}) => _then(
    Variables$Mutation$UpsertPartialDoorConfiguration._({
      ..._instance._$data,
      if (upsertDoorConfigurations != _undefined &&
          upsertDoorConfigurations != null)
        'upsertDoorConfigurations':
            (upsertDoorConfigurations
                as List<Input$UpsertPartialDoorConfigurationInput>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpsertPartialDoorConfiguration<TRes>
    implements
        CopyWith$Variables$Mutation$UpsertPartialDoorConfiguration<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpsertPartialDoorConfiguration(
    this._res,
  );

  TRes _res;

  call({
    List<Input$UpsertPartialDoorConfigurationInput>? upsertDoorConfigurations,
  }) => _res;
}

class Mutation$UpsertPartialDoorConfiguration {
  Mutation$UpsertPartialDoorConfiguration({
    required this.upsertPartialDoorConfiguration,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpsertPartialDoorConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$upsertPartialDoorConfiguration =
        json['upsertPartialDoorConfiguration'];
    final l$$__typename = json['__typename'];
    return Mutation$UpsertPartialDoorConfiguration(
      upsertPartialDoorConfiguration:
          (l$upsertPartialDoorConfiguration as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool upsertPartialDoorConfiguration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$upsertPartialDoorConfiguration = upsertPartialDoorConfiguration;
    _resultData['upsertPartialDoorConfiguration'] =
        l$upsertPartialDoorConfiguration;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$upsertPartialDoorConfiguration = upsertPartialDoorConfiguration;
    final l$$__typename = $__typename;
    return Object.hashAll([l$upsertPartialDoorConfiguration, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpsertPartialDoorConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$upsertPartialDoorConfiguration = upsertPartialDoorConfiguration;
    final lOther$upsertPartialDoorConfiguration =
        other.upsertPartialDoorConfiguration;
    if (l$upsertPartialDoorConfiguration !=
        lOther$upsertPartialDoorConfiguration) {
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

extension UtilityExtension$Mutation$UpsertPartialDoorConfiguration
    on Mutation$UpsertPartialDoorConfiguration {
  CopyWith$Mutation$UpsertPartialDoorConfiguration<
    Mutation$UpsertPartialDoorConfiguration
  >
  get copyWith =>
      CopyWith$Mutation$UpsertPartialDoorConfiguration(this, (i) => i);
}

abstract class CopyWith$Mutation$UpsertPartialDoorConfiguration<TRes> {
  factory CopyWith$Mutation$UpsertPartialDoorConfiguration(
    Mutation$UpsertPartialDoorConfiguration instance,
    TRes Function(Mutation$UpsertPartialDoorConfiguration) then,
  ) = _CopyWithImpl$Mutation$UpsertPartialDoorConfiguration;

  factory CopyWith$Mutation$UpsertPartialDoorConfiguration.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpsertPartialDoorConfiguration;

  TRes call({bool? upsertPartialDoorConfiguration, String? $__typename});
}

class _CopyWithImpl$Mutation$UpsertPartialDoorConfiguration<TRes>
    implements CopyWith$Mutation$UpsertPartialDoorConfiguration<TRes> {
  _CopyWithImpl$Mutation$UpsertPartialDoorConfiguration(
    this._instance,
    this._then,
  );

  final Mutation$UpsertPartialDoorConfiguration _instance;

  final TRes Function(Mutation$UpsertPartialDoorConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? upsertPartialDoorConfiguration = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpsertPartialDoorConfiguration(
      upsertPartialDoorConfiguration:
          upsertPartialDoorConfiguration == _undefined ||
              upsertPartialDoorConfiguration == null
          ? _instance.upsertPartialDoorConfiguration
          : (upsertPartialDoorConfiguration as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpsertPartialDoorConfiguration<TRes>
    implements CopyWith$Mutation$UpsertPartialDoorConfiguration<TRes> {
  _CopyWithStubImpl$Mutation$UpsertPartialDoorConfiguration(this._res);

  TRes _res;

  call({bool? upsertPartialDoorConfiguration, String? $__typename}) => _res;
}

const documentNodeMutationUpsertPartialDoorConfiguration = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpsertPartialDoorConfiguration'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'upsertDoorConfigurations'),
          ),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'UpsertPartialDoorConfigurationInput'),
              isNonNull: true,
            ),
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
            name: NameNode(value: 'upsertPartialDoorConfiguration'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'upsertDoorConfigurations'),
                value: VariableNode(
                  name: NameNode(value: 'upsertDoorConfigurations'),
                ),
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
