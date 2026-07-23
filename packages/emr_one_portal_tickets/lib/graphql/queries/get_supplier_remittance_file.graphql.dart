import 'package:gql/ast.dart';

class Variables$Query$supplierRemittance {
  factory Variables$Query$supplierRemittance({required DateTime paidDate}) =>
      Variables$Query$supplierRemittance._({
        r'paidDate': paidDate,
      });

  Variables$Query$supplierRemittance._(this._$data);

  factory Variables$Query$supplierRemittance.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$paidDate = data['paidDate'];
    result$data['paidDate'] = DateTime.parse((l$paidDate as String));
    return Variables$Query$supplierRemittance._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get paidDate => (_$data['paidDate'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paidDate = paidDate;
    result$data['paidDate'] = l$paidDate.toIso8601String();
    return result$data;
  }

  CopyWith$Variables$Query$supplierRemittance<
          Variables$Query$supplierRemittance>
      get copyWith => CopyWith$Variables$Query$supplierRemittance(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$supplierRemittance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paidDate = paidDate;
    final lOther$paidDate = other.paidDate;
    if (l$paidDate != lOther$paidDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$paidDate = paidDate;
    return Object.hashAll([l$paidDate]);
  }
}

abstract class CopyWith$Variables$Query$supplierRemittance<TRes> {
  factory CopyWith$Variables$Query$supplierRemittance(
    Variables$Query$supplierRemittance instance,
    TRes Function(Variables$Query$supplierRemittance) then,
  ) = _CopyWithImpl$Variables$Query$supplierRemittance;

  factory CopyWith$Variables$Query$supplierRemittance.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$supplierRemittance;

  TRes call({DateTime? paidDate});
}

class _CopyWithImpl$Variables$Query$supplierRemittance<TRes>
    implements CopyWith$Variables$Query$supplierRemittance<TRes> {
  _CopyWithImpl$Variables$Query$supplierRemittance(
    this._instance,
    this._then,
  );

  final Variables$Query$supplierRemittance _instance;

  final TRes Function(Variables$Query$supplierRemittance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paidDate = _undefined}) =>
      _then(Variables$Query$supplierRemittance._({
        ..._instance._$data,
        if (paidDate != _undefined && paidDate != null)
          'paidDate': (paidDate as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Query$supplierRemittance<TRes>
    implements CopyWith$Variables$Query$supplierRemittance<TRes> {
  _CopyWithStubImpl$Variables$Query$supplierRemittance(this._res);

  TRes _res;

  call({DateTime? paidDate}) => _res;
}

class Query$supplierRemittance {
  Query$supplierRemittance({
    this.supplierRemittance,
    this.$__typename = 'Query',
  });

  factory Query$supplierRemittance.fromJson(Map<String, dynamic> json) {
    final l$supplierRemittance = json['supplierRemittance'];
    final l$$__typename = json['__typename'];
    return Query$supplierRemittance(
      supplierRemittance: (l$supplierRemittance as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? supplierRemittance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$supplierRemittance = supplierRemittance;
    _resultData['supplierRemittance'] = l$supplierRemittance;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$supplierRemittance = supplierRemittance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$supplierRemittance,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$supplierRemittance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$supplierRemittance = supplierRemittance;
    final lOther$supplierRemittance = other.supplierRemittance;
    if (l$supplierRemittance != lOther$supplierRemittance) {
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

extension UtilityExtension$Query$supplierRemittance
    on Query$supplierRemittance {
  CopyWith$Query$supplierRemittance<Query$supplierRemittance> get copyWith =>
      CopyWith$Query$supplierRemittance(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$supplierRemittance<TRes> {
  factory CopyWith$Query$supplierRemittance(
    Query$supplierRemittance instance,
    TRes Function(Query$supplierRemittance) then,
  ) = _CopyWithImpl$Query$supplierRemittance;

  factory CopyWith$Query$supplierRemittance.stub(TRes res) =
      _CopyWithStubImpl$Query$supplierRemittance;

  TRes call({
    String? supplierRemittance,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$supplierRemittance<TRes>
    implements CopyWith$Query$supplierRemittance<TRes> {
  _CopyWithImpl$Query$supplierRemittance(
    this._instance,
    this._then,
  );

  final Query$supplierRemittance _instance;

  final TRes Function(Query$supplierRemittance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? supplierRemittance = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$supplierRemittance(
        supplierRemittance: supplierRemittance == _undefined
            ? _instance.supplierRemittance
            : (supplierRemittance as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$supplierRemittance<TRes>
    implements CopyWith$Query$supplierRemittance<TRes> {
  _CopyWithStubImpl$Query$supplierRemittance(this._res);

  TRes _res;

  call({
    String? supplierRemittance,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQuerysupplierRemittance = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'supplierRemittance'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'paidDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'supplierRemittance'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'createDate'),
            value: VariableNode(name: NameNode(value: 'paidDate')),
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
