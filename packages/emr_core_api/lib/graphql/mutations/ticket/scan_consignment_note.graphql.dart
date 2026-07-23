import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$scanConsignmentNote {
  factory Variables$Mutation$scanConsignmentNote({
    required Input$ScanConsignmentNoteRequestInput request,
    String? consignmentImage,
  }) => Variables$Mutation$scanConsignmentNote._({
    r'request': request,
    if (consignmentImage != null) r'consignmentImage': consignmentImage,
  });

  Variables$Mutation$scanConsignmentNote._(this._$data);

  factory Variables$Mutation$scanConsignmentNote.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$request = data['request'];
    result$data['request'] = Input$ScanConsignmentNoteRequestInput.fromJson(
      (l$request as Map<String, dynamic>),
    );
    if (data.containsKey('consignmentImage')) {
      final l$consignmentImage = data['consignmentImage'];
      result$data['consignmentImage'] = (l$consignmentImage as String?);
    }
    return Variables$Mutation$scanConsignmentNote._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ScanConsignmentNoteRequestInput get request =>
      (_$data['request'] as Input$ScanConsignmentNoteRequestInput);

  String? get consignmentImage => (_$data['consignmentImage'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$request = request;
    result$data['request'] = l$request.toJson();
    if (_$data.containsKey('consignmentImage')) {
      final l$consignmentImage = consignmentImage;
      result$data['consignmentImage'] = l$consignmentImage;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$scanConsignmentNote<
    Variables$Mutation$scanConsignmentNote
  >
  get copyWith =>
      CopyWith$Variables$Mutation$scanConsignmentNote(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$scanConsignmentNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$request = request;
    final lOther$request = other.request;
    if (l$request != lOther$request) {
      return false;
    }
    final l$consignmentImage = consignmentImage;
    final lOther$consignmentImage = other.consignmentImage;
    if (_$data.containsKey('consignmentImage') !=
        other._$data.containsKey('consignmentImage')) {
      return false;
    }
    if (l$consignmentImage != lOther$consignmentImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$request = request;
    final l$consignmentImage = consignmentImage;
    return Object.hashAll([
      l$request,
      _$data.containsKey('consignmentImage') ? l$consignmentImage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$scanConsignmentNote<TRes> {
  factory CopyWith$Variables$Mutation$scanConsignmentNote(
    Variables$Mutation$scanConsignmentNote instance,
    TRes Function(Variables$Mutation$scanConsignmentNote) then,
  ) = _CopyWithImpl$Variables$Mutation$scanConsignmentNote;

  factory CopyWith$Variables$Mutation$scanConsignmentNote.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$scanConsignmentNote;

  TRes call({
    Input$ScanConsignmentNoteRequestInput? request,
    String? consignmentImage,
  });
}

class _CopyWithImpl$Variables$Mutation$scanConsignmentNote<TRes>
    implements CopyWith$Variables$Mutation$scanConsignmentNote<TRes> {
  _CopyWithImpl$Variables$Mutation$scanConsignmentNote(
    this._instance,
    this._then,
  );

  final Variables$Mutation$scanConsignmentNote _instance;

  final TRes Function(Variables$Mutation$scanConsignmentNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? request = _undefined,
    Object? consignmentImage = _undefined,
  }) => _then(
    Variables$Mutation$scanConsignmentNote._({
      ..._instance._$data,
      if (request != _undefined && request != null)
        'request': (request as Input$ScanConsignmentNoteRequestInput),
      if (consignmentImage != _undefined)
        'consignmentImage': (consignmentImage as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$scanConsignmentNote<TRes>
    implements CopyWith$Variables$Mutation$scanConsignmentNote<TRes> {
  _CopyWithStubImpl$Variables$Mutation$scanConsignmentNote(this._res);

  TRes _res;

  call({
    Input$ScanConsignmentNoteRequestInput? request,
    String? consignmentImage,
  }) => _res;
}

class Mutation$scanConsignmentNote {
  Mutation$scanConsignmentNote({
    required this.scanConsignmentNote,
    this.$__typename = 'Mutation',
  });

  factory Mutation$scanConsignmentNote.fromJson(Map<String, dynamic> json) {
    final l$scanConsignmentNote = json['scanConsignmentNote'];
    final l$$__typename = json['__typename'];
    return Mutation$scanConsignmentNote(
      scanConsignmentNote: (l$scanConsignmentNote as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool scanConsignmentNote;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scanConsignmentNote = scanConsignmentNote;
    _resultData['scanConsignmentNote'] = l$scanConsignmentNote;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scanConsignmentNote = scanConsignmentNote;
    final l$$__typename = $__typename;
    return Object.hashAll([l$scanConsignmentNote, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$scanConsignmentNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scanConsignmentNote = scanConsignmentNote;
    final lOther$scanConsignmentNote = other.scanConsignmentNote;
    if (l$scanConsignmentNote != lOther$scanConsignmentNote) {
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

extension UtilityExtension$Mutation$scanConsignmentNote
    on Mutation$scanConsignmentNote {
  CopyWith$Mutation$scanConsignmentNote<Mutation$scanConsignmentNote>
  get copyWith => CopyWith$Mutation$scanConsignmentNote(this, (i) => i);
}

abstract class CopyWith$Mutation$scanConsignmentNote<TRes> {
  factory CopyWith$Mutation$scanConsignmentNote(
    Mutation$scanConsignmentNote instance,
    TRes Function(Mutation$scanConsignmentNote) then,
  ) = _CopyWithImpl$Mutation$scanConsignmentNote;

  factory CopyWith$Mutation$scanConsignmentNote.stub(TRes res) =
      _CopyWithStubImpl$Mutation$scanConsignmentNote;

  TRes call({bool? scanConsignmentNote, String? $__typename});
}

class _CopyWithImpl$Mutation$scanConsignmentNote<TRes>
    implements CopyWith$Mutation$scanConsignmentNote<TRes> {
  _CopyWithImpl$Mutation$scanConsignmentNote(this._instance, this._then);

  final Mutation$scanConsignmentNote _instance;

  final TRes Function(Mutation$scanConsignmentNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scanConsignmentNote = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$scanConsignmentNote(
      scanConsignmentNote:
          scanConsignmentNote == _undefined || scanConsignmentNote == null
          ? _instance.scanConsignmentNote
          : (scanConsignmentNote as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$scanConsignmentNote<TRes>
    implements CopyWith$Mutation$scanConsignmentNote<TRes> {
  _CopyWithStubImpl$Mutation$scanConsignmentNote(this._res);

  TRes _res;

  call({bool? scanConsignmentNote, String? $__typename}) => _res;
}

const documentNodeMutationscanConsignmentNote = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'scanConsignmentNote'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'request')),
          type: NamedTypeNode(
            name: NameNode(value: 'ScanConsignmentNoteRequestInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'consignmentImage')),
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
            name: NameNode(value: 'scanConsignmentNote'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'request'),
                value: VariableNode(name: NameNode(value: 'request')),
              ),
              ArgumentNode(
                name: NameNode(value: 'consignmentImage'),
                value: VariableNode(name: NameNode(value: 'consignmentImage')),
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
