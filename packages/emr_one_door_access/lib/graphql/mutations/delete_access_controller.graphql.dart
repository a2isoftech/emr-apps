import 'package:gql/ast.dart';

class Variables$Mutation$DeleteAccessController {
  factory Variables$Mutation$DeleteAccessController({
    required String accessControllerId,
  }) => Variables$Mutation$DeleteAccessController._({
    r'accessControllerId': accessControllerId,
  });

  Variables$Mutation$DeleteAccessController._(this._$data);

  factory Variables$Mutation$DeleteAccessController.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = data['accessControllerId'];
    result$data['accessControllerId'] = (l$accessControllerId as String);
    return Variables$Mutation$DeleteAccessController._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessControllerId => (_$data['accessControllerId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = accessControllerId;
    result$data['accessControllerId'] = l$accessControllerId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteAccessController<
    Variables$Mutation$DeleteAccessController
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeleteAccessController(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteAccessController ||
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

abstract class CopyWith$Variables$Mutation$DeleteAccessController<TRes> {
  factory CopyWith$Variables$Mutation$DeleteAccessController(
    Variables$Mutation$DeleteAccessController instance,
    TRes Function(Variables$Mutation$DeleteAccessController) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteAccessController;

  factory CopyWith$Variables$Mutation$DeleteAccessController.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteAccessController;

  TRes call({String? accessControllerId});
}

class _CopyWithImpl$Variables$Mutation$DeleteAccessController<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccessController<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteAccessController(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteAccessController _instance;

  final TRes Function(Variables$Mutation$DeleteAccessController) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accessControllerId = _undefined}) => _then(
    Variables$Mutation$DeleteAccessController._({
      ..._instance._$data,
      if (accessControllerId != _undefined && accessControllerId != null)
        'accessControllerId': (accessControllerId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteAccessController<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccessController<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteAccessController(this._res);

  TRes _res;

  call({String? accessControllerId}) => _res;
}

class Mutation$DeleteAccessController {
  Mutation$DeleteAccessController({
    required this.deleteAccessController,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAccessController.fromJson(Map<String, dynamic> json) {
    final l$deleteAccessController = json['deleteAccessController'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccessController(
      deleteAccessController: (l$deleteAccessController as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteAccessController;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAccessController = deleteAccessController;
    _resultData['deleteAccessController'] = l$deleteAccessController;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAccessController = deleteAccessController;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteAccessController, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteAccessController ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAccessController = deleteAccessController;
    final lOther$deleteAccessController = other.deleteAccessController;
    if (l$deleteAccessController != lOther$deleteAccessController) {
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

extension UtilityExtension$Mutation$DeleteAccessController
    on Mutation$DeleteAccessController {
  CopyWith$Mutation$DeleteAccessController<Mutation$DeleteAccessController>
  get copyWith => CopyWith$Mutation$DeleteAccessController(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteAccessController<TRes> {
  factory CopyWith$Mutation$DeleteAccessController(
    Mutation$DeleteAccessController instance,
    TRes Function(Mutation$DeleteAccessController) then,
  ) = _CopyWithImpl$Mutation$DeleteAccessController;

  factory CopyWith$Mutation$DeleteAccessController.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccessController;

  TRes call({bool? deleteAccessController, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccessController<TRes>
    implements CopyWith$Mutation$DeleteAccessController<TRes> {
  _CopyWithImpl$Mutation$DeleteAccessController(this._instance, this._then);

  final Mutation$DeleteAccessController _instance;

  final TRes Function(Mutation$DeleteAccessController) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAccessController = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccessController(
      deleteAccessController:
          deleteAccessController == _undefined || deleteAccessController == null
          ? _instance.deleteAccessController
          : (deleteAccessController as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccessController<TRes>
    implements CopyWith$Mutation$DeleteAccessController<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccessController(this._res);

  TRes _res;

  call({bool? deleteAccessController, String? $__typename}) => _res;
}

const documentNodeMutationDeleteAccessController = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteAccessController'),
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
            name: NameNode(value: 'deleteAccessController'),
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
