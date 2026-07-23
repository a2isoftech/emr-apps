import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$LinkGroupAndAccessPoint {
  factory Variables$Mutation$LinkGroupAndAccessPoint(
          {required Input$CreateGroupAndAccessPointLinkInput input}) =>
      Variables$Mutation$LinkGroupAndAccessPoint._({
        r'input': input,
      });

  Variables$Mutation$LinkGroupAndAccessPoint._(this._$data);

  factory Variables$Mutation$LinkGroupAndAccessPoint.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateGroupAndAccessPointLinkInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$LinkGroupAndAccessPoint._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateGroupAndAccessPointLinkInput get input =>
      (_$data['input'] as Input$CreateGroupAndAccessPointLinkInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$LinkGroupAndAccessPoint<
          Variables$Mutation$LinkGroupAndAccessPoint>
      get copyWith => CopyWith$Variables$Mutation$LinkGroupAndAccessPoint(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$LinkGroupAndAccessPoint ||
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

abstract class CopyWith$Variables$Mutation$LinkGroupAndAccessPoint<TRes> {
  factory CopyWith$Variables$Mutation$LinkGroupAndAccessPoint(
    Variables$Mutation$LinkGroupAndAccessPoint instance,
    TRes Function(Variables$Mutation$LinkGroupAndAccessPoint) then,
  ) = _CopyWithImpl$Variables$Mutation$LinkGroupAndAccessPoint;

  factory CopyWith$Variables$Mutation$LinkGroupAndAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$LinkGroupAndAccessPoint;

  TRes call({Input$CreateGroupAndAccessPointLinkInput? input});
}

class _CopyWithImpl$Variables$Mutation$LinkGroupAndAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$LinkGroupAndAccessPoint<TRes> {
  _CopyWithImpl$Variables$Mutation$LinkGroupAndAccessPoint(
    this._instance,
    this._then,
  );

  final Variables$Mutation$LinkGroupAndAccessPoint _instance;

  final TRes Function(Variables$Mutation$LinkGroupAndAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$LinkGroupAndAccessPoint._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateGroupAndAccessPointLinkInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$LinkGroupAndAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$LinkGroupAndAccessPoint<TRes> {
  _CopyWithStubImpl$Variables$Mutation$LinkGroupAndAccessPoint(this._res);

  TRes _res;

  call({Input$CreateGroupAndAccessPointLinkInput? input}) => _res;
}

class Mutation$LinkGroupAndAccessPoint {
  Mutation$LinkGroupAndAccessPoint({
    required this.linkGroupAndAccessPoint,
    this.$__typename = 'Mutation',
  });

  factory Mutation$LinkGroupAndAccessPoint.fromJson(Map<String, dynamic> json) {
    final l$linkGroupAndAccessPoint = json['linkGroupAndAccessPoint'];
    final l$$__typename = json['__typename'];
    return Mutation$LinkGroupAndAccessPoint(
      linkGroupAndAccessPoint: (l$linkGroupAndAccessPoint as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool linkGroupAndAccessPoint;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$linkGroupAndAccessPoint = linkGroupAndAccessPoint;
    _resultData['linkGroupAndAccessPoint'] = l$linkGroupAndAccessPoint;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$linkGroupAndAccessPoint = linkGroupAndAccessPoint;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$linkGroupAndAccessPoint,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$LinkGroupAndAccessPoint ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$linkGroupAndAccessPoint = linkGroupAndAccessPoint;
    final lOther$linkGroupAndAccessPoint = other.linkGroupAndAccessPoint;
    if (l$linkGroupAndAccessPoint != lOther$linkGroupAndAccessPoint) {
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

extension UtilityExtension$Mutation$LinkGroupAndAccessPoint
    on Mutation$LinkGroupAndAccessPoint {
  CopyWith$Mutation$LinkGroupAndAccessPoint<Mutation$LinkGroupAndAccessPoint>
      get copyWith => CopyWith$Mutation$LinkGroupAndAccessPoint(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$LinkGroupAndAccessPoint<TRes> {
  factory CopyWith$Mutation$LinkGroupAndAccessPoint(
    Mutation$LinkGroupAndAccessPoint instance,
    TRes Function(Mutation$LinkGroupAndAccessPoint) then,
  ) = _CopyWithImpl$Mutation$LinkGroupAndAccessPoint;

  factory CopyWith$Mutation$LinkGroupAndAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LinkGroupAndAccessPoint;

  TRes call({
    bool? linkGroupAndAccessPoint,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$LinkGroupAndAccessPoint<TRes>
    implements CopyWith$Mutation$LinkGroupAndAccessPoint<TRes> {
  _CopyWithImpl$Mutation$LinkGroupAndAccessPoint(
    this._instance,
    this._then,
  );

  final Mutation$LinkGroupAndAccessPoint _instance;

  final TRes Function(Mutation$LinkGroupAndAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? linkGroupAndAccessPoint = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LinkGroupAndAccessPoint(
        linkGroupAndAccessPoint: linkGroupAndAccessPoint == _undefined ||
                linkGroupAndAccessPoint == null
            ? _instance.linkGroupAndAccessPoint
            : (linkGroupAndAccessPoint as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$LinkGroupAndAccessPoint<TRes>
    implements CopyWith$Mutation$LinkGroupAndAccessPoint<TRes> {
  _CopyWithStubImpl$Mutation$LinkGroupAndAccessPoint(this._res);

  TRes _res;

  call({
    bool? linkGroupAndAccessPoint,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationLinkGroupAndAccessPoint = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'LinkGroupAndAccessPoint'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateGroupAndAccessPointLinkInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'linkGroupAndAccessPoint'),
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
