import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateMaskLines {
  factory Variables$Mutation$CreateMaskLines(
          {required Input$CreateMaskLinesInput input}) =>
      Variables$Mutation$CreateMaskLines._({
        r'input': input,
      });

  Variables$Mutation$CreateMaskLines._(this._$data);

  factory Variables$Mutation$CreateMaskLines.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CreateMaskLinesInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateMaskLines._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateMaskLinesInput get input =>
      (_$data['input'] as Input$CreateMaskLinesInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateMaskLines<
          Variables$Mutation$CreateMaskLines>
      get copyWith => CopyWith$Variables$Mutation$CreateMaskLines(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateMaskLines ||
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

abstract class CopyWith$Variables$Mutation$CreateMaskLines<TRes> {
  factory CopyWith$Variables$Mutation$CreateMaskLines(
    Variables$Mutation$CreateMaskLines instance,
    TRes Function(Variables$Mutation$CreateMaskLines) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateMaskLines;

  factory CopyWith$Variables$Mutation$CreateMaskLines.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateMaskLines;

  TRes call({Input$CreateMaskLinesInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateMaskLines<TRes>
    implements CopyWith$Variables$Mutation$CreateMaskLines<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateMaskLines(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateMaskLines _instance;

  final TRes Function(Variables$Mutation$CreateMaskLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateMaskLines._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateMaskLinesInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateMaskLines<TRes>
    implements CopyWith$Variables$Mutation$CreateMaskLines<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateMaskLines(this._res);

  TRes _res;

  call({Input$CreateMaskLinesInput? input}) => _res;
}

class Mutation$CreateMaskLines {
  Mutation$CreateMaskLines({
    required this.createMaskLines,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateMaskLines.fromJson(Map<String, dynamic> json) {
    final l$createMaskLines = json['createMaskLines'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateMaskLines(
      createMaskLines: (l$createMaskLines as List<dynamic>)
          .map((e) => Mutation$CreateMaskLines$createMaskLines.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$CreateMaskLines$createMaskLines> createMaskLines;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createMaskLines = createMaskLines;
    _resultData['createMaskLines'] =
        l$createMaskLines.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createMaskLines = createMaskLines;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$createMaskLines.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateMaskLines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createMaskLines = createMaskLines;
    final lOther$createMaskLines = other.createMaskLines;
    if (l$createMaskLines.length != lOther$createMaskLines.length) {
      return false;
    }
    for (int i = 0; i < l$createMaskLines.length; i++) {
      final l$createMaskLines$entry = l$createMaskLines[i];
      final lOther$createMaskLines$entry = lOther$createMaskLines[i];
      if (l$createMaskLines$entry != lOther$createMaskLines$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateMaskLines
    on Mutation$CreateMaskLines {
  CopyWith$Mutation$CreateMaskLines<Mutation$CreateMaskLines> get copyWith =>
      CopyWith$Mutation$CreateMaskLines(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateMaskLines<TRes> {
  factory CopyWith$Mutation$CreateMaskLines(
    Mutation$CreateMaskLines instance,
    TRes Function(Mutation$CreateMaskLines) then,
  ) = _CopyWithImpl$Mutation$CreateMaskLines;

  factory CopyWith$Mutation$CreateMaskLines.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateMaskLines;

  TRes call({
    List<Mutation$CreateMaskLines$createMaskLines>? createMaskLines,
    String? $__typename,
  });
  TRes createMaskLines(
      Iterable<Mutation$CreateMaskLines$createMaskLines> Function(
              Iterable<
                  CopyWith$Mutation$CreateMaskLines$createMaskLines<
                      Mutation$CreateMaskLines$createMaskLines>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateMaskLines<TRes>
    implements CopyWith$Mutation$CreateMaskLines<TRes> {
  _CopyWithImpl$Mutation$CreateMaskLines(
    this._instance,
    this._then,
  );

  final Mutation$CreateMaskLines _instance;

  final TRes Function(Mutation$CreateMaskLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createMaskLines = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateMaskLines(
        createMaskLines:
            createMaskLines == _undefined || createMaskLines == null
                ? _instance.createMaskLines
                : (createMaskLines
                    as List<Mutation$CreateMaskLines$createMaskLines>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes createMaskLines(
          Iterable<Mutation$CreateMaskLines$createMaskLines> Function(
                  Iterable<
                      CopyWith$Mutation$CreateMaskLines$createMaskLines<
                          Mutation$CreateMaskLines$createMaskLines>>)
              _fn) =>
      call(
          createMaskLines: _fn(_instance.createMaskLines
              .map((e) => CopyWith$Mutation$CreateMaskLines$createMaskLines(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateMaskLines<TRes>
    implements CopyWith$Mutation$CreateMaskLines<TRes> {
  _CopyWithStubImpl$Mutation$CreateMaskLines(this._res);

  TRes _res;

  call({
    List<Mutation$CreateMaskLines$createMaskLines>? createMaskLines,
    String? $__typename,
  }) =>
      _res;

  createMaskLines(_fn) => _res;
}

const documentNodeMutationCreateMaskLines = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateMaskLines'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateMaskLinesInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createMaskLines'),
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
            name: NameNode(value: 'contractLineId'),
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

class Mutation$CreateMaskLines$createMaskLines {
  Mutation$CreateMaskLines$createMaskLines({
    required this.contractLineId,
    this.$__typename = 'T2ContractLine',
  });

  factory Mutation$CreateMaskLines$createMaskLines.fromJson(
      Map<String, dynamic> json) {
    final l$contractLineId = json['contractLineId'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateMaskLines$createMaskLines(
      contractLineId: (l$contractLineId as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int contractLineId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractLineId = contractLineId;
    _resultData['contractLineId'] = l$contractLineId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractLineId = contractLineId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractLineId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateMaskLines$createMaskLines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractLineId = contractLineId;
    final lOther$contractLineId = other.contractLineId;
    if (l$contractLineId != lOther$contractLineId) {
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

extension UtilityExtension$Mutation$CreateMaskLines$createMaskLines
    on Mutation$CreateMaskLines$createMaskLines {
  CopyWith$Mutation$CreateMaskLines$createMaskLines<
          Mutation$CreateMaskLines$createMaskLines>
      get copyWith => CopyWith$Mutation$CreateMaskLines$createMaskLines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateMaskLines$createMaskLines<TRes> {
  factory CopyWith$Mutation$CreateMaskLines$createMaskLines(
    Mutation$CreateMaskLines$createMaskLines instance,
    TRes Function(Mutation$CreateMaskLines$createMaskLines) then,
  ) = _CopyWithImpl$Mutation$CreateMaskLines$createMaskLines;

  factory CopyWith$Mutation$CreateMaskLines$createMaskLines.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateMaskLines$createMaskLines;

  TRes call({
    int? contractLineId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateMaskLines$createMaskLines<TRes>
    implements CopyWith$Mutation$CreateMaskLines$createMaskLines<TRes> {
  _CopyWithImpl$Mutation$CreateMaskLines$createMaskLines(
    this._instance,
    this._then,
  );

  final Mutation$CreateMaskLines$createMaskLines _instance;

  final TRes Function(Mutation$CreateMaskLines$createMaskLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractLineId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateMaskLines$createMaskLines(
        contractLineId: contractLineId == _undefined || contractLineId == null
            ? _instance.contractLineId
            : (contractLineId as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateMaskLines$createMaskLines<TRes>
    implements CopyWith$Mutation$CreateMaskLines$createMaskLines<TRes> {
  _CopyWithStubImpl$Mutation$CreateMaskLines$createMaskLines(this._res);

  TRes _res;

  call({
    int? contractLineId,
    String? $__typename,
  }) =>
      _res;
}
