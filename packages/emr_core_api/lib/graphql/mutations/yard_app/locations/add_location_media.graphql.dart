import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddLocationMedia {
  factory Variables$Mutation$AddLocationMedia({
    required Input$InventoryLocationMediaInput locationMediaInput,
  }) => Variables$Mutation$AddLocationMedia._({
    r'locationMediaInput': locationMediaInput,
  });

  Variables$Mutation$AddLocationMedia._(this._$data);

  factory Variables$Mutation$AddLocationMedia.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$locationMediaInput = data['locationMediaInput'];
    result$data['locationMediaInput'] =
        Input$InventoryLocationMediaInput.fromJson(
          (l$locationMediaInput as Map<String, dynamic>),
        );
    return Variables$Mutation$AddLocationMedia._(result$data);
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

  CopyWith$Variables$Mutation$AddLocationMedia<
    Variables$Mutation$AddLocationMedia
  >
  get copyWith => CopyWith$Variables$Mutation$AddLocationMedia(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddLocationMedia ||
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

abstract class CopyWith$Variables$Mutation$AddLocationMedia<TRes> {
  factory CopyWith$Variables$Mutation$AddLocationMedia(
    Variables$Mutation$AddLocationMedia instance,
    TRes Function(Variables$Mutation$AddLocationMedia) then,
  ) = _CopyWithImpl$Variables$Mutation$AddLocationMedia;

  factory CopyWith$Variables$Mutation$AddLocationMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddLocationMedia;

  TRes call({Input$InventoryLocationMediaInput? locationMediaInput});
}

class _CopyWithImpl$Variables$Mutation$AddLocationMedia<TRes>
    implements CopyWith$Variables$Mutation$AddLocationMedia<TRes> {
  _CopyWithImpl$Variables$Mutation$AddLocationMedia(this._instance, this._then);

  final Variables$Mutation$AddLocationMedia _instance;

  final TRes Function(Variables$Mutation$AddLocationMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? locationMediaInput = _undefined}) => _then(
    Variables$Mutation$AddLocationMedia._({
      ..._instance._$data,
      if (locationMediaInput != _undefined && locationMediaInput != null)
        'locationMediaInput':
            (locationMediaInput as Input$InventoryLocationMediaInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddLocationMedia<TRes>
    implements CopyWith$Variables$Mutation$AddLocationMedia<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddLocationMedia(this._res);

  TRes _res;

  call({Input$InventoryLocationMediaInput? locationMediaInput}) => _res;
}

class Mutation$AddLocationMedia {
  Mutation$AddLocationMedia({
    required this.addLocationMedia,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddLocationMedia.fromJson(Map<String, dynamic> json) {
    final l$addLocationMedia = json['addLocationMedia'];
    final l$$__typename = json['__typename'];
    return Mutation$AddLocationMedia(
      addLocationMedia: Mutation$AddLocationMedia$addLocationMedia.fromJson(
        (l$addLocationMedia as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddLocationMedia$addLocationMedia addLocationMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addLocationMedia = addLocationMedia;
    _resultData['addLocationMedia'] = l$addLocationMedia.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addLocationMedia = addLocationMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addLocationMedia, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddLocationMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addLocationMedia = addLocationMedia;
    final lOther$addLocationMedia = other.addLocationMedia;
    if (l$addLocationMedia != lOther$addLocationMedia) {
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

extension UtilityExtension$Mutation$AddLocationMedia
    on Mutation$AddLocationMedia {
  CopyWith$Mutation$AddLocationMedia<Mutation$AddLocationMedia> get copyWith =>
      CopyWith$Mutation$AddLocationMedia(this, (i) => i);
}

abstract class CopyWith$Mutation$AddLocationMedia<TRes> {
  factory CopyWith$Mutation$AddLocationMedia(
    Mutation$AddLocationMedia instance,
    TRes Function(Mutation$AddLocationMedia) then,
  ) = _CopyWithImpl$Mutation$AddLocationMedia;

  factory CopyWith$Mutation$AddLocationMedia.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddLocationMedia;

  TRes call({
    Mutation$AddLocationMedia$addLocationMedia? addLocationMedia,
    String? $__typename,
  });
  CopyWith$Mutation$AddLocationMedia$addLocationMedia<TRes>
  get addLocationMedia;
}

class _CopyWithImpl$Mutation$AddLocationMedia<TRes>
    implements CopyWith$Mutation$AddLocationMedia<TRes> {
  _CopyWithImpl$Mutation$AddLocationMedia(this._instance, this._then);

  final Mutation$AddLocationMedia _instance;

  final TRes Function(Mutation$AddLocationMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addLocationMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddLocationMedia(
      addLocationMedia:
          addLocationMedia == _undefined || addLocationMedia == null
          ? _instance.addLocationMedia
          : (addLocationMedia as Mutation$AddLocationMedia$addLocationMedia),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddLocationMedia$addLocationMedia<TRes>
  get addLocationMedia {
    final local$addLocationMedia = _instance.addLocationMedia;
    return CopyWith$Mutation$AddLocationMedia$addLocationMedia(
      local$addLocationMedia,
      (e) => call(addLocationMedia: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddLocationMedia<TRes>
    implements CopyWith$Mutation$AddLocationMedia<TRes> {
  _CopyWithStubImpl$Mutation$AddLocationMedia(this._res);

  TRes _res;

  call({
    Mutation$AddLocationMedia$addLocationMedia? addLocationMedia,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddLocationMedia$addLocationMedia<TRes>
  get addLocationMedia =>
      CopyWith$Mutation$AddLocationMedia$addLocationMedia.stub(_res);
}

const documentNodeMutationAddLocationMedia = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddLocationMedia'),
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
            name: NameNode(value: 'addLocationMedia'),
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

class Mutation$AddLocationMedia$addLocationMedia {
  Mutation$AddLocationMedia$addLocationMedia({
    required this.id,
    this.$__typename = 'InventoryLocation',
  });

  factory Mutation$AddLocationMedia$addLocationMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$AddLocationMedia$addLocationMedia(
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
    if (other is! Mutation$AddLocationMedia$addLocationMedia ||
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

extension UtilityExtension$Mutation$AddLocationMedia$addLocationMedia
    on Mutation$AddLocationMedia$addLocationMedia {
  CopyWith$Mutation$AddLocationMedia$addLocationMedia<
    Mutation$AddLocationMedia$addLocationMedia
  >
  get copyWith =>
      CopyWith$Mutation$AddLocationMedia$addLocationMedia(this, (i) => i);
}

abstract class CopyWith$Mutation$AddLocationMedia$addLocationMedia<TRes> {
  factory CopyWith$Mutation$AddLocationMedia$addLocationMedia(
    Mutation$AddLocationMedia$addLocationMedia instance,
    TRes Function(Mutation$AddLocationMedia$addLocationMedia) then,
  ) = _CopyWithImpl$Mutation$AddLocationMedia$addLocationMedia;

  factory CopyWith$Mutation$AddLocationMedia$addLocationMedia.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddLocationMedia$addLocationMedia;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$AddLocationMedia$addLocationMedia<TRes>
    implements CopyWith$Mutation$AddLocationMedia$addLocationMedia<TRes> {
  _CopyWithImpl$Mutation$AddLocationMedia$addLocationMedia(
    this._instance,
    this._then,
  );

  final Mutation$AddLocationMedia$addLocationMedia _instance;

  final TRes Function(Mutation$AddLocationMedia$addLocationMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddLocationMedia$addLocationMedia(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddLocationMedia$addLocationMedia<TRes>
    implements CopyWith$Mutation$AddLocationMedia$addLocationMedia<TRes> {
  _CopyWithStubImpl$Mutation$AddLocationMedia$addLocationMedia(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
