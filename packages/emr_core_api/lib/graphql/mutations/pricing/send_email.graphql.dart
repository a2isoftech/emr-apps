import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SendMail {
  factory Variables$Mutation$SendMail({required Input$EmailInput input}) =>
      Variables$Mutation$SendMail._({r'input': input});

  Variables$Mutation$SendMail._(this._$data);

  factory Variables$Mutation$SendMail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$EmailInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$SendMail._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$EmailInput get input => (_$data['input'] as Input$EmailInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SendMail<Variables$Mutation$SendMail>
  get copyWith => CopyWith$Variables$Mutation$SendMail(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SendMail ||
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

abstract class CopyWith$Variables$Mutation$SendMail<TRes> {
  factory CopyWith$Variables$Mutation$SendMail(
    Variables$Mutation$SendMail instance,
    TRes Function(Variables$Mutation$SendMail) then,
  ) = _CopyWithImpl$Variables$Mutation$SendMail;

  factory CopyWith$Variables$Mutation$SendMail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendMail;

  TRes call({Input$EmailInput? input});
}

class _CopyWithImpl$Variables$Mutation$SendMail<TRes>
    implements CopyWith$Variables$Mutation$SendMail<TRes> {
  _CopyWithImpl$Variables$Mutation$SendMail(this._instance, this._then);

  final Variables$Mutation$SendMail _instance;

  final TRes Function(Variables$Mutation$SendMail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$SendMail._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$EmailInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SendMail<TRes>
    implements CopyWith$Variables$Mutation$SendMail<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendMail(this._res);

  TRes _res;

  call({Input$EmailInput? input}) => _res;
}

class Mutation$SendMail {
  Mutation$SendMail({required this.sendEmail, this.$__typename = 'Mutation'});

  factory Mutation$SendMail.fromJson(Map<String, dynamic> json) {
    final l$sendEmail = json['sendEmail'];
    final l$$__typename = json['__typename'];
    return Mutation$SendMail(
      sendEmail: (l$sendEmail as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool sendEmail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sendEmail = sendEmail;
    _resultData['sendEmail'] = l$sendEmail;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sendEmail = sendEmail;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sendEmail, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SendMail || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sendEmail = sendEmail;
    final lOther$sendEmail = other.sendEmail;
    if (l$sendEmail != lOther$sendEmail) {
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

extension UtilityExtension$Mutation$SendMail on Mutation$SendMail {
  CopyWith$Mutation$SendMail<Mutation$SendMail> get copyWith =>
      CopyWith$Mutation$SendMail(this, (i) => i);
}

abstract class CopyWith$Mutation$SendMail<TRes> {
  factory CopyWith$Mutation$SendMail(
    Mutation$SendMail instance,
    TRes Function(Mutation$SendMail) then,
  ) = _CopyWithImpl$Mutation$SendMail;

  factory CopyWith$Mutation$SendMail.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendMail;

  TRes call({bool? sendEmail, String? $__typename});
}

class _CopyWithImpl$Mutation$SendMail<TRes>
    implements CopyWith$Mutation$SendMail<TRes> {
  _CopyWithImpl$Mutation$SendMail(this._instance, this._then);

  final Mutation$SendMail _instance;

  final TRes Function(Mutation$SendMail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sendEmail = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SendMail(
      sendEmail: sendEmail == _undefined || sendEmail == null
          ? _instance.sendEmail
          : (sendEmail as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SendMail<TRes>
    implements CopyWith$Mutation$SendMail<TRes> {
  _CopyWithStubImpl$Mutation$SendMail(this._res);

  TRes _res;

  call({bool? sendEmail, String? $__typename}) => _res;
}

const documentNodeMutationSendMail = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SendMail'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'EmailInput'),
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
            name: NameNode(value: 'sendEmail'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'emailInput'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
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
        ],
      ),
    ),
  ],
);
