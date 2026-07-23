import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteLocationMedia {
  factory Variables$Mutation$DeleteLocationMedia({
    required Input$InventoryLocationMediaInput locationMediaInput,
  }) => Variables$Mutation$DeleteLocationMedia._({
    r'locationMediaInput': locationMediaInput,
  });

  Variables$Mutation$DeleteLocationMedia._(this._$data);

  factory Variables$Mutation$DeleteLocationMedia.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$locationMediaInput = data['locationMediaInput'];
    result$data['locationMediaInput'] =
        Input$InventoryLocationMediaInput.fromJson(
          (l$locationMediaInput as Map<String, dynamic>),
        );
    return Variables$Mutation$DeleteLocationMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$InventoryLocationMediaInput get locationMediaInput =>
      (_$data['locationMediaInput'] as Input$InventoryLocationMediaInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$locationMediaInput = locationMediaInput;
    result$data['locationMediaInput'] = l$locationMediaInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteLocationMedia<
    Variables$Mutation$DeleteLocationMedia
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeleteLocationMedia(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteLocationMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$locationMediaInput = locationMediaInput;
    final lOther$locationMediaInput = other.locationMediaInput;
    if (l$locationMediaInput != lOther$locationMediaInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$locationMediaInput = locationMediaInput;
    return Object.hashAll([l$locationMediaInput]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteLocationMedia<TRes> {
  factory CopyWith$Variables$Mutation$DeleteLocationMedia(
    Variables$Mutation$DeleteLocationMedia instance,
    TRes Function(Variables$Mutation$DeleteLocationMedia) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteLocationMedia;

  factory CopyWith$Variables$Mutation$DeleteLocationMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteLocationMedia;

  TRes call({Input$InventoryLocationMediaInput? locationMediaInput});
}

class _CopyWithImpl$Variables$Mutation$DeleteLocationMedia<TRes>
    implements CopyWith$Variables$Mutation$DeleteLocationMedia<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteLocationMedia(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteLocationMedia _instance;

  final TRes Function(Variables$Mutation$DeleteLocationMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? locationMediaInput = _undefined}) => _then(
    Variables$Mutation$DeleteLocationMedia._({
      ..._instance._$data,
      if (locationMediaInput != _undefined && locationMediaInput != null)
        'locationMediaInput':
            (locationMediaInput as Input$InventoryLocationMediaInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteLocationMedia<TRes>
    implements CopyWith$Variables$Mutation$DeleteLocationMedia<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteLocationMedia(this._res);

  TRes _res;

  call({Input$InventoryLocationMediaInput? locationMediaInput}) => _res;
}

class Mutation$DeleteLocationMedia {
  Mutation$DeleteLocationMedia({
    required this.deleteLocationMedia,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteLocationMedia.fromJson(Map<String, dynamic> json) {
    final l$deleteLocationMedia = json['deleteLocationMedia'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteLocationMedia(
      deleteLocationMedia:
          Mutation$DeleteLocationMedia$deleteLocationMedia.fromJson(
            (l$deleteLocationMedia as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteLocationMedia$deleteLocationMedia deleteLocationMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteLocationMedia = deleteLocationMedia;
    _resultData['deleteLocationMedia'] = l$deleteLocationMedia.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteLocationMedia = deleteLocationMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteLocationMedia, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteLocationMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteLocationMedia = deleteLocationMedia;
    final lOther$deleteLocationMedia = other.deleteLocationMedia;
    if (l$deleteLocationMedia != lOther$deleteLocationMedia) {
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

extension UtilityExtension$Mutation$DeleteLocationMedia
    on Mutation$DeleteLocationMedia {
  CopyWith$Mutation$DeleteLocationMedia<Mutation$DeleteLocationMedia>
  get copyWith => CopyWith$Mutation$DeleteLocationMedia(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteLocationMedia<TRes> {
  factory CopyWith$Mutation$DeleteLocationMedia(
    Mutation$DeleteLocationMedia instance,
    TRes Function(Mutation$DeleteLocationMedia) then,
  ) = _CopyWithImpl$Mutation$DeleteLocationMedia;

  factory CopyWith$Mutation$DeleteLocationMedia.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteLocationMedia;

  TRes call({
    Mutation$DeleteLocationMedia$deleteLocationMedia? deleteLocationMedia,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia<TRes>
  get deleteLocationMedia;
}

class _CopyWithImpl$Mutation$DeleteLocationMedia<TRes>
    implements CopyWith$Mutation$DeleteLocationMedia<TRes> {
  _CopyWithImpl$Mutation$DeleteLocationMedia(this._instance, this._then);

  final Mutation$DeleteLocationMedia _instance;

  final TRes Function(Mutation$DeleteLocationMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteLocationMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteLocationMedia(
      deleteLocationMedia:
          deleteLocationMedia == _undefined || deleteLocationMedia == null
          ? _instance.deleteLocationMedia
          : (deleteLocationMedia
                as Mutation$DeleteLocationMedia$deleteLocationMedia),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia<TRes>
  get deleteLocationMedia {
    final local$deleteLocationMedia = _instance.deleteLocationMedia;
    return CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia(
      local$deleteLocationMedia,
      (e) => call(deleteLocationMedia: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$DeleteLocationMedia<TRes>
    implements CopyWith$Mutation$DeleteLocationMedia<TRes> {
  _CopyWithStubImpl$Mutation$DeleteLocationMedia(this._res);

  TRes _res;

  call({
    Mutation$DeleteLocationMedia$deleteLocationMedia? deleteLocationMedia,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia<TRes>
  get deleteLocationMedia =>
      CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia.stub(_res);
}

const documentNodeMutationDeleteLocationMedia = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteLocationMedia'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'locationMediaInput')),
          type: NamedTypeNode(
            name: NameNode(value: 'InventoryLocationMediaInput'),
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
            name: NameNode(value: 'deleteLocationMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'locationMediaInput'),
                value: VariableNode(
                  name: NameNode(value: 'locationMediaInput'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
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

class Mutation$DeleteLocationMedia$deleteLocationMedia {
  Mutation$DeleteLocationMedia$deleteLocationMedia({
    required this.id,
    this.$__typename = 'InventoryLocation',
  });

  factory Mutation$DeleteLocationMedia$deleteLocationMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteLocationMedia$deleteLocationMedia(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteLocationMedia$deleteLocationMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$DeleteLocationMedia$deleteLocationMedia
    on Mutation$DeleteLocationMedia$deleteLocationMedia {
  CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia<
    Mutation$DeleteLocationMedia$deleteLocationMedia
  >
  get copyWith =>
      CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia<TRes> {
  factory CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia(
    Mutation$DeleteLocationMedia$deleteLocationMedia instance,
    TRes Function(Mutation$DeleteLocationMedia$deleteLocationMedia) then,
  ) = _CopyWithImpl$Mutation$DeleteLocationMedia$deleteLocationMedia;

  factory CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteLocationMedia$deleteLocationMedia;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteLocationMedia$deleteLocationMedia<TRes>
    implements CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia<TRes> {
  _CopyWithImpl$Mutation$DeleteLocationMedia$deleteLocationMedia(
    this._instance,
    this._then,
  );

  final Mutation$DeleteLocationMedia$deleteLocationMedia _instance;

  final TRes Function(Mutation$DeleteLocationMedia$deleteLocationMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteLocationMedia$deleteLocationMedia(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteLocationMedia$deleteLocationMedia<TRes>
    implements CopyWith$Mutation$DeleteLocationMedia$deleteLocationMedia<TRes> {
  _CopyWithStubImpl$Mutation$DeleteLocationMedia$deleteLocationMedia(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
