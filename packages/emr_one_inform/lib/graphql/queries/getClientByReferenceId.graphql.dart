import 'package:gql/ast.dart';

class Variables$Query$GetClientByReferenceId {
  factory Variables$Query$GetClientByReferenceId(
          {required String refereceId}) =>
      Variables$Query$GetClientByReferenceId._({
        r'refereceId': refereceId,
      });

  Variables$Query$GetClientByReferenceId._(this._$data);

  factory Variables$Query$GetClientByReferenceId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$refereceId = data['refereceId'];
    result$data['refereceId'] = (l$refereceId as String);
    return Variables$Query$GetClientByReferenceId._(result$data);
  }

  Map<String, dynamic> _$data;

  String get refereceId => (_$data['refereceId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$refereceId = refereceId;
    result$data['refereceId'] = l$refereceId;
    return result$data;
  }

  CopyWith$Variables$Query$GetClientByReferenceId<
          Variables$Query$GetClientByReferenceId>
      get copyWith => CopyWith$Variables$Query$GetClientByReferenceId(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetClientByReferenceId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refereceId = refereceId;
    final lOther$refereceId = other.refereceId;
    if (l$refereceId != lOther$refereceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$refereceId = refereceId;
    return Object.hashAll([l$refereceId]);
  }
}

abstract class CopyWith$Variables$Query$GetClientByReferenceId<TRes> {
  factory CopyWith$Variables$Query$GetClientByReferenceId(
    Variables$Query$GetClientByReferenceId instance,
    TRes Function(Variables$Query$GetClientByReferenceId) then,
  ) = _CopyWithImpl$Variables$Query$GetClientByReferenceId;

  factory CopyWith$Variables$Query$GetClientByReferenceId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetClientByReferenceId;

  TRes call({String? refereceId});
}

class _CopyWithImpl$Variables$Query$GetClientByReferenceId<TRes>
    implements CopyWith$Variables$Query$GetClientByReferenceId<TRes> {
  _CopyWithImpl$Variables$Query$GetClientByReferenceId(
    this._instance,
    this._then,
  );

  final Variables$Query$GetClientByReferenceId _instance;

  final TRes Function(Variables$Query$GetClientByReferenceId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? refereceId = _undefined}) =>
      _then(Variables$Query$GetClientByReferenceId._({
        ..._instance._$data,
        if (refereceId != _undefined && refereceId != null)
          'refereceId': (refereceId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetClientByReferenceId<TRes>
    implements CopyWith$Variables$Query$GetClientByReferenceId<TRes> {
  _CopyWithStubImpl$Variables$Query$GetClientByReferenceId(this._res);

  TRes _res;

  call({String? refereceId}) => _res;
}

class Query$GetClientByReferenceId {
  Query$GetClientByReferenceId({
    this.clientByReferenceId,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetClientByReferenceId.fromJson(Map<String, dynamic> json) {
    final l$clientByReferenceId = json['clientByReferenceId'];
    final l$$__typename = json['__typename'];
    return Query$GetClientByReferenceId(
      clientByReferenceId: l$clientByReferenceId == null
          ? null
          : Query$GetClientByReferenceId$clientByReferenceId.fromJson(
              (l$clientByReferenceId as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetClientByReferenceId$clientByReferenceId? clientByReferenceId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clientByReferenceId = clientByReferenceId;
    _resultData['clientByReferenceId'] = l$clientByReferenceId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clientByReferenceId = clientByReferenceId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$clientByReferenceId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClientByReferenceId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clientByReferenceId = clientByReferenceId;
    final lOther$clientByReferenceId = other.clientByReferenceId;
    if (l$clientByReferenceId != lOther$clientByReferenceId) {
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

extension UtilityExtension$Query$GetClientByReferenceId
    on Query$GetClientByReferenceId {
  CopyWith$Query$GetClientByReferenceId<Query$GetClientByReferenceId>
      get copyWith => CopyWith$Query$GetClientByReferenceId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClientByReferenceId<TRes> {
  factory CopyWith$Query$GetClientByReferenceId(
    Query$GetClientByReferenceId instance,
    TRes Function(Query$GetClientByReferenceId) then,
  ) = _CopyWithImpl$Query$GetClientByReferenceId;

  factory CopyWith$Query$GetClientByReferenceId.stub(TRes res) =
      _CopyWithStubImpl$Query$GetClientByReferenceId;

  TRes call({
    Query$GetClientByReferenceId$clientByReferenceId? clientByReferenceId,
    String? $__typename,
  });
  CopyWith$Query$GetClientByReferenceId$clientByReferenceId<TRes>
      get clientByReferenceId;
}

class _CopyWithImpl$Query$GetClientByReferenceId<TRes>
    implements CopyWith$Query$GetClientByReferenceId<TRes> {
  _CopyWithImpl$Query$GetClientByReferenceId(
    this._instance,
    this._then,
  );

  final Query$GetClientByReferenceId _instance;

  final TRes Function(Query$GetClientByReferenceId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clientByReferenceId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClientByReferenceId(
        clientByReferenceId: clientByReferenceId == _undefined
            ? _instance.clientByReferenceId
            : (clientByReferenceId
                as Query$GetClientByReferenceId$clientByReferenceId?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetClientByReferenceId$clientByReferenceId<TRes>
      get clientByReferenceId {
    final local$clientByReferenceId = _instance.clientByReferenceId;
    return local$clientByReferenceId == null
        ? CopyWith$Query$GetClientByReferenceId$clientByReferenceId.stub(
            _then(_instance))
        : CopyWith$Query$GetClientByReferenceId$clientByReferenceId(
            local$clientByReferenceId, (e) => call(clientByReferenceId: e));
  }
}

class _CopyWithStubImpl$Query$GetClientByReferenceId<TRes>
    implements CopyWith$Query$GetClientByReferenceId<TRes> {
  _CopyWithStubImpl$Query$GetClientByReferenceId(this._res);

  TRes _res;

  call({
    Query$GetClientByReferenceId$clientByReferenceId? clientByReferenceId,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetClientByReferenceId$clientByReferenceId<TRes>
      get clientByReferenceId =>
          CopyWith$Query$GetClientByReferenceId$clientByReferenceId.stub(_res);
}

const documentNodeQueryGetClientByReferenceId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetClientByReferenceId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'refereceId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'clientByReferenceId'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'referenceId'),
            value: VariableNode(name: NameNode(value: 'refereceId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isEditable'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isD365'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isActive'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'defaultWorkRequestType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isDigitalSignatureRequired'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'validateBySignature'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'validateByWorkOrder'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'validateFrom'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isEmailNotificationRequired'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sendEmailOnFailedQuestions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'emailIds'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assignFailedQuestionToTeam'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assignFailedQuestionToTeamId'),
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
        ]),
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

class Query$GetClientByReferenceId$clientByReferenceId {
  Query$GetClientByReferenceId$clientByReferenceId({
    required this.id,
    required this.title,
    required this.isEditable,
    required this.isD365,
    required this.isActive,
    this.defaultWorkRequestType,
    required this.isDigitalSignatureRequired,
    required this.validateBySignature,
    required this.validateByWorkOrder,
    this.validateFrom,
    required this.isEmailNotificationRequired,
    required this.sendEmailOnFailedQuestions,
    this.emailIds,
    this.assignFailedQuestionToTeam,
    this.assignFailedQuestionToTeamId,
    this.$__typename = 'ClientWithFormPermissions',
  });

  factory Query$GetClientByReferenceId$clientByReferenceId.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$isEditable = json['isEditable'];
    final l$isD365 = json['isD365'];
    final l$isActive = json['isActive'];
    final l$defaultWorkRequestType = json['defaultWorkRequestType'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$validateBySignature = json['validateBySignature'];
    final l$validateByWorkOrder = json['validateByWorkOrder'];
    final l$validateFrom = json['validateFrom'];
    final l$isEmailNotificationRequired = json['isEmailNotificationRequired'];
    final l$sendEmailOnFailedQuestions = json['sendEmailOnFailedQuestions'];
    final l$emailIds = json['emailIds'];
    final l$assignFailedQuestionToTeam = json['assignFailedQuestionToTeam'];
    final l$assignFailedQuestionToTeamId = json['assignFailedQuestionToTeamId'];
    final l$$__typename = json['__typename'];
    return Query$GetClientByReferenceId$clientByReferenceId(
      id: (l$id as int),
      title: (l$title as String),
      isEditable: (l$isEditable as bool),
      isD365: (l$isD365 as bool),
      isActive: (l$isActive as bool),
      defaultWorkRequestType: (l$defaultWorkRequestType as String?),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      validateBySignature: (l$validateBySignature as bool),
      validateByWorkOrder: (l$validateByWorkOrder as bool),
      validateFrom: (l$validateFrom as String?),
      isEmailNotificationRequired: (l$isEmailNotificationRequired as bool),
      sendEmailOnFailedQuestions: (l$sendEmailOnFailedQuestions as bool),
      emailIds: (l$emailIds as String?),
      assignFailedQuestionToTeam: (l$assignFailedQuestionToTeam as String?),
      assignFailedQuestionToTeamId: (l$assignFailedQuestionToTeamId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final bool isEditable;

  final bool isD365;

  final bool isActive;

  final String? defaultWorkRequestType;

  final bool isDigitalSignatureRequired;

  final bool validateBySignature;

  final bool validateByWorkOrder;

  final String? validateFrom;

  final bool isEmailNotificationRequired;

  final bool sendEmailOnFailedQuestions;

  final String? emailIds;

  final String? assignFailedQuestionToTeam;

  final String? assignFailedQuestionToTeamId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$isEditable = isEditable;
    _resultData['isEditable'] = l$isEditable;
    final l$isD365 = isD365;
    _resultData['isD365'] = l$isD365;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$defaultWorkRequestType = defaultWorkRequestType;
    _resultData['defaultWorkRequestType'] = l$defaultWorkRequestType;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$validateBySignature = validateBySignature;
    _resultData['validateBySignature'] = l$validateBySignature;
    final l$validateByWorkOrder = validateByWorkOrder;
    _resultData['validateByWorkOrder'] = l$validateByWorkOrder;
    final l$validateFrom = validateFrom;
    _resultData['validateFrom'] = l$validateFrom;
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    _resultData['isEmailNotificationRequired'] = l$isEmailNotificationRequired;
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    _resultData['sendEmailOnFailedQuestions'] = l$sendEmailOnFailedQuestions;
    final l$emailIds = emailIds;
    _resultData['emailIds'] = l$emailIds;
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    _resultData['assignFailedQuestionToTeam'] = l$assignFailedQuestionToTeam;
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    _resultData['assignFailedQuestionToTeamId'] =
        l$assignFailedQuestionToTeamId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$isEditable = isEditable;
    final l$isD365 = isD365;
    final l$isActive = isActive;
    final l$defaultWorkRequestType = defaultWorkRequestType;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$validateBySignature = validateBySignature;
    final l$validateByWorkOrder = validateByWorkOrder;
    final l$validateFrom = validateFrom;
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    final l$emailIds = emailIds;
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$isEditable,
      l$isD365,
      l$isActive,
      l$defaultWorkRequestType,
      l$isDigitalSignatureRequired,
      l$validateBySignature,
      l$validateByWorkOrder,
      l$validateFrom,
      l$isEmailNotificationRequired,
      l$sendEmailOnFailedQuestions,
      l$emailIds,
      l$assignFailedQuestionToTeam,
      l$assignFailedQuestionToTeamId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetClientByReferenceId$clientByReferenceId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$isEditable = isEditable;
    final lOther$isEditable = other.isEditable;
    if (l$isEditable != lOther$isEditable) {
      return false;
    }
    final l$isD365 = isD365;
    final lOther$isD365 = other.isD365;
    if (l$isD365 != lOther$isD365) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$defaultWorkRequestType = defaultWorkRequestType;
    final lOther$defaultWorkRequestType = other.defaultWorkRequestType;
    if (l$defaultWorkRequestType != lOther$defaultWorkRequestType) {
      return false;
    }
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final lOther$isDigitalSignatureRequired = other.isDigitalSignatureRequired;
    if (l$isDigitalSignatureRequired != lOther$isDigitalSignatureRequired) {
      return false;
    }
    final l$validateBySignature = validateBySignature;
    final lOther$validateBySignature = other.validateBySignature;
    if (l$validateBySignature != lOther$validateBySignature) {
      return false;
    }
    final l$validateByWorkOrder = validateByWorkOrder;
    final lOther$validateByWorkOrder = other.validateByWorkOrder;
    if (l$validateByWorkOrder != lOther$validateByWorkOrder) {
      return false;
    }
    final l$validateFrom = validateFrom;
    final lOther$validateFrom = other.validateFrom;
    if (l$validateFrom != lOther$validateFrom) {
      return false;
    }
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    final lOther$isEmailNotificationRequired =
        other.isEmailNotificationRequired;
    if (l$isEmailNotificationRequired != lOther$isEmailNotificationRequired) {
      return false;
    }
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    final lOther$sendEmailOnFailedQuestions = other.sendEmailOnFailedQuestions;
    if (l$sendEmailOnFailedQuestions != lOther$sendEmailOnFailedQuestions) {
      return false;
    }
    final l$emailIds = emailIds;
    final lOther$emailIds = other.emailIds;
    if (l$emailIds != lOther$emailIds) {
      return false;
    }
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    final lOther$assignFailedQuestionToTeam = other.assignFailedQuestionToTeam;
    if (l$assignFailedQuestionToTeam != lOther$assignFailedQuestionToTeam) {
      return false;
    }
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    final lOther$assignFailedQuestionToTeamId =
        other.assignFailedQuestionToTeamId;
    if (l$assignFailedQuestionToTeamId != lOther$assignFailedQuestionToTeamId) {
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

extension UtilityExtension$Query$GetClientByReferenceId$clientByReferenceId
    on Query$GetClientByReferenceId$clientByReferenceId {
  CopyWith$Query$GetClientByReferenceId$clientByReferenceId<
          Query$GetClientByReferenceId$clientByReferenceId>
      get copyWith => CopyWith$Query$GetClientByReferenceId$clientByReferenceId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetClientByReferenceId$clientByReferenceId<TRes> {
  factory CopyWith$Query$GetClientByReferenceId$clientByReferenceId(
    Query$GetClientByReferenceId$clientByReferenceId instance,
    TRes Function(Query$GetClientByReferenceId$clientByReferenceId) then,
  ) = _CopyWithImpl$Query$GetClientByReferenceId$clientByReferenceId;

  factory CopyWith$Query$GetClientByReferenceId$clientByReferenceId.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetClientByReferenceId$clientByReferenceId;

  TRes call({
    int? id,
    String? title,
    bool? isEditable,
    bool? isD365,
    bool? isActive,
    String? defaultWorkRequestType,
    bool? isDigitalSignatureRequired,
    bool? validateBySignature,
    bool? validateByWorkOrder,
    String? validateFrom,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetClientByReferenceId$clientByReferenceId<TRes>
    implements CopyWith$Query$GetClientByReferenceId$clientByReferenceId<TRes> {
  _CopyWithImpl$Query$GetClientByReferenceId$clientByReferenceId(
    this._instance,
    this._then,
  );

  final Query$GetClientByReferenceId$clientByReferenceId _instance;

  final TRes Function(Query$GetClientByReferenceId$clientByReferenceId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? isEditable = _undefined,
    Object? isD365 = _undefined,
    Object? isActive = _undefined,
    Object? defaultWorkRequestType = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? validateBySignature = _undefined,
    Object? validateByWorkOrder = _undefined,
    Object? validateFrom = _undefined,
    Object? isEmailNotificationRequired = _undefined,
    Object? sendEmailOnFailedQuestions = _undefined,
    Object? emailIds = _undefined,
    Object? assignFailedQuestionToTeam = _undefined,
    Object? assignFailedQuestionToTeamId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetClientByReferenceId$clientByReferenceId(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        isEditable: isEditable == _undefined || isEditable == null
            ? _instance.isEditable
            : (isEditable as bool),
        isD365: isD365 == _undefined || isD365 == null
            ? _instance.isD365
            : (isD365 as bool),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        defaultWorkRequestType: defaultWorkRequestType == _undefined
            ? _instance.defaultWorkRequestType
            : (defaultWorkRequestType as String?),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
        validateBySignature:
            validateBySignature == _undefined || validateBySignature == null
                ? _instance.validateBySignature
                : (validateBySignature as bool),
        validateByWorkOrder:
            validateByWorkOrder == _undefined || validateByWorkOrder == null
                ? _instance.validateByWorkOrder
                : (validateByWorkOrder as bool),
        validateFrom: validateFrom == _undefined
            ? _instance.validateFrom
            : (validateFrom as String?),
        isEmailNotificationRequired:
            isEmailNotificationRequired == _undefined ||
                    isEmailNotificationRequired == null
                ? _instance.isEmailNotificationRequired
                : (isEmailNotificationRequired as bool),
        sendEmailOnFailedQuestions: sendEmailOnFailedQuestions == _undefined ||
                sendEmailOnFailedQuestions == null
            ? _instance.sendEmailOnFailedQuestions
            : (sendEmailOnFailedQuestions as bool),
        emailIds:
            emailIds == _undefined ? _instance.emailIds : (emailIds as String?),
        assignFailedQuestionToTeam: assignFailedQuestionToTeam == _undefined
            ? _instance.assignFailedQuestionToTeam
            : (assignFailedQuestionToTeam as String?),
        assignFailedQuestionToTeamId: assignFailedQuestionToTeamId == _undefined
            ? _instance.assignFailedQuestionToTeamId
            : (assignFailedQuestionToTeamId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetClientByReferenceId$clientByReferenceId<TRes>
    implements CopyWith$Query$GetClientByReferenceId$clientByReferenceId<TRes> {
  _CopyWithStubImpl$Query$GetClientByReferenceId$clientByReferenceId(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    bool? isEditable,
    bool? isD365,
    bool? isActive,
    String? defaultWorkRequestType,
    bool? isDigitalSignatureRequired,
    bool? validateBySignature,
    bool? validateByWorkOrder,
    String? validateFrom,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
    String? $__typename,
  }) =>
      _res;
}
