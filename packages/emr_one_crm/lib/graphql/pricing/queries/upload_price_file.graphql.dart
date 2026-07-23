import 'package:gql/ast.dart';

class Variables$Mutation$UploadPrices {
  factory Variables$Mutation$UploadPrices({required String file}) =>
      Variables$Mutation$UploadPrices._({
        r'file': file,
      });

  Variables$Mutation$UploadPrices._(this._$data);

  factory Variables$Mutation$UploadPrices.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$file = data['file'];
    result$data['file'] = (l$file as String);
    return Variables$Mutation$UploadPrices._(result$data);
  }

  Map<String, dynamic> _$data;

  String get file => (_$data['file'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$file = file;
    result$data['file'] = l$file;
    return result$data;
  }

  CopyWith$Variables$Mutation$UploadPrices<Variables$Mutation$UploadPrices>
      get copyWith => CopyWith$Variables$Mutation$UploadPrices(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UploadPrices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$file = file;
    final lOther$file = other.file;
    if (l$file != lOther$file) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$file = file;
    return Object.hashAll([l$file]);
  }
}

abstract class CopyWith$Variables$Mutation$UploadPrices<TRes> {
  factory CopyWith$Variables$Mutation$UploadPrices(
    Variables$Mutation$UploadPrices instance,
    TRes Function(Variables$Mutation$UploadPrices) then,
  ) = _CopyWithImpl$Variables$Mutation$UploadPrices;

  factory CopyWith$Variables$Mutation$UploadPrices.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UploadPrices;

  TRes call({String? file});
}

class _CopyWithImpl$Variables$Mutation$UploadPrices<TRes>
    implements CopyWith$Variables$Mutation$UploadPrices<TRes> {
  _CopyWithImpl$Variables$Mutation$UploadPrices(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UploadPrices _instance;

  final TRes Function(Variables$Mutation$UploadPrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? file = _undefined}) =>
      _then(Variables$Mutation$UploadPrices._({
        ..._instance._$data,
        if (file != _undefined && file != null) 'file': (file as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UploadPrices<TRes>
    implements CopyWith$Variables$Mutation$UploadPrices<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UploadPrices(this._res);

  TRes _res;

  call({String? file}) => _res;
}

class Mutation$UploadPrices {
  Mutation$UploadPrices({
    required this.uploadPrices,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UploadPrices.fromJson(Map<String, dynamic> json) {
    final l$uploadPrices = json['uploadPrices'];
    final l$$__typename = json['__typename'];
    return Mutation$UploadPrices(
      uploadPrices: Mutation$UploadPrices$uploadPrices.fromJson(
          (l$uploadPrices as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UploadPrices$uploadPrices uploadPrices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uploadPrices = uploadPrices;
    _resultData['uploadPrices'] = l$uploadPrices.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uploadPrices = uploadPrices;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uploadPrices,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UploadPrices || runtimeType != other.runtimeType) {
      return false;
    }
    final l$uploadPrices = uploadPrices;
    final lOther$uploadPrices = other.uploadPrices;
    if (l$uploadPrices != lOther$uploadPrices) {
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

extension UtilityExtension$Mutation$UploadPrices on Mutation$UploadPrices {
  CopyWith$Mutation$UploadPrices<Mutation$UploadPrices> get copyWith =>
      CopyWith$Mutation$UploadPrices(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UploadPrices<TRes> {
  factory CopyWith$Mutation$UploadPrices(
    Mutation$UploadPrices instance,
    TRes Function(Mutation$UploadPrices) then,
  ) = _CopyWithImpl$Mutation$UploadPrices;

  factory CopyWith$Mutation$UploadPrices.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UploadPrices;

  TRes call({
    Mutation$UploadPrices$uploadPrices? uploadPrices,
    String? $__typename,
  });
  CopyWith$Mutation$UploadPrices$uploadPrices<TRes> get uploadPrices;
}

class _CopyWithImpl$Mutation$UploadPrices<TRes>
    implements CopyWith$Mutation$UploadPrices<TRes> {
  _CopyWithImpl$Mutation$UploadPrices(
    this._instance,
    this._then,
  );

  final Mutation$UploadPrices _instance;

  final TRes Function(Mutation$UploadPrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uploadPrices = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UploadPrices(
        uploadPrices: uploadPrices == _undefined || uploadPrices == null
            ? _instance.uploadPrices
            : (uploadPrices as Mutation$UploadPrices$uploadPrices),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UploadPrices$uploadPrices<TRes> get uploadPrices {
    final local$uploadPrices = _instance.uploadPrices;
    return CopyWith$Mutation$UploadPrices$uploadPrices(
        local$uploadPrices, (e) => call(uploadPrices: e));
  }
}

class _CopyWithStubImpl$Mutation$UploadPrices<TRes>
    implements CopyWith$Mutation$UploadPrices<TRes> {
  _CopyWithStubImpl$Mutation$UploadPrices(this._res);

  TRes _res;

  call({
    Mutation$UploadPrices$uploadPrices? uploadPrices,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UploadPrices$uploadPrices<TRes> get uploadPrices =>
      CopyWith$Mutation$UploadPrices$uploadPrices.stub(_res);
}

const documentNodeMutationUploadPrices = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UploadPrices'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'file')),
        type: NamedTypeNode(
          name: NameNode(value: 'Upload'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'uploadPrices'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'priceFile'),
            value: VariableNode(name: NameNode(value: 'file')),
          )
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

class Mutation$UploadPrices$uploadPrices {
  Mutation$UploadPrices$uploadPrices({
    required this.success,
    this.$__typename = 'PriceUploadResult',
  });

  factory Mutation$UploadPrices$uploadPrices.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$UploadPrices$uploadPrices(
      success: (l$success as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UploadPrices$uploadPrices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$UploadPrices$uploadPrices
    on Mutation$UploadPrices$uploadPrices {
  CopyWith$Mutation$UploadPrices$uploadPrices<
          Mutation$UploadPrices$uploadPrices>
      get copyWith => CopyWith$Mutation$UploadPrices$uploadPrices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UploadPrices$uploadPrices<TRes> {
  factory CopyWith$Mutation$UploadPrices$uploadPrices(
    Mutation$UploadPrices$uploadPrices instance,
    TRes Function(Mutation$UploadPrices$uploadPrices) then,
  ) = _CopyWithImpl$Mutation$UploadPrices$uploadPrices;

  factory CopyWith$Mutation$UploadPrices$uploadPrices.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UploadPrices$uploadPrices;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UploadPrices$uploadPrices<TRes>
    implements CopyWith$Mutation$UploadPrices$uploadPrices<TRes> {
  _CopyWithImpl$Mutation$UploadPrices$uploadPrices(
    this._instance,
    this._then,
  );

  final Mutation$UploadPrices$uploadPrices _instance;

  final TRes Function(Mutation$UploadPrices$uploadPrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UploadPrices$uploadPrices(
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UploadPrices$uploadPrices<TRes>
    implements CopyWith$Mutation$UploadPrices$uploadPrices<TRes> {
  _CopyWithStubImpl$Mutation$UploadPrices$uploadPrices(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}
