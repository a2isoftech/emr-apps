import '../../fragments/create_tag_template_error_fragment.graphql.dart';
import '../../fragments/tag_template_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateTagTemplate {
  factory Variables$Mutation$CreateTagTemplate({
    required Input$CreateTagTemplateInput input,
  }) => Variables$Mutation$CreateTagTemplate._({r'input': input});

  Variables$Mutation$CreateTagTemplate._(this._$data);

  factory Variables$Mutation$CreateTagTemplate.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateTagTemplateInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateTagTemplate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateTagTemplateInput get input =>
      (_$data['input'] as Input$CreateTagTemplateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateTagTemplate<
    Variables$Mutation$CreateTagTemplate
  >
  get copyWith => CopyWith$Variables$Mutation$CreateTagTemplate(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateTagTemplate ||
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

abstract class CopyWith$Variables$Mutation$CreateTagTemplate<TRes> {
  factory CopyWith$Variables$Mutation$CreateTagTemplate(
    Variables$Mutation$CreateTagTemplate instance,
    TRes Function(Variables$Mutation$CreateTagTemplate) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateTagTemplate;

  factory CopyWith$Variables$Mutation$CreateTagTemplate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateTagTemplate;

  TRes call({Input$CreateTagTemplateInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateTagTemplate<TRes>
    implements CopyWith$Variables$Mutation$CreateTagTemplate<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateTagTemplate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateTagTemplate _instance;

  final TRes Function(Variables$Mutation$CreateTagTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateTagTemplate._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateTagTemplateInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateTagTemplate<TRes>
    implements CopyWith$Variables$Mutation$CreateTagTemplate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateTagTemplate(this._res);

  TRes _res;

  call({Input$CreateTagTemplateInput? input}) => _res;
}

class Mutation$CreateTagTemplate {
  Mutation$CreateTagTemplate({
    this.createTagTemplate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateTagTemplate.fromJson(Map<String, dynamic> json) {
    final l$createTagTemplate = json['createTagTemplate'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTagTemplate(
      createTagTemplate: l$createTagTemplate == null
          ? null
          : Mutation$CreateTagTemplate$createTagTemplate.fromJson(
              (l$createTagTemplate as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateTagTemplate$createTagTemplate? createTagTemplate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createTagTemplate = createTagTemplate;
    _resultData['createTagTemplate'] = l$createTagTemplate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createTagTemplate = createTagTemplate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createTagTemplate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTagTemplate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTagTemplate = createTagTemplate;
    final lOther$createTagTemplate = other.createTagTemplate;
    if (l$createTagTemplate != lOther$createTagTemplate) {
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

extension UtilityExtension$Mutation$CreateTagTemplate
    on Mutation$CreateTagTemplate {
  CopyWith$Mutation$CreateTagTemplate<Mutation$CreateTagTemplate>
  get copyWith => CopyWith$Mutation$CreateTagTemplate(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateTagTemplate<TRes> {
  factory CopyWith$Mutation$CreateTagTemplate(
    Mutation$CreateTagTemplate instance,
    TRes Function(Mutation$CreateTagTemplate) then,
  ) = _CopyWithImpl$Mutation$CreateTagTemplate;

  factory CopyWith$Mutation$CreateTagTemplate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTagTemplate;

  TRes call({
    Mutation$CreateTagTemplate$createTagTemplate? createTagTemplate,
    String? $__typename,
  });
  CopyWith$Mutation$CreateTagTemplate$createTagTemplate<TRes>
  get createTagTemplate;
}

class _CopyWithImpl$Mutation$CreateTagTemplate<TRes>
    implements CopyWith$Mutation$CreateTagTemplate<TRes> {
  _CopyWithImpl$Mutation$CreateTagTemplate(this._instance, this._then);

  final Mutation$CreateTagTemplate _instance;

  final TRes Function(Mutation$CreateTagTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createTagTemplate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTagTemplate(
      createTagTemplate: createTagTemplate == _undefined
          ? _instance.createTagTemplate
          : (createTagTemplate
                as Mutation$CreateTagTemplate$createTagTemplate?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateTagTemplate$createTagTemplate<TRes>
  get createTagTemplate {
    final local$createTagTemplate = _instance.createTagTemplate;
    return local$createTagTemplate == null
        ? CopyWith$Mutation$CreateTagTemplate$createTagTemplate.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateTagTemplate$createTagTemplate(
            local$createTagTemplate,
            (e) => call(createTagTemplate: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateTagTemplate<TRes>
    implements CopyWith$Mutation$CreateTagTemplate<TRes> {
  _CopyWithStubImpl$Mutation$CreateTagTemplate(this._res);

  TRes _res;

  call({
    Mutation$CreateTagTemplate$createTagTemplate? createTagTemplate,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateTagTemplate$createTagTemplate<TRes>
  get createTagTemplate =>
      CopyWith$Mutation$CreateTagTemplate$createTagTemplate.stub(_res);
}

const documentNodeMutationCreateTagTemplate = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateTagTemplate'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateTagTemplateInput'),
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
            name: NameNode(value: 'createTagTemplate'),
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
                  name: NameNode(value: 'CreateTagTemplateError'),
                  directives: [],
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'TagTemplate'),
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
    fragmentDefinitionCreateTagTemplateError,
    fragmentDefinitionTagTemplate,
  ],
);

class Mutation$CreateTagTemplate$createTagTemplate {
  Mutation$CreateTagTemplate$createTagTemplate({required this.$__typename});

  factory Mutation$CreateTagTemplate$createTagTemplate.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "TagTemplate":
        return Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate.fromJson(
          json,
        );

      case "CreateTagTemplateError":
        return Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$CreateTagTemplate$createTagTemplate(
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTagTemplate$createTagTemplate ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$CreateTagTemplate$createTagTemplate
    on Mutation$CreateTagTemplate$createTagTemplate {
  CopyWith$Mutation$CreateTagTemplate$createTagTemplate<
    Mutation$CreateTagTemplate$createTagTemplate
  >
  get copyWith =>
      CopyWith$Mutation$CreateTagTemplate$createTagTemplate(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate,
    )
    tagTemplate,
    required _T Function(
      Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError,
    )
    createTagTemplateError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TagTemplate":
        return tagTemplate(
          this as Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate,
        );

      case "CreateTagTemplateError":
        return createTagTemplateError(
          this
              as Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate)?
    tagTemplate,
    _T Function(
      Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError,
    )?
    createTagTemplateError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TagTemplate":
        if (tagTemplate != null) {
          return tagTemplate(
            this as Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate,
          );
        } else {
          return orElse();
        }

      case "CreateTagTemplateError":
        if (createTagTemplateError != null) {
          return createTagTemplateError(
            this
                as Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$CreateTagTemplate$createTagTemplate<TRes> {
  factory CopyWith$Mutation$CreateTagTemplate$createTagTemplate(
    Mutation$CreateTagTemplate$createTagTemplate instance,
    TRes Function(Mutation$CreateTagTemplate$createTagTemplate) then,
  ) = _CopyWithImpl$Mutation$CreateTagTemplate$createTagTemplate;

  factory CopyWith$Mutation$CreateTagTemplate$createTagTemplate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTagTemplate$createTagTemplate;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$CreateTagTemplate$createTagTemplate<TRes>
    implements CopyWith$Mutation$CreateTagTemplate$createTagTemplate<TRes> {
  _CopyWithImpl$Mutation$CreateTagTemplate$createTagTemplate(
    this._instance,
    this._then,
  );

  final Mutation$CreateTagTemplate$createTagTemplate _instance;

  final TRes Function(Mutation$CreateTagTemplate$createTagTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$CreateTagTemplate$createTagTemplate(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTagTemplate$createTagTemplate<TRes>
    implements CopyWith$Mutation$CreateTagTemplate$createTagTemplate<TRes> {
  _CopyWithStubImpl$Mutation$CreateTagTemplate$createTagTemplate(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate
    implements
        Fragment$TagTemplate,
        Mutation$CreateTagTemplate$createTagTemplate {
  Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate({
    required this.id,
    required this.category,
    required this.categoryId,
    required this.reason,
    required this.reasonId,
    required this.functional,
    this.$__typename = 'TagTemplate',
  });

  factory Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$category = json['category'];
    final l$categoryId = json['categoryId'];
    final l$reason = json['reason'];
    final l$reasonId = json['reasonId'];
    final l$functional = json['functional'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate(
      id: (l$id as String),
      category: (l$category as String),
      categoryId: (l$categoryId as String),
      reason: (l$reason as String),
      reasonId: (l$reasonId as String),
      functional: (l$functional as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String category;

  final String categoryId;

  final String reason;

  final String reasonId;

  final bool functional;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$categoryId = categoryId;
    _resultData['categoryId'] = l$categoryId;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$reasonId = reasonId;
    _resultData['reasonId'] = l$reasonId;
    final l$functional = functional;
    _resultData['functional'] = l$functional;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$category = category;
    final l$categoryId = categoryId;
    final l$reason = reason;
    final l$reasonId = reasonId;
    final l$functional = functional;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$category,
      l$categoryId,
      l$reason,
      l$reasonId,
      l$functional,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$categoryId = categoryId;
    final lOther$categoryId = other.categoryId;
    if (l$categoryId != lOther$categoryId) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$reasonId = reasonId;
    final lOther$reasonId = other.reasonId;
    if (l$reasonId != lOther$reasonId) {
      return false;
    }
    final l$functional = functional;
    final lOther$functional = other.functional;
    if (l$functional != lOther$functional) {
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

extension UtilityExtension$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate
    on Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate {
  CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate<
    Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate
  >
  get copyWith =>
      CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate<
  TRes
> {
  factory CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate(
    Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate instance,
    TRes Function(Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate)
    then,
  ) = _CopyWithImpl$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate;

  factory CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate;

  TRes call({
    String? id,
    String? category,
    String? categoryId,
    String? reason,
    String? reasonId,
    bool? functional,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate<
  TRes
>
    implements
        CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate(
    this._instance,
    this._then,
  );

  final Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate _instance;

  final TRes Function(Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? category = _undefined,
    Object? categoryId = _undefined,
    Object? reason = _undefined,
    Object? reasonId = _undefined,
    Object? functional = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      category: category == _undefined || category == null
          ? _instance.category
          : (category as String),
      categoryId: categoryId == _undefined || categoryId == null
          ? _instance.categoryId
          : (categoryId as String),
      reason: reason == _undefined || reason == null
          ? _instance.reason
          : (reason as String),
      reasonId: reasonId == _undefined || reasonId == null
          ? _instance.reasonId
          : (reasonId as String),
      functional: functional == _undefined || functional == null
          ? _instance.functional
          : (functional as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate<
  TRes
>
    implements
        CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTagTemplate$createTagTemplate$$TagTemplate(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? category,
    String? categoryId,
    String? reason,
    String? reasonId,
    bool? functional,
    String? $__typename,
  }) => _res;
}

class Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError
    implements
        Fragment$CreateTagTemplateError,
        Mutation$CreateTagTemplate$createTagTemplate {
  Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError({
    required this.message,
    this.$__typename = 'CreateTagTemplateError',
  });

  factory Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError
    on Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError {
  CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError<
    Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError
  >
  get copyWith =>
      CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError<
  TRes
> {
  factory CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError(
    Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError
    instance,
    TRes Function(
      Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError;

  factory CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError<
  TRes
>
    implements
        CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError(
    this._instance,
    this._then,
  );

  final Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError
  _instance;

  final TRes Function(
    Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError<
  TRes
>
    implements
        CopyWith$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTagTemplate$createTagTemplate$$CreateTagTemplateError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
