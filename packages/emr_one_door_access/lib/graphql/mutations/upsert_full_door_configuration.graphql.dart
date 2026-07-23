import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpsertFullDoorConfiguration {
  factory Variables$Mutation$UpsertFullDoorConfiguration({
    required Input$UpsertFullDoorConfigurationInput upsertDoorConfiguration,
  }) => Variables$Mutation$UpsertFullDoorConfiguration._({
    r'upsertDoorConfiguration': upsertDoorConfiguration,
  });

  Variables$Mutation$UpsertFullDoorConfiguration._(this._$data);

  factory Variables$Mutation$UpsertFullDoorConfiguration.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$upsertDoorConfiguration = data['upsertDoorConfiguration'];
    result$data['upsertDoorConfiguration'] =
        Input$UpsertFullDoorConfigurationInput.fromJson(
          (l$upsertDoorConfiguration as Map<String, dynamic>),
        );
    return Variables$Mutation$UpsertFullDoorConfiguration._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpsertFullDoorConfigurationInput get upsertDoorConfiguration =>
      (_$data['upsertDoorConfiguration']
          as Input$UpsertFullDoorConfigurationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$upsertDoorConfiguration = upsertDoorConfiguration;
    result$data['upsertDoorConfiguration'] = l$upsertDoorConfiguration.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpsertFullDoorConfiguration<
    Variables$Mutation$UpsertFullDoorConfiguration
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpsertFullDoorConfiguration(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpsertFullDoorConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$upsertDoorConfiguration = upsertDoorConfiguration;
    final lOther$upsertDoorConfiguration = other.upsertDoorConfiguration;
    if (l$upsertDoorConfiguration != lOther$upsertDoorConfiguration) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$upsertDoorConfiguration = upsertDoorConfiguration;
    return Object.hashAll([l$upsertDoorConfiguration]);
  }
}

abstract class CopyWith$Variables$Mutation$UpsertFullDoorConfiguration<TRes> {
  factory CopyWith$Variables$Mutation$UpsertFullDoorConfiguration(
    Variables$Mutation$UpsertFullDoorConfiguration instance,
    TRes Function(Variables$Mutation$UpsertFullDoorConfiguration) then,
  ) = _CopyWithImpl$Variables$Mutation$UpsertFullDoorConfiguration;

  factory CopyWith$Variables$Mutation$UpsertFullDoorConfiguration.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UpsertFullDoorConfiguration;

  TRes call({Input$UpsertFullDoorConfigurationInput? upsertDoorConfiguration});
}

class _CopyWithImpl$Variables$Mutation$UpsertFullDoorConfiguration<TRes>
    implements CopyWith$Variables$Mutation$UpsertFullDoorConfiguration<TRes> {
  _CopyWithImpl$Variables$Mutation$UpsertFullDoorConfiguration(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpsertFullDoorConfiguration _instance;

  final TRes Function(Variables$Mutation$UpsertFullDoorConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? upsertDoorConfiguration = _undefined}) => _then(
    Variables$Mutation$UpsertFullDoorConfiguration._({
      ..._instance._$data,
      if (upsertDoorConfiguration != _undefined &&
          upsertDoorConfiguration != null)
        'upsertDoorConfiguration':
            (upsertDoorConfiguration as Input$UpsertFullDoorConfigurationInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpsertFullDoorConfiguration<TRes>
    implements CopyWith$Variables$Mutation$UpsertFullDoorConfiguration<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpsertFullDoorConfiguration(this._res);

  TRes _res;

  call({Input$UpsertFullDoorConfigurationInput? upsertDoorConfiguration}) =>
      _res;
}

class Mutation$UpsertFullDoorConfiguration {
  Mutation$UpsertFullDoorConfiguration({
    required this.upsertFullDoorConfiguration,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpsertFullDoorConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$upsertFullDoorConfiguration = json['upsertFullDoorConfiguration'];
    final l$$__typename = json['__typename'];
    return Mutation$UpsertFullDoorConfiguration(
      upsertFullDoorConfiguration: (l$upsertFullDoorConfiguration as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool upsertFullDoorConfiguration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$upsertFullDoorConfiguration = upsertFullDoorConfiguration;
    _resultData['upsertFullDoorConfiguration'] = l$upsertFullDoorConfiguration;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$upsertFullDoorConfiguration = upsertFullDoorConfiguration;
    final l$$__typename = $__typename;
    return Object.hashAll([l$upsertFullDoorConfiguration, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpsertFullDoorConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$upsertFullDoorConfiguration = upsertFullDoorConfiguration;
    final lOther$upsertFullDoorConfiguration =
        other.upsertFullDoorConfiguration;
    if (l$upsertFullDoorConfiguration != lOther$upsertFullDoorConfiguration) {
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

extension UtilityExtension$Mutation$UpsertFullDoorConfiguration
    on Mutation$UpsertFullDoorConfiguration {
  CopyWith$Mutation$UpsertFullDoorConfiguration<
    Mutation$UpsertFullDoorConfiguration
  >
  get copyWith => CopyWith$Mutation$UpsertFullDoorConfiguration(this, (i) => i);
}

abstract class CopyWith$Mutation$UpsertFullDoorConfiguration<TRes> {
  factory CopyWith$Mutation$UpsertFullDoorConfiguration(
    Mutation$UpsertFullDoorConfiguration instance,
    TRes Function(Mutation$UpsertFullDoorConfiguration) then,
  ) = _CopyWithImpl$Mutation$UpsertFullDoorConfiguration;

  factory CopyWith$Mutation$UpsertFullDoorConfiguration.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpsertFullDoorConfiguration;

  TRes call({bool? upsertFullDoorConfiguration, String? $__typename});
}

class _CopyWithImpl$Mutation$UpsertFullDoorConfiguration<TRes>
    implements CopyWith$Mutation$UpsertFullDoorConfiguration<TRes> {
  _CopyWithImpl$Mutation$UpsertFullDoorConfiguration(
    this._instance,
    this._then,
  );

  final Mutation$UpsertFullDoorConfiguration _instance;

  final TRes Function(Mutation$UpsertFullDoorConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? upsertFullDoorConfiguration = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpsertFullDoorConfiguration(
      upsertFullDoorConfiguration:
          upsertFullDoorConfiguration == _undefined ||
              upsertFullDoorConfiguration == null
          ? _instance.upsertFullDoorConfiguration
          : (upsertFullDoorConfiguration as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpsertFullDoorConfiguration<TRes>
    implements CopyWith$Mutation$UpsertFullDoorConfiguration<TRes> {
  _CopyWithStubImpl$Mutation$UpsertFullDoorConfiguration(this._res);

  TRes _res;

  call({bool? upsertFullDoorConfiguration, String? $__typename}) => _res;
}

const documentNodeMutationUpsertFullDoorConfiguration = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpsertFullDoorConfiguration'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'upsertDoorConfiguration'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'UpsertFullDoorConfigurationInput'),
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
            name: NameNode(value: 'upsertFullDoorConfiguration'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'upsertDoorConfiguration'),
                value: VariableNode(
                  name: NameNode(value: 'upsertDoorConfiguration'),
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
