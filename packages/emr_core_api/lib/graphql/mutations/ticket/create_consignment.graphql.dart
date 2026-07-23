import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$createNewConsignmentNote {
  factory Variables$Mutation$createNewConsignmentNote({
    required Input$ConsignmentNoteCreateRequestInput request,
    String? signatureImage,
  }) => Variables$Mutation$createNewConsignmentNote._({
    r'request': request,
    if (signatureImage != null) r'signatureImage': signatureImage,
  });

  Variables$Mutation$createNewConsignmentNote._(this._$data);

  factory Variables$Mutation$createNewConsignmentNote.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$request = data['request'];
    result$data['request'] = Input$ConsignmentNoteCreateRequestInput.fromJson(
      (l$request as Map<String, dynamic>),
    );
    if (data.containsKey('signatureImage')) {
      final l$signatureImage = data['signatureImage'];
      result$data['signatureImage'] = (l$signatureImage as String?);
    }
    return Variables$Mutation$createNewConsignmentNote._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ConsignmentNoteCreateRequestInput get request =>
      (_$data['request'] as Input$ConsignmentNoteCreateRequestInput);

  String? get signatureImage => (_$data['signatureImage'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$request = request;
    result$data['request'] = l$request.toJson();
    if (_$data.containsKey('signatureImage')) {
      final l$signatureImage = signatureImage;
      result$data['signatureImage'] = l$signatureImage;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$createNewConsignmentNote<
    Variables$Mutation$createNewConsignmentNote
  >
  get copyWith =>
      CopyWith$Variables$Mutation$createNewConsignmentNote(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createNewConsignmentNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$request = request;
    final lOther$request = other.request;
    if (l$request != lOther$request) {
      return false;
    }
    final l$signatureImage = signatureImage;
    final lOther$signatureImage = other.signatureImage;
    if (_$data.containsKey('signatureImage') !=
        other._$data.containsKey('signatureImage')) {
      return false;
    }
    if (l$signatureImage != lOther$signatureImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$request = request;
    final l$signatureImage = signatureImage;
    return Object.hashAll([
      l$request,
      _$data.containsKey('signatureImage') ? l$signatureImage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$createNewConsignmentNote<TRes> {
  factory CopyWith$Variables$Mutation$createNewConsignmentNote(
    Variables$Mutation$createNewConsignmentNote instance,
    TRes Function(Variables$Mutation$createNewConsignmentNote) then,
  ) = _CopyWithImpl$Variables$Mutation$createNewConsignmentNote;

  factory CopyWith$Variables$Mutation$createNewConsignmentNote.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createNewConsignmentNote;

  TRes call({
    Input$ConsignmentNoteCreateRequestInput? request,
    String? signatureImage,
  });
}

class _CopyWithImpl$Variables$Mutation$createNewConsignmentNote<TRes>
    implements CopyWith$Variables$Mutation$createNewConsignmentNote<TRes> {
  _CopyWithImpl$Variables$Mutation$createNewConsignmentNote(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createNewConsignmentNote _instance;

  final TRes Function(Variables$Mutation$createNewConsignmentNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? request = _undefined,
    Object? signatureImage = _undefined,
  }) => _then(
    Variables$Mutation$createNewConsignmentNote._({
      ..._instance._$data,
      if (request != _undefined && request != null)
        'request': (request as Input$ConsignmentNoteCreateRequestInput),
      if (signatureImage != _undefined)
        'signatureImage': (signatureImage as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$createNewConsignmentNote<TRes>
    implements CopyWith$Variables$Mutation$createNewConsignmentNote<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createNewConsignmentNote(this._res);

  TRes _res;

  call({
    Input$ConsignmentNoteCreateRequestInput? request,
    String? signatureImage,
  }) => _res;
}

class Mutation$createNewConsignmentNote {
  Mutation$createNewConsignmentNote({
    required this.createNewConsignmentNote,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createNewConsignmentNote.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$createNewConsignmentNote = json['createNewConsignmentNote'];
    final l$$__typename = json['__typename'];
    return Mutation$createNewConsignmentNote(
      createNewConsignmentNote: (l$createNewConsignmentNote as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool createNewConsignmentNote;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createNewConsignmentNote = createNewConsignmentNote;
    _resultData['createNewConsignmentNote'] = l$createNewConsignmentNote;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createNewConsignmentNote = createNewConsignmentNote;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createNewConsignmentNote, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createNewConsignmentNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createNewConsignmentNote = createNewConsignmentNote;
    final lOther$createNewConsignmentNote = other.createNewConsignmentNote;
    if (l$createNewConsignmentNote != lOther$createNewConsignmentNote) {
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

extension UtilityExtension$Mutation$createNewConsignmentNote
    on Mutation$createNewConsignmentNote {
  CopyWith$Mutation$createNewConsignmentNote<Mutation$createNewConsignmentNote>
  get copyWith => CopyWith$Mutation$createNewConsignmentNote(this, (i) => i);
}

abstract class CopyWith$Mutation$createNewConsignmentNote<TRes> {
  factory CopyWith$Mutation$createNewConsignmentNote(
    Mutation$createNewConsignmentNote instance,
    TRes Function(Mutation$createNewConsignmentNote) then,
  ) = _CopyWithImpl$Mutation$createNewConsignmentNote;

  factory CopyWith$Mutation$createNewConsignmentNote.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createNewConsignmentNote;

  TRes call({bool? createNewConsignmentNote, String? $__typename});
}

class _CopyWithImpl$Mutation$createNewConsignmentNote<TRes>
    implements CopyWith$Mutation$createNewConsignmentNote<TRes> {
  _CopyWithImpl$Mutation$createNewConsignmentNote(this._instance, this._then);

  final Mutation$createNewConsignmentNote _instance;

  final TRes Function(Mutation$createNewConsignmentNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createNewConsignmentNote = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$createNewConsignmentNote(
      createNewConsignmentNote:
          createNewConsignmentNote == _undefined ||
              createNewConsignmentNote == null
          ? _instance.createNewConsignmentNote
          : (createNewConsignmentNote as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$createNewConsignmentNote<TRes>
    implements CopyWith$Mutation$createNewConsignmentNote<TRes> {
  _CopyWithStubImpl$Mutation$createNewConsignmentNote(this._res);

  TRes _res;

  call({bool? createNewConsignmentNote, String? $__typename}) => _res;
}

const documentNodeMutationcreateNewConsignmentNote = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createNewConsignmentNote'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'request')),
          type: NamedTypeNode(
            name: NameNode(value: 'ConsignmentNoteCreateRequestInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'signatureImage')),
          type: NamedTypeNode(
            name: NameNode(value: 'Upload'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createNewConsignmentNote'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'request'),
                value: VariableNode(name: NameNode(value: 'request')),
              ),
              ArgumentNode(
                name: NameNode(value: 'signatureImage'),
                value: VariableNode(name: NameNode(value: 'signatureImage')),
              ),
            ],
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
  ],
);
