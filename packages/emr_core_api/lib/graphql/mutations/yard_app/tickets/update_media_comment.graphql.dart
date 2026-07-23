import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateMediaComment {
  factory Variables$Mutation$UpdateMediaComment({
    required String ticketId,
    required Input$YardAppMediaInput media,
  }) => Variables$Mutation$UpdateMediaComment._({
    r'ticketId': ticketId,
    r'media': media,
  });

  Variables$Mutation$UpdateMediaComment._(this._$data);

  factory Variables$Mutation$UpdateMediaComment.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$ticketId = data['ticketId'];
    result$data['ticketId'] = (l$ticketId as String);
    final l$media = data['media'];
    result$data['media'] = Input$YardAppMediaInput.fromJson(
      (l$media as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateMediaComment._(result$data);
  }

  Map<String, dynamic> _$data;

  String get ticketId => (_$data['ticketId'] as String);

  Input$YardAppMediaInput get media =>
      (_$data['media'] as Input$YardAppMediaInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$ticketId = ticketId;
    result$data['ticketId'] = l$ticketId;
    final l$media = media;
    result$data['media'] = l$media.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateMediaComment<
    Variables$Mutation$UpdateMediaComment
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateMediaComment(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateMediaComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticketId = ticketId;
    final lOther$ticketId = other.ticketId;
    if (l$ticketId != lOther$ticketId) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ticketId = ticketId;
    final l$media = media;
    return Object.hashAll([l$ticketId, l$media]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateMediaComment<TRes> {
  factory CopyWith$Variables$Mutation$UpdateMediaComment(
    Variables$Mutation$UpdateMediaComment instance,
    TRes Function(Variables$Mutation$UpdateMediaComment) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateMediaComment;

  factory CopyWith$Variables$Mutation$UpdateMediaComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateMediaComment;

  TRes call({String? ticketId, Input$YardAppMediaInput? media});
}

class _CopyWithImpl$Variables$Mutation$UpdateMediaComment<TRes>
    implements CopyWith$Variables$Mutation$UpdateMediaComment<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateMediaComment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateMediaComment _instance;

  final TRes Function(Variables$Mutation$UpdateMediaComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ticketId = _undefined, Object? media = _undefined}) =>
      _then(
        Variables$Mutation$UpdateMediaComment._({
          ..._instance._$data,
          if (ticketId != _undefined && ticketId != null)
            'ticketId': (ticketId as String),
          if (media != _undefined && media != null)
            'media': (media as Input$YardAppMediaInput),
        }),
      );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateMediaComment<TRes>
    implements CopyWith$Variables$Mutation$UpdateMediaComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateMediaComment(this._res);

  TRes _res;

  call({String? ticketId, Input$YardAppMediaInput? media}) => _res;
}

class Mutation$UpdateMediaComment {
  Mutation$UpdateMediaComment({
    required this.updateMediaComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateMediaComment.fromJson(Map<String, dynamic> json) {
    final l$updateMediaComment = json['updateMediaComment'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateMediaComment(
      updateMediaComment:
          Mutation$UpdateMediaComment$updateMediaComment.fromJson(
            (l$updateMediaComment as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateMediaComment$updateMediaComment updateMediaComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMediaComment = updateMediaComment;
    _resultData['updateMediaComment'] = l$updateMediaComment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMediaComment = updateMediaComment;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateMediaComment, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateMediaComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMediaComment = updateMediaComment;
    final lOther$updateMediaComment = other.updateMediaComment;
    if (l$updateMediaComment != lOther$updateMediaComment) {
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

extension UtilityExtension$Mutation$UpdateMediaComment
    on Mutation$UpdateMediaComment {
  CopyWith$Mutation$UpdateMediaComment<Mutation$UpdateMediaComment>
  get copyWith => CopyWith$Mutation$UpdateMediaComment(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateMediaComment<TRes> {
  factory CopyWith$Mutation$UpdateMediaComment(
    Mutation$UpdateMediaComment instance,
    TRes Function(Mutation$UpdateMediaComment) then,
  ) = _CopyWithImpl$Mutation$UpdateMediaComment;

  factory CopyWith$Mutation$UpdateMediaComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateMediaComment;

  TRes call({
    Mutation$UpdateMediaComment$updateMediaComment? updateMediaComment,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateMediaComment$updateMediaComment<TRes>
  get updateMediaComment;
}

class _CopyWithImpl$Mutation$UpdateMediaComment<TRes>
    implements CopyWith$Mutation$UpdateMediaComment<TRes> {
  _CopyWithImpl$Mutation$UpdateMediaComment(this._instance, this._then);

  final Mutation$UpdateMediaComment _instance;

  final TRes Function(Mutation$UpdateMediaComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMediaComment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateMediaComment(
      updateMediaComment:
          updateMediaComment == _undefined || updateMediaComment == null
          ? _instance.updateMediaComment
          : (updateMediaComment
                as Mutation$UpdateMediaComment$updateMediaComment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateMediaComment$updateMediaComment<TRes>
  get updateMediaComment {
    final local$updateMediaComment = _instance.updateMediaComment;
    return CopyWith$Mutation$UpdateMediaComment$updateMediaComment(
      local$updateMediaComment,
      (e) => call(updateMediaComment: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateMediaComment<TRes>
    implements CopyWith$Mutation$UpdateMediaComment<TRes> {
  _CopyWithStubImpl$Mutation$UpdateMediaComment(this._res);

  TRes _res;

  call({
    Mutation$UpdateMediaComment$updateMediaComment? updateMediaComment,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateMediaComment$updateMediaComment<TRes>
  get updateMediaComment =>
      CopyWith$Mutation$UpdateMediaComment$updateMediaComment.stub(_res);
}

const documentNodeMutationUpdateMediaComment = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateMediaComment'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ticketId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'media')),
          type: NamedTypeNode(
            name: NameNode(value: 'YardAppMediaInput'),
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
            name: NameNode(value: 'updateMediaComment'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'ticketId'),
                value: VariableNode(name: NameNode(value: 'ticketId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'media'),
                value: VariableNode(name: NameNode(value: 'media')),
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

class Mutation$UpdateMediaComment$updateMediaComment {
  Mutation$UpdateMediaComment$updateMediaComment({
    required this.id,
    this.$__typename = 'Ticket',
  });

  factory Mutation$UpdateMediaComment$updateMediaComment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateMediaComment$updateMediaComment(
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
    if (other is! Mutation$UpdateMediaComment$updateMediaComment ||
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

extension UtilityExtension$Mutation$UpdateMediaComment$updateMediaComment
    on Mutation$UpdateMediaComment$updateMediaComment {
  CopyWith$Mutation$UpdateMediaComment$updateMediaComment<
    Mutation$UpdateMediaComment$updateMediaComment
  >
  get copyWith =>
      CopyWith$Mutation$UpdateMediaComment$updateMediaComment(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateMediaComment$updateMediaComment<TRes> {
  factory CopyWith$Mutation$UpdateMediaComment$updateMediaComment(
    Mutation$UpdateMediaComment$updateMediaComment instance,
    TRes Function(Mutation$UpdateMediaComment$updateMediaComment) then,
  ) = _CopyWithImpl$Mutation$UpdateMediaComment$updateMediaComment;

  factory CopyWith$Mutation$UpdateMediaComment$updateMediaComment.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateMediaComment$updateMediaComment;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateMediaComment$updateMediaComment<TRes>
    implements CopyWith$Mutation$UpdateMediaComment$updateMediaComment<TRes> {
  _CopyWithImpl$Mutation$UpdateMediaComment$updateMediaComment(
    this._instance,
    this._then,
  );

  final Mutation$UpdateMediaComment$updateMediaComment _instance;

  final TRes Function(Mutation$UpdateMediaComment$updateMediaComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateMediaComment$updateMediaComment(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateMediaComment$updateMediaComment<TRes>
    implements CopyWith$Mutation$UpdateMediaComment$updateMediaComment<TRes> {
  _CopyWithStubImpl$Mutation$UpdateMediaComment$updateMediaComment(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
