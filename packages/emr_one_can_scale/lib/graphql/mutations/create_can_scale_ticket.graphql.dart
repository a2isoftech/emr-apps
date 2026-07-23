import 'package:gql/ast.dart';

class Variables$Mutation$CreateCanScaleTicket {
  factory Variables$Mutation$CreateCanScaleTicket(
          {required String createdBy}) =>
      Variables$Mutation$CreateCanScaleTicket._({
        r'createdBy': createdBy,
      });

  Variables$Mutation$CreateCanScaleTicket._(this._$data);

  factory Variables$Mutation$CreateCanScaleTicket.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$createdBy = data['createdBy'];
    result$data['createdBy'] = (l$createdBy as String);
    return Variables$Mutation$CreateCanScaleTicket._(result$data);
  }

  Map<String, dynamic> _$data;

  String get createdBy => (_$data['createdBy'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$createdBy = createdBy;
    result$data['createdBy'] = l$createdBy;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateCanScaleTicket<
          Variables$Mutation$CreateCanScaleTicket>
      get copyWith => CopyWith$Variables$Mutation$CreateCanScaleTicket(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateCanScaleTicket) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdBy = createdBy;
    return Object.hashAll([l$createdBy]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateCanScaleTicket<TRes> {
  factory CopyWith$Variables$Mutation$CreateCanScaleTicket(
    Variables$Mutation$CreateCanScaleTicket instance,
    TRes Function(Variables$Mutation$CreateCanScaleTicket) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateCanScaleTicket;

  factory CopyWith$Variables$Mutation$CreateCanScaleTicket.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateCanScaleTicket;

  TRes call({String? createdBy});
}

class _CopyWithImpl$Variables$Mutation$CreateCanScaleTicket<TRes>
    implements CopyWith$Variables$Mutation$CreateCanScaleTicket<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateCanScaleTicket(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateCanScaleTicket _instance;

  final TRes Function(Variables$Mutation$CreateCanScaleTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createdBy = _undefined}) =>
      _then(Variables$Mutation$CreateCanScaleTicket._({
        ..._instance._$data,
        if (createdBy != _undefined && createdBy != null)
          'createdBy': (createdBy as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateCanScaleTicket<TRes>
    implements CopyWith$Variables$Mutation$CreateCanScaleTicket<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateCanScaleTicket(this._res);

  TRes _res;

  call({String? createdBy}) => _res;
}

class Mutation$CreateCanScaleTicket {
  Mutation$CreateCanScaleTicket({
    this.createCanScaleTicket,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateCanScaleTicket.fromJson(Map<String, dynamic> json) {
    final l$createCanScaleTicket = json['createCanScaleTicket'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateCanScaleTicket(
      createCanScaleTicket: l$createCanScaleTicket == null
          ? null
          : Mutation$CreateCanScaleTicket$createCanScaleTicket.fromJson(
              (l$createCanScaleTicket as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateCanScaleTicket$createCanScaleTicket?
      createCanScaleTicket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createCanScaleTicket = createCanScaleTicket;
    _resultData['createCanScaleTicket'] = l$createCanScaleTicket?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createCanScaleTicket = createCanScaleTicket;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createCanScaleTicket,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateCanScaleTicket) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createCanScaleTicket = createCanScaleTicket;
    final lOther$createCanScaleTicket = other.createCanScaleTicket;
    if (l$createCanScaleTicket != lOther$createCanScaleTicket) {
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

extension UtilityExtension$Mutation$CreateCanScaleTicket
    on Mutation$CreateCanScaleTicket {
  CopyWith$Mutation$CreateCanScaleTicket<Mutation$CreateCanScaleTicket>
      get copyWith => CopyWith$Mutation$CreateCanScaleTicket(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateCanScaleTicket<TRes> {
  factory CopyWith$Mutation$CreateCanScaleTicket(
    Mutation$CreateCanScaleTicket instance,
    TRes Function(Mutation$CreateCanScaleTicket) then,
  ) = _CopyWithImpl$Mutation$CreateCanScaleTicket;

  factory CopyWith$Mutation$CreateCanScaleTicket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateCanScaleTicket;

  TRes call({
    Mutation$CreateCanScaleTicket$createCanScaleTicket? createCanScaleTicket,
    String? $__typename,
  });
  CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket<TRes>
      get createCanScaleTicket;
}

class _CopyWithImpl$Mutation$CreateCanScaleTicket<TRes>
    implements CopyWith$Mutation$CreateCanScaleTicket<TRes> {
  _CopyWithImpl$Mutation$CreateCanScaleTicket(
    this._instance,
    this._then,
  );

  final Mutation$CreateCanScaleTicket _instance;

  final TRes Function(Mutation$CreateCanScaleTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createCanScaleTicket = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateCanScaleTicket(
        createCanScaleTicket: createCanScaleTicket == _undefined
            ? _instance.createCanScaleTicket
            : (createCanScaleTicket
                as Mutation$CreateCanScaleTicket$createCanScaleTicket?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket<TRes>
      get createCanScaleTicket {
    final local$createCanScaleTicket = _instance.createCanScaleTicket;
    return local$createCanScaleTicket == null
        ? CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket(
            local$createCanScaleTicket, (e) => call(createCanScaleTicket: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateCanScaleTicket<TRes>
    implements CopyWith$Mutation$CreateCanScaleTicket<TRes> {
  _CopyWithStubImpl$Mutation$CreateCanScaleTicket(this._res);

  TRes _res;

  call({
    Mutation$CreateCanScaleTicket$createCanScaleTicket? createCanScaleTicket,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket<TRes>
      get createCanScaleTicket =>
          CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket.stub(
              _res);
}

const documentNodeMutationCreateCanScaleTicket = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateCanScaleTicket'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'createdBy')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createCanScaleTicket'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'createdBy'),
                value: VariableNode(name: NameNode(value: 'createdBy')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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

class Mutation$CreateCanScaleTicket$createCanScaleTicket {
  Mutation$CreateCanScaleTicket$createCanScaleTicket({
    this.id,
    this.$__typename = 'Ticket',
  });

  factory Mutation$CreateCanScaleTicket$createCanScaleTicket.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateCanScaleTicket$createCanScaleTicket(
      id: (l$id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateCanScaleTicket$createCanScaleTicket) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$CreateCanScaleTicket$createCanScaleTicket
    on Mutation$CreateCanScaleTicket$createCanScaleTicket {
  CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket<
          Mutation$CreateCanScaleTicket$createCanScaleTicket>
      get copyWith =>
          CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket<
    TRes> {
  factory CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket(
    Mutation$CreateCanScaleTicket$createCanScaleTicket instance,
    TRes Function(Mutation$CreateCanScaleTicket$createCanScaleTicket) then,
  ) = _CopyWithImpl$Mutation$CreateCanScaleTicket$createCanScaleTicket;

  factory CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateCanScaleTicket$createCanScaleTicket;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateCanScaleTicket$createCanScaleTicket<TRes>
    implements
        CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket<TRes> {
  _CopyWithImpl$Mutation$CreateCanScaleTicket$createCanScaleTicket(
    this._instance,
    this._then,
  );

  final Mutation$CreateCanScaleTicket$createCanScaleTicket _instance;

  final TRes Function(Mutation$CreateCanScaleTicket$createCanScaleTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateCanScaleTicket$createCanScaleTicket(
        id: id == _undefined ? _instance.id : (id as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateCanScaleTicket$createCanScaleTicket<TRes>
    implements
        CopyWith$Mutation$CreateCanScaleTicket$createCanScaleTicket<TRes> {
  _CopyWithStubImpl$Mutation$CreateCanScaleTicket$createCanScaleTicket(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
