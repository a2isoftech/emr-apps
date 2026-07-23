import 'package:gql/ast.dart';

class Variables$Query$GetTemplateToEdit {
  factory Variables$Query$GetTemplateToEdit({required String id}) =>
      Variables$Query$GetTemplateToEdit._({
        r'id': id,
      });

  Variables$Query$GetTemplateToEdit._(this._$data);

  factory Variables$Query$GetTemplateToEdit.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetTemplateToEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetTemplateToEdit<Variables$Query$GetTemplateToEdit>
      get copyWith => CopyWith$Variables$Query$GetTemplateToEdit(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTemplateToEdit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetTemplateToEdit<TRes> {
  factory CopyWith$Variables$Query$GetTemplateToEdit(
    Variables$Query$GetTemplateToEdit instance,
    TRes Function(Variables$Query$GetTemplateToEdit) then,
  ) = _CopyWithImpl$Variables$Query$GetTemplateToEdit;

  factory CopyWith$Variables$Query$GetTemplateToEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTemplateToEdit;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetTemplateToEdit<TRes>
    implements CopyWith$Variables$Query$GetTemplateToEdit<TRes> {
  _CopyWithImpl$Variables$Query$GetTemplateToEdit(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTemplateToEdit _instance;

  final TRes Function(Variables$Query$GetTemplateToEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetTemplateToEdit._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTemplateToEdit<TRes>
    implements CopyWith$Variables$Query$GetTemplateToEdit<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTemplateToEdit(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetTemplateToEdit {
  Query$GetTemplateToEdit({
    this.templateToEdit,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetTemplateToEdit.fromJson(Map<String, dynamic> json) {
    final l$templateToEdit = json['templateToEdit'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit(
      templateToEdit: l$templateToEdit == null
          ? null
          : Query$GetTemplateToEdit$templateToEdit.fromJson(
              (l$templateToEdit as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTemplateToEdit$templateToEdit? templateToEdit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$templateToEdit = templateToEdit;
    _resultData['templateToEdit'] = l$templateToEdit?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$templateToEdit = templateToEdit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$templateToEdit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTemplateToEdit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$templateToEdit = templateToEdit;
    final lOther$templateToEdit = other.templateToEdit;
    if (l$templateToEdit != lOther$templateToEdit) {
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

extension UtilityExtension$Query$GetTemplateToEdit on Query$GetTemplateToEdit {
  CopyWith$Query$GetTemplateToEdit<Query$GetTemplateToEdit> get copyWith =>
      CopyWith$Query$GetTemplateToEdit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTemplateToEdit<TRes> {
  factory CopyWith$Query$GetTemplateToEdit(
    Query$GetTemplateToEdit instance,
    TRes Function(Query$GetTemplateToEdit) then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit;

  factory CopyWith$Query$GetTemplateToEdit.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit;

  TRes call({
    Query$GetTemplateToEdit$templateToEdit? templateToEdit,
    String? $__typename,
  });
  CopyWith$Query$GetTemplateToEdit$templateToEdit<TRes> get templateToEdit;
}

class _CopyWithImpl$Query$GetTemplateToEdit<TRes>
    implements CopyWith$Query$GetTemplateToEdit<TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit _instance;

  final TRes Function(Query$GetTemplateToEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? templateToEdit = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTemplateToEdit(
        templateToEdit: templateToEdit == _undefined
            ? _instance.templateToEdit
            : (templateToEdit as Query$GetTemplateToEdit$templateToEdit?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTemplateToEdit$templateToEdit<TRes> get templateToEdit {
    final local$templateToEdit = _instance.templateToEdit;
    return local$templateToEdit == null
        ? CopyWith$Query$GetTemplateToEdit$templateToEdit.stub(_then(_instance))
        : CopyWith$Query$GetTemplateToEdit$templateToEdit(
            local$templateToEdit, (e) => call(templateToEdit: e));
  }
}

class _CopyWithStubImpl$Query$GetTemplateToEdit<TRes>
    implements CopyWith$Query$GetTemplateToEdit<TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit(this._res);

  TRes _res;

  call({
    Query$GetTemplateToEdit$templateToEdit? templateToEdit,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTemplateToEdit$templateToEdit<TRes> get templateToEdit =>
      CopyWith$Query$GetTemplateToEdit$templateToEdit.stub(_res);
}

const documentNodeQueryGetTemplateToEdit = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTemplateToEdit'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'templateToEdit'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
            name: NameNode(value: 'uuid'),
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
            name: NameNode(value: 'referenceId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'clientId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isQuickTemplate'),
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
            name: NameNode(value: 'isPublished'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'template'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'title'),
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
                name: NameNode(value: 'sections'),
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
                    name: NameNode(value: 'header'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'components'),
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
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isHTML'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'visibilityProvider'),
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
                            name: NameNode(value: 'type'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'values'),
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
                                name: NameNode(value: 'value'),
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
                            name: NameNode(value: 'value'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'lengthGreaterThan'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'url'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'query'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'objectName'),
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
                        name: NameNode(value: 'assetCounter'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'mroDataProvider'),
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
                            name: NameNode(value: 'type'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'values'),
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
                                name: NameNode(value: 'value'),
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
                            name: NameNode(value: 'value'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'lengthGreaterThan'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'url'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'query'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'objectName'),
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
                        name: NameNode(value: 'showWarningLabel'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'faultTitle'),
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
                        name: NameNode(value: 'isRequired'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'validators'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'type'),
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
                            name: NameNode(value: 'minValue'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'maxValue'),
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
                        name: NameNode(value: 'message'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'messageType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isSRRequired'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isMultiline'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'dropdownDataProvider'),
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
                            name: NameNode(value: 'type'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'values'),
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
                                name: NameNode(value: 'value'),
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
                            name: NameNode(value: 'value'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'lengthGreaterThan'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'url'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'query'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'objectName'),
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
                        name: NameNode(value: 'type'),
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

class Query$GetTemplateToEdit$templateToEdit {
  Query$GetTemplateToEdit$templateToEdit({
    required this.id,
    this.validateFrom,
    required this.isEmailNotificationRequired,
    required this.sendEmailOnFailedQuestions,
    this.emailIds,
    this.assignFailedQuestionToTeam,
    this.assignFailedQuestionToTeamId,
    required this.uuid,
    required this.title,
    required this.referenceId,
    required this.clientId,
    required this.isQuickTemplate,
    required this.isDigitalSignatureRequired,
    required this.validateBySignature,
    required this.validateByWorkOrder,
    required this.isPublished,
    required this.template,
    this.$__typename = 'CreateEditFormTemplate',
  });

  factory Query$GetTemplateToEdit$templateToEdit.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$validateFrom = json['validateFrom'];
    final l$isEmailNotificationRequired = json['isEmailNotificationRequired'];
    final l$sendEmailOnFailedQuestions = json['sendEmailOnFailedQuestions'];
    final l$emailIds = json['emailIds'];
    final l$assignFailedQuestionToTeam = json['assignFailedQuestionToTeam'];
    final l$assignFailedQuestionToTeamId = json['assignFailedQuestionToTeamId'];
    final l$uuid = json['uuid'];
    final l$title = json['title'];
    final l$referenceId = json['referenceId'];
    final l$clientId = json['clientId'];
    final l$isQuickTemplate = json['isQuickTemplate'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$validateBySignature = json['validateBySignature'];
    final l$validateByWorkOrder = json['validateByWorkOrder'];
    final l$isPublished = json['isPublished'];
    final l$template = json['template'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit(
      id: (l$id as int),
      validateFrom: (l$validateFrom as String?),
      isEmailNotificationRequired: (l$isEmailNotificationRequired as bool),
      sendEmailOnFailedQuestions: (l$sendEmailOnFailedQuestions as bool),
      emailIds: (l$emailIds as String?),
      assignFailedQuestionToTeam: (l$assignFailedQuestionToTeam as String?),
      assignFailedQuestionToTeamId: (l$assignFailedQuestionToTeamId as String?),
      uuid: (l$uuid as String),
      title: (l$title as String),
      referenceId: (l$referenceId as String),
      clientId: (l$clientId as int),
      isQuickTemplate: (l$isQuickTemplate as bool),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      validateBySignature: (l$validateBySignature as bool),
      validateByWorkOrder: (l$validateByWorkOrder as bool),
      isPublished: (l$isPublished as bool),
      template: Query$GetTemplateToEdit$templateToEdit$template.fromJson(
          (l$template as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? validateFrom;

  final bool isEmailNotificationRequired;

  final bool sendEmailOnFailedQuestions;

  final String? emailIds;

  final String? assignFailedQuestionToTeam;

  final String? assignFailedQuestionToTeamId;

  final String uuid;

  final String title;

  final String referenceId;

  final int clientId;

  final bool isQuickTemplate;

  final bool isDigitalSignatureRequired;

  final bool validateBySignature;

  final bool validateByWorkOrder;

  final bool isPublished;

  final Query$GetTemplateToEdit$templateToEdit$template template;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$clientId = clientId;
    _resultData['clientId'] = l$clientId;
    final l$isQuickTemplate = isQuickTemplate;
    _resultData['isQuickTemplate'] = l$isQuickTemplate;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$validateBySignature = validateBySignature;
    _resultData['validateBySignature'] = l$validateBySignature;
    final l$validateByWorkOrder = validateByWorkOrder;
    _resultData['validateByWorkOrder'] = l$validateByWorkOrder;
    final l$isPublished = isPublished;
    _resultData['isPublished'] = l$isPublished;
    final l$template = template;
    _resultData['template'] = l$template.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$validateFrom = validateFrom;
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    final l$emailIds = emailIds;
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    final l$uuid = uuid;
    final l$title = title;
    final l$referenceId = referenceId;
    final l$clientId = clientId;
    final l$isQuickTemplate = isQuickTemplate;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$validateBySignature = validateBySignature;
    final l$validateByWorkOrder = validateByWorkOrder;
    final l$isPublished = isPublished;
    final l$template = template;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$validateFrom,
      l$isEmailNotificationRequired,
      l$sendEmailOnFailedQuestions,
      l$emailIds,
      l$assignFailedQuestionToTeam,
      l$assignFailedQuestionToTeamId,
      l$uuid,
      l$title,
      l$referenceId,
      l$clientId,
      l$isQuickTemplate,
      l$isDigitalSignatureRequired,
      l$validateBySignature,
      l$validateByWorkOrder,
      l$isPublished,
      l$template,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTemplateToEdit$templateToEdit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (l$referenceId != lOther$referenceId) {
      return false;
    }
    final l$clientId = clientId;
    final lOther$clientId = other.clientId;
    if (l$clientId != lOther$clientId) {
      return false;
    }
    final l$isQuickTemplate = isQuickTemplate;
    final lOther$isQuickTemplate = other.isQuickTemplate;
    if (l$isQuickTemplate != lOther$isQuickTemplate) {
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
    final l$isPublished = isPublished;
    final lOther$isPublished = other.isPublished;
    if (l$isPublished != lOther$isPublished) {
      return false;
    }
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit
    on Query$GetTemplateToEdit$templateToEdit {
  CopyWith$Query$GetTemplateToEdit$templateToEdit<
          Query$GetTemplateToEdit$templateToEdit>
      get copyWith => CopyWith$Query$GetTemplateToEdit$templateToEdit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit<TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit(
    Query$GetTemplateToEdit$templateToEdit instance,
    TRes Function(Query$GetTemplateToEdit$templateToEdit) then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit;

  TRes call({
    int? id,
    String? validateFrom,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
    String? uuid,
    String? title,
    String? referenceId,
    int? clientId,
    bool? isQuickTemplate,
    bool? isDigitalSignatureRequired,
    bool? validateBySignature,
    bool? validateByWorkOrder,
    bool? isPublished,
    Query$GetTemplateToEdit$templateToEdit$template? template,
    String? $__typename,
  });
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template<TRes> get template;
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit<TRes>
    implements CopyWith$Query$GetTemplateToEdit$templateToEdit<TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit _instance;

  final TRes Function(Query$GetTemplateToEdit$templateToEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? validateFrom = _undefined,
    Object? isEmailNotificationRequired = _undefined,
    Object? sendEmailOnFailedQuestions = _undefined,
    Object? emailIds = _undefined,
    Object? assignFailedQuestionToTeam = _undefined,
    Object? assignFailedQuestionToTeamId = _undefined,
    Object? uuid = _undefined,
    Object? title = _undefined,
    Object? referenceId = _undefined,
    Object? clientId = _undefined,
    Object? isQuickTemplate = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? validateBySignature = _undefined,
    Object? validateByWorkOrder = _undefined,
    Object? isPublished = _undefined,
    Object? template = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTemplateToEdit$templateToEdit(
        id: id == _undefined || id == null ? _instance.id : (id as int),
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
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        referenceId: referenceId == _undefined || referenceId == null
            ? _instance.referenceId
            : (referenceId as String),
        clientId: clientId == _undefined || clientId == null
            ? _instance.clientId
            : (clientId as int),
        isQuickTemplate:
            isQuickTemplate == _undefined || isQuickTemplate == null
                ? _instance.isQuickTemplate
                : (isQuickTemplate as bool),
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
        isPublished: isPublished == _undefined || isPublished == null
            ? _instance.isPublished
            : (isPublished as bool),
        template: template == _undefined || template == null
            ? _instance.template
            : (template as Query$GetTemplateToEdit$templateToEdit$template),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTemplateToEdit$templateToEdit$template<TRes> get template {
    final local$template = _instance.template;
    return CopyWith$Query$GetTemplateToEdit$templateToEdit$template(
        local$template, (e) => call(template: e));
  }
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit<TRes>
    implements CopyWith$Query$GetTemplateToEdit$templateToEdit<TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit(this._res);

  TRes _res;

  call({
    int? id,
    String? validateFrom,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
    String? uuid,
    String? title,
    String? referenceId,
    int? clientId,
    bool? isQuickTemplate,
    bool? isDigitalSignatureRequired,
    bool? validateBySignature,
    bool? validateByWorkOrder,
    bool? isPublished,
    Query$GetTemplateToEdit$templateToEdit$template? template,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTemplateToEdit$templateToEdit$template<TRes> get template =>
      CopyWith$Query$GetTemplateToEdit$templateToEdit$template.stub(_res);
}

class Query$GetTemplateToEdit$templateToEdit$template {
  Query$GetTemplateToEdit$templateToEdit$template({
    required this.title,
    required this.uuid,
    required this.sections,
    this.$__typename = 'CreateEditFormTemplateInfo',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$uuid = json['uuid'];
    final l$sections = json['sections'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template(
      title: (l$title as String),
      uuid: (l$uuid as String),
      sections: (l$sections as List<dynamic>)
          .map((e) =>
              Query$GetTemplateToEdit$templateToEdit$template$sections.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String uuid;

  final List<Query$GetTemplateToEdit$templateToEdit$template$sections> sections;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$sections = sections;
    _resultData['sections'] = l$sections.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$uuid = uuid;
    final l$sections = sections;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$uuid,
      Object.hashAll(l$sections.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTemplateToEdit$templateToEdit$template) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$sections = sections;
    final lOther$sections = other.sections;
    if (l$sections.length != lOther$sections.length) {
      return false;
    }
    for (int i = 0; i < l$sections.length; i++) {
      final l$sections$entry = l$sections[i];
      final lOther$sections$entry = lOther$sections[i];
      if (l$sections$entry != lOther$sections$entry) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template
    on Query$GetTemplateToEdit$templateToEdit$template {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template<
          Query$GetTemplateToEdit$templateToEdit$template>
      get copyWith => CopyWith$Query$GetTemplateToEdit$templateToEdit$template(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template<TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template(
    Query$GetTemplateToEdit$templateToEdit$template instance,
    TRes Function(Query$GetTemplateToEdit$templateToEdit$template) then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template;

  TRes call({
    String? title,
    String? uuid,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections>? sections,
    String? $__typename,
  });
  TRes sections(
      Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections> Function(
              Iterable<
                  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections<
                      Query$GetTemplateToEdit$templateToEdit$template$sections>>)
          _fn);
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template<TRes>
    implements CopyWith$Query$GetTemplateToEdit$templateToEdit$template<TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template _instance;

  final TRes Function(Query$GetTemplateToEdit$templateToEdit$template) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? uuid = _undefined,
    Object? sections = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTemplateToEdit$templateToEdit$template(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        sections: sections == _undefined || sections == null
            ? _instance.sections
            : (sections as List<
                Query$GetTemplateToEdit$templateToEdit$template$sections>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes sections(
          Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections> Function(
                  Iterable<
                      CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections<
                          Query$GetTemplateToEdit$templateToEdit$template$sections>>)
              _fn) =>
      call(
          sections: _fn(_instance.sections.map((e) =>
              CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template<TRes>
    implements CopyWith$Query$GetTemplateToEdit$templateToEdit$template<TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template(this._res);

  TRes _res;

  call({
    String? title,
    String? uuid,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections>? sections,
    String? $__typename,
  }) =>
      _res;

  sections(_fn) => _res;
}

class Query$GetTemplateToEdit$templateToEdit$template$sections {
  Query$GetTemplateToEdit$templateToEdit$template$sections({
    required this.id,
    required this.header,
    required this.components,
    this.$__typename = 'CreateEditFormTemplateSection',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template$sections.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$header = json['header'];
    final l$components = json['components'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template$sections(
      id: (l$id as String),
      header: (l$header as String),
      components: (l$components as List<dynamic>)
          .map((e) =>
              Query$GetTemplateToEdit$templateToEdit$template$sections$components
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String header;

  final List<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components>
      components;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$header = header;
    _resultData['header'] = l$header;
    final l$components = components;
    _resultData['components'] = l$components.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$header = header;
    final l$components = components;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$header,
      Object.hashAll(l$components.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTemplateToEdit$templateToEdit$template$sections) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$header = header;
    final lOther$header = other.header;
    if (l$header != lOther$header) {
      return false;
    }
    final l$components = components;
    final lOther$components = other.components;
    if (l$components.length != lOther$components.length) {
      return false;
    }
    for (int i = 0; i < l$components.length; i++) {
      final l$components$entry = l$components[i];
      final lOther$components$entry = lOther$components[i];
      if (l$components$entry != lOther$components$entry) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template$sections
    on Query$GetTemplateToEdit$templateToEdit$template$sections {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections<
          Query$GetTemplateToEdit$templateToEdit$template$sections>
      get copyWith =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections<
    TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections(
    Query$GetTemplateToEdit$templateToEdit$template$sections instance,
    TRes Function(Query$GetTemplateToEdit$templateToEdit$template$sections)
        then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections;

  TRes call({
    String? id,
    String? header,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections$components>?
        components,
    String? $__typename,
  });
  TRes components(
      Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections$components> Function(
              Iterable<
                  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components<
                      Query$GetTemplateToEdit$templateToEdit$template$sections$components>>)
          _fn);
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections<
            TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template$sections _instance;

  final TRes Function(Query$GetTemplateToEdit$templateToEdit$template$sections)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? header = _undefined,
    Object? components = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTemplateToEdit$templateToEdit$template$sections(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        header: header == _undefined || header == null
            ? _instance.header
            : (header as String),
        components: components == _undefined || components == null
            ? _instance.components
            : (components as List<
                Query$GetTemplateToEdit$templateToEdit$template$sections$components>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes components(
          Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections$components> Function(
                  Iterable<
                      CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components<
                          Query$GetTemplateToEdit$templateToEdit$template$sections$components>>)
              _fn) =>
      call(
          components: _fn(_instance.components.map((e) =>
              CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections<
            TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections(
      this._res);

  TRes _res;

  call({
    String? id,
    String? header,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections$components>?
        components,
    String? $__typename,
  }) =>
      _res;

  components(_fn) => _res;
}

class Query$GetTemplateToEdit$templateToEdit$template$sections$components {
  Query$GetTemplateToEdit$templateToEdit$template$sections$components({
    required this.id,
    this.url,
    this.isHTML,
    this.visibilityProvider,
    this.assetCounter,
    this.mroDataProvider,
    this.showWarningLabel,
    this.faultTitle,
    this.title,
    this.isRequired,
    this.validators,
    this.message,
    this.messageType,
    this.isSRRequired,
    this.isMultiline,
    this.dropdownDataProvider,
    required this.type,
    this.$__typename = 'CreateEditFormTempateComponent',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template$sections$components.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$url = json['url'];
    final l$isHTML = json['isHTML'];
    final l$visibilityProvider = json['visibilityProvider'];
    final l$assetCounter = json['assetCounter'];
    final l$mroDataProvider = json['mroDataProvider'];
    final l$showWarningLabel = json['showWarningLabel'];
    final l$faultTitle = json['faultTitle'];
    final l$title = json['title'];
    final l$isRequired = json['isRequired'];
    final l$validators = json['validators'];
    final l$message = json['message'];
    final l$messageType = json['messageType'];
    final l$isSRRequired = json['isSRRequired'];
    final l$isMultiline = json['isMultiline'];
    final l$dropdownDataProvider = json['dropdownDataProvider'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template$sections$components(
      id: (l$id as String),
      url: (l$url as String?),
      isHTML: (l$isHTML as bool?),
      visibilityProvider: l$visibilityProvider == null
          ? null
          : Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider
              .fromJson((l$visibilityProvider as Map<String, dynamic>)),
      assetCounter: l$assetCounter == null
          ? null
          : Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter
              .fromJson((l$assetCounter as Map<String, dynamic>)),
      mroDataProvider: l$mroDataProvider == null
          ? null
          : Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider
              .fromJson((l$mroDataProvider as Map<String, dynamic>)),
      showWarningLabel: (l$showWarningLabel as bool?),
      faultTitle: (l$faultTitle as String?),
      title: (l$title as String?),
      isRequired: (l$isRequired as bool?),
      validators: (l$validators as List<dynamic>?)
          ?.map((e) =>
              Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      message: (l$message as String?),
      messageType: (l$messageType as String?),
      isSRRequired: (l$isSRRequired as bool?),
      isMultiline: (l$isMultiline as bool?),
      dropdownDataProvider: l$dropdownDataProvider == null
          ? null
          : Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider
              .fromJson((l$dropdownDataProvider as Map<String, dynamic>)),
      type: (l$type as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? url;

  final bool? isHTML;

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider?
      visibilityProvider;

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter?
      assetCounter;

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider?
      mroDataProvider;

  final bool? showWarningLabel;

  final String? faultTitle;

  final String? title;

  final bool? isRequired;

  final List<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators>?
      validators;

  final String? message;

  final String? messageType;

  final bool? isSRRequired;

  final bool? isMultiline;

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider?
      dropdownDataProvider;

  final String type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$isHTML = isHTML;
    _resultData['isHTML'] = l$isHTML;
    final l$visibilityProvider = visibilityProvider;
    _resultData['visibilityProvider'] = l$visibilityProvider?.toJson();
    final l$assetCounter = assetCounter;
    _resultData['assetCounter'] = l$assetCounter?.toJson();
    final l$mroDataProvider = mroDataProvider;
    _resultData['mroDataProvider'] = l$mroDataProvider?.toJson();
    final l$showWarningLabel = showWarningLabel;
    _resultData['showWarningLabel'] = l$showWarningLabel;
    final l$faultTitle = faultTitle;
    _resultData['faultTitle'] = l$faultTitle;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$isRequired = isRequired;
    _resultData['isRequired'] = l$isRequired;
    final l$validators = validators;
    _resultData['validators'] = l$validators?.map((e) => e.toJson()).toList();
    final l$message = message;
    _resultData['message'] = l$message;
    final l$messageType = messageType;
    _resultData['messageType'] = l$messageType;
    final l$isSRRequired = isSRRequired;
    _resultData['isSRRequired'] = l$isSRRequired;
    final l$isMultiline = isMultiline;
    _resultData['isMultiline'] = l$isMultiline;
    final l$dropdownDataProvider = dropdownDataProvider;
    _resultData['dropdownDataProvider'] = l$dropdownDataProvider?.toJson();
    final l$type = type;
    _resultData['type'] = l$type;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$url = url;
    final l$isHTML = isHTML;
    final l$visibilityProvider = visibilityProvider;
    final l$assetCounter = assetCounter;
    final l$mroDataProvider = mroDataProvider;
    final l$showWarningLabel = showWarningLabel;
    final l$faultTitle = faultTitle;
    final l$title = title;
    final l$isRequired = isRequired;
    final l$validators = validators;
    final l$message = message;
    final l$messageType = messageType;
    final l$isSRRequired = isSRRequired;
    final l$isMultiline = isMultiline;
    final l$dropdownDataProvider = dropdownDataProvider;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$url,
      l$isHTML,
      l$visibilityProvider,
      l$assetCounter,
      l$mroDataProvider,
      l$showWarningLabel,
      l$faultTitle,
      l$title,
      l$isRequired,
      l$validators == null ? null : Object.hashAll(l$validators.map((v) => v)),
      l$message,
      l$messageType,
      l$isSRRequired,
      l$isMultiline,
      l$dropdownDataProvider,
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTemplateToEdit$templateToEdit$template$sections$components) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$isHTML = isHTML;
    final lOther$isHTML = other.isHTML;
    if (l$isHTML != lOther$isHTML) {
      return false;
    }
    final l$visibilityProvider = visibilityProvider;
    final lOther$visibilityProvider = other.visibilityProvider;
    if (l$visibilityProvider != lOther$visibilityProvider) {
      return false;
    }
    final l$assetCounter = assetCounter;
    final lOther$assetCounter = other.assetCounter;
    if (l$assetCounter != lOther$assetCounter) {
      return false;
    }
    final l$mroDataProvider = mroDataProvider;
    final lOther$mroDataProvider = other.mroDataProvider;
    if (l$mroDataProvider != lOther$mroDataProvider) {
      return false;
    }
    final l$showWarningLabel = showWarningLabel;
    final lOther$showWarningLabel = other.showWarningLabel;
    if (l$showWarningLabel != lOther$showWarningLabel) {
      return false;
    }
    final l$faultTitle = faultTitle;
    final lOther$faultTitle = other.faultTitle;
    if (l$faultTitle != lOther$faultTitle) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$isRequired = isRequired;
    final lOther$isRequired = other.isRequired;
    if (l$isRequired != lOther$isRequired) {
      return false;
    }
    final l$validators = validators;
    final lOther$validators = other.validators;
    if (l$validators != null && lOther$validators != null) {
      if (l$validators.length != lOther$validators.length) {
        return false;
      }
      for (int i = 0; i < l$validators.length; i++) {
        final l$validators$entry = l$validators[i];
        final lOther$validators$entry = lOther$validators[i];
        if (l$validators$entry != lOther$validators$entry) {
          return false;
        }
      }
    } else if (l$validators != lOther$validators) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$messageType = messageType;
    final lOther$messageType = other.messageType;
    if (l$messageType != lOther$messageType) {
      return false;
    }
    final l$isSRRequired = isSRRequired;
    final lOther$isSRRequired = other.isSRRequired;
    if (l$isSRRequired != lOther$isSRRequired) {
      return false;
    }
    final l$isMultiline = isMultiline;
    final lOther$isMultiline = other.isMultiline;
    if (l$isMultiline != lOther$isMultiline) {
      return false;
    }
    final l$dropdownDataProvider = dropdownDataProvider;
    final lOther$dropdownDataProvider = other.dropdownDataProvider;
    if (l$dropdownDataProvider != lOther$dropdownDataProvider) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template$sections$components
    on Query$GetTemplateToEdit$templateToEdit$template$sections$components {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components>
      get copyWith =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components<
    TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components(
    Query$GetTemplateToEdit$templateToEdit$template$sections$components
        instance,
    TRes Function(
            Query$GetTemplateToEdit$templateToEdit$template$sections$components)
        then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components;

  TRes call({
    String? id,
    String? url,
    bool? isHTML,
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider?
        visibilityProvider,
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter?
        assetCounter,
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider?
        mroDataProvider,
    bool? showWarningLabel,
    String? faultTitle,
    String? title,
    bool? isRequired,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators>?
        validators,
    String? message,
    String? messageType,
    bool? isSRRequired,
    bool? isMultiline,
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider?
        dropdownDataProvider,
    String? type,
    String? $__typename,
  });
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider<
      TRes> get visibilityProvider;
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter<
      TRes> get assetCounter;
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider<
      TRes> get mroDataProvider;
  TRes validators(
      Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators>? Function(
              Iterable<
                  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators<
                      Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators>>?)
          _fn);
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider<
      TRes> get dropdownDataProvider;
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components<
            TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components
      _instance;

  final TRes Function(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? url = _undefined,
    Object? isHTML = _undefined,
    Object? visibilityProvider = _undefined,
    Object? assetCounter = _undefined,
    Object? mroDataProvider = _undefined,
    Object? showWarningLabel = _undefined,
    Object? faultTitle = _undefined,
    Object? title = _undefined,
    Object? isRequired = _undefined,
    Object? validators = _undefined,
    Object? message = _undefined,
    Object? messageType = _undefined,
    Object? isSRRequired = _undefined,
    Object? isMultiline = _undefined,
    Object? dropdownDataProvider = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTemplateToEdit$templateToEdit$template$sections$components(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        url: url == _undefined ? _instance.url : (url as String?),
        isHTML: isHTML == _undefined ? _instance.isHTML : (isHTML as bool?),
        visibilityProvider: visibilityProvider == _undefined
            ? _instance.visibilityProvider
            : (visibilityProvider
                as Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider?),
        assetCounter: assetCounter == _undefined
            ? _instance.assetCounter
            : (assetCounter
                as Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter?),
        mroDataProvider: mroDataProvider == _undefined
            ? _instance.mroDataProvider
            : (mroDataProvider
                as Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider?),
        showWarningLabel: showWarningLabel == _undefined
            ? _instance.showWarningLabel
            : (showWarningLabel as bool?),
        faultTitle: faultTitle == _undefined
            ? _instance.faultTitle
            : (faultTitle as String?),
        title: title == _undefined ? _instance.title : (title as String?),
        isRequired: isRequired == _undefined
            ? _instance.isRequired
            : (isRequired as bool?),
        validators: validators == _undefined
            ? _instance.validators
            : (validators as List<
                Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators>?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        messageType: messageType == _undefined
            ? _instance.messageType
            : (messageType as String?),
        isSRRequired: isSRRequired == _undefined
            ? _instance.isSRRequired
            : (isSRRequired as bool?),
        isMultiline: isMultiline == _undefined
            ? _instance.isMultiline
            : (isMultiline as bool?),
        dropdownDataProvider: dropdownDataProvider == _undefined
            ? _instance.dropdownDataProvider
            : (dropdownDataProvider
                as Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider?),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider<
      TRes> get visibilityProvider {
    final local$visibilityProvider = _instance.visibilityProvider;
    return local$visibilityProvider == null
        ? CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider
            .stub(_then(_instance))
        : CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider(
            local$visibilityProvider, (e) => call(visibilityProvider: e));
  }

  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter<
      TRes> get assetCounter {
    final local$assetCounter = _instance.assetCounter;
    return local$assetCounter == null
        ? CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter
            .stub(_then(_instance))
        : CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter(
            local$assetCounter, (e) => call(assetCounter: e));
  }

  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider<
      TRes> get mroDataProvider {
    final local$mroDataProvider = _instance.mroDataProvider;
    return local$mroDataProvider == null
        ? CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider
            .stub(_then(_instance))
        : CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider(
            local$mroDataProvider, (e) => call(mroDataProvider: e));
  }

  TRes validators(
          Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators>? Function(
                  Iterable<
                      CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators<
                          Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators>>?)
              _fn) =>
      call(
          validators: _fn(_instance.validators?.map((e) =>
              CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider<
      TRes> get dropdownDataProvider {
    final local$dropdownDataProvider = _instance.dropdownDataProvider;
    return local$dropdownDataProvider == null
        ? CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider
            .stub(_then(_instance))
        : CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider(
            local$dropdownDataProvider, (e) => call(dropdownDataProvider: e));
  }
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components<
            TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components(
      this._res);

  TRes _res;

  call({
    String? id,
    String? url,
    bool? isHTML,
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider?
        visibilityProvider,
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter?
        assetCounter,
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider?
        mroDataProvider,
    bool? showWarningLabel,
    String? faultTitle,
    String? title,
    bool? isRequired,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators>?
        validators,
    String? message,
    String? messageType,
    bool? isSRRequired,
    bool? isMultiline,
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider?
        dropdownDataProvider,
    String? type,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider<
          TRes>
      get visibilityProvider =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider
              .stub(_res);

  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter<
          TRes>
      get assetCounter =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter
              .stub(_res);

  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider<
          TRes>
      get mroDataProvider =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider
              .stub(_res);

  validators(_fn) => _res;

  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider<
          TRes>
      get dropdownDataProvider =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider
              .stub(_res);
}

class Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider {
  Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider({
    required this.id,
    required this.type,
    this.values,
    this.value,
    this.lengthGreaterThan,
    this.url,
    this.query,
    this.objectName,
    this.$__typename = 'CreateEditFormTemplateDataProvider',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$values = json['values'];
    final l$value = json['value'];
    final l$lengthGreaterThan = json['lengthGreaterThan'];
    final l$url = json['url'];
    final l$query = json['query'];
    final l$objectName = json['objectName'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider(
      id: (l$id as String),
      type: (l$type as String),
      values: (l$values as List<dynamic>?)
          ?.map((e) =>
              Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      value: (l$value as String?),
      lengthGreaterThan: (l$lengthGreaterThan as int?),
      url: (l$url as String?),
      query: (l$query as String?),
      objectName: (l$objectName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String type;

  final List<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values>?
      values;

  final String? value;

  final int? lengthGreaterThan;

  final String? url;

  final String? query;

  final String? objectName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$values = values;
    _resultData['values'] = l$values?.map((e) => e.toJson()).toList();
    final l$value = value;
    _resultData['value'] = l$value;
    final l$lengthGreaterThan = lengthGreaterThan;
    _resultData['lengthGreaterThan'] = l$lengthGreaterThan;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$query = query;
    _resultData['query'] = l$query;
    final l$objectName = objectName;
    _resultData['objectName'] = l$objectName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$values = values;
    final l$value = value;
    final l$lengthGreaterThan = lengthGreaterThan;
    final l$url = url;
    final l$query = query;
    final l$objectName = objectName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$values == null ? null : Object.hashAll(l$values.map((v) => v)),
      l$value,
      l$lengthGreaterThan,
      l$url,
      l$query,
      l$objectName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values != null && lOther$values != null) {
      if (l$values.length != lOther$values.length) {
        return false;
      }
      for (int i = 0; i < l$values.length; i++) {
        final l$values$entry = l$values[i];
        final lOther$values$entry = lOther$values[i];
        if (l$values$entry != lOther$values$entry) {
          return false;
        }
      }
    } else if (l$values != lOther$values) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$lengthGreaterThan = lengthGreaterThan;
    final lOther$lengthGreaterThan = other.lengthGreaterThan;
    if (l$lengthGreaterThan != lOther$lengthGreaterThan) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$objectName = objectName;
    final lOther$objectName = other.objectName;
    if (l$objectName != lOther$objectName) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider
    on Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider>
      get copyWith =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider<
    TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider(
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider
        instance,
    TRes Function(
            Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider)
        then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider;

  TRes call({
    String? id,
    String? type,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values>?
        values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
    String? $__typename,
  });
  TRes values(
      Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values>? Function(
              Iterable<
                  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values<
                      Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values>>?)
          _fn);
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider<
            TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider
      _instance;

  final TRes Function(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? values = _undefined,
    Object? value = _undefined,
    Object? lengthGreaterThan = _undefined,
    Object? url = _undefined,
    Object? query = _undefined,
    Object? objectName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        values: values == _undefined
            ? _instance.values
            : (values as List<
                Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values>?),
        value: value == _undefined ? _instance.value : (value as String?),
        lengthGreaterThan: lengthGreaterThan == _undefined
            ? _instance.lengthGreaterThan
            : (lengthGreaterThan as int?),
        url: url == _undefined ? _instance.url : (url as String?),
        query: query == _undefined ? _instance.query : (query as String?),
        objectName: objectName == _undefined
            ? _instance.objectName
            : (objectName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes values(
          Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values>? Function(
                  Iterable<
                      CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values<
                          Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values>>?)
              _fn) =>
      call(
          values: _fn(_instance.values?.map((e) =>
              CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider<
            TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider(
      this._res);

  TRes _res;

  call({
    String? id,
    String? type,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values>?
        values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
    String? $__typename,
  }) =>
      _res;

  values(_fn) => _res;
}

class Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values {
  Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values({
    required this.id,
    required this.value,
    this.$__typename = 'CreateEditFormTemplateDataProviderValue',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values(
      id: (l$id as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values
    on Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values>
      get copyWith =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values<
    TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values(
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values
        instance,
    TRes Function(
            Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values)
        then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values;

  TRes call({
    String? id,
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values<
            TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values
      _instance;

  final TRes Function(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values<
            TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$visibilityProvider$values(
      this._res);

  TRes _res;

  call({
    String? id,
    String? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter {
  Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter({
    this.name,
    this.$__typename = 'CreateEditFormTemplateAssetCounter',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter
    on Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter>
      get copyWith =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter<
    TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter(
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter
        instance,
    TRes Function(
            Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter)
        then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter<
            TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter
      _instance;

  final TRes Function(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter<
            TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$assetCounter(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider {
  Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider({
    required this.id,
    required this.type,
    this.values,
    this.value,
    this.lengthGreaterThan,
    this.url,
    this.query,
    this.objectName,
    this.$__typename = 'CreateEditFormTemplateDataProvider',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$values = json['values'];
    final l$value = json['value'];
    final l$lengthGreaterThan = json['lengthGreaterThan'];
    final l$url = json['url'];
    final l$query = json['query'];
    final l$objectName = json['objectName'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider(
      id: (l$id as String),
      type: (l$type as String),
      values: (l$values as List<dynamic>?)
          ?.map((e) =>
              Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      value: (l$value as String?),
      lengthGreaterThan: (l$lengthGreaterThan as int?),
      url: (l$url as String?),
      query: (l$query as String?),
      objectName: (l$objectName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String type;

  final List<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values>?
      values;

  final String? value;

  final int? lengthGreaterThan;

  final String? url;

  final String? query;

  final String? objectName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$values = values;
    _resultData['values'] = l$values?.map((e) => e.toJson()).toList();
    final l$value = value;
    _resultData['value'] = l$value;
    final l$lengthGreaterThan = lengthGreaterThan;
    _resultData['lengthGreaterThan'] = l$lengthGreaterThan;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$query = query;
    _resultData['query'] = l$query;
    final l$objectName = objectName;
    _resultData['objectName'] = l$objectName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$values = values;
    final l$value = value;
    final l$lengthGreaterThan = lengthGreaterThan;
    final l$url = url;
    final l$query = query;
    final l$objectName = objectName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$values == null ? null : Object.hashAll(l$values.map((v) => v)),
      l$value,
      l$lengthGreaterThan,
      l$url,
      l$query,
      l$objectName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values != null && lOther$values != null) {
      if (l$values.length != lOther$values.length) {
        return false;
      }
      for (int i = 0; i < l$values.length; i++) {
        final l$values$entry = l$values[i];
        final lOther$values$entry = lOther$values[i];
        if (l$values$entry != lOther$values$entry) {
          return false;
        }
      }
    } else if (l$values != lOther$values) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$lengthGreaterThan = lengthGreaterThan;
    final lOther$lengthGreaterThan = other.lengthGreaterThan;
    if (l$lengthGreaterThan != lOther$lengthGreaterThan) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$objectName = objectName;
    final lOther$objectName = other.objectName;
    if (l$objectName != lOther$objectName) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider
    on Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider>
      get copyWith =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider<
    TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider(
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider
        instance,
    TRes Function(
            Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider)
        then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider;

  TRes call({
    String? id,
    String? type,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values>?
        values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
    String? $__typename,
  });
  TRes values(
      Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values>? Function(
              Iterable<
                  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values<
                      Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values>>?)
          _fn);
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider<
            TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider
      _instance;

  final TRes Function(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? values = _undefined,
    Object? value = _undefined,
    Object? lengthGreaterThan = _undefined,
    Object? url = _undefined,
    Object? query = _undefined,
    Object? objectName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        values: values == _undefined
            ? _instance.values
            : (values as List<
                Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values>?),
        value: value == _undefined ? _instance.value : (value as String?),
        lengthGreaterThan: lengthGreaterThan == _undefined
            ? _instance.lengthGreaterThan
            : (lengthGreaterThan as int?),
        url: url == _undefined ? _instance.url : (url as String?),
        query: query == _undefined ? _instance.query : (query as String?),
        objectName: objectName == _undefined
            ? _instance.objectName
            : (objectName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes values(
          Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values>? Function(
                  Iterable<
                      CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values<
                          Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values>>?)
              _fn) =>
      call(
          values: _fn(_instance.values?.map((e) =>
              CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider<
            TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider(
      this._res);

  TRes _res;

  call({
    String? id,
    String? type,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values>?
        values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
    String? $__typename,
  }) =>
      _res;

  values(_fn) => _res;
}

class Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values {
  Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values({
    required this.id,
    required this.value,
    this.$__typename = 'CreateEditFormTemplateDataProviderValue',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values(
      id: (l$id as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values
    on Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values>
      get copyWith =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values<
    TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values(
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values
        instance,
    TRes Function(
            Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values)
        then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values;

  TRes call({
    String? id,
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values<
            TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values
      _instance;

  final TRes Function(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values<
            TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$mroDataProvider$values(
      this._res);

  TRes _res;

  call({
    String? id,
    String? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators {
  Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators({
    required this.type,
    this.message,
    this.minValue,
    this.maxValue,
    this.$__typename = 'CreateEditFormTemplateValidator',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$message = json['message'];
    final l$minValue = json['minValue'];
    final l$maxValue = json['maxValue'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators(
      type: (l$type as String),
      message: (l$message as String?),
      minValue: (l$minValue as int?),
      maxValue: (l$maxValue as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String? message;

  final int? minValue;

  final int? maxValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$minValue = minValue;
    _resultData['minValue'] = l$minValue;
    final l$maxValue = maxValue;
    _resultData['maxValue'] = l$maxValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$message = message;
    final l$minValue = minValue;
    final l$maxValue = maxValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$message,
      l$minValue,
      l$maxValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$minValue = minValue;
    final lOther$minValue = other.minValue;
    if (l$minValue != lOther$minValue) {
      return false;
    }
    final l$maxValue = maxValue;
    final lOther$maxValue = other.maxValue;
    if (l$maxValue != lOther$maxValue) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators
    on Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators>
      get copyWith =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators<
    TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators(
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators
        instance,
    TRes Function(
            Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators)
        then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators;

  TRes call({
    String? type,
    String? message,
    int? minValue,
    int? maxValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators<
            TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators
      _instance;

  final TRes Function(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? message = _undefined,
    Object? minValue = _undefined,
    Object? maxValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        message:
            message == _undefined ? _instance.message : (message as String?),
        minValue:
            minValue == _undefined ? _instance.minValue : (minValue as int?),
        maxValue:
            maxValue == _undefined ? _instance.maxValue : (maxValue as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators<
            TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$validators(
      this._res);

  TRes _res;

  call({
    String? type,
    String? message,
    int? minValue,
    int? maxValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider {
  Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider({
    required this.id,
    required this.type,
    this.values,
    this.value,
    this.lengthGreaterThan,
    this.url,
    this.query,
    this.objectName,
    this.$__typename = 'CreateEditFormTemplateDataProvider',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$values = json['values'];
    final l$value = json['value'];
    final l$lengthGreaterThan = json['lengthGreaterThan'];
    final l$url = json['url'];
    final l$query = json['query'];
    final l$objectName = json['objectName'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider(
      id: (l$id as String),
      type: (l$type as String),
      values: (l$values as List<dynamic>?)
          ?.map((e) =>
              Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      value: (l$value as String?),
      lengthGreaterThan: (l$lengthGreaterThan as int?),
      url: (l$url as String?),
      query: (l$query as String?),
      objectName: (l$objectName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String type;

  final List<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values>?
      values;

  final String? value;

  final int? lengthGreaterThan;

  final String? url;

  final String? query;

  final String? objectName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$values = values;
    _resultData['values'] = l$values?.map((e) => e.toJson()).toList();
    final l$value = value;
    _resultData['value'] = l$value;
    final l$lengthGreaterThan = lengthGreaterThan;
    _resultData['lengthGreaterThan'] = l$lengthGreaterThan;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$query = query;
    _resultData['query'] = l$query;
    final l$objectName = objectName;
    _resultData['objectName'] = l$objectName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$values = values;
    final l$value = value;
    final l$lengthGreaterThan = lengthGreaterThan;
    final l$url = url;
    final l$query = query;
    final l$objectName = objectName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$values == null ? null : Object.hashAll(l$values.map((v) => v)),
      l$value,
      l$lengthGreaterThan,
      l$url,
      l$query,
      l$objectName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values != null && lOther$values != null) {
      if (l$values.length != lOther$values.length) {
        return false;
      }
      for (int i = 0; i < l$values.length; i++) {
        final l$values$entry = l$values[i];
        final lOther$values$entry = lOther$values[i];
        if (l$values$entry != lOther$values$entry) {
          return false;
        }
      }
    } else if (l$values != lOther$values) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$lengthGreaterThan = lengthGreaterThan;
    final lOther$lengthGreaterThan = other.lengthGreaterThan;
    if (l$lengthGreaterThan != lOther$lengthGreaterThan) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$objectName = objectName;
    final lOther$objectName = other.objectName;
    if (l$objectName != lOther$objectName) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider
    on Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider>
      get copyWith =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider<
    TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider(
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider
        instance,
    TRes Function(
            Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider)
        then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider;

  TRes call({
    String? id,
    String? type,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values>?
        values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
    String? $__typename,
  });
  TRes values(
      Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values>? Function(
              Iterable<
                  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values<
                      Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values>>?)
          _fn);
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider<
            TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider
      _instance;

  final TRes Function(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? values = _undefined,
    Object? value = _undefined,
    Object? lengthGreaterThan = _undefined,
    Object? url = _undefined,
    Object? query = _undefined,
    Object? objectName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        values: values == _undefined
            ? _instance.values
            : (values as List<
                Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values>?),
        value: value == _undefined ? _instance.value : (value as String?),
        lengthGreaterThan: lengthGreaterThan == _undefined
            ? _instance.lengthGreaterThan
            : (lengthGreaterThan as int?),
        url: url == _undefined ? _instance.url : (url as String?),
        query: query == _undefined ? _instance.query : (query as String?),
        objectName: objectName == _undefined
            ? _instance.objectName
            : (objectName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes values(
          Iterable<Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values>? Function(
                  Iterable<
                      CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values<
                          Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values>>?)
              _fn) =>
      call(
          values: _fn(_instance.values?.map((e) =>
              CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider<
            TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider(
      this._res);

  TRes _res;

  call({
    String? id,
    String? type,
    List<Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values>?
        values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
    String? $__typename,
  }) =>
      _res;

  values(_fn) => _res;
}

class Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values {
  Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values({
    required this.id,
    required this.value,
    this.$__typename = 'CreateEditFormTemplateDataProviderValue',
  });

  factory Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values(
      id: (l$id as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values
    on Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values {
  CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values<
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values>
      get copyWith =>
          CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values<
    TRes> {
  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values(
    Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values
        instance,
    TRes Function(
            Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values)
        then,
  ) = _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values;

  factory CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values;

  TRes call({
    String? id,
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values<
            TRes> {
  _CopyWithImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values(
    this._instance,
    this._then,
  );

  final Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values
      _instance;

  final TRes Function(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values<
        TRes>
    implements
        CopyWith$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values<
            TRes> {
  _CopyWithStubImpl$Query$GetTemplateToEdit$templateToEdit$template$sections$components$dropdownDataProvider$values(
      this._res);

  TRes _res;

  call({
    String? id,
    String? value,
    String? $__typename,
  }) =>
      _res;
}
