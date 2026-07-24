import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccessController {
  factory Variables$Mutation$UpdateAccessController({
    required Input$UpdateAccessControllerInput input,
  }) => Variables$Mutation$UpdateAccessController._({r'input': input});

  Variables$Mutation$UpdateAccessController._(this._$data);

  factory Variables$Mutation$UpdateAccessController.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateAccessControllerInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateAccessController._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateAccessControllerInput get input =>
      (_$data['input'] as Input$UpdateAccessControllerInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccessController<
    Variables$Mutation$UpdateAccessController
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateAccessController(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccessController ||
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

abstract class CopyWith$Variables$Mutation$UpdateAccessController<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccessController(
    Variables$Mutation$UpdateAccessController instance,
    TRes Function(Variables$Mutation$UpdateAccessController) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccessController;

  factory CopyWith$Variables$Mutation$UpdateAccessController.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccessController;

  TRes call({Input$UpdateAccessControllerInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccessController<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccessController<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccessController(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccessController _instance;

  final TRes Function(Variables$Mutation$UpdateAccessController) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateAccessController._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateAccessControllerInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccessController<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccessController<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccessController(this._res);

  TRes _res;

  call({Input$UpdateAccessControllerInput? input}) => _res;
}

class Mutation$UpdateAccessController {
  Mutation$UpdateAccessController({
    required this.updateAccessController,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccessController.fromJson(Map<String, dynamic> json) {
    final l$updateAccessController = json['updateAccessController'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccessController(
      updateAccessController:
          Mutation$UpdateAccessController$updateAccessController.fromJson(
            (l$updateAccessController as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccessController$updateAccessController
  updateAccessController;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccessController = updateAccessController;
    _resultData['updateAccessController'] = l$updateAccessController.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccessController = updateAccessController;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccessController, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccessController ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccessController = updateAccessController;
    final lOther$updateAccessController = other.updateAccessController;
    if (l$updateAccessController != lOther$updateAccessController) {
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

extension UtilityExtension$Mutation$UpdateAccessController
    on Mutation$UpdateAccessController {
  CopyWith$Mutation$UpdateAccessController<Mutation$UpdateAccessController>
  get copyWith => CopyWith$Mutation$UpdateAccessController(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccessController<TRes> {
  factory CopyWith$Mutation$UpdateAccessController(
    Mutation$UpdateAccessController instance,
    TRes Function(Mutation$UpdateAccessController) then,
  ) = _CopyWithImpl$Mutation$UpdateAccessController;

  factory CopyWith$Mutation$UpdateAccessController.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccessController;

  TRes call({
    Mutation$UpdateAccessController$updateAccessController?
    updateAccessController,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccessController$updateAccessController<TRes>
  get updateAccessController;
}

class _CopyWithImpl$Mutation$UpdateAccessController<TRes>
    implements CopyWith$Mutation$UpdateAccessController<TRes> {
  _CopyWithImpl$Mutation$UpdateAccessController(this._instance, this._then);

  final Mutation$UpdateAccessController _instance;

  final TRes Function(Mutation$UpdateAccessController) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccessController = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccessController(
      updateAccessController:
          updateAccessController == _undefined || updateAccessController == null
          ? _instance.updateAccessController
          : (updateAccessController
                as Mutation$UpdateAccessController$updateAccessController),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccessController$updateAccessController<TRes>
  get updateAccessController {
    final local$updateAccessController = _instance.updateAccessController;
    return CopyWith$Mutation$UpdateAccessController$updateAccessController(
      local$updateAccessController,
      (e) => call(updateAccessController: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccessController<TRes>
    implements CopyWith$Mutation$UpdateAccessController<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccessController(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccessController$updateAccessController?
    updateAccessController,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccessController$updateAccessController<TRes>
  get updateAccessController =>
      CopyWith$Mutation$UpdateAccessController$updateAccessController.stub(
        _res,
      );
}

const documentNodeMutationUpdateAccessController = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccessController'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateAccessControllerInput'),
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
            name: NameNode(value: 'updateAccessController'),
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'active'),
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

class Mutation$UpdateAccessController$updateAccessController {
  Mutation$UpdateAccessController$updateAccessController({
    required this.name,
    required this.id,
    required this.active,
    this.$__typename = 'AccessController',
  });

  factory Mutation$UpdateAccessController$updateAccessController.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccessController$updateAccessController(
      name: (l$name as String),
      id: (l$id as String),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String id;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$id, l$active, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccessController$updateAccessController ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Mutation$UpdateAccessController$updateAccessController
    on Mutation$UpdateAccessController$updateAccessController {
  CopyWith$Mutation$UpdateAccessController$updateAccessController<
    Mutation$UpdateAccessController$updateAccessController
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccessController$updateAccessController(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccessController$updateAccessController<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccessController$updateAccessController(
    Mutation$UpdateAccessController$updateAccessController instance,
    TRes Function(Mutation$UpdateAccessController$updateAccessController) then,
  ) = _CopyWithImpl$Mutation$UpdateAccessController$updateAccessController;

  factory CopyWith$Mutation$UpdateAccessController$updateAccessController.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccessController$updateAccessController;

  TRes call({String? name, String? id, bool? active, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccessController$updateAccessController<TRes>
    implements
        CopyWith$Mutation$UpdateAccessController$updateAccessController<TRes> {
  _CopyWithImpl$Mutation$UpdateAccessController$updateAccessController(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccessController$updateAccessController _instance;

  final TRes Function(Mutation$UpdateAccessController$updateAccessController)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccessController$updateAccessController(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccessController$updateAccessController<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccessController$updateAccessController<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccessController$updateAccessController(
    this._res,
  );

  TRes _res;

  call({String? name, String? id, bool? active, String? $__typename}) => _res;
}
