import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$updateTicketLines {
  factory Variables$Mutation$updateTicketLines({
    required Input$UpdateTicketLineInput input,
  }) => Variables$Mutation$updateTicketLines._({r'input': input});

  Variables$Mutation$updateTicketLines._(this._$data);

  factory Variables$Mutation$updateTicketLines.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateTicketLineInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$updateTicketLines._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateTicketLineInput get input =>
      (_$data['input'] as Input$UpdateTicketLineInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateTicketLines<
    Variables$Mutation$updateTicketLines
  >
  get copyWith => CopyWith$Variables$Mutation$updateTicketLines(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$updateTicketLines ||
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

abstract class CopyWith$Variables$Mutation$updateTicketLines<TRes> {
  factory CopyWith$Variables$Mutation$updateTicketLines(
    Variables$Mutation$updateTicketLines instance,
    TRes Function(Variables$Mutation$updateTicketLines) then,
  ) = _CopyWithImpl$Variables$Mutation$updateTicketLines;

  factory CopyWith$Variables$Mutation$updateTicketLines.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateTicketLines;

  TRes call({Input$UpdateTicketLineInput? input});
}

class _CopyWithImpl$Variables$Mutation$updateTicketLines<TRes>
    implements CopyWith$Variables$Mutation$updateTicketLines<TRes> {
  _CopyWithImpl$Variables$Mutation$updateTicketLines(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateTicketLines _instance;

  final TRes Function(Variables$Mutation$updateTicketLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$updateTicketLines._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateTicketLineInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$updateTicketLines<TRes>
    implements CopyWith$Variables$Mutation$updateTicketLines<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateTicketLines(this._res);

  TRes _res;

  call({Input$UpdateTicketLineInput? input}) => _res;
}

class Mutation$updateTicketLines {
  Mutation$updateTicketLines({
    required this.updateTicketLines,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateTicketLines.fromJson(Map<String, dynamic> json) {
    final l$updateTicketLines = json['updateTicketLines'];
    final l$$__typename = json['__typename'];
    return Mutation$updateTicketLines(
      updateTicketLines: Mutation$updateTicketLines$updateTicketLines.fromJson(
        (l$updateTicketLines as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateTicketLines$updateTicketLines updateTicketLines;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTicketLines = updateTicketLines;
    _resultData['updateTicketLines'] = l$updateTicketLines.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTicketLines = updateTicketLines;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateTicketLines, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateTicketLines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTicketLines = updateTicketLines;
    final lOther$updateTicketLines = other.updateTicketLines;
    if (l$updateTicketLines != lOther$updateTicketLines) {
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

extension UtilityExtension$Mutation$updateTicketLines
    on Mutation$updateTicketLines {
  CopyWith$Mutation$updateTicketLines<Mutation$updateTicketLines>
  get copyWith => CopyWith$Mutation$updateTicketLines(this, (i) => i);
}

abstract class CopyWith$Mutation$updateTicketLines<TRes> {
  factory CopyWith$Mutation$updateTicketLines(
    Mutation$updateTicketLines instance,
    TRes Function(Mutation$updateTicketLines) then,
  ) = _CopyWithImpl$Mutation$updateTicketLines;

  factory CopyWith$Mutation$updateTicketLines.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateTicketLines;

  TRes call({
    Mutation$updateTicketLines$updateTicketLines? updateTicketLines,
    String? $__typename,
  });
  CopyWith$Mutation$updateTicketLines$updateTicketLines<TRes>
  get updateTicketLines;
}

class _CopyWithImpl$Mutation$updateTicketLines<TRes>
    implements CopyWith$Mutation$updateTicketLines<TRes> {
  _CopyWithImpl$Mutation$updateTicketLines(this._instance, this._then);

  final Mutation$updateTicketLines _instance;

  final TRes Function(Mutation$updateTicketLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTicketLines = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$updateTicketLines(
      updateTicketLines:
          updateTicketLines == _undefined || updateTicketLines == null
          ? _instance.updateTicketLines
          : (updateTicketLines as Mutation$updateTicketLines$updateTicketLines),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$updateTicketLines$updateTicketLines<TRes>
  get updateTicketLines {
    final local$updateTicketLines = _instance.updateTicketLines;
    return CopyWith$Mutation$updateTicketLines$updateTicketLines(
      local$updateTicketLines,
      (e) => call(updateTicketLines: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$updateTicketLines<TRes>
    implements CopyWith$Mutation$updateTicketLines<TRes> {
  _CopyWithStubImpl$Mutation$updateTicketLines(this._res);

  TRes _res;

  call({
    Mutation$updateTicketLines$updateTicketLines? updateTicketLines,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$updateTicketLines$updateTicketLines<TRes>
  get updateTicketLines =>
      CopyWith$Mutation$updateTicketLines$updateTicketLines.stub(_res);
}

const documentNodeMutationupdateTicketLines = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateTicketLines'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateTicketLineInput'),
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
            name: NameNode(value: 'updateTicketLines'),
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

class Mutation$updateTicketLines$updateTicketLines {
  Mutation$updateTicketLines$updateTicketLines({
    required this.id,
    this.$__typename = 'Ticket',
  });

  factory Mutation$updateTicketLines$updateTicketLines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$updateTicketLines$updateTicketLines(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

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
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateTicketLines$updateTicketLines ||
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

extension UtilityExtension$Mutation$updateTicketLines$updateTicketLines
    on Mutation$updateTicketLines$updateTicketLines {
  CopyWith$Mutation$updateTicketLines$updateTicketLines<
    Mutation$updateTicketLines$updateTicketLines
  >
  get copyWith =>
      CopyWith$Mutation$updateTicketLines$updateTicketLines(this, (i) => i);
}

abstract class CopyWith$Mutation$updateTicketLines$updateTicketLines<TRes> {
  factory CopyWith$Mutation$updateTicketLines$updateTicketLines(
    Mutation$updateTicketLines$updateTicketLines instance,
    TRes Function(Mutation$updateTicketLines$updateTicketLines) then,
  ) = _CopyWithImpl$Mutation$updateTicketLines$updateTicketLines;

  factory CopyWith$Mutation$updateTicketLines$updateTicketLines.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateTicketLines$updateTicketLines;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$updateTicketLines$updateTicketLines<TRes>
    implements CopyWith$Mutation$updateTicketLines$updateTicketLines<TRes> {
  _CopyWithImpl$Mutation$updateTicketLines$updateTicketLines(
    this._instance,
    this._then,
  );

  final Mutation$updateTicketLines$updateTicketLines _instance;

  final TRes Function(Mutation$updateTicketLines$updateTicketLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$updateTicketLines$updateTicketLines(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$updateTicketLines$updateTicketLines<TRes>
    implements CopyWith$Mutation$updateTicketLines$updateTicketLines<TRes> {
  _CopyWithStubImpl$Mutation$updateTicketLines$updateTicketLines(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
