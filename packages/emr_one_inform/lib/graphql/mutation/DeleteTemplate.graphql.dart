import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteTemplate {
  factory Variables$Mutation$DeleteTemplate(
          {required Input$DeleteTemplateRequestInput deleteTemplateRequest}) =>
      Variables$Mutation$DeleteTemplate._({
        r'deleteTemplateRequest': deleteTemplateRequest,
      });

  Variables$Mutation$DeleteTemplate._(this._$data);

  factory Variables$Mutation$DeleteTemplate.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deleteTemplateRequest = data['deleteTemplateRequest'];
    result$data['deleteTemplateRequest'] =
        Input$DeleteTemplateRequestInput.fromJson(
            (l$deleteTemplateRequest as Map<String, dynamic>));
    return Variables$Mutation$DeleteTemplate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteTemplateRequestInput get deleteTemplateRequest =>
      (_$data['deleteTemplateRequest'] as Input$DeleteTemplateRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deleteTemplateRequest = deleteTemplateRequest;
    result$data['deleteTemplateRequest'] = l$deleteTemplateRequest.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteTemplate<Variables$Mutation$DeleteTemplate>
      get copyWith => CopyWith$Variables$Mutation$DeleteTemplate(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteTemplate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteTemplateRequest = deleteTemplateRequest;
    final lOther$deleteTemplateRequest = other.deleteTemplateRequest;
    if (l$deleteTemplateRequest != lOther$deleteTemplateRequest) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deleteTemplateRequest = deleteTemplateRequest;
    return Object.hashAll([l$deleteTemplateRequest]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteTemplate<TRes> {
  factory CopyWith$Variables$Mutation$DeleteTemplate(
    Variables$Mutation$DeleteTemplate instance,
    TRes Function(Variables$Mutation$DeleteTemplate) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteTemplate;

  factory CopyWith$Variables$Mutation$DeleteTemplate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteTemplate;

  TRes call({Input$DeleteTemplateRequestInput? deleteTemplateRequest});
}

class _CopyWithImpl$Variables$Mutation$DeleteTemplate<TRes>
    implements CopyWith$Variables$Mutation$DeleteTemplate<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteTemplate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteTemplate _instance;

  final TRes Function(Variables$Mutation$DeleteTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteTemplateRequest = _undefined}) =>
      _then(Variables$Mutation$DeleteTemplate._({
        ..._instance._$data,
        if (deleteTemplateRequest != _undefined &&
            deleteTemplateRequest != null)
          'deleteTemplateRequest':
              (deleteTemplateRequest as Input$DeleteTemplateRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteTemplate<TRes>
    implements CopyWith$Variables$Mutation$DeleteTemplate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteTemplate(this._res);

  TRes _res;

  call({Input$DeleteTemplateRequestInput? deleteTemplateRequest}) => _res;
}

class Mutation$DeleteTemplate {
  Mutation$DeleteTemplate({
    required this.deleteTemplate,
    this.$__typename = 'FormsMutations',
  });

  factory Mutation$DeleteTemplate.fromJson(Map<String, dynamic> json) {
    final l$deleteTemplate = json['deleteTemplate'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteTemplate(
      deleteTemplate: Mutation$DeleteTemplate$deleteTemplate.fromJson(
          (l$deleteTemplate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteTemplate$deleteTemplate deleteTemplate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteTemplate = deleteTemplate;
    _resultData['deleteTemplate'] = l$deleteTemplate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteTemplate = deleteTemplate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteTemplate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteTemplate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteTemplate = deleteTemplate;
    final lOther$deleteTemplate = other.deleteTemplate;
    if (l$deleteTemplate != lOther$deleteTemplate) {
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

extension UtilityExtension$Mutation$DeleteTemplate on Mutation$DeleteTemplate {
  CopyWith$Mutation$DeleteTemplate<Mutation$DeleteTemplate> get copyWith =>
      CopyWith$Mutation$DeleteTemplate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteTemplate<TRes> {
  factory CopyWith$Mutation$DeleteTemplate(
    Mutation$DeleteTemplate instance,
    TRes Function(Mutation$DeleteTemplate) then,
  ) = _CopyWithImpl$Mutation$DeleteTemplate;

  factory CopyWith$Mutation$DeleteTemplate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteTemplate;

  TRes call({
    Mutation$DeleteTemplate$deleteTemplate? deleteTemplate,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteTemplate$deleteTemplate<TRes> get deleteTemplate;
}

class _CopyWithImpl$Mutation$DeleteTemplate<TRes>
    implements CopyWith$Mutation$DeleteTemplate<TRes> {
  _CopyWithImpl$Mutation$DeleteTemplate(
    this._instance,
    this._then,
  );

  final Mutation$DeleteTemplate _instance;

  final TRes Function(Mutation$DeleteTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteTemplate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteTemplate(
        deleteTemplate: deleteTemplate == _undefined || deleteTemplate == null
            ? _instance.deleteTemplate
            : (deleteTemplate as Mutation$DeleteTemplate$deleteTemplate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteTemplate$deleteTemplate<TRes> get deleteTemplate {
    final local$deleteTemplate = _instance.deleteTemplate;
    return CopyWith$Mutation$DeleteTemplate$deleteTemplate(
        local$deleteTemplate, (e) => call(deleteTemplate: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteTemplate<TRes>
    implements CopyWith$Mutation$DeleteTemplate<TRes> {
  _CopyWithStubImpl$Mutation$DeleteTemplate(this._res);

  TRes _res;

  call({
    Mutation$DeleteTemplate$deleteTemplate? deleteTemplate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteTemplate$deleteTemplate<TRes> get deleteTemplate =>
      CopyWith$Mutation$DeleteTemplate$deleteTemplate.stub(_res);
}

const documentNodeMutationDeleteTemplate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteTemplate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteTemplateRequest')),
        type: NamedTypeNode(
          name: NameNode(value: 'DeleteTemplateRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteTemplate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'deleteTemplateRequest'),
            value: VariableNode(name: NameNode(value: 'deleteTemplateRequest')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errorDetails'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errorLevel'),
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

class Mutation$DeleteTemplate$deleteTemplate {
  Mutation$DeleteTemplate$deleteTemplate({
    this.message,
    this.errorDetails,
    required this.errorLevel,
    this.errorCode,
    this.$__typename = 'APIResult',
  });

  factory Mutation$DeleteTemplate$deleteTemplate.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$errorDetails = json['errorDetails'];
    final l$errorLevel = json['errorLevel'];
    final l$errorCode = json['errorCode'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteTemplate$deleteTemplate(
      message: (l$message as String?),
      errorDetails: (l$errorDetails as String?),
      errorLevel: fromJson$Enum$APIResultType((l$errorLevel as String)),
      errorCode: l$errorCode == null
          ? null
          : fromJson$Enum$Codes((l$errorCode as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String? errorDetails;

  final Enum$APIResultType errorLevel;

  final Enum$Codes? errorCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$errorDetails = errorDetails;
    _resultData['errorDetails'] = l$errorDetails;
    final l$errorLevel = errorLevel;
    _resultData['errorLevel'] = toJson$Enum$APIResultType(l$errorLevel);
    final l$errorCode = errorCode;
    _resultData['errorCode'] =
        l$errorCode == null ? null : toJson$Enum$Codes(l$errorCode);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$errorDetails = errorDetails;
    final l$errorLevel = errorLevel;
    final l$errorCode = errorCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$errorDetails,
      l$errorLevel,
      l$errorCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteTemplate$deleteTemplate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$errorDetails = errorDetails;
    final lOther$errorDetails = other.errorDetails;
    if (l$errorDetails != lOther$errorDetails) {
      return false;
    }
    final l$errorLevel = errorLevel;
    final lOther$errorLevel = other.errorLevel;
    if (l$errorLevel != lOther$errorLevel) {
      return false;
    }
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) {
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

extension UtilityExtension$Mutation$DeleteTemplate$deleteTemplate
    on Mutation$DeleteTemplate$deleteTemplate {
  CopyWith$Mutation$DeleteTemplate$deleteTemplate<
          Mutation$DeleteTemplate$deleteTemplate>
      get copyWith => CopyWith$Mutation$DeleteTemplate$deleteTemplate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteTemplate$deleteTemplate<TRes> {
  factory CopyWith$Mutation$DeleteTemplate$deleteTemplate(
    Mutation$DeleteTemplate$deleteTemplate instance,
    TRes Function(Mutation$DeleteTemplate$deleteTemplate) then,
  ) = _CopyWithImpl$Mutation$DeleteTemplate$deleteTemplate;

  factory CopyWith$Mutation$DeleteTemplate$deleteTemplate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteTemplate$deleteTemplate;

  TRes call({
    String? message,
    String? errorDetails,
    Enum$APIResultType? errorLevel,
    Enum$Codes? errorCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteTemplate$deleteTemplate<TRes>
    implements CopyWith$Mutation$DeleteTemplate$deleteTemplate<TRes> {
  _CopyWithImpl$Mutation$DeleteTemplate$deleteTemplate(
    this._instance,
    this._then,
  );

  final Mutation$DeleteTemplate$deleteTemplate _instance;

  final TRes Function(Mutation$DeleteTemplate$deleteTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? errorDetails = _undefined,
    Object? errorLevel = _undefined,
    Object? errorCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteTemplate$deleteTemplate(
        message:
            message == _undefined ? _instance.message : (message as String?),
        errorDetails: errorDetails == _undefined
            ? _instance.errorDetails
            : (errorDetails as String?),
        errorLevel: errorLevel == _undefined || errorLevel == null
            ? _instance.errorLevel
            : (errorLevel as Enum$APIResultType),
        errorCode: errorCode == _undefined
            ? _instance.errorCode
            : (errorCode as Enum$Codes?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteTemplate$deleteTemplate<TRes>
    implements CopyWith$Mutation$DeleteTemplate$deleteTemplate<TRes> {
  _CopyWithStubImpl$Mutation$DeleteTemplate$deleteTemplate(this._res);

  TRes _res;

  call({
    String? message,
    String? errorDetails,
    Enum$APIResultType? errorLevel,
    Enum$Codes? errorCode,
    String? $__typename,
  }) =>
      _res;
}
