import '../../fragments/company_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddCompanyChequeSignatures {
  factory Variables$Mutation$AddCompanyChequeSignatures({
    required Input$AddCompanyChequeSignaturesInput input,
  }) => Variables$Mutation$AddCompanyChequeSignatures._({r'input': input});

  Variables$Mutation$AddCompanyChequeSignatures._(this._$data);

  factory Variables$Mutation$AddCompanyChequeSignatures.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AddCompanyChequeSignaturesInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddCompanyChequeSignatures._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddCompanyChequeSignaturesInput get input =>
      (_$data['input'] as Input$AddCompanyChequeSignaturesInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddCompanyChequeSignatures<
    Variables$Mutation$AddCompanyChequeSignatures
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddCompanyChequeSignatures(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddCompanyChequeSignatures ||
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

abstract class CopyWith$Variables$Mutation$AddCompanyChequeSignatures<TRes> {
  factory CopyWith$Variables$Mutation$AddCompanyChequeSignatures(
    Variables$Mutation$AddCompanyChequeSignatures instance,
    TRes Function(Variables$Mutation$AddCompanyChequeSignatures) then,
  ) = _CopyWithImpl$Variables$Mutation$AddCompanyChequeSignatures;

  factory CopyWith$Variables$Mutation$AddCompanyChequeSignatures.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$AddCompanyChequeSignatures;

  TRes call({Input$AddCompanyChequeSignaturesInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddCompanyChequeSignatures<TRes>
    implements CopyWith$Variables$Mutation$AddCompanyChequeSignatures<TRes> {
  _CopyWithImpl$Variables$Mutation$AddCompanyChequeSignatures(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddCompanyChequeSignatures _instance;

  final TRes Function(Variables$Mutation$AddCompanyChequeSignatures) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddCompanyChequeSignatures._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AddCompanyChequeSignaturesInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddCompanyChequeSignatures<TRes>
    implements CopyWith$Variables$Mutation$AddCompanyChequeSignatures<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddCompanyChequeSignatures(this._res);

  TRes _res;

  call({Input$AddCompanyChequeSignaturesInput? input}) => _res;
}

class Mutation$AddCompanyChequeSignatures {
  Mutation$AddCompanyChequeSignatures({
    required this.addCompanyChequeSignatures,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddCompanyChequeSignatures.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$addCompanyChequeSignatures = json['addCompanyChequeSignatures'];
    final l$$__typename = json['__typename'];
    return Mutation$AddCompanyChequeSignatures(
      addCompanyChequeSignatures: Fragment$CompanyFragment.fromJson(
        (l$addCompanyChequeSignatures as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompanyFragment addCompanyChequeSignatures;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addCompanyChequeSignatures = addCompanyChequeSignatures;
    _resultData['addCompanyChequeSignatures'] = l$addCompanyChequeSignatures
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addCompanyChequeSignatures = addCompanyChequeSignatures;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addCompanyChequeSignatures, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddCompanyChequeSignatures ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addCompanyChequeSignatures = addCompanyChequeSignatures;
    final lOther$addCompanyChequeSignatures = other.addCompanyChequeSignatures;
    if (l$addCompanyChequeSignatures != lOther$addCompanyChequeSignatures) {
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

extension UtilityExtension$Mutation$AddCompanyChequeSignatures
    on Mutation$AddCompanyChequeSignatures {
  CopyWith$Mutation$AddCompanyChequeSignatures<
    Mutation$AddCompanyChequeSignatures
  >
  get copyWith => CopyWith$Mutation$AddCompanyChequeSignatures(this, (i) => i);
}

abstract class CopyWith$Mutation$AddCompanyChequeSignatures<TRes> {
  factory CopyWith$Mutation$AddCompanyChequeSignatures(
    Mutation$AddCompanyChequeSignatures instance,
    TRes Function(Mutation$AddCompanyChequeSignatures) then,
  ) = _CopyWithImpl$Mutation$AddCompanyChequeSignatures;

  factory CopyWith$Mutation$AddCompanyChequeSignatures.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddCompanyChequeSignatures;

  TRes call({
    Fragment$CompanyFragment? addCompanyChequeSignatures,
    String? $__typename,
  });
  CopyWith$Fragment$CompanyFragment<TRes> get addCompanyChequeSignatures;
}

class _CopyWithImpl$Mutation$AddCompanyChequeSignatures<TRes>
    implements CopyWith$Mutation$AddCompanyChequeSignatures<TRes> {
  _CopyWithImpl$Mutation$AddCompanyChequeSignatures(this._instance, this._then);

  final Mutation$AddCompanyChequeSignatures _instance;

  final TRes Function(Mutation$AddCompanyChequeSignatures) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addCompanyChequeSignatures = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddCompanyChequeSignatures(
      addCompanyChequeSignatures:
          addCompanyChequeSignatures == _undefined ||
              addCompanyChequeSignatures == null
          ? _instance.addCompanyChequeSignatures
          : (addCompanyChequeSignatures as Fragment$CompanyFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyFragment<TRes> get addCompanyChequeSignatures {
    final local$addCompanyChequeSignatures =
        _instance.addCompanyChequeSignatures;
    return CopyWith$Fragment$CompanyFragment(
      local$addCompanyChequeSignatures,
      (e) => call(addCompanyChequeSignatures: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddCompanyChequeSignatures<TRes>
    implements CopyWith$Mutation$AddCompanyChequeSignatures<TRes> {
  _CopyWithStubImpl$Mutation$AddCompanyChequeSignatures(this._res);

  TRes _res;

  call({
    Fragment$CompanyFragment? addCompanyChequeSignatures,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CompanyFragment<TRes> get addCompanyChequeSignatures =>
      CopyWith$Fragment$CompanyFragment.stub(_res);
}

const documentNodeMutationAddCompanyChequeSignatures = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddCompanyChequeSignatures'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AddCompanyChequeSignaturesInput'),
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
            name: NameNode(value: 'addCompanyChequeSignatures'),
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
