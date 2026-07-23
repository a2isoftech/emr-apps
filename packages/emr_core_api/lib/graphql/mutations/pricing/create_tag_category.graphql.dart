import '../../fragments/create_tag_category_error_fragment.graphql.dart';
import '../../fragments/tag_category_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateTagCategory {
  factory Variables$Mutation$CreateTagCategory({
    required Input$CreateTagCategoryInput input,
  }) => Variables$Mutation$CreateTagCategory._({r'input': input});

  Variables$Mutation$CreateTagCategory._(this._$data);

  factory Variables$Mutation$CreateTagCategory.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateTagCategoryInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateTagCategory._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateTagCategoryInput get input =>
      (_$data['input'] as Input$CreateTagCategoryInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateTagCategory<
    Variables$Mutation$CreateTagCategory
  >
  get copyWith => CopyWith$Variables$Mutation$CreateTagCategory(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateTagCategory ||
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

abstract class CopyWith$Variables$Mutation$CreateTagCategory<TRes> {
  factory CopyWith$Variables$Mutation$CreateTagCategory(
    Variables$Mutation$CreateTagCategory instance,
    TRes Function(Variables$Mutation$CreateTagCategory) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateTagCategory;

  factory CopyWith$Variables$Mutation$CreateTagCategory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateTagCategory;

  TRes call({Input$CreateTagCategoryInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateTagCategory<TRes>
    implements CopyWith$Variables$Mutation$CreateTagCategory<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateTagCategory(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateTagCategory _instance;

  final TRes Function(Variables$Mutation$CreateTagCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateTagCategory._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateTagCategoryInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateTagCategory<TRes>
    implements CopyWith$Variables$Mutation$CreateTagCategory<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateTagCategory(this._res);

  TRes _res;

  call({Input$CreateTagCategoryInput? input}) => _res;
}

class Mutation$CreateTagCategory {
  Mutation$CreateTagCategory({
    this.createTagCategory,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateTagCategory.fromJson(Map<String, dynamic> json) {
    final l$createTagCategory = json['createTagCategory'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTagCategory(
      createTagCategory: l$createTagCategory == null
          ? null
          : Mutation$CreateTagCategory$createTagCategory.fromJson(
              (l$createTagCategory as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateTagCategory$createTagCategory? createTagCategory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createTagCategory = createTagCategory;
    _resultData['createTagCategory'] = l$createTagCategory?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createTagCategory = createTagCategory;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createTagCategory, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTagCategory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTagCategory = createTagCategory;
    final lOther$createTagCategory = other.createTagCategory;
    if (l$createTagCategory != lOther$createTagCategory) {
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

extension UtilityExtension$Mutation$CreateTagCategory
    on Mutation$CreateTagCategory {
  CopyWith$Mutation$CreateTagCategory<Mutation$CreateTagCategory>
  get copyWith => CopyWith$Mutation$CreateTagCategory(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateTagCategory<TRes> {
  factory CopyWith$Mutation$CreateTagCategory(
    Mutation$CreateTagCategory instance,
    TRes Function(Mutation$CreateTagCategory) then,
  ) = _CopyWithImpl$Mutation$CreateTagCategory;

  factory CopyWith$Mutation$CreateTagCategory.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTagCategory;

  TRes call({
    Mutation$CreateTagCategory$createTagCategory? createTagCategory,
    String? $__typename,
  });
  CopyWith$Mutation$CreateTagCategory$createTagCategory<TRes>
  get createTagCategory;
}

class _CopyWithImpl$Mutation$CreateTagCategory<TRes>
    implements CopyWith$Mutation$CreateTagCategory<TRes> {
  _CopyWithImpl$Mutation$CreateTagCategory(this._instance, this._then);

  final Mutation$CreateTagCategory _instance;

  final TRes Function(Mutation$CreateTagCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createTagCategory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTagCategory(
      createTagCategory: createTagCategory == _undefined
          ? _instance.createTagCategory
          : (createTagCategory
                as Mutation$CreateTagCategory$createTagCategory?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateTagCategory$createTagCategory<TRes>
  get createTagCategory {
    final local$createTagCategory = _instance.createTagCategory;
    return local$createTagCategory == null
        ? CopyWith$Mutation$CreateTagCategory$createTagCategory.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateTagCategory$createTagCategory(
            local$createTagCategory,
            (e) => call(createTagCategory: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateTagCategory<TRes>
    implements CopyWith$Mutation$CreateTagCategory<TRes> {
  _CopyWithStubImpl$Mutation$CreateTagCategory(this._res);

  TRes _res;

  call({
    Mutation$CreateTagCategory$createTagCategory? createTagCategory,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateTagCategory$createTagCategory<TRes>
  get createTagCategory =>
      CopyWith$Mutation$CreateTagCategory$createTagCategory.stub(_res);
}

const documentNodeMutationCreateTagCategory = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateTagCategory'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateTagCategoryInput'),
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
            name: NameNode(value: 'createTagCategory'),
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
                  name: NameNode(value: 'CreateTagCategoryError'),
                  directives: [],
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'TagCategory'),
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
    fragmentDefinitionCreateTagCategoryError,
    fragmentDefinitionTagCategory,
  ],
);

class Mutation$CreateTagCategory$createTagCategory {
  Mutation$CreateTagCategory$createTagCategory({required this.$__typename});

  factory Mutation$CreateTagCategory$createTagCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "TagCategory":
        return Mutation$CreateTagCategory$createTagCategory$$TagCategory.fromJson(
          json,
        );

      case "CreateTagCategoryError":
        return Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$CreateTagCategory$createTagCategory(
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
    if (other is! Mutation$CreateTagCategory$createTagCategory ||
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

extension UtilityExtension$Mutation$CreateTagCategory$createTagCategory
    on Mutation$CreateTagCategory$createTagCategory {
  CopyWith$Mutation$CreateTagCategory$createTagCategory<
    Mutation$CreateTagCategory$createTagCategory
  >
  get copyWith =>
      CopyWith$Mutation$CreateTagCategory$createTagCategory(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$CreateTagCategory$createTagCategory$$TagCategory,
    )
    tagCategory,
    required _T Function(
      Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError,
    )
    createTagCategoryError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TagCategory":
        return tagCategory(
          this as Mutation$CreateTagCategory$createTagCategory$$TagCategory,
        );

      case "CreateTagCategoryError":
        return createTagCategoryError(
          this
              as Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$CreateTagCategory$createTagCategory$$TagCategory)?
    tagCategory,
    _T Function(
      Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError,
    )?
    createTagCategoryError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TagCategory":
        if (tagCategory != null) {
          return tagCategory(
            this as Mutation$CreateTagCategory$createTagCategory$$TagCategory,
          );
        } else {
          return orElse();
        }

      case "CreateTagCategoryError":
        if (createTagCategoryError != null) {
          return createTagCategoryError(
            this
                as Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$CreateTagCategory$createTagCategory<TRes> {
  factory CopyWith$Mutation$CreateTagCategory$createTagCategory(
    Mutation$CreateTagCategory$createTagCategory instance,
    TRes Function(Mutation$CreateTagCategory$createTagCategory) then,
  ) = _CopyWithImpl$Mutation$CreateTagCategory$createTagCategory;

  factory CopyWith$Mutation$CreateTagCategory$createTagCategory.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTagCategory$createTagCategory;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$CreateTagCategory$createTagCategory<TRes>
    implements CopyWith$Mutation$CreateTagCategory$createTagCategory<TRes> {
  _CopyWithImpl$Mutation$CreateTagCategory$createTagCategory(
    this._instance,
    this._then,
  );

  final Mutation$CreateTagCategory$createTagCategory _instance;

  final TRes Function(Mutation$CreateTagCategory$createTagCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$CreateTagCategory$createTagCategory(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTagCategory$createTagCategory<TRes>
    implements CopyWith$Mutation$CreateTagCategory$createTagCategory<TRes> {
  _CopyWithStubImpl$Mutation$CreateTagCategory$createTagCategory(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$CreateTagCategory$createTagCategory$$TagCategory
    implements
        Fragment$TagCategory,
        Mutation$CreateTagCategory$createTagCategory {
  Mutation$CreateTagCategory$createTagCategory$$TagCategory({
    required this.id,
    required this.name,
    required this.functional,
    this.$__typename = 'TagCategory',
  });

  factory Mutation$CreateTagCategory$createTagCategory$$TagCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$functional = json['functional'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTagCategory$createTagCategory$$TagCategory(
      id: (l$id as String),
      name: (l$name as String),
      functional: (l$functional as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool functional;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$functional = functional;
    _resultData['functional'] = l$functional;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$functional = functional;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$functional, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTagCategory$createTagCategory$$TagCategory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$CreateTagCategory$createTagCategory$$TagCategory
    on Mutation$CreateTagCategory$createTagCategory$$TagCategory {
  CopyWith$Mutation$CreateTagCategory$createTagCategory$$TagCategory<
    Mutation$CreateTagCategory$createTagCategory$$TagCategory
  >
  get copyWith =>
      CopyWith$Mutation$CreateTagCategory$createTagCategory$$TagCategory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTagCategory$createTagCategory$$TagCategory<
  TRes
> {
  factory CopyWith$Mutation$CreateTagCategory$createTagCategory$$TagCategory(
    Mutation$CreateTagCategory$createTagCategory$$TagCategory instance,
    TRes Function(Mutation$CreateTagCategory$createTagCategory$$TagCategory)
    then,
  ) = _CopyWithImpl$Mutation$CreateTagCategory$createTagCategory$$TagCategory;

  factory CopyWith$Mutation$CreateTagCategory$createTagCategory$$TagCategory.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTagCategory$createTagCategory$$TagCategory;

  TRes call({String? id, String? name, bool? functional, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateTagCategory$createTagCategory$$TagCategory<
  TRes
>
    implements
        CopyWith$Mutation$CreateTagCategory$createTagCategory$$TagCategory<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTagCategory$createTagCategory$$TagCategory(
    this._instance,
    this._then,
  );

  final Mutation$CreateTagCategory$createTagCategory$$TagCategory _instance;

  final TRes Function(Mutation$CreateTagCategory$createTagCategory$$TagCategory)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? functional = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTagCategory$createTagCategory$$TagCategory(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      functional: functional == _undefined || functional == null
          ? _instance.functional
          : (functional as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTagCategory$createTagCategory$$TagCategory<
  TRes
>
    implements
        CopyWith$Mutation$CreateTagCategory$createTagCategory$$TagCategory<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTagCategory$createTagCategory$$TagCategory(
    this._res,
  );

  TRes _res;

  call({String? id, String? name, bool? functional, String? $__typename}) =>
      _res;
}

class Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError
    implements
        Fragment$CreateTagCategoryError,
        Mutation$CreateTagCategory$createTagCategory {
  Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError({
    required this.message,
    this.$__typename = 'CreateTagCategoryError',
  });

  factory Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError(
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
            is! Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError ||
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

extension UtilityExtension$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError
    on Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError {
  CopyWith$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError<
    Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError
  >
  get copyWith =>
      CopyWith$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError<
  TRes
> {
  factory CopyWith$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError(
    Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError
    instance,
    TRes Function(
      Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError;

  factory CopyWith$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError<
  TRes
>
    implements
        CopyWith$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError(
    this._instance,
    this._then,
  );

  final Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError
  _instance;

  final TRes Function(
    Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError<
  TRes
>
    implements
        CopyWith$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTagCategory$createTagCategory$$CreateTagCategoryError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
