import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$MoveTicketInspectionMedia {
  factory Variables$Mutation$MoveTicketInspectionMedia({
    required Input$MoveTicketInspectionMediaInput input,
  }) => Variables$Mutation$MoveTicketInspectionMedia._({r'input': input});

  Variables$Mutation$MoveTicketInspectionMedia._(this._$data);

  factory Variables$Mutation$MoveTicketInspectionMedia.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$MoveTicketInspectionMediaInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$MoveTicketInspectionMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$MoveTicketInspectionMediaInput get input =>
      (_$data['input'] as Input$MoveTicketInspectionMediaInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$MoveTicketInspectionMedia<
    Variables$Mutation$MoveTicketInspectionMedia
  >
  get copyWith =>
      CopyWith$Variables$Mutation$MoveTicketInspectionMedia(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$MoveTicketInspectionMedia ||
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

abstract class CopyWith$Variables$Mutation$MoveTicketInspectionMedia<TRes> {
  factory CopyWith$Variables$Mutation$MoveTicketInspectionMedia(
    Variables$Mutation$MoveTicketInspectionMedia instance,
    TRes Function(Variables$Mutation$MoveTicketInspectionMedia) then,
  ) = _CopyWithImpl$Variables$Mutation$MoveTicketInspectionMedia;

  factory CopyWith$Variables$Mutation$MoveTicketInspectionMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$MoveTicketInspectionMedia;

  TRes call({Input$MoveTicketInspectionMediaInput? input});
}

class _CopyWithImpl$Variables$Mutation$MoveTicketInspectionMedia<TRes>
    implements CopyWith$Variables$Mutation$MoveTicketInspectionMedia<TRes> {
  _CopyWithImpl$Variables$Mutation$MoveTicketInspectionMedia(
    this._instance,
    this._then,
  );

  final Variables$Mutation$MoveTicketInspectionMedia _instance;

  final TRes Function(Variables$Mutation$MoveTicketInspectionMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$MoveTicketInspectionMedia._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$MoveTicketInspectionMediaInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$MoveTicketInspectionMedia<TRes>
    implements CopyWith$Variables$Mutation$MoveTicketInspectionMedia<TRes> {
  _CopyWithStubImpl$Variables$Mutation$MoveTicketInspectionMedia(this._res);

  TRes _res;

  call({Input$MoveTicketInspectionMediaInput? input}) => _res;
}

class Mutation$MoveTicketInspectionMedia {
  Mutation$MoveTicketInspectionMedia({
    required this.moveTicketInspectionMedia,
    this.$__typename = 'Mutation',
  });

  factory Mutation$MoveTicketInspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$moveTicketInspectionMedia = json['moveTicketInspectionMedia'];
    final l$$__typename = json['__typename'];
    return Mutation$MoveTicketInspectionMedia(
      moveTicketInspectionMedia:
          Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia.fromJson(
            (l$moveTicketInspectionMedia as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia
  moveTicketInspectionMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$moveTicketInspectionMedia = moveTicketInspectionMedia;
    _resultData['moveTicketInspectionMedia'] = l$moveTicketInspectionMedia
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$moveTicketInspectionMedia = moveTicketInspectionMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([l$moveTicketInspectionMedia, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$MoveTicketInspectionMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$moveTicketInspectionMedia = moveTicketInspectionMedia;
    final lOther$moveTicketInspectionMedia = other.moveTicketInspectionMedia;
    if (l$moveTicketInspectionMedia != lOther$moveTicketInspectionMedia) {
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

extension UtilityExtension$Mutation$MoveTicketInspectionMedia
    on Mutation$MoveTicketInspectionMedia {
  CopyWith$Mutation$MoveTicketInspectionMedia<
    Mutation$MoveTicketInspectionMedia
  >
  get copyWith => CopyWith$Mutation$MoveTicketInspectionMedia(this, (i) => i);
}

abstract class CopyWith$Mutation$MoveTicketInspectionMedia<TRes> {
  factory CopyWith$Mutation$MoveTicketInspectionMedia(
    Mutation$MoveTicketInspectionMedia instance,
    TRes Function(Mutation$MoveTicketInspectionMedia) then,
  ) = _CopyWithImpl$Mutation$MoveTicketInspectionMedia;

  factory CopyWith$Mutation$MoveTicketInspectionMedia.stub(TRes res) =
      _CopyWithStubImpl$Mutation$MoveTicketInspectionMedia;

  TRes call({
    Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia?
    moveTicketInspectionMedia,
    String? $__typename,
  });
  CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia<TRes>
  get moveTicketInspectionMedia;
}

class _CopyWithImpl$Mutation$MoveTicketInspectionMedia<TRes>
    implements CopyWith$Mutation$MoveTicketInspectionMedia<TRes> {
  _CopyWithImpl$Mutation$MoveTicketInspectionMedia(this._instance, this._then);

  final Mutation$MoveTicketInspectionMedia _instance;

  final TRes Function(Mutation$MoveTicketInspectionMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? moveTicketInspectionMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$MoveTicketInspectionMedia(
      moveTicketInspectionMedia:
          moveTicketInspectionMedia == _undefined ||
              moveTicketInspectionMedia == null
          ? _instance.moveTicketInspectionMedia
          : (moveTicketInspectionMedia
                as Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia<TRes>
  get moveTicketInspectionMedia {
    final local$moveTicketInspectionMedia = _instance.moveTicketInspectionMedia;
    return CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia(
      local$moveTicketInspectionMedia,
      (e) => call(moveTicketInspectionMedia: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$MoveTicketInspectionMedia<TRes>
    implements CopyWith$Mutation$MoveTicketInspectionMedia<TRes> {
  _CopyWithStubImpl$Mutation$MoveTicketInspectionMedia(this._res);

  TRes _res;

  call({
    Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia?
    moveTicketInspectionMedia,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia<TRes>
  get moveTicketInspectionMedia =>
      CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia.stub(
        _res,
      );
}

const documentNodeMutationMoveTicketInspectionMedia = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'MoveTicketInspectionMedia'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'MoveTicketInspectionMediaInput'),
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
            name: NameNode(value: 'moveTicketInspectionMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'moveTicketMediaInput'),
                value: VariableNode(name: NameNode(value: 'input')),
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

class Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia {
  Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia({
    required this.id,
    this.$__typename = 'Ticket',
  });

  factory Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia(
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
    if (other
            is! Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia ||
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

extension UtilityExtension$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia
    on Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia {
  CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia<
    Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia
  >
  get copyWith =>
      CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia<
  TRes
> {
  factory CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia(
    Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia instance,
    TRes Function(Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia)
    then,
  ) = _CopyWithImpl$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia;

  factory CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia<
  TRes
>
    implements
        CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia<
          TRes
        > {
  _CopyWithImpl$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia(
    this._instance,
    this._then,
  );

  final Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia _instance;

  final TRes Function(
    Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia<
  TRes
>
    implements
        CopyWith$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Mutation$MoveTicketInspectionMedia$moveTicketInspectionMedia(
    this._res,
  );

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
