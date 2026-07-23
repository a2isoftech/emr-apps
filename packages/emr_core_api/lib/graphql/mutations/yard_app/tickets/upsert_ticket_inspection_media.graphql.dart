import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpsertTicketInspectionMedia {
  factory Variables$Mutation$UpsertTicketInspectionMedia({
    required Input$TicketInspectionMediaInput input,
  }) => Variables$Mutation$UpsertTicketInspectionMedia._({r'input': input});

  Variables$Mutation$UpsertTicketInspectionMedia._(this._$data);

  factory Variables$Mutation$UpsertTicketInspectionMedia.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$TicketInspectionMediaInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpsertTicketInspectionMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TicketInspectionMediaInput get input =>
      (_$data['input'] as Input$TicketInspectionMediaInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpsertTicketInspectionMedia<
    Variables$Mutation$UpsertTicketInspectionMedia
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpsertTicketInspectionMedia(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpsertTicketInspectionMedia ||
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

abstract class CopyWith$Variables$Mutation$UpsertTicketInspectionMedia<TRes> {
  factory CopyWith$Variables$Mutation$UpsertTicketInspectionMedia(
    Variables$Mutation$UpsertTicketInspectionMedia instance,
    TRes Function(Variables$Mutation$UpsertTicketInspectionMedia) then,
  ) = _CopyWithImpl$Variables$Mutation$UpsertTicketInspectionMedia;

  factory CopyWith$Variables$Mutation$UpsertTicketInspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UpsertTicketInspectionMedia;

  TRes call({Input$TicketInspectionMediaInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpsertTicketInspectionMedia<TRes>
    implements CopyWith$Variables$Mutation$UpsertTicketInspectionMedia<TRes> {
  _CopyWithImpl$Variables$Mutation$UpsertTicketInspectionMedia(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpsertTicketInspectionMedia _instance;

  final TRes Function(Variables$Mutation$UpsertTicketInspectionMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpsertTicketInspectionMedia._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$TicketInspectionMediaInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpsertTicketInspectionMedia<TRes>
    implements CopyWith$Variables$Mutation$UpsertTicketInspectionMedia<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpsertTicketInspectionMedia(this._res);

  TRes _res;

  call({Input$TicketInspectionMediaInput? input}) => _res;
}

class Mutation$UpsertTicketInspectionMedia {
  Mutation$UpsertTicketInspectionMedia({
    required this.upsertTicketInspectionMedia,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpsertTicketInspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$upsertTicketInspectionMedia = json['upsertTicketInspectionMedia'];
    final l$$__typename = json['__typename'];
    return Mutation$UpsertTicketInspectionMedia(
      upsertTicketInspectionMedia:
          Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia.fromJson(
            (l$upsertTicketInspectionMedia as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia
  upsertTicketInspectionMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$upsertTicketInspectionMedia = upsertTicketInspectionMedia;
    _resultData['upsertTicketInspectionMedia'] = l$upsertTicketInspectionMedia
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$upsertTicketInspectionMedia = upsertTicketInspectionMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([l$upsertTicketInspectionMedia, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpsertTicketInspectionMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$upsertTicketInspectionMedia = upsertTicketInspectionMedia;
    final lOther$upsertTicketInspectionMedia =
        other.upsertTicketInspectionMedia;
    if (l$upsertTicketInspectionMedia != lOther$upsertTicketInspectionMedia) {
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

extension UtilityExtension$Mutation$UpsertTicketInspectionMedia
    on Mutation$UpsertTicketInspectionMedia {
  CopyWith$Mutation$UpsertTicketInspectionMedia<
    Mutation$UpsertTicketInspectionMedia
  >
  get copyWith => CopyWith$Mutation$UpsertTicketInspectionMedia(this, (i) => i);
}

abstract class CopyWith$Mutation$UpsertTicketInspectionMedia<TRes> {
  factory CopyWith$Mutation$UpsertTicketInspectionMedia(
    Mutation$UpsertTicketInspectionMedia instance,
    TRes Function(Mutation$UpsertTicketInspectionMedia) then,
  ) = _CopyWithImpl$Mutation$UpsertTicketInspectionMedia;

  factory CopyWith$Mutation$UpsertTicketInspectionMedia.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpsertTicketInspectionMedia;

  TRes call({
    Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia?
    upsertTicketInspectionMedia,
    String? $__typename,
  });
  CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia<
    TRes
  >
  get upsertTicketInspectionMedia;
}

class _CopyWithImpl$Mutation$UpsertTicketInspectionMedia<TRes>
    implements CopyWith$Mutation$UpsertTicketInspectionMedia<TRes> {
  _CopyWithImpl$Mutation$UpsertTicketInspectionMedia(
    this._instance,
    this._then,
  );

  final Mutation$UpsertTicketInspectionMedia _instance;

  final TRes Function(Mutation$UpsertTicketInspectionMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? upsertTicketInspectionMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpsertTicketInspectionMedia(
      upsertTicketInspectionMedia:
          upsertTicketInspectionMedia == _undefined ||
              upsertTicketInspectionMedia == null
          ? _instance.upsertTicketInspectionMedia
          : (upsertTicketInspectionMedia
                as Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia<
    TRes
  >
  get upsertTicketInspectionMedia {
    final local$upsertTicketInspectionMedia =
        _instance.upsertTicketInspectionMedia;
    return CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia(
      local$upsertTicketInspectionMedia,
      (e) => call(upsertTicketInspectionMedia: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpsertTicketInspectionMedia<TRes>
    implements CopyWith$Mutation$UpsertTicketInspectionMedia<TRes> {
  _CopyWithStubImpl$Mutation$UpsertTicketInspectionMedia(this._res);

  TRes _res;

  call({
    Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia?
    upsertTicketInspectionMedia,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia<
    TRes
  >
  get upsertTicketInspectionMedia =>
      CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia.stub(
        _res,
      );
}

const documentNodeMutationUpsertTicketInspectionMedia = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpsertTicketInspectionMedia'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'TicketInspectionMediaInput'),
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
            name: NameNode(value: 'upsertTicketInspectionMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'ticketMediaInput'),
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

class Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia {
  Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia({
    required this.id,
    this.$__typename = 'Ticket',
  });

  factory Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia(
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
            is! Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia ||
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

extension UtilityExtension$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia
    on Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia {
  CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia<
    Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia
  >
  get copyWith =>
      CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia<
  TRes
> {
  factory CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia(
    Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia instance,
    TRes Function(
      Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia;

  factory CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia<
  TRes
>
    implements
        CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia<
          TRes
        > {
  _CopyWithImpl$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia(
    this._instance,
    this._then,
  );

  final Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia
  _instance;

  final TRes Function(
    Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia<
  TRes
>
    implements
        CopyWith$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpsertTicketInspectionMedia$upsertTicketInspectionMedia(
    this._res,
  );

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
