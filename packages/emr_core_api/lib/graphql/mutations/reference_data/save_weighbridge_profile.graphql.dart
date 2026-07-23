import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveWeighbridgeProfile {
  factory Variables$Mutation$SaveWeighbridgeProfile({
    required Input$DocumentOfWeighbridgeProfileInput input,
  }) => Variables$Mutation$SaveWeighbridgeProfile._({r'input': input});

  Variables$Mutation$SaveWeighbridgeProfile._(this._$data);

  factory Variables$Mutation$SaveWeighbridgeProfile.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$DocumentOfWeighbridgeProfileInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$SaveWeighbridgeProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DocumentOfWeighbridgeProfileInput get input =>
      (_$data['input'] as Input$DocumentOfWeighbridgeProfileInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveWeighbridgeProfile<
    Variables$Mutation$SaveWeighbridgeProfile
  >
  get copyWith =>
      CopyWith$Variables$Mutation$SaveWeighbridgeProfile(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveWeighbridgeProfile ||
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

abstract class CopyWith$Variables$Mutation$SaveWeighbridgeProfile<TRes> {
  factory CopyWith$Variables$Mutation$SaveWeighbridgeProfile(
    Variables$Mutation$SaveWeighbridgeProfile instance,
    TRes Function(Variables$Mutation$SaveWeighbridgeProfile) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveWeighbridgeProfile;

  factory CopyWith$Variables$Mutation$SaveWeighbridgeProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveWeighbridgeProfile;

  TRes call({Input$DocumentOfWeighbridgeProfileInput? input});
}

class _CopyWithImpl$Variables$Mutation$SaveWeighbridgeProfile<TRes>
    implements CopyWith$Variables$Mutation$SaveWeighbridgeProfile<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveWeighbridgeProfile(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveWeighbridgeProfile _instance;

  final TRes Function(Variables$Mutation$SaveWeighbridgeProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$SaveWeighbridgeProfile._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$DocumentOfWeighbridgeProfileInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SaveWeighbridgeProfile<TRes>
    implements CopyWith$Variables$Mutation$SaveWeighbridgeProfile<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveWeighbridgeProfile(this._res);

  TRes _res;

  call({Input$DocumentOfWeighbridgeProfileInput? input}) => _res;
}

class Mutation$SaveWeighbridgeProfile {
  Mutation$SaveWeighbridgeProfile({
    required this.saveWeighbridgeProfileDocument,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveWeighbridgeProfile.fromJson(Map<String, dynamic> json) {
    final l$saveWeighbridgeProfileDocument =
        json['saveWeighbridgeProfileDocument'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveWeighbridgeProfile(
      saveWeighbridgeProfileDocument:
          Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument.fromJson(
            (l$saveWeighbridgeProfileDocument as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument
  saveWeighbridgeProfileDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveWeighbridgeProfileDocument = saveWeighbridgeProfileDocument;
    _resultData['saveWeighbridgeProfileDocument'] =
        l$saveWeighbridgeProfileDocument.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveWeighbridgeProfileDocument = saveWeighbridgeProfileDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([l$saveWeighbridgeProfileDocument, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveWeighbridgeProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveWeighbridgeProfileDocument = saveWeighbridgeProfileDocument;
    final lOther$saveWeighbridgeProfileDocument =
        other.saveWeighbridgeProfileDocument;
    if (l$saveWeighbridgeProfileDocument !=
        lOther$saveWeighbridgeProfileDocument) {
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

extension UtilityExtension$Mutation$SaveWeighbridgeProfile
    on Mutation$SaveWeighbridgeProfile {
  CopyWith$Mutation$SaveWeighbridgeProfile<Mutation$SaveWeighbridgeProfile>
  get copyWith => CopyWith$Mutation$SaveWeighbridgeProfile(this, (i) => i);
}

abstract class CopyWith$Mutation$SaveWeighbridgeProfile<TRes> {
  factory CopyWith$Mutation$SaveWeighbridgeProfile(
    Mutation$SaveWeighbridgeProfile instance,
    TRes Function(Mutation$SaveWeighbridgeProfile) then,
  ) = _CopyWithImpl$Mutation$SaveWeighbridgeProfile;

  factory CopyWith$Mutation$SaveWeighbridgeProfile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveWeighbridgeProfile;

  TRes call({
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument?
    saveWeighbridgeProfileDocument,
    String? $__typename,
  });
  CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument<TRes>
  get saveWeighbridgeProfileDocument;
}

class _CopyWithImpl$Mutation$SaveWeighbridgeProfile<TRes>
    implements CopyWith$Mutation$SaveWeighbridgeProfile<TRes> {
  _CopyWithImpl$Mutation$SaveWeighbridgeProfile(this._instance, this._then);

  final Mutation$SaveWeighbridgeProfile _instance;

  final TRes Function(Mutation$SaveWeighbridgeProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveWeighbridgeProfileDocument = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveWeighbridgeProfile(
      saveWeighbridgeProfileDocument:
          saveWeighbridgeProfileDocument == _undefined ||
              saveWeighbridgeProfileDocument == null
          ? _instance.saveWeighbridgeProfileDocument
          : (saveWeighbridgeProfileDocument
                as Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument<TRes>
  get saveWeighbridgeProfileDocument {
    final local$saveWeighbridgeProfileDocument =
        _instance.saveWeighbridgeProfileDocument;
    return CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument(
      local$saveWeighbridgeProfileDocument,
      (e) => call(saveWeighbridgeProfileDocument: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveWeighbridgeProfile<TRes>
    implements CopyWith$Mutation$SaveWeighbridgeProfile<TRes> {
  _CopyWithStubImpl$Mutation$SaveWeighbridgeProfile(this._res);

  TRes _res;

  call({
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument?
    saveWeighbridgeProfileDocument,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument<TRes>
  get saveWeighbridgeProfileDocument =>
      CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument.stub(
        _res,
      );
}

const documentNodeMutationSaveWeighbridgeProfile = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SaveWeighbridgeProfile'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'DocumentOfWeighbridgeProfileInput'),
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
            name: NameNode(value: 'saveWeighbridgeProfileDocument'),
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
                  name: NameNode(value: 'changeVector'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'entity'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardId'),
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
  ],
);

class Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument {
  Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument({
    required this.changeVector,
    required this.entity,
    this.$__typename = 'DocumentOfWeighbridgeProfile',
  });

  factory Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$entity = json['entity'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument(
      changeVector: (l$changeVector as String),
      entity:
          Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity.fromJson(
            (l$entity as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity
  entity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeVector = changeVector;
    _resultData['changeVector'] = l$changeVector;
    final l$entity = entity;
    _resultData['entity'] = l$entity.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeVector = changeVector;
    final l$entity = entity;
    final l$$__typename = $__typename;
    return Object.hashAll([l$changeVector, l$entity, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeVector = changeVector;
    final lOther$changeVector = other.changeVector;
    if (l$changeVector != lOther$changeVector) {
      return false;
    }
    final l$entity = entity;
    final lOther$entity = other.entity;
    if (l$entity != lOther$entity) {
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

extension UtilityExtension$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument
    on Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument {
  CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument<
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument
  >
  get copyWith =>
      CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument<
  TRes
> {
  factory CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument(
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument instance,
    TRes Function(
      Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument,
    )
    then,
  ) = _CopyWithImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument;

  factory CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument;

  TRes call({
    String? changeVector,
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity?
    entity,
    String? $__typename,
  });
  CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity<
    TRes
  >
  get entity;
}

class _CopyWithImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument<
  TRes
>
    implements
        CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument<
          TRes
        > {
  _CopyWithImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument(
    this._instance,
    this._then,
  );

  final Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument
  _instance;

  final TRes Function(
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? entity = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      entity: entity == _undefined || entity == null
          ? _instance.entity
          : (entity
                as Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity<
    TRes
  >
  get entity {
    final local$entity = _instance.entity;
    return CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity(
      local$entity,
      (e) => call(entity: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument<
  TRes
>
    implements
        CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument(
    this._res,
  );

  TRes _res;

  call({
    String? changeVector,
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity?
    entity,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity<
    TRes
  >
  get entity =>
      CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity.stub(
        _res,
      );
}

class Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity {
  Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity({
    this.id,
    required this.name,
    required this.yardCode,
    required this.yardId,
    this.$__typename = 'WeighbridgeProfile',
  });

  factory Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$yardId = json['yardId'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity(
      id: (l$id as String?),
      name: (l$name as String),
      yardCode: (l$yardCode as String),
      yardId: (l$yardId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String name;

  final String yardCode;

  final String yardId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$yardId = yardId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$yardCode, l$yardId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
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

extension UtilityExtension$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity
    on Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity {
  CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity<
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity
  >
  get copyWith =>
      CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity<
  TRes
> {
  factory CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity(
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity
    instance,
    TRes Function(
      Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity,
    )
    then,
  ) = _CopyWithImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity;

  factory CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity;

  TRes call({
    String? id,
    String? name,
    String? yardCode,
    String? yardId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity<
  TRes
>
    implements
        CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity<
          TRes
        > {
  _CopyWithImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity(
    this._instance,
    this._then,
  );

  final Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity
  _instance;

  final TRes Function(
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? yardId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity(
      id: id == _undefined ? _instance.id : (id as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity<
  TRes
>
    implements
        CopyWith$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SaveWeighbridgeProfile$saveWeighbridgeProfileDocument$entity(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    String? yardCode,
    String? yardId,
    String? $__typename,
  }) => _res;
}
