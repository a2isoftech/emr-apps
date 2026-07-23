import 'package:gql/ast.dart';

class Variables$Mutation$UpdatePunchNote {
  factory Variables$Mutation$UpdatePunchNote({
    required int id,
    required String note,
  }) =>
      Variables$Mutation$UpdatePunchNote._({
        r'id': id,
        r'note': note,
      });

  Variables$Mutation$UpdatePunchNote._(this._$data);

  factory Variables$Mutation$UpdatePunchNote.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$note = data['note'];
    result$data['note'] = (l$note as String);
    return Variables$Mutation$UpdatePunchNote._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String get note => (_$data['note'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$note = note;
    result$data['note'] = l$note;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdatePunchNote<
          Variables$Mutation$UpdatePunchNote>
      get copyWith => CopyWith$Variables$Mutation$UpdatePunchNote(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdatePunchNote) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (l$note != lOther$note) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$note = note;
    return Object.hashAll([
      l$id,
      l$note,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdatePunchNote<TRes> {
  factory CopyWith$Variables$Mutation$UpdatePunchNote(
    Variables$Mutation$UpdatePunchNote instance,
    TRes Function(Variables$Mutation$UpdatePunchNote) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePunchNote;

  factory CopyWith$Variables$Mutation$UpdatePunchNote.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdatePunchNote;

  TRes call({
    int? id,
    String? note,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdatePunchNote<TRes>
    implements CopyWith$Variables$Mutation$UpdatePunchNote<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePunchNote(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePunchNote _instance;

  final TRes Function(Variables$Mutation$UpdatePunchNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? note = _undefined,
  }) =>
      _then(Variables$Mutation$UpdatePunchNote._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (note != _undefined && note != null) 'note': (note as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdatePunchNote<TRes>
    implements CopyWith$Variables$Mutation$UpdatePunchNote<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePunchNote(this._res);

  TRes _res;

  call({
    int? id,
    String? note,
  }) =>
      _res;
}

class Mutation$UpdatePunchNote {
  Mutation$UpdatePunchNote({
    this.updateNote,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdatePunchNote.fromJson(Map<String, dynamic> json) {
    final l$updateNote = json['updateNote'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePunchNote(
      updateNote: l$updateNote == null
          ? null
          : Mutation$UpdatePunchNote$updateNote.fromJson(
              (l$updateNote as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdatePunchNote$updateNote? updateNote;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateNote = updateNote;
    _resultData['updateNote'] = l$updateNote?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateNote = updateNote;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateNote,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdatePunchNote) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateNote = updateNote;
    final lOther$updateNote = other.updateNote;
    if (l$updateNote != lOther$updateNote) {
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

extension UtilityExtension$Mutation$UpdatePunchNote
    on Mutation$UpdatePunchNote {
  CopyWith$Mutation$UpdatePunchNote<Mutation$UpdatePunchNote> get copyWith =>
      CopyWith$Mutation$UpdatePunchNote(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdatePunchNote<TRes> {
  factory CopyWith$Mutation$UpdatePunchNote(
    Mutation$UpdatePunchNote instance,
    TRes Function(Mutation$UpdatePunchNote) then,
  ) = _CopyWithImpl$Mutation$UpdatePunchNote;

  factory CopyWith$Mutation$UpdatePunchNote.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePunchNote;

  TRes call({
    Mutation$UpdatePunchNote$updateNote? updateNote,
    String? $__typename,
  });
  CopyWith$Mutation$UpdatePunchNote$updateNote<TRes> get updateNote;
}

class _CopyWithImpl$Mutation$UpdatePunchNote<TRes>
    implements CopyWith$Mutation$UpdatePunchNote<TRes> {
  _CopyWithImpl$Mutation$UpdatePunchNote(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePunchNote _instance;

  final TRes Function(Mutation$UpdatePunchNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateNote = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdatePunchNote(
        updateNote: updateNote == _undefined
            ? _instance.updateNote
            : (updateNote as Mutation$UpdatePunchNote$updateNote?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdatePunchNote$updateNote<TRes> get updateNote {
    final local$updateNote = _instance.updateNote;
    return local$updateNote == null
        ? CopyWith$Mutation$UpdatePunchNote$updateNote.stub(_then(_instance))
        : CopyWith$Mutation$UpdatePunchNote$updateNote(
            local$updateNote, (e) => call(updateNote: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdatePunchNote<TRes>
    implements CopyWith$Mutation$UpdatePunchNote<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePunchNote(this._res);

  TRes _res;

  call({
    Mutation$UpdatePunchNote$updateNote? updateNote,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdatePunchNote$updateNote<TRes> get updateNote =>
      CopyWith$Mutation$UpdatePunchNote$updateNote.stub(_res);
}

const documentNodeMutationUpdatePunchNote = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdatePunchNote'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'note')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateNote'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'note'),
            value: VariableNode(name: NameNode(value: 'note')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$UpdatePunchNote$updateNote {
  Mutation$UpdatePunchNote$updateNote({
    required this.success,
    required this.message,
    this.$__typename = 'ApiResponse',
  });

  factory Mutation$UpdatePunchNote$updateNote.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePunchNote$updateNote(
      success: (l$success as bool),
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdatePunchNote$updateNote) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdatePunchNote$updateNote
    on Mutation$UpdatePunchNote$updateNote {
  CopyWith$Mutation$UpdatePunchNote$updateNote<
          Mutation$UpdatePunchNote$updateNote>
      get copyWith => CopyWith$Mutation$UpdatePunchNote$updateNote(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdatePunchNote$updateNote<TRes> {
  factory CopyWith$Mutation$UpdatePunchNote$updateNote(
    Mutation$UpdatePunchNote$updateNote instance,
    TRes Function(Mutation$UpdatePunchNote$updateNote) then,
  ) = _CopyWithImpl$Mutation$UpdatePunchNote$updateNote;

  factory CopyWith$Mutation$UpdatePunchNote$updateNote.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePunchNote$updateNote;

  TRes call({
    bool? success,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdatePunchNote$updateNote<TRes>
    implements CopyWith$Mutation$UpdatePunchNote$updateNote<TRes> {
  _CopyWithImpl$Mutation$UpdatePunchNote$updateNote(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePunchNote$updateNote _instance;

  final TRes Function(Mutation$UpdatePunchNote$updateNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdatePunchNote$updateNote(
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdatePunchNote$updateNote<TRes>
    implements CopyWith$Mutation$UpdatePunchNote$updateNote<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePunchNote$updateNote(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? $__typename,
  }) =>
      _res;
}
