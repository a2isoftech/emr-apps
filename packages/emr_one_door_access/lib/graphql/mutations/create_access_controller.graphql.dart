import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateAccessController {
  factory Variables$Mutation$CreateAccessController({
    required Input$CreateAccessControllerInput input,
  }) => Variables$Mutation$CreateAccessController._({r'input': input});

  Variables$Mutation$CreateAccessController._(this._$data);

  factory Variables$Mutation$CreateAccessController.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateAccessControllerInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateAccessController._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateAccessControllerInput get input =>
      (_$data['input'] as Input$CreateAccessControllerInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateAccessController<
    Variables$Mutation$CreateAccessController
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateAccessController(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateAccessController ||
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

abstract class CopyWith$Variables$Mutation$CreateAccessController<TRes> {
  factory CopyWith$Variables$Mutation$CreateAccessController(
    Variables$Mutation$CreateAccessController instance,
    TRes Function(Variables$Mutation$CreateAccessController) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateAccessController;

  factory CopyWith$Variables$Mutation$CreateAccessController.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateAccessController;

  TRes call({Input$CreateAccessControllerInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateAccessController<TRes>
    implements CopyWith$Variables$Mutation$CreateAccessController<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateAccessController(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateAccessController _instance;

  final TRes Function(Variables$Mutation$CreateAccessController) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateAccessController._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateAccessControllerInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateAccessController<TRes>
    implements CopyWith$Variables$Mutation$CreateAccessController<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateAccessController(this._res);

  TRes _res;

  call({Input$CreateAccessControllerInput? input}) => _res;
}

class Mutation$CreateAccessController {
  Mutation$CreateAccessController({
    required this.createAccessController,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateAccessController.fromJson(Map<String, dynamic> json) {
    final l$createAccessController = json['createAccessController'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAccessController(
      createAccessController: (l$createAccessController as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool createAccessController;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createAccessController = createAccessController;
    _resultData['createAccessController'] = l$createAccessController;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createAccessController = createAccessController;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createAccessController, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateAccessController ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createAccessController = createAccessController;
    final lOther$createAccessController = other.createAccessController;
    if (l$createAccessController != lOther$createAccessController) {
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

extension UtilityExtension$Mutation$CreateAccessController
    on Mutation$CreateAccessController {
  CopyWith$Mutation$CreateAccessController<Mutation$CreateAccessController>
  get copyWith => CopyWith$Mutation$CreateAccessController(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateAccessController<TRes> {
  factory CopyWith$Mutation$CreateAccessController(
    Mutation$CreateAccessController instance,
    TRes Function(Mutation$CreateAccessController) then,
  ) = _CopyWithImpl$Mutation$CreateAccessController;

  factory CopyWith$Mutation$CreateAccessController.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateAccessController;

  TRes call({bool? createAccessController, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateAccessController<TRes>
    implements CopyWith$Mutation$CreateAccessController<TRes> {
  _CopyWithImpl$Mutation$CreateAccessController(this._instance, this._then);

  final Mutation$CreateAccessController _instance;

  final TRes Function(Mutation$CreateAccessController) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createAccessController = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateAccessController(
      createAccessController:
          createAccessController == _undefined || createAccessController == null
          ? _instance.createAccessController
          : (createAccessController as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateAccessController<TRes>
    implements CopyWith$Mutation$CreateAccessController<TRes> {
  _CopyWithStubImpl$Mutation$CreateAccessController(this._res);

  TRes _res;

  call({bool? createAccessController, String? $__typename}) => _res;
}

const documentNodeMutationCreateAccessController = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateAccessController'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateAccessControllerInput'),
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
            name: NameNode(value: 'createAccessController'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
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
