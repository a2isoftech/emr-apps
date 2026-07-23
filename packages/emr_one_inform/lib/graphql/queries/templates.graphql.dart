import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Templates {
  factory Variables$Query$Templates(
          {required Input$SearchQueryFilterInput filter}) =>
      Variables$Query$Templates._({
        r'filter': filter,
      });

  Variables$Query$Templates._(this._$data);

  factory Variables$Query$Templates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = Input$SearchQueryFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$Templates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchQueryFilterInput get filter =>
      (_$data['filter'] as Input$SearchQueryFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$Templates<Variables$Query$Templates> get copyWith =>
      CopyWith$Variables$Query$Templates(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Templates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([l$filter]);
  }
}

abstract class CopyWith$Variables$Query$Templates<TRes> {
  factory CopyWith$Variables$Query$Templates(
    Variables$Query$Templates instance,
    TRes Function(Variables$Query$Templates) then,
  ) = _CopyWithImpl$Variables$Query$Templates;

  factory CopyWith$Variables$Query$Templates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Templates;

  TRes call({Input$SearchQueryFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$Templates<TRes>
    implements CopyWith$Variables$Query$Templates<TRes> {
  _CopyWithImpl$Variables$Query$Templates(
    this._instance,
    this._then,
  );

  final Variables$Query$Templates _instance;

  final TRes Function(Variables$Query$Templates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$Templates._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$SearchQueryFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$Templates<TRes>
    implements CopyWith$Variables$Query$Templates<TRes> {
  _CopyWithStubImpl$Variables$Query$Templates(this._res);

  TRes _res;

  call({Input$SearchQueryFilterInput? filter}) => _res;
}

class Query$Templates {
  Query$Templates({
    required this.formTemplatesByName,
    this.$__typename = 'FormsQuery',
  });

  factory Query$Templates.fromJson(Map<String, dynamic> json) {
    final l$formTemplatesByName = json['formTemplatesByName'];
    final l$$__typename = json['__typename'];
    return Query$Templates(
      formTemplatesByName: (l$formTemplatesByName as List<dynamic>)
          .map((e) => Query$Templates$formTemplatesByName.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Templates$formTemplatesByName> formTemplatesByName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$formTemplatesByName = formTemplatesByName;
    _resultData['formTemplatesByName'] =
        l$formTemplatesByName.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$formTemplatesByName = formTemplatesByName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$formTemplatesByName.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Templates) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$formTemplatesByName = formTemplatesByName;
    final lOther$formTemplatesByName = other.formTemplatesByName;
    if (l$formTemplatesByName.length != lOther$formTemplatesByName.length) {
      return false;
    }
    for (int i = 0; i < l$formTemplatesByName.length; i++) {
      final l$formTemplatesByName$entry = l$formTemplatesByName[i];
      final lOther$formTemplatesByName$entry = lOther$formTemplatesByName[i];
      if (l$formTemplatesByName$entry != lOther$formTemplatesByName$entry) {
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

extension UtilityExtension$Query$Templates on Query$Templates {
  CopyWith$Query$Templates<Query$Templates> get copyWith =>
      CopyWith$Query$Templates(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Templates<TRes> {
  factory CopyWith$Query$Templates(
    Query$Templates instance,
    TRes Function(Query$Templates) then,
  ) = _CopyWithImpl$Query$Templates;

  factory CopyWith$Query$Templates.stub(TRes res) =
      _CopyWithStubImpl$Query$Templates;

  TRes call({
    List<Query$Templates$formTemplatesByName>? formTemplatesByName,
    String? $__typename,
  });
  TRes formTemplatesByName(
      Iterable<Query$Templates$formTemplatesByName> Function(
              Iterable<
                  CopyWith$Query$Templates$formTemplatesByName<
                      Query$Templates$formTemplatesByName>>)
          _fn);
}

class _CopyWithImpl$Query$Templates<TRes>
    implements CopyWith$Query$Templates<TRes> {
  _CopyWithImpl$Query$Templates(
    this._instance,
    this._then,
  );

  final Query$Templates _instance;

  final TRes Function(Query$Templates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? formTemplatesByName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Templates(
        formTemplatesByName:
            formTemplatesByName == _undefined || formTemplatesByName == null
                ? _instance.formTemplatesByName
                : (formTemplatesByName
                    as List<Query$Templates$formTemplatesByName>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes formTemplatesByName(
          Iterable<Query$Templates$formTemplatesByName> Function(
                  Iterable<
                      CopyWith$Query$Templates$formTemplatesByName<
                          Query$Templates$formTemplatesByName>>)
              _fn) =>
      call(
          formTemplatesByName: _fn(_instance.formTemplatesByName
              .map((e) => CopyWith$Query$Templates$formTemplatesByName(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Templates<TRes>
    implements CopyWith$Query$Templates<TRes> {
  _CopyWithStubImpl$Query$Templates(this._res);

  TRes _res;

  call({
    List<Query$Templates$formTemplatesByName>? formTemplatesByName,
    String? $__typename,
  }) =>
      _res;

  formTemplatesByName(_fn) => _res;
}

const documentNodeQueryTemplates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Templates'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchQueryFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'formTemplatesByName'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
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
            name: NameNode(value: 'clientName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'referenceId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'versions'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'uuid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'templateId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'version'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'documentSchemaId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'documentPath'),
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
                name: NameNode(value: 'createdBy'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdDate'),
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
            name: NameNode(value: 'isPublished'),
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

class Query$Templates$formTemplatesByName {
  Query$Templates$formTemplatesByName({
    required this.id,
    this.title,
    required this.clientName,
    this.referenceId,
    required this.createdBy,
    required this.createdDate,
    this.versions,
    required this.isDigitalSignatureRequired,
    required this.validateBySignature,
    required this.validateByWorkOrder,
    this.validateFrom,
    required this.isEmailNotificationRequired,
    required this.sendEmailOnFailedQuestions,
    this.emailIds,
    this.assignFailedQuestionToTeam,
    this.assignFailedQuestionToTeamId,
    required this.isPublished,
    this.$__typename = 'FormTemplate',
  });

  factory Query$Templates$formTemplatesByName.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$clientName = json['clientName'];
    final l$referenceId = json['referenceId'];
    final l$createdBy = json['createdBy'];
    final l$createdDate = json['createdDate'];
    final l$versions = json['versions'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$validateBySignature = json['validateBySignature'];
    final l$validateByWorkOrder = json['validateByWorkOrder'];
    final l$validateFrom = json['validateFrom'];
    final l$isEmailNotificationRequired = json['isEmailNotificationRequired'];
    final l$sendEmailOnFailedQuestions = json['sendEmailOnFailedQuestions'];
    final l$emailIds = json['emailIds'];
    final l$assignFailedQuestionToTeam = json['assignFailedQuestionToTeam'];
    final l$assignFailedQuestionToTeamId = json['assignFailedQuestionToTeamId'];
    final l$isPublished = json['isPublished'];
    final l$$__typename = json['__typename'];
    return Query$Templates$formTemplatesByName(
      id: (l$id as String),
      title: (l$title as String?),
      clientName: (l$clientName as String),
      referenceId: (l$referenceId as String?),
      createdBy: (l$createdBy as String),
      createdDate: (l$createdDate as String),
      versions: (l$versions as List<dynamic>?)
          ?.map((e) => Query$Templates$formTemplatesByName$versions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      validateBySignature: (l$validateBySignature as bool),
      validateByWorkOrder: (l$validateByWorkOrder as bool),
      validateFrom: (l$validateFrom as String?),
      isEmailNotificationRequired: (l$isEmailNotificationRequired as bool),
      sendEmailOnFailedQuestions: (l$sendEmailOnFailedQuestions as bool),
      emailIds: (l$emailIds as String?),
      assignFailedQuestionToTeam: (l$assignFailedQuestionToTeam as String?),
      assignFailedQuestionToTeamId: (l$assignFailedQuestionToTeamId as String?),
      isPublished: (l$isPublished as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? title;

  final String clientName;

  final String? referenceId;

  final String createdBy;

  final String createdDate;

  final List<Query$Templates$formTemplatesByName$versions>? versions;

  final bool isDigitalSignatureRequired;

  final bool validateBySignature;

  final bool validateByWorkOrder;

  final String? validateFrom;

  final bool isEmailNotificationRequired;

  final bool sendEmailOnFailedQuestions;

  final String? emailIds;

  final String? assignFailedQuestionToTeam;

  final String? assignFailedQuestionToTeamId;

  final bool isPublished;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$clientName = clientName;
    _resultData['clientName'] = l$clientName;
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate;
    final l$versions = versions;
    _resultData['versions'] = l$versions?.map((e) => e.toJson()).toList();
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
    final l$isPublished = isPublished;
    _resultData['isPublished'] = l$isPublished;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$clientName = clientName;
    final l$referenceId = referenceId;
    final l$createdBy = createdBy;
    final l$createdDate = createdDate;
    final l$versions = versions;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$validateBySignature = validateBySignature;
    final l$validateByWorkOrder = validateByWorkOrder;
    final l$validateFrom = validateFrom;
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    final l$emailIds = emailIds;
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    final l$isPublished = isPublished;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$clientName,
      l$referenceId,
      l$createdBy,
      l$createdDate,
      l$versions == null ? null : Object.hashAll(l$versions.map((v) => v)),
      l$isDigitalSignatureRequired,
      l$validateBySignature,
      l$validateByWorkOrder,
      l$validateFrom,
      l$isEmailNotificationRequired,
      l$sendEmailOnFailedQuestions,
      l$emailIds,
      l$assignFailedQuestionToTeam,
      l$assignFailedQuestionToTeamId,
      l$isPublished,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Templates$formTemplatesByName) ||
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
    final l$clientName = clientName;
    final lOther$clientName = other.clientName;
    if (l$clientName != lOther$clientName) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (l$referenceId != lOther$referenceId) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$versions = versions;
    final lOther$versions = other.versions;
    if (l$versions != null && lOther$versions != null) {
      if (l$versions.length != lOther$versions.length) {
        return false;
      }
      for (int i = 0; i < l$versions.length; i++) {
        final l$versions$entry = l$versions[i];
        final lOther$versions$entry = lOther$versions[i];
        if (l$versions$entry != lOther$versions$entry) {
          return false;
        }
      }
    } else if (l$versions != lOther$versions) {
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
    final l$isPublished = isPublished;
    final lOther$isPublished = other.isPublished;
    if (l$isPublished != lOther$isPublished) {
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

extension UtilityExtension$Query$Templates$formTemplatesByName
    on Query$Templates$formTemplatesByName {
  CopyWith$Query$Templates$formTemplatesByName<
          Query$Templates$formTemplatesByName>
      get copyWith => CopyWith$Query$Templates$formTemplatesByName(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Templates$formTemplatesByName<TRes> {
  factory CopyWith$Query$Templates$formTemplatesByName(
    Query$Templates$formTemplatesByName instance,
    TRes Function(Query$Templates$formTemplatesByName) then,
  ) = _CopyWithImpl$Query$Templates$formTemplatesByName;

  factory CopyWith$Query$Templates$formTemplatesByName.stub(TRes res) =
      _CopyWithStubImpl$Query$Templates$formTemplatesByName;

  TRes call({
    String? id,
    String? title,
    String? clientName,
    String? referenceId,
    String? createdBy,
    String? createdDate,
    List<Query$Templates$formTemplatesByName$versions>? versions,
    bool? isDigitalSignatureRequired,
    bool? validateBySignature,
    bool? validateByWorkOrder,
    String? validateFrom,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
    bool? isPublished,
    String? $__typename,
  });
  TRes versions(
      Iterable<Query$Templates$formTemplatesByName$versions>? Function(
              Iterable<
                  CopyWith$Query$Templates$formTemplatesByName$versions<
                      Query$Templates$formTemplatesByName$versions>>?)
          _fn);
}

class _CopyWithImpl$Query$Templates$formTemplatesByName<TRes>
    implements CopyWith$Query$Templates$formTemplatesByName<TRes> {
  _CopyWithImpl$Query$Templates$formTemplatesByName(
    this._instance,
    this._then,
  );

  final Query$Templates$formTemplatesByName _instance;

  final TRes Function(Query$Templates$formTemplatesByName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? clientName = _undefined,
    Object? referenceId = _undefined,
    Object? createdBy = _undefined,
    Object? createdDate = _undefined,
    Object? versions = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? validateBySignature = _undefined,
    Object? validateByWorkOrder = _undefined,
    Object? validateFrom = _undefined,
    Object? isEmailNotificationRequired = _undefined,
    Object? sendEmailOnFailedQuestions = _undefined,
    Object? emailIds = _undefined,
    Object? assignFailedQuestionToTeam = _undefined,
    Object? assignFailedQuestionToTeamId = _undefined,
    Object? isPublished = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Templates$formTemplatesByName(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined ? _instance.title : (title as String?),
        clientName: clientName == _undefined || clientName == null
            ? _instance.clientName
            : (clientName as String),
        referenceId: referenceId == _undefined
            ? _instance.referenceId
            : (referenceId as String?),
        createdBy: createdBy == _undefined || createdBy == null
            ? _instance.createdBy
            : (createdBy as String),
        createdDate: createdDate == _undefined || createdDate == null
            ? _instance.createdDate
            : (createdDate as String),
        versions: versions == _undefined
            ? _instance.versions
            : (versions as List<Query$Templates$formTemplatesByName$versions>?),
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
        isPublished: isPublished == _undefined || isPublished == null
            ? _instance.isPublished
            : (isPublished as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes versions(
          Iterable<Query$Templates$formTemplatesByName$versions>? Function(
                  Iterable<
                      CopyWith$Query$Templates$formTemplatesByName$versions<
                          Query$Templates$formTemplatesByName$versions>>?)
              _fn) =>
      call(
          versions: _fn(_instance.versions?.map(
              (e) => CopyWith$Query$Templates$formTemplatesByName$versions(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$Templates$formTemplatesByName<TRes>
    implements CopyWith$Query$Templates$formTemplatesByName<TRes> {
  _CopyWithStubImpl$Query$Templates$formTemplatesByName(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? clientName,
    String? referenceId,
    String? createdBy,
    String? createdDate,
    List<Query$Templates$formTemplatesByName$versions>? versions,
    bool? isDigitalSignatureRequired,
    bool? validateBySignature,
    bool? validateByWorkOrder,
    String? validateFrom,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
    bool? isPublished,
    String? $__typename,
  }) =>
      _res;

  versions(_fn) => _res;
}

class Query$Templates$formTemplatesByName$versions {
  Query$Templates$formTemplatesByName$versions({
    required this.id,
    required this.uuid,
    required this.templateId,
    required this.version,
    required this.description,
    required this.documentSchemaId,
    required this.documentPath,
    required this.isActive,
    required this.createdBy,
    required this.createdDate,
    this.$__typename = 'TemplateVersion',
  });

  factory Query$Templates$formTemplatesByName$versions.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uuid = json['uuid'];
    final l$templateId = json['templateId'];
    final l$version = json['version'];
    final l$description = json['description'];
    final l$documentSchemaId = json['documentSchemaId'];
    final l$documentPath = json['documentPath'];
    final l$isActive = json['isActive'];
    final l$createdBy = json['createdBy'];
    final l$createdDate = json['createdDate'];
    final l$$__typename = json['__typename'];
    return Query$Templates$formTemplatesByName$versions(
      id: (l$id as int),
      uuid: (l$uuid as String),
      templateId: (l$templateId as int),
      version: (l$version as int),
      description: (l$description as String),
      documentSchemaId: (l$documentSchemaId as int),
      documentPath: (l$documentPath as String),
      isActive: (l$isActive as bool),
      createdBy: (l$createdBy as String),
      createdDate: (l$createdDate as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String uuid;

  final int templateId;

  final int version;

  final String description;

  final int documentSchemaId;

  final String documentPath;

  final bool isActive;

  final String createdBy;

  final String createdDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$templateId = templateId;
    _resultData['templateId'] = l$templateId;
    final l$version = version;
    _resultData['version'] = l$version;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$documentSchemaId = documentSchemaId;
    _resultData['documentSchemaId'] = l$documentSchemaId;
    final l$documentPath = documentPath;
    _resultData['documentPath'] = l$documentPath;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uuid = uuid;
    final l$templateId = templateId;
    final l$version = version;
    final l$description = description;
    final l$documentSchemaId = documentSchemaId;
    final l$documentPath = documentPath;
    final l$isActive = isActive;
    final l$createdBy = createdBy;
    final l$createdDate = createdDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$uuid,
      l$templateId,
      l$version,
      l$description,
      l$documentSchemaId,
      l$documentPath,
      l$isActive,
      l$createdBy,
      l$createdDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Templates$formTemplatesByName$versions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$version = version;
    final lOther$version = other.version;
    if (l$version != lOther$version) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$documentSchemaId = documentSchemaId;
    final lOther$documentSchemaId = other.documentSchemaId;
    if (l$documentSchemaId != lOther$documentSchemaId) {
      return false;
    }
    final l$documentPath = documentPath;
    final lOther$documentPath = other.documentPath;
    if (l$documentPath != lOther$documentPath) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
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

extension UtilityExtension$Query$Templates$formTemplatesByName$versions
    on Query$Templates$formTemplatesByName$versions {
  CopyWith$Query$Templates$formTemplatesByName$versions<
          Query$Templates$formTemplatesByName$versions>
      get copyWith => CopyWith$Query$Templates$formTemplatesByName$versions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Templates$formTemplatesByName$versions<TRes> {
  factory CopyWith$Query$Templates$formTemplatesByName$versions(
    Query$Templates$formTemplatesByName$versions instance,
    TRes Function(Query$Templates$formTemplatesByName$versions) then,
  ) = _CopyWithImpl$Query$Templates$formTemplatesByName$versions;

  factory CopyWith$Query$Templates$formTemplatesByName$versions.stub(TRes res) =
      _CopyWithStubImpl$Query$Templates$formTemplatesByName$versions;

  TRes call({
    int? id,
    String? uuid,
    int? templateId,
    int? version,
    String? description,
    int? documentSchemaId,
    String? documentPath,
    bool? isActive,
    String? createdBy,
    String? createdDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Templates$formTemplatesByName$versions<TRes>
    implements CopyWith$Query$Templates$formTemplatesByName$versions<TRes> {
  _CopyWithImpl$Query$Templates$formTemplatesByName$versions(
    this._instance,
    this._then,
  );

  final Query$Templates$formTemplatesByName$versions _instance;

  final TRes Function(Query$Templates$formTemplatesByName$versions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uuid = _undefined,
    Object? templateId = _undefined,
    Object? version = _undefined,
    Object? description = _undefined,
    Object? documentSchemaId = _undefined,
    Object? documentPath = _undefined,
    Object? isActive = _undefined,
    Object? createdBy = _undefined,
    Object? createdDate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Templates$formTemplatesByName$versions(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        templateId: templateId == _undefined || templateId == null
            ? _instance.templateId
            : (templateId as int),
        version: version == _undefined || version == null
            ? _instance.version
            : (version as int),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        documentSchemaId:
            documentSchemaId == _undefined || documentSchemaId == null
                ? _instance.documentSchemaId
                : (documentSchemaId as int),
        documentPath: documentPath == _undefined || documentPath == null
            ? _instance.documentPath
            : (documentPath as String),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        createdBy: createdBy == _undefined || createdBy == null
            ? _instance.createdBy
            : (createdBy as String),
        createdDate: createdDate == _undefined || createdDate == null
            ? _instance.createdDate
            : (createdDate as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Templates$formTemplatesByName$versions<TRes>
    implements CopyWith$Query$Templates$formTemplatesByName$versions<TRes> {
  _CopyWithStubImpl$Query$Templates$formTemplatesByName$versions(this._res);

  TRes _res;

  call({
    int? id,
    String? uuid,
    int? templateId,
    int? version,
    String? description,
    int? documentSchemaId,
    String? documentPath,
    bool? isActive,
    String? createdBy,
    String? createdDate,
    String? $__typename,
  }) =>
      _res;
}
