import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdatePaymentDetails {
  factory Variables$Mutation$UpdatePaymentDetails({
    Input$UpdatePaymentDetailsInput? input,
  }) => Variables$Mutation$UpdatePaymentDetails._({
    if (input != null) r'input': input,
  });

  Variables$Mutation$UpdatePaymentDetails._(this._$data);

  factory Variables$Mutation$UpdatePaymentDetails.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$UpdatePaymentDetailsInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables$Mutation$UpdatePaymentDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdatePaymentDetailsInput? get input =>
      (_$data['input'] as Input$UpdatePaymentDetailsInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdatePaymentDetails<
    Variables$Mutation$UpdatePaymentDetails
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdatePaymentDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdatePaymentDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdatePaymentDetails<TRes> {
  factory CopyWith$Variables$Mutation$UpdatePaymentDetails(
    Variables$Mutation$UpdatePaymentDetails instance,
    TRes Function(Variables$Mutation$UpdatePaymentDetails) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePaymentDetails;

  factory CopyWith$Variables$Mutation$UpdatePaymentDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdatePaymentDetails;

  TRes call({Input$UpdatePaymentDetailsInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdatePaymentDetails<TRes>
    implements CopyWith$Variables$Mutation$UpdatePaymentDetails<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePaymentDetails(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePaymentDetails _instance;

  final TRes Function(Variables$Mutation$UpdatePaymentDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdatePaymentDetails._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input$UpdatePaymentDetailsInput?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdatePaymentDetails<TRes>
    implements CopyWith$Variables$Mutation$UpdatePaymentDetails<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePaymentDetails(this._res);

  TRes _res;

  call({Input$UpdatePaymentDetailsInput? input}) => _res;
}

class Mutation$UpdatePaymentDetails {
  Mutation$UpdatePaymentDetails({
    this.updatePaymentDetails,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdatePaymentDetails.fromJson(Map<String, dynamic> json) {
    final l$updatePaymentDetails = json['updatePaymentDetails'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePaymentDetails(
      updatePaymentDetails: l$updatePaymentDetails == null
          ? null
          : Mutation$UpdatePaymentDetails$updatePaymentDetails.fromJson(
              (l$updatePaymentDetails as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdatePaymentDetails$updatePaymentDetails?
  updatePaymentDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePaymentDetails = updatePaymentDetails;
    _resultData['updatePaymentDetails'] = l$updatePaymentDetails?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePaymentDetails = updatePaymentDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updatePaymentDetails, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdatePaymentDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePaymentDetails = updatePaymentDetails;
    final lOther$updatePaymentDetails = other.updatePaymentDetails;
    if (l$updatePaymentDetails != lOther$updatePaymentDetails) {
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

extension UtilityExtension$Mutation$UpdatePaymentDetails
    on Mutation$UpdatePaymentDetails {
  CopyWith$Mutation$UpdatePaymentDetails<Mutation$UpdatePaymentDetails>
  get copyWith => CopyWith$Mutation$UpdatePaymentDetails(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdatePaymentDetails<TRes> {
  factory CopyWith$Mutation$UpdatePaymentDetails(
    Mutation$UpdatePaymentDetails instance,
    TRes Function(Mutation$UpdatePaymentDetails) then,
  ) = _CopyWithImpl$Mutation$UpdatePaymentDetails;

  factory CopyWith$Mutation$UpdatePaymentDetails.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePaymentDetails;

  TRes call({
    Mutation$UpdatePaymentDetails$updatePaymentDetails? updatePaymentDetails,
    String? $__typename,
  });
  CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails<TRes>
  get updatePaymentDetails;
}

class _CopyWithImpl$Mutation$UpdatePaymentDetails<TRes>
    implements CopyWith$Mutation$UpdatePaymentDetails<TRes> {
  _CopyWithImpl$Mutation$UpdatePaymentDetails(this._instance, this._then);

  final Mutation$UpdatePaymentDetails _instance;

  final TRes Function(Mutation$UpdatePaymentDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePaymentDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdatePaymentDetails(
      updatePaymentDetails: updatePaymentDetails == _undefined
          ? _instance.updatePaymentDetails
          : (updatePaymentDetails
                as Mutation$UpdatePaymentDetails$updatePaymentDetails?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails<TRes>
  get updatePaymentDetails {
    final local$updatePaymentDetails = _instance.updatePaymentDetails;
    return local$updatePaymentDetails == null
        ? CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails(
            local$updatePaymentDetails,
            (e) => call(updatePaymentDetails: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdatePaymentDetails<TRes>
    implements CopyWith$Mutation$UpdatePaymentDetails<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePaymentDetails(this._res);

  TRes _res;

  call({
    Mutation$UpdatePaymentDetails$updatePaymentDetails? updatePaymentDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails<TRes>
  get updatePaymentDetails =>
      CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails.stub(_res);
}

const documentNodeMutationUpdatePaymentDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdatePaymentDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdatePaymentDetailsInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updatePaymentDetails'),
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
                FieldNode(
                  name: NameNode(value: 'accountNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'errors'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'message'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'code'),
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

class Mutation$UpdatePaymentDetails$updatePaymentDetails {
  Mutation$UpdatePaymentDetails$updatePaymentDetails({
    this.accountNumber,
    required this.errors,
    this.$__typename = 'UpdateAccountOutput',
  });

  factory Mutation$UpdatePaymentDetails$updatePaymentDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePaymentDetails$updatePaymentDetails(
      accountNumber: (l$accountNumber as String?),
      errors: (l$errors as List<dynamic>)
          .map(
            (e) =>
                Mutation$UpdatePaymentDetails$updatePaymentDetails$errors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final List<Mutation$UpdatePaymentDetails$updatePaymentDetails$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdatePaymentDetails$updatePaymentDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
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

extension UtilityExtension$Mutation$UpdatePaymentDetails$updatePaymentDetails
    on Mutation$UpdatePaymentDetails$updatePaymentDetails {
  CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails<
    Mutation$UpdatePaymentDetails$updatePaymentDetails
  >
  get copyWith => CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails<
  TRes
> {
  factory CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails(
    Mutation$UpdatePaymentDetails$updatePaymentDetails instance,
    TRes Function(Mutation$UpdatePaymentDetails$updatePaymentDetails) then,
  ) = _CopyWithImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails;

  factory CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails;

  TRes call({
    String? accountNumber,
    List<Mutation$UpdatePaymentDetails$updatePaymentDetails$errors>? errors,
    String? $__typename,
  });
  TRes errors(
    Iterable<Mutation$UpdatePaymentDetails$updatePaymentDetails$errors>
    Function(
      Iterable<
        CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors<
          Mutation$UpdatePaymentDetails$updatePaymentDetails$errors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails<TRes>
    implements
        CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails<TRes> {
  _CopyWithImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePaymentDetails$updatePaymentDetails _instance;

  final TRes Function(Mutation$UpdatePaymentDetails$updatePaymentDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdatePaymentDetails$updatePaymentDetails(
      accountNumber: accountNumber == _undefined
          ? _instance.accountNumber
          : (accountNumber as String?),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors
                as List<
                  Mutation$UpdatePaymentDetails$updatePaymentDetails$errors
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes errors(
    Iterable<Mutation$UpdatePaymentDetails$updatePaymentDetails$errors>
    Function(
      Iterable<
        CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors<
          Mutation$UpdatePaymentDetails$updatePaymentDetails$errors
        >
      >,
    )
    _fn,
  ) => call(
    errors: _fn(
      _instance.errors.map(
        (e) =>
            CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails<TRes>
    implements
        CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails(
    this._res,
  );

  TRes _res;

  call({
    String? accountNumber,
    List<Mutation$UpdatePaymentDetails$updatePaymentDetails$errors>? errors,
    String? $__typename,
  }) => _res;

  errors(_fn) => _res;
}

class Mutation$UpdatePaymentDetails$updatePaymentDetails$errors {
  Mutation$UpdatePaymentDetails$updatePaymentDetails$errors({
    required this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$UpdatePaymentDetails$updatePaymentDetails$errors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePaymentDetails$updatePaymentDetails$errors(
      message: (l$message as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdatePaymentDetails$updatePaymentDetails$errors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors
    on Mutation$UpdatePaymentDetails$updatePaymentDetails$errors {
  CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors<
    Mutation$UpdatePaymentDetails$updatePaymentDetails$errors
  >
  get copyWith =>
      CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors<
  TRes
> {
  factory CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors(
    Mutation$UpdatePaymentDetails$updatePaymentDetails$errors instance,
    TRes Function(Mutation$UpdatePaymentDetails$updatePaymentDetails$errors)
    then,
  ) = _CopyWithImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors;

  factory CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors;

  TRes call({String? message, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePaymentDetails$updatePaymentDetails$errors _instance;

  final TRes Function(Mutation$UpdatePaymentDetails$updatePaymentDetails$errors)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdatePaymentDetails$updatePaymentDetails$errors(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdatePaymentDetails$updatePaymentDetails$errors(
    this._res,
  );

  TRes _res;

  call({String? message, String? code, String? $__typename}) => _res;
}
