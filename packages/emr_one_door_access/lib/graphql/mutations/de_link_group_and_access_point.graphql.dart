import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeLinkGroupAndAccessPoint {
  factory Variables$Mutation$DeLinkGroupAndAccessPoint(
          {required Input$DelinkGroupAndAccessPointInput input}) =>
      Variables$Mutation$DeLinkGroupAndAccessPoint._({
        r'input': input,
      });

  Variables$Mutation$DeLinkGroupAndAccessPoint._(this._$data);

  factory Variables$Mutation$DeLinkGroupAndAccessPoint.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$DelinkGroupAndAccessPointInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$DeLinkGroupAndAccessPoint._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DelinkGroupAndAccessPointInput get input =>
      (_$data['input'] as Input$DelinkGroupAndAccessPointInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeLinkGroupAndAccessPoint<
          Variables$Mutation$DeLinkGroupAndAccessPoint>
      get copyWith => CopyWith$Variables$Mutation$DeLinkGroupAndAccessPoint(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeLinkGroupAndAccessPoint ||
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

abstract class CopyWith$Variables$Mutation$DeLinkGroupAndAccessPoint<TRes> {
  factory CopyWith$Variables$Mutation$DeLinkGroupAndAccessPoint(
    Variables$Mutation$DeLinkGroupAndAccessPoint instance,
    TRes Function(Variables$Mutation$DeLinkGroupAndAccessPoint) then,
  ) = _CopyWithImpl$Variables$Mutation$DeLinkGroupAndAccessPoint;

  factory CopyWith$Variables$Mutation$DeLinkGroupAndAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeLinkGroupAndAccessPoint;

  TRes call({Input$DelinkGroupAndAccessPointInput? input});
}

class _CopyWithImpl$Variables$Mutation$DeLinkGroupAndAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$DeLinkGroupAndAccessPoint<TRes> {
  _CopyWithImpl$Variables$Mutation$DeLinkGroupAndAccessPoint(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeLinkGroupAndAccessPoint _instance;

  final TRes Function(Variables$Mutation$DeLinkGroupAndAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$DeLinkGroupAndAccessPoint._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$DelinkGroupAndAccessPointInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeLinkGroupAndAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$DeLinkGroupAndAccessPoint<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeLinkGroupAndAccessPoint(this._res);

  TRes _res;

  call({Input$DelinkGroupAndAccessPointInput? input}) => _res;
}

class Mutation$DeLinkGroupAndAccessPoint {
  Mutation$DeLinkGroupAndAccessPoint({
    required this.deLinkGroupAndAccessPoint,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeLinkGroupAndAccessPoint.fromJson(
      Map<String, dynamic> json) {
    final l$deLinkGroupAndAccessPoint = json['deLinkGroupAndAccessPoint'];
    final l$$__typename = json['__typename'];
    return Mutation$DeLinkGroupAndAccessPoint(
      deLinkGroupAndAccessPoint: (l$deLinkGroupAndAccessPoint as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deLinkGroupAndAccessPoint;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deLinkGroupAndAccessPoint = deLinkGroupAndAccessPoint;
    _resultData['deLinkGroupAndAccessPoint'] = l$deLinkGroupAndAccessPoint;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deLinkGroupAndAccessPoint = deLinkGroupAndAccessPoint;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deLinkGroupAndAccessPoint,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeLinkGroupAndAccessPoint ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deLinkGroupAndAccessPoint = deLinkGroupAndAccessPoint;
    final lOther$deLinkGroupAndAccessPoint = other.deLinkGroupAndAccessPoint;
    if (l$deLinkGroupAndAccessPoint != lOther$deLinkGroupAndAccessPoint) {
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

extension UtilityExtension$Mutation$DeLinkGroupAndAccessPoint
    on Mutation$DeLinkGroupAndAccessPoint {
  CopyWith$Mutation$DeLinkGroupAndAccessPoint<
          Mutation$DeLinkGroupAndAccessPoint>
      get copyWith => CopyWith$Mutation$DeLinkGroupAndAccessPoint(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeLinkGroupAndAccessPoint<TRes> {
  factory CopyWith$Mutation$DeLinkGroupAndAccessPoint(
    Mutation$DeLinkGroupAndAccessPoint instance,
    TRes Function(Mutation$DeLinkGroupAndAccessPoint) then,
  ) = _CopyWithImpl$Mutation$DeLinkGroupAndAccessPoint;

  factory CopyWith$Mutation$DeLinkGroupAndAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeLinkGroupAndAccessPoint;

  TRes call({
    bool? deLinkGroupAndAccessPoint,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeLinkGroupAndAccessPoint<TRes>
    implements CopyWith$Mutation$DeLinkGroupAndAccessPoint<TRes> {
  _CopyWithImpl$Mutation$DeLinkGroupAndAccessPoint(
    this._instance,
    this._then,
  );

  final Mutation$DeLinkGroupAndAccessPoint _instance;

  final TRes Function(Mutation$DeLinkGroupAndAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deLinkGroupAndAccessPoint = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeLinkGroupAndAccessPoint(
        deLinkGroupAndAccessPoint: deLinkGroupAndAccessPoint == _undefined ||
                deLinkGroupAndAccessPoint == null
            ? _instance.deLinkGroupAndAccessPoint
            : (deLinkGroupAndAccessPoint as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeLinkGroupAndAccessPoint<TRes>
    implements CopyWith$Mutation$DeLinkGroupAndAccessPoint<TRes> {
  _CopyWithStubImpl$Mutation$DeLinkGroupAndAccessPoint(this._res);

  TRes _res;

  call({
    bool? deLinkGroupAndAccessPoint,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeLinkGroupAndAccessPoint =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeLinkGroupAndAccessPoint'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'DelinkGroupAndAccessPointInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deLinkGroupAndAccessPoint'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
