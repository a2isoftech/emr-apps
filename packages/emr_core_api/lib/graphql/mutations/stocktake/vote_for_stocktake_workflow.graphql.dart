import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$VoteForStocktakeWorkflow {
  factory Variables$Mutation$VoteForStocktakeWorkflow({
    required Input$ApproveOrRejectStocktakeApprovalInput input,
  }) => Variables$Mutation$VoteForStocktakeWorkflow._({r'input': input});

  Variables$Mutation$VoteForStocktakeWorkflow._(this._$data);

  factory Variables$Mutation$VoteForStocktakeWorkflow.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ApproveOrRejectStocktakeApprovalInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$VoteForStocktakeWorkflow._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ApproveOrRejectStocktakeApprovalInput get input =>
      (_$data['input'] as Input$ApproveOrRejectStocktakeApprovalInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$VoteForStocktakeWorkflow<
    Variables$Mutation$VoteForStocktakeWorkflow
  >
  get copyWith =>
      CopyWith$Variables$Mutation$VoteForStocktakeWorkflow(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$VoteForStocktakeWorkflow ||
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

abstract class CopyWith$Variables$Mutation$VoteForStocktakeWorkflow<TRes> {
  factory CopyWith$Variables$Mutation$VoteForStocktakeWorkflow(
    Variables$Mutation$VoteForStocktakeWorkflow instance,
    TRes Function(Variables$Mutation$VoteForStocktakeWorkflow) then,
  ) = _CopyWithImpl$Variables$Mutation$VoteForStocktakeWorkflow;

  factory CopyWith$Variables$Mutation$VoteForStocktakeWorkflow.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VoteForStocktakeWorkflow;

  TRes call({Input$ApproveOrRejectStocktakeApprovalInput? input});
}

class _CopyWithImpl$Variables$Mutation$VoteForStocktakeWorkflow<TRes>
    implements CopyWith$Variables$Mutation$VoteForStocktakeWorkflow<TRes> {
  _CopyWithImpl$Variables$Mutation$VoteForStocktakeWorkflow(
    this._instance,
    this._then,
  );

  final Variables$Mutation$VoteForStocktakeWorkflow _instance;

  final TRes Function(Variables$Mutation$VoteForStocktakeWorkflow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$VoteForStocktakeWorkflow._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$ApproveOrRejectStocktakeApprovalInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$VoteForStocktakeWorkflow<TRes>
    implements CopyWith$Variables$Mutation$VoteForStocktakeWorkflow<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VoteForStocktakeWorkflow(this._res);

  TRes _res;

  call({Input$ApproveOrRejectStocktakeApprovalInput? input}) => _res;
}

class Mutation$VoteForStocktakeWorkflow {
  Mutation$VoteForStocktakeWorkflow({
    required this.approveOrRejectStocktakeApproval,
    this.$__typename = 'Mutation',
  });

  factory Mutation$VoteForStocktakeWorkflow.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$approveOrRejectStocktakeApproval =
        json['approveOrRejectStocktakeApproval'];
    final l$$__typename = json['__typename'];
    return Mutation$VoteForStocktakeWorkflow(
      approveOrRejectStocktakeApproval:
          Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval.fromJson(
            (l$approveOrRejectStocktakeApproval as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval
  approveOrRejectStocktakeApproval;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$approveOrRejectStocktakeApproval = approveOrRejectStocktakeApproval;
    _resultData['approveOrRejectStocktakeApproval'] =
        l$approveOrRejectStocktakeApproval.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$approveOrRejectStocktakeApproval = approveOrRejectStocktakeApproval;
    final l$$__typename = $__typename;
    return Object.hashAll([l$approveOrRejectStocktakeApproval, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$VoteForStocktakeWorkflow ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$approveOrRejectStocktakeApproval = approveOrRejectStocktakeApproval;
    final lOther$approveOrRejectStocktakeApproval =
        other.approveOrRejectStocktakeApproval;
    if (l$approveOrRejectStocktakeApproval !=
        lOther$approveOrRejectStocktakeApproval) {
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

extension UtilityExtension$Mutation$VoteForStocktakeWorkflow
    on Mutation$VoteForStocktakeWorkflow {
  CopyWith$Mutation$VoteForStocktakeWorkflow<Mutation$VoteForStocktakeWorkflow>
  get copyWith => CopyWith$Mutation$VoteForStocktakeWorkflow(this, (i) => i);
}

abstract class CopyWith$Mutation$VoteForStocktakeWorkflow<TRes> {
  factory CopyWith$Mutation$VoteForStocktakeWorkflow(
    Mutation$VoteForStocktakeWorkflow instance,
    TRes Function(Mutation$VoteForStocktakeWorkflow) then,
  ) = _CopyWithImpl$Mutation$VoteForStocktakeWorkflow;

  factory CopyWith$Mutation$VoteForStocktakeWorkflow.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow;

  TRes call({
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval?
    approveOrRejectStocktakeApproval,
    String? $__typename,
  });
  CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval<
    TRes
  >
  get approveOrRejectStocktakeApproval;
}

class _CopyWithImpl$Mutation$VoteForStocktakeWorkflow<TRes>
    implements CopyWith$Mutation$VoteForStocktakeWorkflow<TRes> {
  _CopyWithImpl$Mutation$VoteForStocktakeWorkflow(this._instance, this._then);

  final Mutation$VoteForStocktakeWorkflow _instance;

  final TRes Function(Mutation$VoteForStocktakeWorkflow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? approveOrRejectStocktakeApproval = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$VoteForStocktakeWorkflow(
      approveOrRejectStocktakeApproval:
          approveOrRejectStocktakeApproval == _undefined ||
              approveOrRejectStocktakeApproval == null
          ? _instance.approveOrRejectStocktakeApproval
          : (approveOrRejectStocktakeApproval
                as Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval<
    TRes
  >
  get approveOrRejectStocktakeApproval {
    final local$approveOrRejectStocktakeApproval =
        _instance.approveOrRejectStocktakeApproval;
    return CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval(
      local$approveOrRejectStocktakeApproval,
      (e) => call(approveOrRejectStocktakeApproval: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow<TRes>
    implements CopyWith$Mutation$VoteForStocktakeWorkflow<TRes> {
  _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow(this._res);

  TRes _res;

  call({
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval?
    approveOrRejectStocktakeApproval,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval<
    TRes
  >
  get approveOrRejectStocktakeApproval =>
      CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval.stub(
        _res,
      );
}

const documentNodeMutationVoteForStocktakeWorkflow = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'VoteForStocktakeWorkflow'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'ApproveOrRejectStocktakeApprovalInput'),
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
            name: NameNode(value: 'approveOrRejectStocktakeApproval'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'approveOrRejectStocktakeApprovalInput'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'success'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'message'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'errorCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'approvers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'key'),
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
                        name: NameNode(value: 'rejectors'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'key'),
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
                        name: NameNode(value: 'userEmails'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'notifiedOn'),
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

class Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval {
  Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktakeRuleLevel',
  });

  factory Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data?
  data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$errorCode = errorCode;
    _resultData['errorCode'] = l$errorCode;
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$errorCode = errorCode;
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
      l$errorCode,
      l$data,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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

extension UtilityExtension$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval
    on Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval {
  CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval<
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval
  >
  get copyWith =>
      CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval<
  TRes
> {
  factory CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval instance,
    TRes Function(
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval,
    )
    then,
  ) = _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval;

  factory CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data?
    data,
    String? $__typename,
  });
  CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data<
    TRes
  >
  get data;
}

class _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval<
  TRes
>
    implements
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval<
          TRes
        > {
  _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval(
    this._instance,
    this._then,
  );

  final Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval
  _instance;

  final TRes Function(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval(
      success: success == _undefined || success == null
          ? _instance.success
          : (success as bool),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      data: data == _undefined
          ? _instance.data
          : (data
                as Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data<
    TRes
  >
  get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval<
  TRes
>
    implements
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval<
          TRes
        > {
  _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval(
    this._res,
  );

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data?
    data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data<
    TRes
  >
  get data =>
      CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data.stub(
        _res,
      );
}

class Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data {
  Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data({
    required this.status,
    required this.approvers,
    required this.rejectors,
    required this.userEmails,
    required this.notifiedOn,
    this.$__typename = 'StocktakeRuleLevel',
  });

  factory Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$status = json['status'];
    final l$approvers = json['approvers'];
    final l$rejectors = json['rejectors'];
    final l$userEmails = json['userEmails'];
    final l$notifiedOn = json['notifiedOn'];
    final l$$__typename = json['__typename'];
    return Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data(
      status: fromJson$Enum$StocktakeApprovalStatus((l$status as String)),
      approvers: (l$approvers as List<dynamic>)
          .map(
            (e) =>
                Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      rejectors: (l$rejectors as List<dynamic>)
          .map(
            (e) =>
                Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      userEmails: (l$userEmails as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      notifiedOn: (l$notifiedOn as List<dynamic>)
          .map((e) => DateTime.parse((e as String)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$StocktakeApprovalStatus status;

  final List<
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
  >
  approvers;

  final List<
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
  >
  rejectors;

  final List<String> userEmails;

  final List<DateTime> notifiedOn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$StocktakeApprovalStatus(l$status);
    final l$approvers = approvers;
    _resultData['approvers'] = l$approvers.map((e) => e.toJson()).toList();
    final l$rejectors = rejectors;
    _resultData['rejectors'] = l$rejectors.map((e) => e.toJson()).toList();
    final l$userEmails = userEmails;
    _resultData['userEmails'] = l$userEmails.map((e) => e).toList();
    final l$notifiedOn = notifiedOn;
    _resultData['notifiedOn'] = l$notifiedOn
        .map((e) => e.toIso8601String())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$approvers = approvers;
    final l$rejectors = rejectors;
    final l$userEmails = userEmails;
    final l$notifiedOn = notifiedOn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      Object.hashAll(l$approvers.map((v) => v)),
      Object.hashAll(l$rejectors.map((v) => v)),
      Object.hashAll(l$userEmails.map((v) => v)),
      Object.hashAll(l$notifiedOn.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$approvers = approvers;
    final lOther$approvers = other.approvers;
    if (l$approvers.length != lOther$approvers.length) {
      return false;
    }
    for (int i = 0; i < l$approvers.length; i++) {
      final l$approvers$entry = l$approvers[i];
      final lOther$approvers$entry = lOther$approvers[i];
      if (l$approvers$entry != lOther$approvers$entry) {
        return false;
      }
    }
    final l$rejectors = rejectors;
    final lOther$rejectors = other.rejectors;
    if (l$rejectors.length != lOther$rejectors.length) {
      return false;
    }
    for (int i = 0; i < l$rejectors.length; i++) {
      final l$rejectors$entry = l$rejectors[i];
      final lOther$rejectors$entry = lOther$rejectors[i];
      if (l$rejectors$entry != lOther$rejectors$entry) {
        return false;
      }
    }
    final l$userEmails = userEmails;
    final lOther$userEmails = other.userEmails;
    if (l$userEmails.length != lOther$userEmails.length) {
      return false;
    }
    for (int i = 0; i < l$userEmails.length; i++) {
      final l$userEmails$entry = l$userEmails[i];
      final lOther$userEmails$entry = lOther$userEmails[i];
      if (l$userEmails$entry != lOther$userEmails$entry) {
        return false;
      }
    }
    final l$notifiedOn = notifiedOn;
    final lOther$notifiedOn = other.notifiedOn;
    if (l$notifiedOn.length != lOther$notifiedOn.length) {
      return false;
    }
    for (int i = 0; i < l$notifiedOn.length; i++) {
      final l$notifiedOn$entry = l$notifiedOn[i];
      final lOther$notifiedOn$entry = lOther$notifiedOn[i];
      if (l$notifiedOn$entry != lOther$notifiedOn$entry) {
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

extension UtilityExtension$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data
    on Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data {
  CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data<
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data
  >
  get copyWith =>
      CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data<
  TRes
> {
  factory CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data
    instance,
    TRes Function(
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data,
    )
    then,
  ) = _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data;

  factory CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data;

  TRes call({
    Enum$StocktakeApprovalStatus? status,
    List<
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
    >?
    approvers,
    List<
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
    >?
    rejectors,
    List<String>? userEmails,
    List<DateTime>? notifiedOn,
    String? $__typename,
  });
  TRes approvers(
    Iterable<
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
    >
    Function(
      Iterable<
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers<
          Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
        >
      >,
    )
    _fn,
  );
  TRes rejectors(
    Iterable<
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
    >
    Function(
      Iterable<
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors<
          Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data<
  TRes
>
    implements
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data<
          TRes
        > {
  _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data(
    this._instance,
    this._then,
  );

  final Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data
  _instance;

  final TRes Function(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? approvers = _undefined,
    Object? rejectors = _undefined,
    Object? userEmails = _undefined,
    Object? notifiedOn = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data(
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$StocktakeApprovalStatus),
      approvers: approvers == _undefined || approvers == null
          ? _instance.approvers
          : (approvers
                as List<
                  Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
                >),
      rejectors: rejectors == _undefined || rejectors == null
          ? _instance.rejectors
          : (rejectors
                as List<
                  Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
                >),
      userEmails: userEmails == _undefined || userEmails == null
          ? _instance.userEmails
          : (userEmails as List<String>),
      notifiedOn: notifiedOn == _undefined || notifiedOn == null
          ? _instance.notifiedOn
          : (notifiedOn as List<DateTime>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes approvers(
    Iterable<
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
    >
    Function(
      Iterable<
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers<
          Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
        >
      >,
    )
    _fn,
  ) => call(
    approvers: _fn(
      _instance.approvers.map(
        (e) =>
            CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes rejectors(
    Iterable<
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
    >
    Function(
      Iterable<
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors<
          Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
        >
      >,
    )
    _fn,
  ) => call(
    rejectors: _fn(
      _instance.rejectors.map(
        (e) =>
            CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data<
  TRes
>
    implements
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data<
          TRes
        > {
  _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data(
    this._res,
  );

  TRes _res;

  call({
    Enum$StocktakeApprovalStatus? status,
    List<
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
    >?
    approvers,
    List<
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
    >?
    rejectors,
    List<String>? userEmails,
    List<DateTime>? notifiedOn,
    String? $__typename,
  }) => _res;

  approvers(_fn) => _res;

  rejectors(_fn) => _res;
}

class Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers {
  Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers({
    required this.key,
    this.$__typename = 'KeyValuePairOfStringAndComment',
  });

  factory Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers(
      key: (l$key as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
    on
        Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers {
  CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers<
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
  >
  get copyWith =>
      CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers<
  TRes
> {
  factory CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
    instance,
    TRes Function(
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers,
    )
    then,
  ) = _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers;

  factory CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers;

  TRes call({String? key, String? $__typename});
}

class _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers<
  TRes
>
    implements
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers<
          TRes
        > {
  _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers(
    this._instance,
    this._then,
  );

  final Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers
  _instance;

  final TRes Function(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers<
  TRes
>
    implements
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers<
          TRes
        > {
  _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$approvers(
    this._res,
  );

  TRes _res;

  call({String? key, String? $__typename}) => _res;
}

class Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors {
  Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors({
    required this.key,
    this.$__typename = 'KeyValuePairOfStringAndComment',
  });

  factory Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors(
      key: (l$key as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
    on
        Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors {
  CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors<
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
  >
  get copyWith =>
      CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors<
  TRes
> {
  factory CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
    instance,
    TRes Function(
      Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors,
    )
    then,
  ) = _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors;

  factory CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors;

  TRes call({String? key, String? $__typename});
}

class _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors<
  TRes
>
    implements
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors<
          TRes
        > {
  _CopyWithImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors(
    this._instance,
    this._then,
  );

  final Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors
  _instance;

  final TRes Function(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors<
  TRes
>
    implements
        CopyWith$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors<
          TRes
        > {
  _CopyWithStubImpl$Mutation$VoteForStocktakeWorkflow$approveOrRejectStocktakeApproval$data$rejectors(
    this._res,
  );

  TRes _res;

  call({String? key, String? $__typename}) => _res;
}
