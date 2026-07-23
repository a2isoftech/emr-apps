import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import '../../fragments/yard_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateYard {
  factory Variables$Mutation$CreateYard({
    required Input$CreateYardInput input,
  }) => Variables$Mutation$CreateYard._({r'input': input});

  Variables$Mutation$CreateYard._(this._$data);

  factory Variables$Mutation$CreateYard.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateYardInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateYard._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateYardInput get input => (_$data['input'] as Input$CreateYardInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateYard<Variables$Mutation$CreateYard>
  get copyWith => CopyWith$Variables$Mutation$CreateYard(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateYard ||
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

abstract class CopyWith$Variables$Mutation$CreateYard<TRes> {
  factory CopyWith$Variables$Mutation$CreateYard(
    Variables$Mutation$CreateYard instance,
    TRes Function(Variables$Mutation$CreateYard) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateYard;

  factory CopyWith$Variables$Mutation$CreateYard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateYard;

  TRes call({Input$CreateYardInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateYard<TRes>
    implements CopyWith$Variables$Mutation$CreateYard<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateYard(this._instance, this._then);

  final Variables$Mutation$CreateYard _instance;

  final TRes Function(Variables$Mutation$CreateYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateYard._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateYardInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateYard<TRes>
    implements CopyWith$Variables$Mutation$CreateYard<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateYard(this._res);

  TRes _res;

  call({Input$CreateYardInput? input}) => _res;
}

class Mutation$CreateYard {
  Mutation$CreateYard({
    required this.createYard,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateYard.fromJson(Map<String, dynamic> json) {
    final l$createYard = json['createYard'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateYard(
      createYard: Fragment$YardFragment.fromJson(
        (l$createYard as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$YardFragment createYard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createYard = createYard;
    _resultData['createYard'] = l$createYard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createYard = createYard;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createYard, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateYard || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createYard = createYard;
    final lOther$createYard = other.createYard;
    if (l$createYard != lOther$createYard) {
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

extension UtilityExtension$Mutation$CreateYard on Mutation$CreateYard {
  CopyWith$Mutation$CreateYard<Mutation$CreateYard> get copyWith =>
      CopyWith$Mutation$CreateYard(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateYard<TRes> {
  factory CopyWith$Mutation$CreateYard(
    Mutation$CreateYard instance,
    TRes Function(Mutation$CreateYard) then,
  ) = _CopyWithImpl$Mutation$CreateYard;

  factory CopyWith$Mutation$CreateYard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateYard;

  TRes call({Fragment$YardFragment? createYard, String? $__typename});
  CopyWith$Fragment$YardFragment<TRes> get createYard;
}

class _CopyWithImpl$Mutation$CreateYard<TRes>
    implements CopyWith$Mutation$CreateYard<TRes> {
  _CopyWithImpl$Mutation$CreateYard(this._instance, this._then);

  final Mutation$CreateYard _instance;

  final TRes Function(Mutation$CreateYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createYard = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateYard(
      createYard: createYard == _undefined || createYard == null
          ? _instance.createYard
          : (createYard as Fragment$YardFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$YardFragment<TRes> get createYard {
    final local$createYard = _instance.createYard;
    return CopyWith$Fragment$YardFragment(
      local$createYard,
      (e) => call(createYard: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateYard<TRes>
    implements CopyWith$Mutation$CreateYard<TRes> {
  _CopyWithStubImpl$Mutation$CreateYard(this._res);

  TRes _res;

  call({Fragment$YardFragment? createYard, String? $__typename}) => _res;

  CopyWith$Fragment$YardFragment<TRes> get createYard =>
      CopyWith$Fragment$YardFragment.stub(_res);
}

const documentNodeMutationCreateYard = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateYard'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateYardInput'),
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
            name: NameNode(value: 'createYard'),
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
