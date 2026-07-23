import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddInspectionComment {
  factory Variables$Mutation$AddInspectionComment({
    required Input$TicketInspectionInput input,
  }) => Variables$Mutation$AddInspectionComment._({r'input': input});

  Variables$Mutation$AddInspectionComment._(this._$data);

  factory Variables$Mutation$AddInspectionComment.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$TicketInspectionInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddInspectionComment._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TicketInspectionInput get input =>
      (_$data['input'] as Input$TicketInspectionInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddInspectionComment<
    Variables$Mutation$AddInspectionComment
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddInspectionComment(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddInspectionComment ||
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

abstract class CopyWith$Variables$Mutation$AddInspectionComment<TRes> {
  factory CopyWith$Variables$Mutation$AddInspectionComment(
    Variables$Mutation$AddInspectionComment instance,
    TRes Function(Variables$Mutation$AddInspectionComment) then,
  ) = _CopyWithImpl$Variables$Mutation$AddInspectionComment;

  factory CopyWith$Variables$Mutation$AddInspectionComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddInspectionComment;

  TRes call({Input$TicketInspectionInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddInspectionComment<TRes>
    implements CopyWith$Variables$Mutation$AddInspectionComment<TRes> {
  _CopyWithImpl$Variables$Mutation$AddInspectionComment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddInspectionComment _instance;

  final TRes Function(Variables$Mutation$AddInspectionComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddInspectionComment._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$TicketInspectionInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddInspectionComment<TRes>
    implements CopyWith$Variables$Mutation$AddInspectionComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddInspectionComment(this._res);

  TRes _res;

  call({Input$TicketInspectionInput? input}) => _res;
}

class Mutation$AddInspectionComment {
  Mutation$AddInspectionComment({
    required this.addInspectionComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddInspectionComment.fromJson(Map<String, dynamic> json) {
    final l$addInspectionComment = json['addInspectionComment'];
    final l$$__typename = json['__typename'];
    return Mutation$AddInspectionComment(
      addInspectionComment: (l$addInspectionComment as List<dynamic>)
          .map(
            (e) => Mutation$AddInspectionComment$addInspectionComment.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$AddInspectionComment$addInspectionComment>
  addInspectionComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addInspectionComment = addInspectionComment;
    _resultData['addInspectionComment'] = l$addInspectionComment
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addInspectionComment = addInspectionComment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$addInspectionComment.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddInspectionComment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addInspectionComment = addInspectionComment;
    final lOther$addInspectionComment = other.addInspectionComment;
    if (l$addInspectionComment.length != lOther$addInspectionComment.length) {
      return false;
    }
    for (int i = 0; i < l$addInspectionComment.length; i++) {
      final l$addInspectionComment$entry = l$addInspectionComment[i];
      final lOther$addInspectionComment$entry = lOther$addInspectionComment[i];
      if (l$addInspectionComment$entry != lOther$addInspectionComment$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$AddInspectionComment
    on Mutation$AddInspectionComment {
  CopyWith$Mutation$AddInspectionComment<Mutation$AddInspectionComment>
  get copyWith => CopyWith$Mutation$AddInspectionComment(this, (i) => i);
}

abstract class CopyWith$Mutation$AddInspectionComment<TRes> {
  factory CopyWith$Mutation$AddInspectionComment(
    Mutation$AddInspectionComment instance,
    TRes Function(Mutation$AddInspectionComment) then,
  ) = _CopyWithImpl$Mutation$AddInspectionComment;

  factory CopyWith$Mutation$AddInspectionComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddInspectionComment;

  TRes call({
    List<Mutation$AddInspectionComment$addInspectionComment>?
    addInspectionComment,
    String? $__typename,
  });
  TRes addInspectionComment(
    Iterable<Mutation$AddInspectionComment$addInspectionComment> Function(
      Iterable<
        CopyWith$Mutation$AddInspectionComment$addInspectionComment<
          Mutation$AddInspectionComment$addInspectionComment
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$AddInspectionComment<TRes>
    implements CopyWith$Mutation$AddInspectionComment<TRes> {
  _CopyWithImpl$Mutation$AddInspectionComment(this._instance, this._then);

  final Mutation$AddInspectionComment _instance;

  final TRes Function(Mutation$AddInspectionComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addInspectionComment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddInspectionComment(
      addInspectionComment:
          addInspectionComment == _undefined || addInspectionComment == null
          ? _instance.addInspectionComment
          : (addInspectionComment
                as List<Mutation$AddInspectionComment$addInspectionComment>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes addInspectionComment(
    Iterable<Mutation$AddInspectionComment$addInspectionComment> Function(
      Iterable<
        CopyWith$Mutation$AddInspectionComment$addInspectionComment<
          Mutation$AddInspectionComment$addInspectionComment
        >
      >,
    )
    _fn,
  ) => call(
    addInspectionComment: _fn(
      _instance.addInspectionComment.map(
        (e) => CopyWith$Mutation$AddInspectionComment$addInspectionComment(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$AddInspectionComment<TRes>
    implements CopyWith$Mutation$AddInspectionComment<TRes> {
  _CopyWithStubImpl$Mutation$AddInspectionComment(this._res);

  TRes _res;

  call({
    List<Mutation$AddInspectionComment$addInspectionComment>?
    addInspectionComment,
    String? $__typename,
  }) => _res;

  addInspectionComment(_fn) => _res;
}

const documentNodeMutationAddInspectionComment = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddInspectionComment'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'TicketInspectionInput'),
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
            name: NameNode(value: 'addInspectionComment'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
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
                        name: NameNode(value: 'at'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'user'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'name'),
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

class Mutation$AddInspectionComment$addInspectionComment {
  Mutation$AddInspectionComment$addInspectionComment({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Mutation$AddInspectionComment$addInspectionComment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Mutation$AddInspectionComment$addInspectionComment(
      content: (l$content as String),
      created:
          Mutation$AddInspectionComment$addInspectionComment$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Mutation$AddInspectionComment$addInspectionComment$created created;

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
    if (other is! Mutation$AddInspectionComment$addInspectionComment ||
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

extension UtilityExtension$Mutation$AddInspectionComment$addInspectionComment
    on Mutation$AddInspectionComment$addInspectionComment {
  CopyWith$Mutation$AddInspectionComment$addInspectionComment<
    Mutation$AddInspectionComment$addInspectionComment
  >
  get copyWith => CopyWith$Mutation$AddInspectionComment$addInspectionComment(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$AddInspectionComment$addInspectionComment<
  TRes
> {
  factory CopyWith$Mutation$AddInspectionComment$addInspectionComment(
    Mutation$AddInspectionComment$addInspectionComment instance,
    TRes Function(Mutation$AddInspectionComment$addInspectionComment) then,
  ) = _CopyWithImpl$Mutation$AddInspectionComment$addInspectionComment;

  factory CopyWith$Mutation$AddInspectionComment$addInspectionComment.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddInspectionComment$addInspectionComment;

  TRes call({
    String? content,
    Mutation$AddInspectionComment$addInspectionComment$created? created,
    String? $__typename,
  });
  CopyWith$Mutation$AddInspectionComment$addInspectionComment$created<TRes>
  get created;
}

class _CopyWithImpl$Mutation$AddInspectionComment$addInspectionComment<TRes>
    implements
        CopyWith$Mutation$AddInspectionComment$addInspectionComment<TRes> {
  _CopyWithImpl$Mutation$AddInspectionComment$addInspectionComment(
    this._instance,
    this._then,
  );

  final Mutation$AddInspectionComment$addInspectionComment _instance;

  final TRes Function(Mutation$AddInspectionComment$addInspectionComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddInspectionComment$addInspectionComment(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$AddInspectionComment$addInspectionComment$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddInspectionComment$addInspectionComment$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$AddInspectionComment$addInspectionComment$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddInspectionComment$addInspectionComment<TRes>
    implements
        CopyWith$Mutation$AddInspectionComment$addInspectionComment<TRes> {
  _CopyWithStubImpl$Mutation$AddInspectionComment$addInspectionComment(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Mutation$AddInspectionComment$addInspectionComment$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddInspectionComment$addInspectionComment$created<TRes>
  get created =>
      CopyWith$Mutation$AddInspectionComment$addInspectionComment$created.stub(
        _res,
      );
}

class Mutation$AddInspectionComment$addInspectionComment$created {
  Mutation$AddInspectionComment$addInspectionComment$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Mutation$AddInspectionComment$addInspectionComment$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$AddInspectionComment$addInspectionComment$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Mutation$AddInspectionComment$addInspectionComment$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Mutation$AddInspectionComment$addInspectionComment$created$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddInspectionComment$addInspectionComment$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Mutation$AddInspectionComment$addInspectionComment$created
    on Mutation$AddInspectionComment$addInspectionComment$created {
  CopyWith$Mutation$AddInspectionComment$addInspectionComment$created<
    Mutation$AddInspectionComment$addInspectionComment$created
  >
  get copyWith =>
      CopyWith$Mutation$AddInspectionComment$addInspectionComment$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddInspectionComment$addInspectionComment$created<
  TRes
> {
  factory CopyWith$Mutation$AddInspectionComment$addInspectionComment$created(
    Mutation$AddInspectionComment$addInspectionComment$created instance,
    TRes Function(Mutation$AddInspectionComment$addInspectionComment$created)
    then,
  ) = _CopyWithImpl$Mutation$AddInspectionComment$addInspectionComment$created;

  factory CopyWith$Mutation$AddInspectionComment$addInspectionComment$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddInspectionComment$addInspectionComment$created;

  TRes call({
    DateTime? at,
    Mutation$AddInspectionComment$addInspectionComment$created$user? user,
    String? $__typename,
  });
  CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user<TRes>
  get user;
}

class _CopyWithImpl$Mutation$AddInspectionComment$addInspectionComment$created<
  TRes
>
    implements
        CopyWith$Mutation$AddInspectionComment$addInspectionComment$created<
          TRes
        > {
  _CopyWithImpl$Mutation$AddInspectionComment$addInspectionComment$created(
    this._instance,
    this._then,
  );

  final Mutation$AddInspectionComment$addInspectionComment$created _instance;

  final TRes Function(
    Mutation$AddInspectionComment$addInspectionComment$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddInspectionComment$addInspectionComment$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user
                as Mutation$AddInspectionComment$addInspectionComment$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user<TRes>
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddInspectionComment$addInspectionComment$created<
  TRes
>
    implements
        CopyWith$Mutation$AddInspectionComment$addInspectionComment$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddInspectionComment$addInspectionComment$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    Mutation$AddInspectionComment$addInspectionComment$created$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user<TRes>
  get user =>
      CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user.stub(
        _res,
      );
}

class Mutation$AddInspectionComment$addInspectionComment$created$user {
  Mutation$AddInspectionComment$addInspectionComment$created$user({
    required this.name,
    this.$__typename = 'UserInfo',
  });

  factory Mutation$AddInspectionComment$addInspectionComment$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$AddInspectionComment$addInspectionComment$created$user(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AddInspectionComment$addInspectionComment$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$AddInspectionComment$addInspectionComment$created$user
    on Mutation$AddInspectionComment$addInspectionComment$created$user {
  CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user<
    Mutation$AddInspectionComment$addInspectionComment$created$user
  >
  get copyWith =>
      CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user<
  TRes
> {
  factory CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user(
    Mutation$AddInspectionComment$addInspectionComment$created$user instance,
    TRes Function(
      Mutation$AddInspectionComment$addInspectionComment$created$user,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddInspectionComment$addInspectionComment$created$user;

  factory CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddInspectionComment$addInspectionComment$created$user;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AddInspectionComment$addInspectionComment$created$user<
  TRes
>
    implements
        CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user<
          TRes
        > {
  _CopyWithImpl$Mutation$AddInspectionComment$addInspectionComment$created$user(
    this._instance,
    this._then,
  );

  final Mutation$AddInspectionComment$addInspectionComment$created$user
  _instance;

  final TRes Function(
    Mutation$AddInspectionComment$addInspectionComment$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddInspectionComment$addInspectionComment$created$user(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddInspectionComment$addInspectionComment$created$user<
  TRes
>
    implements
        CopyWith$Mutation$AddInspectionComment$addInspectionComment$created$user<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddInspectionComment$addInspectionComment$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
