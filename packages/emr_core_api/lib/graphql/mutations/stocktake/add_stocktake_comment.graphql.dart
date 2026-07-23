import 'package:gql/ast.dart';

class Variables$Mutation$AddStocktakeComment {
  factory Variables$Mutation$AddStocktakeComment({
    required String id,
    required String comment,
  }) => Variables$Mutation$AddStocktakeComment._({
    r'id': id,
    r'comment': comment,
  });

  Variables$Mutation$AddStocktakeComment._(this._$data);

  factory Variables$Mutation$AddStocktakeComment.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$comment = data['comment'];
    result$data['comment'] = (l$comment as String);
    return Variables$Mutation$AddStocktakeComment._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get comment => (_$data['comment'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$comment = comment;
    result$data['comment'] = l$comment;
    return result$data;
  }

  CopyWith$Variables$Mutation$AddStocktakeComment<
    Variables$Mutation$AddStocktakeComment
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddStocktakeComment(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddStocktakeComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$comment = comment;
    return Object.hashAll([l$id, l$comment]);
  }
}

abstract class CopyWith$Variables$Mutation$AddStocktakeComment<TRes> {
  factory CopyWith$Variables$Mutation$AddStocktakeComment(
    Variables$Mutation$AddStocktakeComment instance,
    TRes Function(Variables$Mutation$AddStocktakeComment) then,
  ) = _CopyWithImpl$Variables$Mutation$AddStocktakeComment;

  factory CopyWith$Variables$Mutation$AddStocktakeComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddStocktakeComment;

  TRes call({String? id, String? comment});
}

class _CopyWithImpl$Variables$Mutation$AddStocktakeComment<TRes>
    implements CopyWith$Variables$Mutation$AddStocktakeComment<TRes> {
  _CopyWithImpl$Variables$Mutation$AddStocktakeComment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddStocktakeComment _instance;

  final TRes Function(Variables$Mutation$AddStocktakeComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? comment = _undefined}) => _then(
    Variables$Mutation$AddStocktakeComment._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (comment != _undefined && comment != null)
        'comment': (comment as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddStocktakeComment<TRes>
    implements CopyWith$Variables$Mutation$AddStocktakeComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddStocktakeComment(this._res);

  TRes _res;

  call({String? id, String? comment}) => _res;
}

class Mutation$AddStocktakeComment {
  Mutation$AddStocktakeComment({
    required this.addStocktakeComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddStocktakeComment.fromJson(Map<String, dynamic> json) {
    final l$addStocktakeComment = json['addStocktakeComment'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeComment(
      addStocktakeComment:
          Mutation$AddStocktakeComment$addStocktakeComment.fromJson(
            (l$addStocktakeComment as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddStocktakeComment$addStocktakeComment addStocktakeComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addStocktakeComment = addStocktakeComment;
    _resultData['addStocktakeComment'] = l$addStocktakeComment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addStocktakeComment = addStocktakeComment;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addStocktakeComment, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddStocktakeComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addStocktakeComment = addStocktakeComment;
    final lOther$addStocktakeComment = other.addStocktakeComment;
    if (l$addStocktakeComment != lOther$addStocktakeComment) {
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

extension UtilityExtension$Mutation$AddStocktakeComment
    on Mutation$AddStocktakeComment {
  CopyWith$Mutation$AddStocktakeComment<Mutation$AddStocktakeComment>
  get copyWith => CopyWith$Mutation$AddStocktakeComment(this, (i) => i);
}

abstract class CopyWith$Mutation$AddStocktakeComment<TRes> {
  factory CopyWith$Mutation$AddStocktakeComment(
    Mutation$AddStocktakeComment instance,
    TRes Function(Mutation$AddStocktakeComment) then,
  ) = _CopyWithImpl$Mutation$AddStocktakeComment;

  factory CopyWith$Mutation$AddStocktakeComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddStocktakeComment;

  TRes call({
    Mutation$AddStocktakeComment$addStocktakeComment? addStocktakeComment,
    String? $__typename,
  });
  CopyWith$Mutation$AddStocktakeComment$addStocktakeComment<TRes>
  get addStocktakeComment;
}

class _CopyWithImpl$Mutation$AddStocktakeComment<TRes>
    implements CopyWith$Mutation$AddStocktakeComment<TRes> {
  _CopyWithImpl$Mutation$AddStocktakeComment(this._instance, this._then);

  final Mutation$AddStocktakeComment _instance;

  final TRes Function(Mutation$AddStocktakeComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addStocktakeComment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeComment(
      addStocktakeComment:
          addStocktakeComment == _undefined || addStocktakeComment == null
          ? _instance.addStocktakeComment
          : (addStocktakeComment
                as Mutation$AddStocktakeComment$addStocktakeComment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddStocktakeComment$addStocktakeComment<TRes>
  get addStocktakeComment {
    final local$addStocktakeComment = _instance.addStocktakeComment;
    return CopyWith$Mutation$AddStocktakeComment$addStocktakeComment(
      local$addStocktakeComment,
      (e) => call(addStocktakeComment: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddStocktakeComment<TRes>
    implements CopyWith$Mutation$AddStocktakeComment<TRes> {
  _CopyWithStubImpl$Mutation$AddStocktakeComment(this._res);

  TRes _res;

  call({
    Mutation$AddStocktakeComment$addStocktakeComment? addStocktakeComment,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddStocktakeComment$addStocktakeComment<TRes>
  get addStocktakeComment =>
      CopyWith$Mutation$AddStocktakeComment$addStocktakeComment.stub(_res);
}

const documentNodeMutationAddStocktakeComment = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddStocktakeComment'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'comment')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'addStocktakeComment'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'comment'),
                value: VariableNode(name: NameNode(value: 'comment')),
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

class Mutation$AddStocktakeComment$addStocktakeComment {
  Mutation$AddStocktakeComment$addStocktakeComment({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfListOfComment',
  });

  factory Mutation$AddStocktakeComment$addStocktakeComment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeComment$addStocktakeComment(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: (l$data as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$AddStocktakeComment$addStocktakeComment$data.fromJson(
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

  final List<Mutation$AddStocktakeComment$addStocktakeComment$data?>? data;

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
    if (other is! Mutation$AddStocktakeComment$addStocktakeComment ||
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

extension UtilityExtension$Mutation$AddStocktakeComment$addStocktakeComment
    on Mutation$AddStocktakeComment$addStocktakeComment {
  CopyWith$Mutation$AddStocktakeComment$addStocktakeComment<
    Mutation$AddStocktakeComment$addStocktakeComment
  >
  get copyWith =>
      CopyWith$Mutation$AddStocktakeComment$addStocktakeComment(this, (i) => i);
}

abstract class CopyWith$Mutation$AddStocktakeComment$addStocktakeComment<TRes> {
  factory CopyWith$Mutation$AddStocktakeComment$addStocktakeComment(
    Mutation$AddStocktakeComment$addStocktakeComment instance,
    TRes Function(Mutation$AddStocktakeComment$addStocktakeComment) then,
  ) = _CopyWithImpl$Mutation$AddStocktakeComment$addStocktakeComment;

  factory CopyWith$Mutation$AddStocktakeComment$addStocktakeComment.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStocktakeComment$addStocktakeComment;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    List<Mutation$AddStocktakeComment$addStocktakeComment$data?>? data,
    String? $__typename,
  });
  TRes data(
    Iterable<Mutation$AddStocktakeComment$addStocktakeComment$data?>? Function(
      Iterable<
        CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data<
          Mutation$AddStocktakeComment$addStocktakeComment$data
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$AddStocktakeComment$addStocktakeComment<TRes>
    implements CopyWith$Mutation$AddStocktakeComment$addStocktakeComment<TRes> {
  _CopyWithImpl$Mutation$AddStocktakeComment$addStocktakeComment(
    this._instance,
    this._then,
  );

  final Mutation$AddStocktakeComment$addStocktakeComment _instance;

  final TRes Function(Mutation$AddStocktakeComment$addStocktakeComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeComment$addStocktakeComment(
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
          : (data
                as List<
                  Mutation$AddStocktakeComment$addStocktakeComment$data?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes data(
    Iterable<Mutation$AddStocktakeComment$addStocktakeComment$data?>? Function(
      Iterable<
        CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data<
          Mutation$AddStocktakeComment$addStocktakeComment$data
        >?
      >?,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Mutation$AddStocktakeComment$addStocktakeComment<TRes>
    implements CopyWith$Mutation$AddStocktakeComment$addStocktakeComment<TRes> {
  _CopyWithStubImpl$Mutation$AddStocktakeComment$addStocktakeComment(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    List<Mutation$AddStocktakeComment$addStocktakeComment$data?>? data,
    String? $__typename,
  }) => _res;

  data(_fn) => _res;
}

class Mutation$AddStocktakeComment$addStocktakeComment$data {
  Mutation$AddStocktakeComment$addStocktakeComment$data({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Mutation$AddStocktakeComment$addStocktakeComment$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeComment$addStocktakeComment$data(
      content: (l$content as String),
      created:
          Mutation$AddStocktakeComment$addStocktakeComment$data$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Mutation$AddStocktakeComment$addStocktakeComment$data$created created;

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
    if (other is! Mutation$AddStocktakeComment$addStocktakeComment$data ||
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

extension UtilityExtension$Mutation$AddStocktakeComment$addStocktakeComment$data
    on Mutation$AddStocktakeComment$addStocktakeComment$data {
  CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data<
    Mutation$AddStocktakeComment$addStocktakeComment$data
  >
  get copyWith =>
      CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data<
  TRes
> {
  factory CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data(
    Mutation$AddStocktakeComment$addStocktakeComment$data instance,
    TRes Function(Mutation$AddStocktakeComment$addStocktakeComment$data) then,
  ) = _CopyWithImpl$Mutation$AddStocktakeComment$addStocktakeComment$data;

  factory CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStocktakeComment$addStocktakeComment$data;

  TRes call({
    String? content,
    Mutation$AddStocktakeComment$addStocktakeComment$data$created? created,
    String? $__typename,
  });
  CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created<TRes>
  get created;
}

class _CopyWithImpl$Mutation$AddStocktakeComment$addStocktakeComment$data<TRes>
    implements
        CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data<TRes> {
  _CopyWithImpl$Mutation$AddStocktakeComment$addStocktakeComment$data(
    this._instance,
    this._then,
  );

  final Mutation$AddStocktakeComment$addStocktakeComment$data _instance;

  final TRes Function(Mutation$AddStocktakeComment$addStocktakeComment$data)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeComment$addStocktakeComment$data(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$AddStocktakeComment$addStocktakeComment$data$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddStocktakeComment$addStocktakeComment$data<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data<TRes> {
  _CopyWithStubImpl$Mutation$AddStocktakeComment$addStocktakeComment$data(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Mutation$AddStocktakeComment$addStocktakeComment$data$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created<TRes>
  get created =>
      CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created.stub(
        _res,
      );
}

class Mutation$AddStocktakeComment$addStocktakeComment$data$created {
  Mutation$AddStocktakeComment$addStocktakeComment$data$created({
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Mutation$AddStocktakeComment$addStocktakeComment$data$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeComment$addStocktakeComment$data$created(
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AddStocktakeComment$addStocktakeComment$data$created ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$AddStocktakeComment$addStocktakeComment$data$created
    on Mutation$AddStocktakeComment$addStocktakeComment$data$created {
  CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created<
    Mutation$AddStocktakeComment$addStocktakeComment$data$created
  >
  get copyWith =>
      CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created<
  TRes
> {
  factory CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created(
    Mutation$AddStocktakeComment$addStocktakeComment$data$created instance,
    TRes Function(Mutation$AddStocktakeComment$addStocktakeComment$data$created)
    then,
  ) = _CopyWithImpl$Mutation$AddStocktakeComment$addStocktakeComment$data$created;

  factory CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStocktakeComment$addStocktakeComment$data$created;

  TRes call({String? userName, DateTime? at, String? $__typename});
}

class _CopyWithImpl$Mutation$AddStocktakeComment$addStocktakeComment$data$created<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created<
          TRes
        > {
  _CopyWithImpl$Mutation$AddStocktakeComment$addStocktakeComment$data$created(
    this._instance,
    this._then,
  );

  final Mutation$AddStocktakeComment$addStocktakeComment$data$created _instance;

  final TRes Function(
    Mutation$AddStocktakeComment$addStocktakeComment$data$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeComment$addStocktakeComment$data$created(
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

class _CopyWithStubImpl$Mutation$AddStocktakeComment$addStocktakeComment$data$created<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeComment$addStocktakeComment$data$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddStocktakeComment$addStocktakeComment$data$created(
    this._res,
  );

  TRes _res;

  call({String? userName, DateTime? at, String? $__typename}) => _res;
}
