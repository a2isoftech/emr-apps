import 'package:gql/ast.dart';

class Variables$Mutation$Upload {
  factory Variables$Mutation$Upload({
    String? file,
    List<String>? files,
  }) =>
      Variables$Mutation$Upload._({
        if (file != null) r'file': file,
        if (files != null) r'files': files,
      });

  Variables$Mutation$Upload._(this._$data);

  factory Variables$Mutation$Upload.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('file')) {
      final l$file = data['file'];
      result$data['file'] = (l$file as String?);
    }
    if (data.containsKey('files')) {
      final l$files = data['files'];
      result$data['files'] =
          (l$files as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Variables$Mutation$Upload._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get file => (_$data['file'] as String?);

  List<String>? get files => (_$data['files'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('file')) {
      final l$file = file;
      result$data['file'] = l$file;
    }
    if (_$data.containsKey('files')) {
      final l$files = files;
      result$data['files'] = l$files?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$Upload<Variables$Mutation$Upload> get copyWith =>
      CopyWith$Variables$Mutation$Upload(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$Upload ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$file = file;
    final lOther$file = other.file;
    if (_$data.containsKey('file') != other._$data.containsKey('file')) {
      return false;
    }
    if (l$file != lOther$file) {
      return false;
    }
    final l$files = files;
    final lOther$files = other.files;
    if (_$data.containsKey('files') != other._$data.containsKey('files')) {
      return false;
    }
    if (l$files != null && lOther$files != null) {
      if (l$files.length != lOther$files.length) {
        return false;
      }
      for (int i = 0; i < l$files.length; i++) {
        final l$files$entry = l$files[i];
        final lOther$files$entry = lOther$files[i];
        if (l$files$entry != lOther$files$entry) {
          return false;
        }
      }
    } else if (l$files != lOther$files) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$file = file;
    final l$files = files;
    return Object.hashAll([
      _$data.containsKey('file') ? l$file : const {},
      _$data.containsKey('files')
          ? l$files == null
              ? null
              : Object.hashAll(l$files.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$Upload<TRes> {
  factory CopyWith$Variables$Mutation$Upload(
    Variables$Mutation$Upload instance,
    TRes Function(Variables$Mutation$Upload) then,
  ) = _CopyWithImpl$Variables$Mutation$Upload;

  factory CopyWith$Variables$Mutation$Upload.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Upload;

  TRes call({
    String? file,
    List<String>? files,
  });
}

class _CopyWithImpl$Variables$Mutation$Upload<TRes>
    implements CopyWith$Variables$Mutation$Upload<TRes> {
  _CopyWithImpl$Variables$Mutation$Upload(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Upload _instance;

  final TRes Function(Variables$Mutation$Upload) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? file = _undefined,
    Object? files = _undefined,
  }) =>
      _then(Variables$Mutation$Upload._({
        ..._instance._$data,
        if (file != _undefined) 'file': (file as String?),
        if (files != _undefined) 'files': (files as List<String>?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Upload<TRes>
    implements CopyWith$Variables$Mutation$Upload<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Upload(this._res);

  TRes _res;

  call({
    String? file,
    List<String>? files,
  }) =>
      _res;
}

class Mutation$Upload {
  Mutation$Upload({
    this.upload,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Upload.fromJson(Map<String, dynamic> json) {
    final l$upload = json['upload'];
    final l$$__typename = json['__typename'];
    return Mutation$Upload(
      upload: (l$upload as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? upload;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$upload = upload;
    _resultData['upload'] = l$upload;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$upload = upload;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$upload,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$Upload || runtimeType != other.runtimeType) {
      return false;
    }
    final l$upload = upload;
    final lOther$upload = other.upload;
    if (l$upload != lOther$upload) {
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

extension UtilityExtension$Mutation$Upload on Mutation$Upload {
  CopyWith$Mutation$Upload<Mutation$Upload> get copyWith =>
      CopyWith$Mutation$Upload(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Upload<TRes> {
  factory CopyWith$Mutation$Upload(
    Mutation$Upload instance,
    TRes Function(Mutation$Upload) then,
  ) = _CopyWithImpl$Mutation$Upload;

  factory CopyWith$Mutation$Upload.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Upload;

  TRes call({
    String? upload,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Upload<TRes>
    implements CopyWith$Mutation$Upload<TRes> {
  _CopyWithImpl$Mutation$Upload(
    this._instance,
    this._then,
  );

  final Mutation$Upload _instance;

  final TRes Function(Mutation$Upload) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? upload = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Upload(
        upload: upload == _undefined ? _instance.upload : (upload as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Upload<TRes>
    implements CopyWith$Mutation$Upload<TRes> {
  _CopyWithStubImpl$Mutation$Upload(this._res);

  TRes _res;

  call({
    String? upload,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpload = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Upload'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'file')),
        type: NamedTypeNode(
          name: NameNode(value: 'Upload'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'files')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Upload'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'upload'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'file'),
            value: VariableNode(name: NameNode(value: 'file')),
          ),
          ArgumentNode(
            name: NameNode(value: 'files'),
            value: VariableNode(name: NameNode(value: 'files')),
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
    ]),
  ),
]);
