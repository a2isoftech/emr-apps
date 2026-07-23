import 'package:gql/ast.dart';

class Variables$Mutation$CreateEdgePublicAlbum {
  factory Variables$Mutation$CreateEdgePublicAlbum({required String id}) =>
      Variables$Mutation$CreateEdgePublicAlbum._({r'id': id});

  Variables$Mutation$CreateEdgePublicAlbum._(this._$data);

  factory Variables$Mutation$CreateEdgePublicAlbum.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$CreateEdgePublicAlbum._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateEdgePublicAlbum<
    Variables$Mutation$CreateEdgePublicAlbum
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateEdgePublicAlbum(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateEdgePublicAlbum ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateEdgePublicAlbum<TRes> {
  factory CopyWith$Variables$Mutation$CreateEdgePublicAlbum(
    Variables$Mutation$CreateEdgePublicAlbum instance,
    TRes Function(Variables$Mutation$CreateEdgePublicAlbum) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateEdgePublicAlbum;

  factory CopyWith$Variables$Mutation$CreateEdgePublicAlbum.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateEdgePublicAlbum;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$CreateEdgePublicAlbum<TRes>
    implements CopyWith$Variables$Mutation$CreateEdgePublicAlbum<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateEdgePublicAlbum(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateEdgePublicAlbum _instance;

  final TRes Function(Variables$Mutation$CreateEdgePublicAlbum) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Mutation$CreateEdgePublicAlbum._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateEdgePublicAlbum<TRes>
    implements CopyWith$Variables$Mutation$CreateEdgePublicAlbum<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateEdgePublicAlbum(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$CreateEdgePublicAlbum {
  Mutation$CreateEdgePublicAlbum({
    this.createEdgePublicAlbum,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateEdgePublicAlbum.fromJson(Map<String, dynamic> json) {
    final l$createEdgePublicAlbum = json['createEdgePublicAlbum'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateEdgePublicAlbum(
      createEdgePublicAlbum: (l$createEdgePublicAlbum as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? createEdgePublicAlbum;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createEdgePublicAlbum = createEdgePublicAlbum;
    _resultData['createEdgePublicAlbum'] = l$createEdgePublicAlbum;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createEdgePublicAlbum = createEdgePublicAlbum;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createEdgePublicAlbum, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateEdgePublicAlbum ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createEdgePublicAlbum = createEdgePublicAlbum;
    final lOther$createEdgePublicAlbum = other.createEdgePublicAlbum;
    if (l$createEdgePublicAlbum != lOther$createEdgePublicAlbum) {
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

extension UtilityExtension$Mutation$CreateEdgePublicAlbum
    on Mutation$CreateEdgePublicAlbum {
  CopyWith$Mutation$CreateEdgePublicAlbum<Mutation$CreateEdgePublicAlbum>
  get copyWith => CopyWith$Mutation$CreateEdgePublicAlbum(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateEdgePublicAlbum<TRes> {
  factory CopyWith$Mutation$CreateEdgePublicAlbum(
    Mutation$CreateEdgePublicAlbum instance,
    TRes Function(Mutation$CreateEdgePublicAlbum) then,
  ) = _CopyWithImpl$Mutation$CreateEdgePublicAlbum;

  factory CopyWith$Mutation$CreateEdgePublicAlbum.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateEdgePublicAlbum;

  TRes call({String? createEdgePublicAlbum, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateEdgePublicAlbum<TRes>
    implements CopyWith$Mutation$CreateEdgePublicAlbum<TRes> {
  _CopyWithImpl$Mutation$CreateEdgePublicAlbum(this._instance, this._then);

  final Mutation$CreateEdgePublicAlbum _instance;

  final TRes Function(Mutation$CreateEdgePublicAlbum) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createEdgePublicAlbum = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateEdgePublicAlbum(
      createEdgePublicAlbum: createEdgePublicAlbum == _undefined
          ? _instance.createEdgePublicAlbum
          : (createEdgePublicAlbum as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateEdgePublicAlbum<TRes>
    implements CopyWith$Mutation$CreateEdgePublicAlbum<TRes> {
  _CopyWithStubImpl$Mutation$CreateEdgePublicAlbum(this._res);

  TRes _res;

  call({String? createEdgePublicAlbum, String? $__typename}) => _res;
}

const documentNodeMutationCreateEdgePublicAlbum = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateEdgePublicAlbum'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createEdgePublicAlbum'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
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
