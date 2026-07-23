import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import '../../fragments/yard_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateYard {
  factory Variables$Mutation$UpdateYard({
    required Input$UpdateYardInput input,
  }) => Variables$Mutation$UpdateYard._({r'input': input});

  Variables$Mutation$UpdateYard._(this._$data);

  factory Variables$Mutation$UpdateYard.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateYardInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateYard._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateYardInput get input => (_$data['input'] as Input$UpdateYardInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateYard<Variables$Mutation$UpdateYard>
  get copyWith => CopyWith$Variables$Mutation$UpdateYard(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateYard ||
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

abstract class CopyWith$Variables$Mutation$UpdateYard<TRes> {
  factory CopyWith$Variables$Mutation$UpdateYard(
    Variables$Mutation$UpdateYard instance,
    TRes Function(Variables$Mutation$UpdateYard) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateYard;

  factory CopyWith$Variables$Mutation$UpdateYard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateYard;

  TRes call({Input$UpdateYardInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateYard<TRes>
    implements CopyWith$Variables$Mutation$UpdateYard<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateYard(this._instance, this._then);

  final Variables$Mutation$UpdateYard _instance;

  final TRes Function(Variables$Mutation$UpdateYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateYard._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateYardInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateYard<TRes>
    implements CopyWith$Variables$Mutation$UpdateYard<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateYard(this._res);

  TRes _res;

  call({Input$UpdateYardInput? input}) => _res;
}

class Mutation$UpdateYard {
  Mutation$UpdateYard({
    required this.updateYard,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateYard.fromJson(Map<String, dynamic> json) {
    final l$updateYard = json['updateYard'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateYard(
      updateYard: Fragment$YardFragment.fromJson(
        (l$updateYard as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$YardFragment updateYard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateYard = updateYard;
    _resultData['updateYard'] = l$updateYard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateYard = updateYard;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateYard, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateYard || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateYard = updateYard;
    final lOther$updateYard = other.updateYard;
    if (l$updateYard != lOther$updateYard) {
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

extension UtilityExtension$Mutation$UpdateYard on Mutation$UpdateYard {
  CopyWith$Mutation$UpdateYard<Mutation$UpdateYard> get copyWith =>
      CopyWith$Mutation$UpdateYard(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateYard<TRes> {
  factory CopyWith$Mutation$UpdateYard(
    Mutation$UpdateYard instance,
    TRes Function(Mutation$UpdateYard) then,
  ) = _CopyWithImpl$Mutation$UpdateYard;

  factory CopyWith$Mutation$UpdateYard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateYard;

  TRes call({Fragment$YardFragment? updateYard, String? $__typename});
  CopyWith$Fragment$YardFragment<TRes> get updateYard;
}

class _CopyWithImpl$Mutation$UpdateYard<TRes>
    implements CopyWith$Mutation$UpdateYard<TRes> {
  _CopyWithImpl$Mutation$UpdateYard(this._instance, this._then);

  final Mutation$UpdateYard _instance;

  final TRes Function(Mutation$UpdateYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateYard = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateYard(
      updateYard: updateYard == _undefined || updateYard == null
          ? _instance.updateYard
          : (updateYard as Fragment$YardFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$YardFragment<TRes> get updateYard {
    final local$updateYard = _instance.updateYard;
    return CopyWith$Fragment$YardFragment(
      local$updateYard,
      (e) => call(updateYard: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateYard<TRes>
    implements CopyWith$Mutation$UpdateYard<TRes> {
  _CopyWithStubImpl$Mutation$UpdateYard(this._res);

  TRes _res;

  call({Fragment$YardFragment? updateYard, String? $__typename}) => _res;

  CopyWith$Fragment$YardFragment<TRes> get updateYard =>
      CopyWith$Fragment$YardFragment.stub(_res);
}

const documentNodeMutationUpdateYard = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateYard'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateYardInput'),
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
            name: NameNode(value: 'updateYard'),
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
                FragmentSpreadNode(
                  name: NameNode(value: 'YardFragment'),
                  directives: [],
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
    fragmentDefinitionYardFragment,
    fragmentDefinitionCompanyFragment,
    fragmentDefinitionTerritoryFragment,
  ],
);
