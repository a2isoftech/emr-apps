import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddComment {
  factory Variables$Mutation$AddComment({
    required Input$AddCommentInput commentInput,
  }) => Variables$Mutation$AddComment._({r'commentInput': commentInput});

  Variables$Mutation$AddComment._(this._$data);

  factory Variables$Mutation$AddComment.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$commentInput = data['commentInput'];
    result$data['commentInput'] = Input$AddCommentInput.fromJson(
      (l$commentInput as Map<String, dynamic>),
    );
    return Variables$Mutation$AddComment._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddCommentInput get commentInput =>
      (_$data['commentInput'] as Input$AddCommentInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$commentInput = commentInput;
    result$data['commentInput'] = l$commentInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddComment<Variables$Mutation$AddComment>
  get copyWith => CopyWith$Variables$Mutation$AddComment(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddComment ||
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

abstract class CopyWith$Variables$Mutation$AddComment<TRes> {
  factory CopyWith$Variables$Mutation$AddComment(
    Variables$Mutation$AddComment instance,
    TRes Function(Variables$Mutation$AddComment) then,
  ) = _CopyWithImpl$Variables$Mutation$AddComment;

  factory CopyWith$Variables$Mutation$AddComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddComment;

  TRes call({Input$AddCommentInput? commentInput});
}

class _CopyWithImpl$Variables$Mutation$AddComment<TRes>
    implements CopyWith$Variables$Mutation$AddComment<TRes> {
  _CopyWithImpl$Variables$Mutation$AddComment(this._instance, this._then);

  final Variables$Mutation$AddComment _instance;

  final TRes Function(Variables$Mutation$AddComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? commentInput = _undefined}) => _then(
    Variables$Mutation$AddComment._({
      ..._instance._$data,
      if (commentInput != _undefined && commentInput != null)
        'commentInput': (commentInput as Input$AddCommentInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddComment<TRes>
    implements CopyWith$Variables$Mutation$AddComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddComment(this._res);

  TRes _res;

  call({Input$AddCommentInput? commentInput}) => _res;
}

class Mutation$AddComment {
  Mutation$AddComment({
    required this.addComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddComment.fromJson(Map<String, dynamic> json) {
    final l$addComment = json['addComment'];
    final l$$__typename = json['__typename'];
    return Mutation$AddComment(
      addComment: Mutation$AddComment$addComment.fromJson(
        (l$addComment as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddComment$addComment addComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addComment = addComment;
    _resultData['addComment'] = l$addComment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addComment = addComment;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addComment, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddComment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addComment = addComment;
    final lOther$addComment = other.addComment;
    if (l$addComment != lOther$addComment) {
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

extension UtilityExtension$Mutation$AddComment on Mutation$AddComment {
  CopyWith$Mutation$AddComment<Mutation$AddComment> get copyWith =>
      CopyWith$Mutation$AddComment(this, (i) => i);
}

abstract class CopyWith$Mutation$AddComment<TRes> {
  factory CopyWith$Mutation$AddComment(
    Mutation$AddComment instance,
    TRes Function(Mutation$AddComment) then,
  ) = _CopyWithImpl$Mutation$AddComment;

  factory CopyWith$Mutation$AddComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddComment;

  TRes call({Mutation$AddComment$addComment? addComment, String? $__typename});
  CopyWith$Mutation$AddComment$addComment<TRes> get addComment;
}

class _CopyWithImpl$Mutation$AddComment<TRes>
    implements CopyWith$Mutation$AddComment<TRes> {
  _CopyWithImpl$Mutation$AddComment(this._instance, this._then);

  final Mutation$AddComment _instance;

  final TRes Function(Mutation$AddComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addComment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddComment(
      addComment: addComment == _undefined || addComment == null
          ? _instance.addComment
          : (addComment as Mutation$AddComment$addComment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddComment$addComment<TRes> get addComment {
    final local$addComment = _instance.addComment;
    return CopyWith$Mutation$AddComment$addComment(
      local$addComment,
      (e) => call(addComment: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddComment<TRes>
    implements CopyWith$Mutation$AddComment<TRes> {
  _CopyWithStubImpl$Mutation$AddComment(this._res);

  TRes _res;

  call({Mutation$AddComment$addComment? addComment, String? $__typename}) =>
      _res;

  CopyWith$Mutation$AddComment$addComment<TRes> get addComment =>
      CopyWith$Mutation$AddComment$addComment.stub(_res);
}

const documentNodeMutationAddComment = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddComment'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'commentInput')),
          type: NamedTypeNode(
            name: NameNode(value: 'AddCommentInput'),
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
            name: NameNode(value: 'addComment'),
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

class Mutation$AddComment$addComment {
  Mutation$AddComment$addComment({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfListOfComment',
  });

  factory Mutation$AddComment$addComment.fromJson(Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$AddComment$addComment(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: (l$data as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$AddComment$addComment$data.fromJson(
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

  final List<Mutation$AddComment$addComment$data?>? data;

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
    if (other is! Mutation$AddComment$addComment ||
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

extension UtilityExtension$Mutation$AddComment$addComment
    on Mutation$AddComment$addComment {
  CopyWith$Mutation$AddComment$addComment<Mutation$AddComment$addComment>
  get copyWith => CopyWith$Mutation$AddComment$addComment(this, (i) => i);
}

abstract class CopyWith$Mutation$AddComment$addComment<TRes> {
  factory CopyWith$Mutation$AddComment$addComment(
    Mutation$AddComment$addComment instance,
    TRes Function(Mutation$AddComment$addComment) then,
  ) = _CopyWithImpl$Mutation$AddComment$addComment;

  factory CopyWith$Mutation$AddComment$addComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddComment$addComment;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    List<Mutation$AddComment$addComment$data?>? data,
    String? $__typename,
  });
  TRes data(
    Iterable<Mutation$AddComment$addComment$data?>? Function(
      Iterable<
        CopyWith$Mutation$AddComment$addComment$data<
          Mutation$AddComment$addComment$data
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$AddComment$addComment<TRes>
    implements CopyWith$Mutation$AddComment$addComment<TRes> {
  _CopyWithImpl$Mutation$AddComment$addComment(this._instance, this._then);

  final Mutation$AddComment$addComment _instance;

  final TRes Function(Mutation$AddComment$addComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddComment$addComment(
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
          : (data as List<Mutation$AddComment$addComment$data?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes data(
    Iterable<Mutation$AddComment$addComment$data?>? Function(
      Iterable<
        CopyWith$Mutation$AddComment$addComment$data<
          Mutation$AddComment$addComment$data
        >?
      >?,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$AddComment$addComment$data(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Mutation$AddComment$addComment<TRes>
    implements CopyWith$Mutation$AddComment$addComment<TRes> {
  _CopyWithStubImpl$Mutation$AddComment$addComment(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    List<Mutation$AddComment$addComment$data?>? data,
    String? $__typename,
  }) => _res;

  data(_fn) => _res;
}

class Mutation$AddComment$addComment$data {
  Mutation$AddComment$addComment$data({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Mutation$AddComment$addComment$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Mutation$AddComment$addComment$data(
      content: (l$content as String),
      created: Mutation$AddComment$addComment$data$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Mutation$AddComment$addComment$data$created created;

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
    if (other is! Mutation$AddComment$addComment$data ||
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

extension UtilityExtension$Mutation$AddComment$addComment$data
    on Mutation$AddComment$addComment$data {
  CopyWith$Mutation$AddComment$addComment$data<
    Mutation$AddComment$addComment$data
  >
  get copyWith => CopyWith$Mutation$AddComment$addComment$data(this, (i) => i);
}

abstract class CopyWith$Mutation$AddComment$addComment$data<TRes> {
  factory CopyWith$Mutation$AddComment$addComment$data(
    Mutation$AddComment$addComment$data instance,
    TRes Function(Mutation$AddComment$addComment$data) then,
  ) = _CopyWithImpl$Mutation$AddComment$addComment$data;

  factory CopyWith$Mutation$AddComment$addComment$data.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddComment$addComment$data;

  TRes call({
    String? content,
    Mutation$AddComment$addComment$data$created? created,
    String? $__typename,
  });
  CopyWith$Mutation$AddComment$addComment$data$created<TRes> get created;
}

class _CopyWithImpl$Mutation$AddComment$addComment$data<TRes>
    implements CopyWith$Mutation$AddComment$addComment$data<TRes> {
  _CopyWithImpl$Mutation$AddComment$addComment$data(this._instance, this._then);

  final Mutation$AddComment$addComment$data _instance;

  final TRes Function(Mutation$AddComment$addComment$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddComment$addComment$data(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Mutation$AddComment$addComment$data$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddComment$addComment$data$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$AddComment$addComment$data$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddComment$addComment$data<TRes>
    implements CopyWith$Mutation$AddComment$addComment$data<TRes> {
  _CopyWithStubImpl$Mutation$AddComment$addComment$data(this._res);

  TRes _res;

  call({
    String? content,
    Mutation$AddComment$addComment$data$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddComment$addComment$data$created<TRes> get created =>
      CopyWith$Mutation$AddComment$addComment$data$created.stub(_res);
}

class Mutation$AddComment$addComment$data$created {
  Mutation$AddComment$addComment$data$created({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Mutation$AddComment$addComment$data$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Mutation$AddComment$addComment$data$created(
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
    if (other is! Mutation$AddComment$addComment$data$created ||
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

extension UtilityExtension$Mutation$AddComment$addComment$data$created
    on Mutation$AddComment$addComment$data$created {
  CopyWith$Mutation$AddComment$addComment$data$created<
    Mutation$AddComment$addComment$data$created
  >
  get copyWith =>
      CopyWith$Mutation$AddComment$addComment$data$created(this, (i) => i);
}

abstract class CopyWith$Mutation$AddComment$addComment$data$created<TRes> {
  factory CopyWith$Mutation$AddComment$addComment$data$created(
    Mutation$AddComment$addComment$data$created instance,
    TRes Function(Mutation$AddComment$addComment$data$created) then,
  ) = _CopyWithImpl$Mutation$AddComment$addComment$data$created;

  factory CopyWith$Mutation$AddComment$addComment$data$created.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddComment$addComment$data$created;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddComment$addComment$data$created<TRes>
    implements CopyWith$Mutation$AddComment$addComment$data$created<TRes> {
  _CopyWithImpl$Mutation$AddComment$addComment$data$created(
    this._instance,
    this._then,
  );

  final Mutation$AddComment$addComment$data$created _instance;

  final TRes Function(Mutation$AddComment$addComment$data$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddComment$addComment$data$created(
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

class _CopyWithStubImpl$Mutation$AddComment$addComment$data$created<TRes>
    implements CopyWith$Mutation$AddComment$addComment$data$created<TRes> {
  _CopyWithStubImpl$Mutation$AddComment$addComment$data$created(this._res);

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}
