import 'package:gql/ast.dart';

class Variables$Mutation$UploadFloorPlan {
  factory Variables$Mutation$UploadFloorPlan({required String file}) =>
      Variables$Mutation$UploadFloorPlan._({r'file': file});

  Variables$Mutation$UploadFloorPlan._(this._$data);

  factory Variables$Mutation$UploadFloorPlan.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$file = data['file'];
    result$data['file'] = (l$file as String);
    return Variables$Mutation$UploadFloorPlan._(result$data);
  }

  Map<String, dynamic> _$data;

  String get file => (_$data['file'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$file = file;
    result$data['file'] = l$file;
    return result$data;
  }

  CopyWith$Variables$Mutation$UploadFloorPlan<
    Variables$Mutation$UploadFloorPlan
  >
  get copyWith => CopyWith$Variables$Mutation$UploadFloorPlan(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UploadFloorPlan ||
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

abstract class CopyWith$Variables$Mutation$UploadFloorPlan<TRes> {
  factory CopyWith$Variables$Mutation$UploadFloorPlan(
    Variables$Mutation$UploadFloorPlan instance,
    TRes Function(Variables$Mutation$UploadFloorPlan) then,
  ) = _CopyWithImpl$Variables$Mutation$UploadFloorPlan;

  factory CopyWith$Variables$Mutation$UploadFloorPlan.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UploadFloorPlan;

  TRes call({String? file});
}

class _CopyWithImpl$Variables$Mutation$UploadFloorPlan<TRes>
    implements CopyWith$Variables$Mutation$UploadFloorPlan<TRes> {
  _CopyWithImpl$Variables$Mutation$UploadFloorPlan(this._instance, this._then);

  final Variables$Mutation$UploadFloorPlan _instance;

  final TRes Function(Variables$Mutation$UploadFloorPlan) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? file = _undefined}) => _then(
    Variables$Mutation$UploadFloorPlan._({
      ..._instance._$data,
      if (file != _undefined && file != null) 'file': (file as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UploadFloorPlan<TRes>
    implements CopyWith$Variables$Mutation$UploadFloorPlan<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UploadFloorPlan(this._res);

  TRes _res;

  call({String? file}) => _res;
}

class Mutation$UploadFloorPlan {
  Mutation$UploadFloorPlan({
    required this.uploadFloorPlan,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UploadFloorPlan.fromJson(Map<String, dynamic> json) {
    final l$uploadFloorPlan = json['uploadFloorPlan'];
    final l$$__typename = json['__typename'];
    return Mutation$UploadFloorPlan(
      uploadFloorPlan: Mutation$UploadFloorPlan$uploadFloorPlan.fromJson(
        (l$uploadFloorPlan as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UploadFloorPlan$uploadFloorPlan uploadFloorPlan;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uploadFloorPlan = uploadFloorPlan;
    _resultData['uploadFloorPlan'] = l$uploadFloorPlan.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uploadFloorPlan = uploadFloorPlan;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uploadFloorPlan, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UploadFloorPlan ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uploadFloorPlan = uploadFloorPlan;
    final lOther$uploadFloorPlan = other.uploadFloorPlan;
    if (l$uploadFloorPlan != lOther$uploadFloorPlan) {
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

extension UtilityExtension$Mutation$UploadFloorPlan
    on Mutation$UploadFloorPlan {
  CopyWith$Mutation$UploadFloorPlan<Mutation$UploadFloorPlan> get copyWith =>
      CopyWith$Mutation$UploadFloorPlan(this, (i) => i);
}

abstract class CopyWith$Mutation$UploadFloorPlan<TRes> {
  factory CopyWith$Mutation$UploadFloorPlan(
    Mutation$UploadFloorPlan instance,
    TRes Function(Mutation$UploadFloorPlan) then,
  ) = _CopyWithImpl$Mutation$UploadFloorPlan;

  factory CopyWith$Mutation$UploadFloorPlan.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UploadFloorPlan;

  TRes call({
    Mutation$UploadFloorPlan$uploadFloorPlan? uploadFloorPlan,
    String? $__typename,
  });
  CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan<TRes> get uploadFloorPlan;
}

class _CopyWithImpl$Mutation$UploadFloorPlan<TRes>
    implements CopyWith$Mutation$UploadFloorPlan<TRes> {
  _CopyWithImpl$Mutation$UploadFloorPlan(this._instance, this._then);

  final Mutation$UploadFloorPlan _instance;

  final TRes Function(Mutation$UploadFloorPlan) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uploadFloorPlan = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UploadFloorPlan(
      uploadFloorPlan: uploadFloorPlan == _undefined || uploadFloorPlan == null
          ? _instance.uploadFloorPlan
          : (uploadFloorPlan as Mutation$UploadFloorPlan$uploadFloorPlan),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan<TRes> get uploadFloorPlan {
    final local$uploadFloorPlan = _instance.uploadFloorPlan;
    return CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan(
      local$uploadFloorPlan,
      (e) => call(uploadFloorPlan: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UploadFloorPlan<TRes>
    implements CopyWith$Mutation$UploadFloorPlan<TRes> {
  _CopyWithStubImpl$Mutation$UploadFloorPlan(this._res);

  TRes _res;

  call({
    Mutation$UploadFloorPlan$uploadFloorPlan? uploadFloorPlan,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan<TRes> get uploadFloorPlan =>
      CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan.stub(_res);
}

const documentNodeMutationUploadFloorPlan = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UploadFloorPlan'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'file')),
          type: NamedTypeNode(name: NameNode(value: 'Upload'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'uploadFloorPlan'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'file'),
                value: VariableNode(name: NameNode(value: 'file')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'url'),
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

class Mutation$UploadFloorPlan$uploadFloorPlan {
  Mutation$UploadFloorPlan$uploadFloorPlan({
    required this.url,
    this.$__typename = 'FloorPlanPayload',
  });

  factory Mutation$UploadFloorPlan$uploadFloorPlan.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Mutation$UploadFloorPlan$uploadFloorPlan(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UploadFloorPlan$uploadFloorPlan ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Mutation$UploadFloorPlan$uploadFloorPlan
    on Mutation$UploadFloorPlan$uploadFloorPlan {
  CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan<
    Mutation$UploadFloorPlan$uploadFloorPlan
  >
  get copyWith =>
      CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan(this, (i) => i);
}

abstract class CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan<TRes> {
  factory CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan(
    Mutation$UploadFloorPlan$uploadFloorPlan instance,
    TRes Function(Mutation$UploadFloorPlan$uploadFloorPlan) then,
  ) = _CopyWithImpl$Mutation$UploadFloorPlan$uploadFloorPlan;

  factory CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UploadFloorPlan$uploadFloorPlan;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Mutation$UploadFloorPlan$uploadFloorPlan<TRes>
    implements CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan<TRes> {
  _CopyWithImpl$Mutation$UploadFloorPlan$uploadFloorPlan(
    this._instance,
    this._then,
  );

  final Mutation$UploadFloorPlan$uploadFloorPlan _instance;

  final TRes Function(Mutation$UploadFloorPlan$uploadFloorPlan) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UploadFloorPlan$uploadFloorPlan(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UploadFloorPlan$uploadFloorPlan<TRes>
    implements CopyWith$Mutation$UploadFloorPlan$uploadFloorPlan<TRes> {
  _CopyWithStubImpl$Mutation$UploadFloorPlan$uploadFloorPlan(this._res);

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}
