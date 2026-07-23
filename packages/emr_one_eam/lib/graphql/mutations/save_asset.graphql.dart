import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateAsset {
  factory Variables$Mutation$CreateAsset(
          {required Input$CreateorUpdateAssetInput input}) =>
      Variables$Mutation$CreateAsset._({
        r'input': input,
      });

  Variables$Mutation$CreateAsset._(this._$data);

  factory Variables$Mutation$CreateAsset.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateorUpdateAssetInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateAsset._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateorUpdateAssetInput get input =>
      (_$data['input'] as Input$CreateorUpdateAssetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateAsset<Variables$Mutation$CreateAsset>
      get copyWith => CopyWith$Variables$Mutation$CreateAsset(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateAsset) ||
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

abstract class CopyWith$Variables$Mutation$CreateAsset<TRes> {
  factory CopyWith$Variables$Mutation$CreateAsset(
    Variables$Mutation$CreateAsset instance,
    TRes Function(Variables$Mutation$CreateAsset) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateAsset;

  factory CopyWith$Variables$Mutation$CreateAsset.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateAsset;

  TRes call({Input$CreateorUpdateAssetInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateAsset<TRes>
    implements CopyWith$Variables$Mutation$CreateAsset<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateAsset(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateAsset _instance;

  final TRes Function(Variables$Mutation$CreateAsset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateAsset._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateorUpdateAssetInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateAsset<TRes>
    implements CopyWith$Variables$Mutation$CreateAsset<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateAsset(this._res);

  TRes _res;

  call({Input$CreateorUpdateAssetInput? input}) => _res;
}

class Mutation$CreateAsset {
  Mutation$CreateAsset({
    required this.createAsset,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateAsset.fromJson(Map<String, dynamic> json) {
    final l$createAsset = json['createAsset'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAsset(
      createAsset: Mutation$CreateAsset$createAsset.fromJson(
          (l$createAsset as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateAsset$createAsset createAsset;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createAsset = createAsset;
    _resultData['createAsset'] = l$createAsset.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createAsset = createAsset;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createAsset,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateAsset) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createAsset = createAsset;
    final lOther$createAsset = other.createAsset;
    if (l$createAsset != lOther$createAsset) {
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

extension UtilityExtension$Mutation$CreateAsset on Mutation$CreateAsset {
  CopyWith$Mutation$CreateAsset<Mutation$CreateAsset> get copyWith =>
      CopyWith$Mutation$CreateAsset(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateAsset<TRes> {
  factory CopyWith$Mutation$CreateAsset(
    Mutation$CreateAsset instance,
    TRes Function(Mutation$CreateAsset) then,
  ) = _CopyWithImpl$Mutation$CreateAsset;

  factory CopyWith$Mutation$CreateAsset.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateAsset;

  TRes call({
    Mutation$CreateAsset$createAsset? createAsset,
    String? $__typename,
  });
  CopyWith$Mutation$CreateAsset$createAsset<TRes> get createAsset;
}

class _CopyWithImpl$Mutation$CreateAsset<TRes>
    implements CopyWith$Mutation$CreateAsset<TRes> {
  _CopyWithImpl$Mutation$CreateAsset(
    this._instance,
    this._then,
  );

  final Mutation$CreateAsset _instance;

  final TRes Function(Mutation$CreateAsset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createAsset = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateAsset(
        createAsset: createAsset == _undefined || createAsset == null
            ? _instance.createAsset
            : (createAsset as Mutation$CreateAsset$createAsset),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateAsset$createAsset<TRes> get createAsset {
    final local$createAsset = _instance.createAsset;
    return CopyWith$Mutation$CreateAsset$createAsset(
        local$createAsset, (e) => call(createAsset: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateAsset<TRes>
    implements CopyWith$Mutation$CreateAsset<TRes> {
  _CopyWithStubImpl$Mutation$CreateAsset(this._res);

  TRes _res;

  call({
    Mutation$CreateAsset$createAsset? createAsset,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateAsset$createAsset<TRes> get createAsset =>
      CopyWith$Mutation$CreateAsset$createAsset.stub(_res);
}

const documentNodeMutationCreateAsset = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateAsset'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateorUpdateAssetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createAsset'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
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

class Mutation$CreateAsset$createAsset {
  Mutation$CreateAsset$createAsset({
    required this.code,
    this.id,
    this.$__typename = 'Asset',
  });

  factory Mutation$CreateAsset$createAsset.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAsset$createAsset(
      code: (l$code as String),
      id: (l$id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String? id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateAsset$createAsset) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$CreateAsset$createAsset
    on Mutation$CreateAsset$createAsset {
  CopyWith$Mutation$CreateAsset$createAsset<Mutation$CreateAsset$createAsset>
      get copyWith => CopyWith$Mutation$CreateAsset$createAsset(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateAsset$createAsset<TRes> {
  factory CopyWith$Mutation$CreateAsset$createAsset(
    Mutation$CreateAsset$createAsset instance,
    TRes Function(Mutation$CreateAsset$createAsset) then,
  ) = _CopyWithImpl$Mutation$CreateAsset$createAsset;

  factory CopyWith$Mutation$CreateAsset$createAsset.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateAsset$createAsset;

  TRes call({
    String? code,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateAsset$createAsset<TRes>
    implements CopyWith$Mutation$CreateAsset$createAsset<TRes> {
  _CopyWithImpl$Mutation$CreateAsset$createAsset(
    this._instance,
    this._then,
  );

  final Mutation$CreateAsset$createAsset _instance;

  final TRes Function(Mutation$CreateAsset$createAsset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateAsset$createAsset(
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        id: id == _undefined ? _instance.id : (id as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateAsset$createAsset<TRes>
    implements CopyWith$Mutation$CreateAsset$createAsset<TRes> {
  _CopyWithStubImpl$Mutation$CreateAsset$createAsset(this._res);

  TRes _res;

  call({
    String? code,
    String? id,
    String? $__typename,
  }) =>
      _res;
}
