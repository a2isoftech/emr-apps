import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteComment {
  factory Variables$Mutation$DeleteComment({
    required Input$DeleteCommentInput commentInput,
  }) => Variables$Mutation$DeleteComment._({r'commentInput': commentInput});

  Variables$Mutation$DeleteComment._(this._$data);

  factory Variables$Mutation$DeleteComment.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$commentInput = data['commentInput'];
    result$data['commentInput'] = Input$DeleteCommentInput.fromJson(
      (l$commentInput as Map<String, dynamic>),
    );
    return Variables$Mutation$DeleteComment._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteCommentInput get commentInput =>
      (_$data['commentInput'] as Input$DeleteCommentInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$commentInput = commentInput;
    result$data['commentInput'] = l$commentInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteComment<Variables$Mutation$DeleteComment>
  get copyWith => CopyWith$Variables$Mutation$DeleteComment(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commentInput = commentInput;
    final lOther$commentInput = other.commentInput;
    if (l$commentInput != lOther$commentInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$commentInput = commentInput;
    return Object.hashAll([l$commentInput]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteComment<TRes> {
  factory CopyWith$Variables$Mutation$DeleteComment(
    Variables$Mutation$DeleteComment instance,
    TRes Function(Variables$Mutation$DeleteComment) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteComment;

  factory CopyWith$Variables$Mutation$DeleteComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteComment;

  TRes call({Input$DeleteCommentInput? commentInput});
}

class _CopyWithImpl$Variables$Mutation$DeleteComment<TRes>
    implements CopyWith$Variables$Mutation$DeleteComment<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteComment(this._instance, this._then);

  final Variables$Mutation$DeleteComment _instance;

  final TRes Function(Variables$Mutation$DeleteComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? commentInput = _undefined}) => _then(
    Variables$Mutation$DeleteComment._({
      ..._instance._$data,
      if (commentInput != _undefined && commentInput != null)
        'commentInput': (commentInput as Input$DeleteCommentInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteComment<TRes>
    implements CopyWith$Variables$Mutation$DeleteComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteComment(this._res);

  TRes _res;

  call({Input$DeleteCommentInput? commentInput}) => _res;
}

class Mutation$DeleteComment {
  Mutation$DeleteComment({
    required this.deleteComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteComment.fromJson(Map<String, dynamic> json) {
    final l$deleteComment = json['deleteComment'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteComment(
      deleteComment: Mutation$DeleteComment$deleteComment.fromJson(
        (l$deleteComment as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteComment$deleteComment deleteComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteComment = deleteComment;
    _resultData['deleteComment'] = l$deleteComment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteComment = deleteComment;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteComment, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteComment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteComment = deleteComment;
    final lOther$deleteComment = other.deleteComment;
    if (l$deleteComment != lOther$deleteComment) {
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

extension UtilityExtension$Mutation$DeleteComment on Mutation$DeleteComment {
  CopyWith$Mutation$DeleteComment<Mutation$DeleteComment> get copyWith =>
      CopyWith$Mutation$DeleteComment(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteComment<TRes> {
  factory CopyWith$Mutation$DeleteComment(
    Mutation$DeleteComment instance,
    TRes Function(Mutation$DeleteComment) then,
  ) = _CopyWithImpl$Mutation$DeleteComment;

  factory CopyWith$Mutation$DeleteComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteComment;

  TRes call({
    Mutation$DeleteComment$deleteComment? deleteComment,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteComment$deleteComment<TRes> get deleteComment;
}

class _CopyWithImpl$Mutation$DeleteComment<TRes>
    implements CopyWith$Mutation$DeleteComment<TRes> {
  _CopyWithImpl$Mutation$DeleteComment(this._instance, this._then);

  final Mutation$DeleteComment _instance;

  final TRes Function(Mutation$DeleteComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteComment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteComment(
      deleteComment: deleteComment == _undefined || deleteComment == null
          ? _instance.deleteComment
          : (deleteComment as Mutation$DeleteComment$deleteComment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteComment$deleteComment<TRes> get deleteComment {
    final local$deleteComment = _instance.deleteComment;
    return CopyWith$Mutation$DeleteComment$deleteComment(
      local$deleteComment,
      (e) => call(deleteComment: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$DeleteComment<TRes>
    implements CopyWith$Mutation$DeleteComment<TRes> {
  _CopyWithStubImpl$Mutation$DeleteComment(this._res);

  TRes _res;

  call({
    Mutation$DeleteComment$deleteComment? deleteComment,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteComment$deleteComment<TRes> get deleteComment =>
      CopyWith$Mutation$DeleteComment$deleteComment.stub(_res);
}

const documentNodeMutationDeleteComment = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteComment'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'commentInput')),
          type: NamedTypeNode(
            name: NameNode(value: 'DeleteCommentInput'),
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
            name: NameNode(value: 'deleteComment'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'commentInput'),
                value: VariableNode(name: NameNode(value: 'commentInput')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'success'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'message'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'errorCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'content'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'created'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'userInfoId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'at'),
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

class Mutation$DeleteComment$deleteComment {
  Mutation$DeleteComment$deleteComment({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfListOfComment',
  });

  factory Mutation$DeleteComment$deleteComment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteComment$deleteComment(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: (l$data as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$DeleteComment$deleteComment$data.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final List<Mutation$DeleteComment$deleteComment$data?>? data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$errorCode = errorCode;
    _resultData['errorCode'] = l$errorCode;
    final l$data = data;
    _resultData['data'] = l$data?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$errorCode = errorCode;
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
      l$errorCode,
      l$data == null ? null : Object.hashAll(l$data.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteComment$deleteComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != null && lOther$data != null) {
      if (l$data.length != lOther$data.length) {
        return false;
      }
      for (int i = 0; i < l$data.length; i++) {
        final l$data$entry = l$data[i];
        final lOther$data$entry = lOther$data[i];
        if (l$data$entry != lOther$data$entry) {
          return false;
        }
      }
    } else if (l$data != lOther$data) {
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

extension UtilityExtension$Mutation$DeleteComment$deleteComment
    on Mutation$DeleteComment$deleteComment {
  CopyWith$Mutation$DeleteComment$deleteComment<
    Mutation$DeleteComment$deleteComment
  >
  get copyWith => CopyWith$Mutation$DeleteComment$deleteComment(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteComment$deleteComment<TRes> {
  factory CopyWith$Mutation$DeleteComment$deleteComment(
    Mutation$DeleteComment$deleteComment instance,
    TRes Function(Mutation$DeleteComment$deleteComment) then,
  ) = _CopyWithImpl$Mutation$DeleteComment$deleteComment;

  factory CopyWith$Mutation$DeleteComment$deleteComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteComment$deleteComment;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    List<Mutation$DeleteComment$deleteComment$data?>? data,
    String? $__typename,
  });
  TRes data(
    Iterable<Mutation$DeleteComment$deleteComment$data?>? Function(
      Iterable<
        CopyWith$Mutation$DeleteComment$deleteComment$data<
          Mutation$DeleteComment$deleteComment$data
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$DeleteComment$deleteComment<TRes>
    implements CopyWith$Mutation$DeleteComment$deleteComment<TRes> {
  _CopyWithImpl$Mutation$DeleteComment$deleteComment(
    this._instance,
    this._then,
  );

  final Mutation$DeleteComment$deleteComment _instance;

  final TRes Function(Mutation$DeleteComment$deleteComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteComment$deleteComment(
      success: success == _undefined || success == null
          ? _instance.success
          : (success as bool),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      data: data == _undefined
          ? _instance.data
          : (data as List<Mutation$DeleteComment$deleteComment$data?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes data(
    Iterable<Mutation$DeleteComment$deleteComment$data?>? Function(
      Iterable<
        CopyWith$Mutation$DeleteComment$deleteComment$data<
          Mutation$DeleteComment$deleteComment$data
        >?
      >?,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$DeleteComment$deleteComment$data(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Mutation$DeleteComment$deleteComment<TRes>
    implements CopyWith$Mutation$DeleteComment$deleteComment<TRes> {
  _CopyWithStubImpl$Mutation$DeleteComment$deleteComment(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    List<Mutation$DeleteComment$deleteComment$data?>? data,
    String? $__typename,
  }) => _res;

  data(_fn) => _res;
}

class Mutation$DeleteComment$deleteComment$data {
  Mutation$DeleteComment$deleteComment$data({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Mutation$DeleteComment$deleteComment$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteComment$deleteComment$data(
      content: (l$content as String),
      created: Mutation$DeleteComment$deleteComment$data$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Mutation$DeleteComment$deleteComment$data$created created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteComment$deleteComment$data ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Mutation$DeleteComment$deleteComment$data
    on Mutation$DeleteComment$deleteComment$data {
  CopyWith$Mutation$DeleteComment$deleteComment$data<
    Mutation$DeleteComment$deleteComment$data
  >
  get copyWith =>
      CopyWith$Mutation$DeleteComment$deleteComment$data(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteComment$deleteComment$data<TRes> {
  factory CopyWith$Mutation$DeleteComment$deleteComment$data(
    Mutation$DeleteComment$deleteComment$data instance,
    TRes Function(Mutation$DeleteComment$deleteComment$data) then,
  ) = _CopyWithImpl$Mutation$DeleteComment$deleteComment$data;

  factory CopyWith$Mutation$DeleteComment$deleteComment$data.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteComment$deleteComment$data;

  TRes call({
    String? content,
    Mutation$DeleteComment$deleteComment$data$created? created,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteComment$deleteComment$data$created<TRes> get created;
}

class _CopyWithImpl$Mutation$DeleteComment$deleteComment$data<TRes>
    implements CopyWith$Mutation$DeleteComment$deleteComment$data<TRes> {
  _CopyWithImpl$Mutation$DeleteComment$deleteComment$data(
    this._instance,
    this._then,
  );

  final Mutation$DeleteComment$deleteComment$data _instance;

  final TRes Function(Mutation$DeleteComment$deleteComment$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteComment$deleteComment$data(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Mutation$DeleteComment$deleteComment$data$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteComment$deleteComment$data$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$DeleteComment$deleteComment$data$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$DeleteComment$deleteComment$data<TRes>
    implements CopyWith$Mutation$DeleteComment$deleteComment$data<TRes> {
  _CopyWithStubImpl$Mutation$DeleteComment$deleteComment$data(this._res);

  TRes _res;

  call({
    String? content,
    Mutation$DeleteComment$deleteComment$data$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteComment$deleteComment$data$created<TRes>
  get created =>
      CopyWith$Mutation$DeleteComment$deleteComment$data$created.stub(_res);
}

class Mutation$DeleteComment$deleteComment$data$created {
  Mutation$DeleteComment$deleteComment$data$created({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Mutation$DeleteComment$deleteComment$data$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteComment$deleteComment$data$created(
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteComment$deleteComment$data$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Mutation$DeleteComment$deleteComment$data$created
    on Mutation$DeleteComment$deleteComment$data$created {
  CopyWith$Mutation$DeleteComment$deleteComment$data$created<
    Mutation$DeleteComment$deleteComment$data$created
  >
  get copyWith => CopyWith$Mutation$DeleteComment$deleteComment$data$created(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$DeleteComment$deleteComment$data$created<
  TRes
> {
  factory CopyWith$Mutation$DeleteComment$deleteComment$data$created(
    Mutation$DeleteComment$deleteComment$data$created instance,
    TRes Function(Mutation$DeleteComment$deleteComment$data$created) then,
  ) = _CopyWithImpl$Mutation$DeleteComment$deleteComment$data$created;

  factory CopyWith$Mutation$DeleteComment$deleteComment$data$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteComment$deleteComment$data$created;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteComment$deleteComment$data$created<TRes>
    implements
        CopyWith$Mutation$DeleteComment$deleteComment$data$created<TRes> {
  _CopyWithImpl$Mutation$DeleteComment$deleteComment$data$created(
    this._instance,
    this._then,
  );

  final Mutation$DeleteComment$deleteComment$data$created _instance;

  final TRes Function(Mutation$DeleteComment$deleteComment$data$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteComment$deleteComment$data$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteComment$deleteComment$data$created<TRes>
    implements
        CopyWith$Mutation$DeleteComment$deleteComment$data$created<TRes> {
  _CopyWithStubImpl$Mutation$DeleteComment$deleteComment$data$created(
    this._res,
  );

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}
