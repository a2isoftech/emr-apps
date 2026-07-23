import 'package:gql/ast.dart';

class Variables$Mutation$CreatePublicAlbum {
  factory Variables$Mutation$CreatePublicAlbum({required String id}) =>
      Variables$Mutation$CreatePublicAlbum._({r'id': id});

  Variables$Mutation$CreatePublicAlbum._(this._$data);

  factory Variables$Mutation$CreatePublicAlbum.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$CreatePublicAlbum._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePublicAlbum<
    Variables$Mutation$CreatePublicAlbum
  >
  get copyWith => CopyWith$Variables$Mutation$CreatePublicAlbum(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreatePublicAlbum ||
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

abstract class CopyWith$Variables$Mutation$CreatePublicAlbum<TRes> {
  factory CopyWith$Variables$Mutation$CreatePublicAlbum(
    Variables$Mutation$CreatePublicAlbum instance,
    TRes Function(Variables$Mutation$CreatePublicAlbum) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePublicAlbum;

  factory CopyWith$Variables$Mutation$CreatePublicAlbum.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePublicAlbum;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$CreatePublicAlbum<TRes>
    implements CopyWith$Variables$Mutation$CreatePublicAlbum<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePublicAlbum(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePublicAlbum _instance;

  final TRes Function(Variables$Mutation$CreatePublicAlbum) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Mutation$CreatePublicAlbum._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreatePublicAlbum<TRes>
    implements CopyWith$Variables$Mutation$CreatePublicAlbum<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePublicAlbum(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$CreatePublicAlbum {
  Mutation$CreatePublicAlbum({
    this.createPublicAlbum,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreatePublicAlbum.fromJson(Map<String, dynamic> json) {
    final l$createPublicAlbum = json['createPublicAlbum'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePublicAlbum(
      createPublicAlbum: (l$createPublicAlbum as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? createPublicAlbum;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPublicAlbum = createPublicAlbum;
    _resultData['createPublicAlbum'] = l$createPublicAlbum;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPublicAlbum = createPublicAlbum;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createPublicAlbum, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreatePublicAlbum ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPublicAlbum = createPublicAlbum;
    final lOther$createPublicAlbum = other.createPublicAlbum;
    if (l$createPublicAlbum != lOther$createPublicAlbum) {
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

extension UtilityExtension$Mutation$CreatePublicAlbum
    on Mutation$CreatePublicAlbum {
  CopyWith$Mutation$CreatePublicAlbum<Mutation$CreatePublicAlbum>
  get copyWith => CopyWith$Mutation$CreatePublicAlbum(this, (i) => i);
}

abstract class CopyWith$Mutation$CreatePublicAlbum<TRes> {
  factory CopyWith$Mutation$CreatePublicAlbum(
    Mutation$CreatePublicAlbum instance,
    TRes Function(Mutation$CreatePublicAlbum) then,
  ) = _CopyWithImpl$Mutation$CreatePublicAlbum;

  factory CopyWith$Mutation$CreatePublicAlbum.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePublicAlbum;

  TRes call({String? createPublicAlbum, String? $__typename});
}

class _CopyWithImpl$Mutation$CreatePublicAlbum<TRes>
    implements CopyWith$Mutation$CreatePublicAlbum<TRes> {
  _CopyWithImpl$Mutation$CreatePublicAlbum(this._instance, this._then);

  final Mutation$CreatePublicAlbum _instance;

  final TRes Function(Mutation$CreatePublicAlbum) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPublicAlbum = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreatePublicAlbum(
      createPublicAlbum: createPublicAlbum == _undefined
          ? _instance.createPublicAlbum
          : (createPublicAlbum as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreatePublicAlbum<TRes>
    implements CopyWith$Mutation$CreatePublicAlbum<TRes> {
  _CopyWithStubImpl$Mutation$CreatePublicAlbum(this._res);

  TRes _res;

  call({String? createPublicAlbum, String? $__typename}) => _res;
}

const documentNodeMutationCreatePublicAlbum = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreatePublicAlbum'),
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
            name: NameNode(value: 'createPublicAlbum'),
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
