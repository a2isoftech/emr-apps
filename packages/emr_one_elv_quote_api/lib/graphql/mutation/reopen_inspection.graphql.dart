import 'package:gql/ast.dart';

class Variables$Mutation$ReopenInspection {
  factory Variables$Mutation$ReopenInspection({required int quoteId}) =>
      Variables$Mutation$ReopenInspection._({
        r'quoteId': quoteId,
      });

  Variables$Mutation$ReopenInspection._(this._$data);

  factory Variables$Mutation$ReopenInspection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quoteId = data['quoteId'];
    result$data['quoteId'] = (l$quoteId as int);
    return Variables$Mutation$ReopenInspection._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quoteId => (_$data['quoteId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quoteId = quoteId;
    result$data['quoteId'] = l$quoteId;
    return result$data;
  }

  CopyWith$Variables$Mutation$ReopenInspection<
          Variables$Mutation$ReopenInspection>
      get copyWith => CopyWith$Variables$Mutation$ReopenInspection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ReopenInspection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quoteId = quoteId;
    return Object.hashAll([l$quoteId]);
  }
}

abstract class CopyWith$Variables$Mutation$ReopenInspection<TRes> {
  factory CopyWith$Variables$Mutation$ReopenInspection(
    Variables$Mutation$ReopenInspection instance,
    TRes Function(Variables$Mutation$ReopenInspection) then,
  ) = _CopyWithImpl$Variables$Mutation$ReopenInspection;

  factory CopyWith$Variables$Mutation$ReopenInspection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ReopenInspection;

  TRes call({int? quoteId});
}

class _CopyWithImpl$Variables$Mutation$ReopenInspection<TRes>
    implements CopyWith$Variables$Mutation$ReopenInspection<TRes> {
  _CopyWithImpl$Variables$Mutation$ReopenInspection(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ReopenInspection _instance;

  final TRes Function(Variables$Mutation$ReopenInspection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? quoteId = _undefined}) =>
      _then(Variables$Mutation$ReopenInspection._({
        ..._instance._$data,
        if (quoteId != _undefined && quoteId != null)
          'quoteId': (quoteId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ReopenInspection<TRes>
    implements CopyWith$Variables$Mutation$ReopenInspection<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ReopenInspection(this._res);

  TRes _res;

  call({int? quoteId}) => _res;
}

class Mutation$ReopenInspection {
  Mutation$ReopenInspection({
    required this.reopenInspection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ReopenInspection.fromJson(Map<String, dynamic> json) {
    final l$reopenInspection = json['reopenInspection'];
    final l$$__typename = json['__typename'];
    return Mutation$ReopenInspection(
      reopenInspection: (l$reopenInspection as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool reopenInspection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$reopenInspection = reopenInspection;
    _resultData['reopenInspection'] = l$reopenInspection;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$reopenInspection = reopenInspection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$reopenInspection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ReopenInspection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reopenInspection = reopenInspection;
    final lOther$reopenInspection = other.reopenInspection;
    if (l$reopenInspection != lOther$reopenInspection) {
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

extension UtilityExtension$Mutation$ReopenInspection
    on Mutation$ReopenInspection {
  CopyWith$Mutation$ReopenInspection<Mutation$ReopenInspection> get copyWith =>
      CopyWith$Mutation$ReopenInspection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ReopenInspection<TRes> {
  factory CopyWith$Mutation$ReopenInspection(
    Mutation$ReopenInspection instance,
    TRes Function(Mutation$ReopenInspection) then,
  ) = _CopyWithImpl$Mutation$ReopenInspection;

  factory CopyWith$Mutation$ReopenInspection.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ReopenInspection;

  TRes call({
    bool? reopenInspection,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ReopenInspection<TRes>
    implements CopyWith$Mutation$ReopenInspection<TRes> {
  _CopyWithImpl$Mutation$ReopenInspection(
    this._instance,
    this._then,
  );

  final Mutation$ReopenInspection _instance;

  final TRes Function(Mutation$ReopenInspection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reopenInspection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ReopenInspection(
        reopenInspection:
            reopenInspection == _undefined || reopenInspection == null
                ? _instance.reopenInspection
                : (reopenInspection as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ReopenInspection<TRes>
    implements CopyWith$Mutation$ReopenInspection<TRes> {
  _CopyWithStubImpl$Mutation$ReopenInspection(this._res);

  TRes _res;

  call({
    bool? reopenInspection,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationReopenInspection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ReopenInspection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'quoteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'reopenInspection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'quoteId'),
            value: VariableNode(name: NameNode(value: 'quoteId')),
          )
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
