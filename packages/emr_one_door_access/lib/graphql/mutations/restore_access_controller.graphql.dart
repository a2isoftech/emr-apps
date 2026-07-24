import 'package:gql/ast.dart';

class Variables$Mutation$RestoreAccessController {
  factory Variables$Mutation$RestoreAccessController({
    required String accessControllerId,
  }) => Variables$Mutation$RestoreAccessController._({
    r'accessControllerId': accessControllerId,
  });

  Variables$Mutation$RestoreAccessController._(this._$data);

  factory Variables$Mutation$RestoreAccessController.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = data['accessControllerId'];
    result$data['accessControllerId'] = (l$accessControllerId as String);
    return Variables$Mutation$RestoreAccessController._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessControllerId => (_$data['accessControllerId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = accessControllerId;
    result$data['accessControllerId'] = l$accessControllerId;
    return result$data;
  }

  CopyWith$Variables$Mutation$RestoreAccessController<
    Variables$Mutation$RestoreAccessController
  >
  get copyWith =>
      CopyWith$Variables$Mutation$RestoreAccessController(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RestoreAccessController ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessControllerId = accessControllerId;
    return Object.hashAll([l$accessControllerId]);
  }
}

abstract class CopyWith$Variables$Mutation$RestoreAccessController<TRes> {
  factory CopyWith$Variables$Mutation$RestoreAccessController(
    Variables$Mutation$RestoreAccessController instance,
    TRes Function(Variables$Mutation$RestoreAccessController) then,
  ) = _CopyWithImpl$Variables$Mutation$RestoreAccessController;

  factory CopyWith$Variables$Mutation$RestoreAccessController.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RestoreAccessController;

  TRes call({String? accessControllerId});
}

class _CopyWithImpl$Variables$Mutation$RestoreAccessController<TRes>
    implements CopyWith$Variables$Mutation$RestoreAccessController<TRes> {
  _CopyWithImpl$Variables$Mutation$RestoreAccessController(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RestoreAccessController _instance;

  final TRes Function(Variables$Mutation$RestoreAccessController) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accessControllerId = _undefined}) => _then(
    Variables$Mutation$RestoreAccessController._({
      ..._instance._$data,
      if (accessControllerId != _undefined && accessControllerId != null)
        'accessControllerId': (accessControllerId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$RestoreAccessController<TRes>
    implements CopyWith$Variables$Mutation$RestoreAccessController<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RestoreAccessController(this._res);

  TRes _res;

  call({String? accessControllerId}) => _res;
}

class Mutation$RestoreAccessController {
  Mutation$RestoreAccessController({
    required this.restoreAccessController,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RestoreAccessController.fromJson(Map<String, dynamic> json) {
    final l$restoreAccessController = json['restoreAccessController'];
    final l$$__typename = json['__typename'];
    return Mutation$RestoreAccessController(
      restoreAccessController: (l$restoreAccessController as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool restoreAccessController;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$restoreAccessController = restoreAccessController;
    _resultData['restoreAccessController'] = l$restoreAccessController;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$restoreAccessController = restoreAccessController;
    final l$$__typename = $__typename;
    return Object.hashAll([l$restoreAccessController, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RestoreAccessController ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$restoreAccessController = restoreAccessController;
    final lOther$restoreAccessController = other.restoreAccessController;
    if (l$restoreAccessController != lOther$restoreAccessController) {
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

extension UtilityExtension$Mutation$RestoreAccessController
    on Mutation$RestoreAccessController {
  CopyWith$Mutation$RestoreAccessController<Mutation$RestoreAccessController>
  get copyWith => CopyWith$Mutation$RestoreAccessController(this, (i) => i);
}

abstract class CopyWith$Mutation$RestoreAccessController<TRes> {
  factory CopyWith$Mutation$RestoreAccessController(
    Mutation$RestoreAccessController instance,
    TRes Function(Mutation$RestoreAccessController) then,
  ) = _CopyWithImpl$Mutation$RestoreAccessController;

  factory CopyWith$Mutation$RestoreAccessController.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RestoreAccessController;

  TRes call({bool? restoreAccessController, String? $__typename});
}

class _CopyWithImpl$Mutation$RestoreAccessController<TRes>
    implements CopyWith$Mutation$RestoreAccessController<TRes> {
  _CopyWithImpl$Mutation$RestoreAccessController(this._instance, this._then);

  final Mutation$RestoreAccessController _instance;

  final TRes Function(Mutation$RestoreAccessController) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? restoreAccessController = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$RestoreAccessController(
      restoreAccessController:
          restoreAccessController == _undefined ||
              restoreAccessController == null
          ? _instance.restoreAccessController
          : (restoreAccessController as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$RestoreAccessController<TRes>
    implements CopyWith$Mutation$RestoreAccessController<TRes> {
  _CopyWithStubImpl$Mutation$RestoreAccessController(this._res);

  TRes _res;

  call({bool? restoreAccessController, String? $__typename}) => _res;
}

const documentNodeMutationRestoreAccessController = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RestoreAccessController'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accessControllerId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'restoreAccessController'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accessControllerId'),
                value: VariableNode(
                  name: NameNode(value: 'accessControllerId'),
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
