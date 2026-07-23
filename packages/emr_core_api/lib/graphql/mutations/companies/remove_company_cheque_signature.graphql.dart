import '../../fragments/company_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$RemoveCompanyChequeSignature {
  factory Variables$Mutation$RemoveCompanyChequeSignature({
    required Input$RemoveCompanyChequeSignatureInput input,
  }) => Variables$Mutation$RemoveCompanyChequeSignature._({r'input': input});

  Variables$Mutation$RemoveCompanyChequeSignature._(this._$data);

  factory Variables$Mutation$RemoveCompanyChequeSignature.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$RemoveCompanyChequeSignatureInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$RemoveCompanyChequeSignature._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RemoveCompanyChequeSignatureInput get input =>
      (_$data['input'] as Input$RemoveCompanyChequeSignatureInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$RemoveCompanyChequeSignature<
    Variables$Mutation$RemoveCompanyChequeSignature
  >
  get copyWith =>
      CopyWith$Variables$Mutation$RemoveCompanyChequeSignature(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RemoveCompanyChequeSignature ||
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

abstract class CopyWith$Variables$Mutation$RemoveCompanyChequeSignature<TRes> {
  factory CopyWith$Variables$Mutation$RemoveCompanyChequeSignature(
    Variables$Mutation$RemoveCompanyChequeSignature instance,
    TRes Function(Variables$Mutation$RemoveCompanyChequeSignature) then,
  ) = _CopyWithImpl$Variables$Mutation$RemoveCompanyChequeSignature;

  factory CopyWith$Variables$Mutation$RemoveCompanyChequeSignature.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$RemoveCompanyChequeSignature;

  TRes call({Input$RemoveCompanyChequeSignatureInput? input});
}

class _CopyWithImpl$Variables$Mutation$RemoveCompanyChequeSignature<TRes>
    implements CopyWith$Variables$Mutation$RemoveCompanyChequeSignature<TRes> {
  _CopyWithImpl$Variables$Mutation$RemoveCompanyChequeSignature(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RemoveCompanyChequeSignature _instance;

  final TRes Function(Variables$Mutation$RemoveCompanyChequeSignature) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$RemoveCompanyChequeSignature._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$RemoveCompanyChequeSignatureInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$RemoveCompanyChequeSignature<TRes>
    implements CopyWith$Variables$Mutation$RemoveCompanyChequeSignature<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RemoveCompanyChequeSignature(this._res);

  TRes _res;

  call({Input$RemoveCompanyChequeSignatureInput? input}) => _res;
}

class Mutation$RemoveCompanyChequeSignature {
  Mutation$RemoveCompanyChequeSignature({
    required this.removeCompanyChequeSignature,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RemoveCompanyChequeSignature.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$removeCompanyChequeSignature = json['removeCompanyChequeSignature'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveCompanyChequeSignature(
      removeCompanyChequeSignature: Fragment$CompanyFragment.fromJson(
        (l$removeCompanyChequeSignature as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompanyFragment removeCompanyChequeSignature;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$removeCompanyChequeSignature = removeCompanyChequeSignature;
    _resultData['removeCompanyChequeSignature'] = l$removeCompanyChequeSignature
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$removeCompanyChequeSignature = removeCompanyChequeSignature;
    final l$$__typename = $__typename;
    return Object.hashAll([l$removeCompanyChequeSignature, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RemoveCompanyChequeSignature ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$removeCompanyChequeSignature = removeCompanyChequeSignature;
    final lOther$removeCompanyChequeSignature =
        other.removeCompanyChequeSignature;
    if (l$removeCompanyChequeSignature != lOther$removeCompanyChequeSignature) {
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

extension UtilityExtension$Mutation$RemoveCompanyChequeSignature
    on Mutation$RemoveCompanyChequeSignature {
  CopyWith$Mutation$RemoveCompanyChequeSignature<
    Mutation$RemoveCompanyChequeSignature
  >
  get copyWith =>
      CopyWith$Mutation$RemoveCompanyChequeSignature(this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveCompanyChequeSignature<TRes> {
  factory CopyWith$Mutation$RemoveCompanyChequeSignature(
    Mutation$RemoveCompanyChequeSignature instance,
    TRes Function(Mutation$RemoveCompanyChequeSignature) then,
  ) = _CopyWithImpl$Mutation$RemoveCompanyChequeSignature;

  factory CopyWith$Mutation$RemoveCompanyChequeSignature.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveCompanyChequeSignature;

  TRes call({
    Fragment$CompanyFragment? removeCompanyChequeSignature,
    String? $__typename,
  });
  CopyWith$Fragment$CompanyFragment<TRes> get removeCompanyChequeSignature;
}

class _CopyWithImpl$Mutation$RemoveCompanyChequeSignature<TRes>
    implements CopyWith$Mutation$RemoveCompanyChequeSignature<TRes> {
  _CopyWithImpl$Mutation$RemoveCompanyChequeSignature(
    this._instance,
    this._then,
  );

  final Mutation$RemoveCompanyChequeSignature _instance;

  final TRes Function(Mutation$RemoveCompanyChequeSignature) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? removeCompanyChequeSignature = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$RemoveCompanyChequeSignature(
      removeCompanyChequeSignature:
          removeCompanyChequeSignature == _undefined ||
              removeCompanyChequeSignature == null
          ? _instance.removeCompanyChequeSignature
          : (removeCompanyChequeSignature as Fragment$CompanyFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyFragment<TRes> get removeCompanyChequeSignature {
    final local$removeCompanyChequeSignature =
        _instance.removeCompanyChequeSignature;
    return CopyWith$Fragment$CompanyFragment(
      local$removeCompanyChequeSignature,
      (e) => call(removeCompanyChequeSignature: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$RemoveCompanyChequeSignature<TRes>
    implements CopyWith$Mutation$RemoveCompanyChequeSignature<TRes> {
  _CopyWithStubImpl$Mutation$RemoveCompanyChequeSignature(this._res);

  TRes _res;

  call({
    Fragment$CompanyFragment? removeCompanyChequeSignature,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CompanyFragment<TRes> get removeCompanyChequeSignature =>
      CopyWith$Fragment$CompanyFragment.stub(_res);
}

const documentNodeMutationRemoveCompanyChequeSignature = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RemoveCompanyChequeSignature'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'RemoveCompanyChequeSignatureInput'),
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
            name: NameNode(value: 'removeCompanyChequeSignature'),
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
                  name: NameNode(value: 'CompanyFragment'),
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
    fragmentDefinitionCompanyFragment,
  ],
);
