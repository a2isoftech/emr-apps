import '../../fragments/create_collected_tag_fragment.graphql.dart';
import '../../fragments/create_tag_error_fragment.graphql.dart';
import '../../fragments/tag_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateTags {
  factory Variables$Mutation$CreateTags({
    required List<Input$CreateTagInput> inputs,
  }) => Variables$Mutation$CreateTags._({r'inputs': inputs});

  Variables$Mutation$CreateTags._(this._$data);

  factory Variables$Mutation$CreateTags.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$inputs = data['inputs'];
    result$data['inputs'] = (l$inputs as List<dynamic>)
        .map((e) => Input$CreateTagInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Variables$Mutation$CreateTags._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CreateTagInput> get inputs =>
      (_$data['inputs'] as List<Input$CreateTagInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$inputs = inputs;
    result$data['inputs'] = l$inputs.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateTags<Variables$Mutation$CreateTags>
  get copyWith => CopyWith$Variables$Mutation$CreateTags(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateTags ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inputs = inputs;
    final lOther$inputs = other.inputs;
    if (l$inputs.length != lOther$inputs.length) {
      return false;
    }
    for (int i = 0; i < l$inputs.length; i++) {
      final l$inputs$entry = l$inputs[i];
      final lOther$inputs$entry = lOther$inputs[i];
      if (l$inputs$entry != lOther$inputs$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$inputs = inputs;
    return Object.hashAll([Object.hashAll(l$inputs.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateTags<TRes> {
  factory CopyWith$Variables$Mutation$CreateTags(
    Variables$Mutation$CreateTags instance,
    TRes Function(Variables$Mutation$CreateTags) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateTags;

  factory CopyWith$Variables$Mutation$CreateTags.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateTags;

  TRes call({List<Input$CreateTagInput>? inputs});
}

class _CopyWithImpl$Variables$Mutation$CreateTags<TRes>
    implements CopyWith$Variables$Mutation$CreateTags<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateTags(this._instance, this._then);

  final Variables$Mutation$CreateTags _instance;

  final TRes Function(Variables$Mutation$CreateTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? inputs = _undefined}) => _then(
    Variables$Mutation$CreateTags._({
      ..._instance._$data,
      if (inputs != _undefined && inputs != null)
        'inputs': (inputs as List<Input$CreateTagInput>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateTags<TRes>
    implements CopyWith$Variables$Mutation$CreateTags<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateTags(this._res);

  TRes _res;

  call({List<Input$CreateTagInput>? inputs}) => _res;
}

class Mutation$CreateTags {
  Mutation$CreateTags({this.createTags, this.$__typename = 'Mutation'});

  factory Mutation$CreateTags.fromJson(Map<String, dynamic> json) {
    final l$createTags = json['createTags'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTags(
      createTags: (l$createTags as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$CreateTags$createTags.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$CreateTags$createTags?>? createTags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createTags = createTags;
    _resultData['createTags'] = l$createTags?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createTags = createTags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createTags == null ? null : Object.hashAll(l$createTags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTags || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTags = createTags;
    final lOther$createTags = other.createTags;
    if (l$createTags != null && lOther$createTags != null) {
      if (l$createTags.length != lOther$createTags.length) {
        return false;
      }
      for (int i = 0; i < l$createTags.length; i++) {
        final l$createTags$entry = l$createTags[i];
        final lOther$createTags$entry = lOther$createTags[i];
        if (l$createTags$entry != lOther$createTags$entry) {
          return false;
        }
      }
    } else if (l$createTags != lOther$createTags) {
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

extension UtilityExtension$Mutation$CreateTags on Mutation$CreateTags {
  CopyWith$Mutation$CreateTags<Mutation$CreateTags> get copyWith =>
      CopyWith$Mutation$CreateTags(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateTags<TRes> {
  factory CopyWith$Mutation$CreateTags(
    Mutation$CreateTags instance,
    TRes Function(Mutation$CreateTags) then,
  ) = _CopyWithImpl$Mutation$CreateTags;

  factory CopyWith$Mutation$CreateTags.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTags;

  TRes call({
    List<Mutation$CreateTags$createTags?>? createTags,
    String? $__typename,
  });
  TRes createTags(
    Iterable<Mutation$CreateTags$createTags?>? Function(
      Iterable<
        CopyWith$Mutation$CreateTags$createTags<Mutation$CreateTags$createTags>?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CreateTags<TRes>
    implements CopyWith$Mutation$CreateTags<TRes> {
  _CopyWithImpl$Mutation$CreateTags(this._instance, this._then);

  final Mutation$CreateTags _instance;

  final TRes Function(Mutation$CreateTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createTags = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTags(
      createTags: createTags == _undefined
          ? _instance.createTags
          : (createTags as List<Mutation$CreateTags$createTags?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes createTags(
    Iterable<Mutation$CreateTags$createTags?>? Function(
      Iterable<
        CopyWith$Mutation$CreateTags$createTags<Mutation$CreateTags$createTags>?
      >?,
    )
    _fn,
  ) => call(
    createTags: _fn(
      _instance.createTags?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$CreateTags$createTags(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Mutation$CreateTags<TRes>
    implements CopyWith$Mutation$CreateTags<TRes> {
  _CopyWithStubImpl$Mutation$CreateTags(this._res);

  TRes _res;

  call({
    List<Mutation$CreateTags$createTags?>? createTags,
    String? $__typename,
  }) => _res;

  createTags(_fn) => _res;
}

const documentNodeMutationCreateTags = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateTags'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'inputs')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'CreateTagInput'),
              isNonNull: true,
            ),
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
            name: NameNode(value: 'createTags'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'inputs'),
                value: VariableNode(name: NameNode(value: 'inputs')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'CreateTagError'),
                  directives: [],
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'Tag'),
                  directives: [],
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'CollectedTag'),
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
    fragmentDefinitionCreateTagError,
    fragmentDefinitionTag,
    fragmentDefinitionCollectedTag,
  ],
);

class Mutation$CreateTags$createTags {
  Mutation$CreateTags$createTags({required this.$__typename});

  factory Mutation$CreateTags$createTags.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Tag":
        return Mutation$CreateTags$createTags$$Tag.fromJson(json);

      case "CollectedTag":
        return Mutation$CreateTags$createTags$$CollectedTag.fromJson(json);

      case "CreateTagError":
        return Mutation$CreateTags$createTags$$CreateTagError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$CreateTags$createTags(
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
    if (other is! Mutation$CreateTags$createTags ||
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

extension UtilityExtension$Mutation$CreateTags$createTags
    on Mutation$CreateTags$createTags {
  CopyWith$Mutation$CreateTags$createTags<Mutation$CreateTags$createTags>
  get copyWith => CopyWith$Mutation$CreateTags$createTags(this, (i) => i);

  _T when<_T>({
    required _T Function(Mutation$CreateTags$createTags$$Tag) tag,
    required _T Function(Mutation$CreateTags$createTags$$CollectedTag)
    collectedTag,
    required _T Function(Mutation$CreateTags$createTags$$CreateTagError)
    createTagError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Tag":
        return tag(this as Mutation$CreateTags$createTags$$Tag);

      case "CollectedTag":
        return collectedTag(
          this as Mutation$CreateTags$createTags$$CollectedTag,
        );

      case "CreateTagError":
        return createTagError(
          this as Mutation$CreateTags$createTags$$CreateTagError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$CreateTags$createTags$$Tag)? tag,
    _T Function(Mutation$CreateTags$createTags$$CollectedTag)? collectedTag,
    _T Function(Mutation$CreateTags$createTags$$CreateTagError)? createTagError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Tag":
        if (tag != null) {
          return tag(this as Mutation$CreateTags$createTags$$Tag);
        } else {
          return orElse();
        }

      case "CollectedTag":
        if (collectedTag != null) {
          return collectedTag(
            this as Mutation$CreateTags$createTags$$CollectedTag,
          );
        } else {
          return orElse();
        }

      case "CreateTagError":
        if (createTagError != null) {
          return createTagError(
            this as Mutation$CreateTags$createTags$$CreateTagError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$CreateTags$createTags<TRes> {
  factory CopyWith$Mutation$CreateTags$createTags(
    Mutation$CreateTags$createTags instance,
    TRes Function(Mutation$CreateTags$createTags) then,
  ) = _CopyWithImpl$Mutation$CreateTags$createTags;

  factory CopyWith$Mutation$CreateTags$createTags.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTags$createTags;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$CreateTags$createTags<TRes>
    implements CopyWith$Mutation$CreateTags$createTags<TRes> {
  _CopyWithImpl$Mutation$CreateTags$createTags(this._instance, this._then);

  final Mutation$CreateTags$createTags _instance;

  final TRes Function(Mutation$CreateTags$createTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$CreateTags$createTags(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTags$createTags<TRes>
    implements CopyWith$Mutation$CreateTags$createTags<TRes> {
  _CopyWithStubImpl$Mutation$CreateTags$createTags(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$CreateTags$createTags$$Tag
    implements Fragment$Tag, Mutation$CreateTags$createTags {
  Mutation$CreateTags$createTags$$Tag({
    required this.id,
    required this.effectiveTo,
    required this.effectiveToEpoch,
    this.$__typename = 'Tag',
  });

  factory Mutation$CreateTags$createTags$$Tag.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$effectiveTo = json['effectiveTo'];
    final l$effectiveToEpoch = json['effectiveToEpoch'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTags$createTags$$Tag(
      id: (l$id as String),
      effectiveTo: DateTime.parse((l$effectiveTo as String)),
      effectiveToEpoch: (l$effectiveToEpoch as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime effectiveTo;

  final int effectiveToEpoch;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$effectiveTo = effectiveTo;
    _resultData['effectiveTo'] = l$effectiveTo.toIso8601String();
    final l$effectiveToEpoch = effectiveToEpoch;
    _resultData['effectiveToEpoch'] = l$effectiveToEpoch;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$effectiveTo = effectiveTo;
    final l$effectiveToEpoch = effectiveToEpoch;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$effectiveTo,
      l$effectiveToEpoch,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTags$createTags$$Tag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$effectiveTo = effectiveTo;
    final lOther$effectiveTo = other.effectiveTo;
    if (l$effectiveTo != lOther$effectiveTo) {
      return false;
    }
    final l$effectiveToEpoch = effectiveToEpoch;
    final lOther$effectiveToEpoch = other.effectiveToEpoch;
    if (l$effectiveToEpoch != lOther$effectiveToEpoch) {
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

extension UtilityExtension$Mutation$CreateTags$createTags$$Tag
    on Mutation$CreateTags$createTags$$Tag {
  CopyWith$Mutation$CreateTags$createTags$$Tag<
    Mutation$CreateTags$createTags$$Tag
  >
  get copyWith => CopyWith$Mutation$CreateTags$createTags$$Tag(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateTags$createTags$$Tag<TRes> {
  factory CopyWith$Mutation$CreateTags$createTags$$Tag(
    Mutation$CreateTags$createTags$$Tag instance,
    TRes Function(Mutation$CreateTags$createTags$$Tag) then,
  ) = _CopyWithImpl$Mutation$CreateTags$createTags$$Tag;

  factory CopyWith$Mutation$CreateTags$createTags$$Tag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTags$createTags$$Tag;

  TRes call({
    String? id,
    DateTime? effectiveTo,
    int? effectiveToEpoch,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateTags$createTags$$Tag<TRes>
    implements CopyWith$Mutation$CreateTags$createTags$$Tag<TRes> {
  _CopyWithImpl$Mutation$CreateTags$createTags$$Tag(this._instance, this._then);

  final Mutation$CreateTags$createTags$$Tag _instance;

  final TRes Function(Mutation$CreateTags$createTags$$Tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? effectiveTo = _undefined,
    Object? effectiveToEpoch = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTags$createTags$$Tag(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      effectiveTo: effectiveTo == _undefined || effectiveTo == null
          ? _instance.effectiveTo
          : (effectiveTo as DateTime),
      effectiveToEpoch:
          effectiveToEpoch == _undefined || effectiveToEpoch == null
          ? _instance.effectiveToEpoch
          : (effectiveToEpoch as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTags$createTags$$Tag<TRes>
    implements CopyWith$Mutation$CreateTags$createTags$$Tag<TRes> {
  _CopyWithStubImpl$Mutation$CreateTags$createTags$$Tag(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? effectiveTo,
    int? effectiveToEpoch,
    String? $__typename,
  }) => _res;
}

class Mutation$CreateTags$createTags$$CollectedTag
    implements Fragment$CollectedTag, Mutation$CreateTags$createTags {
  Mutation$CreateTags$createTags$$CollectedTag({
    required this.id,
    required this.effectiveTo,
    required this.effectiveToEpoch,
    required this.showToCustomer,
    required this.fullyCharged,
    required this.accountLocationKeys,
    this.$__typename = 'CollectedTag',
  });

  factory Mutation$CreateTags$createTags$$CollectedTag.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$effectiveTo = json['effectiveTo'];
    final l$effectiveToEpoch = json['effectiveToEpoch'];
    final l$showToCustomer = json['showToCustomer'];
    final l$fullyCharged = json['fullyCharged'];
    final l$accountLocationKeys = json['accountLocationKeys'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTags$createTags$$CollectedTag(
      id: (l$id as String),
      effectiveTo: DateTime.parse((l$effectiveTo as String)),
      effectiveToEpoch: (l$effectiveToEpoch as int),
      showToCustomer: (l$showToCustomer as bool),
      fullyCharged: (l$fullyCharged as bool),
      accountLocationKeys: (l$accountLocationKeys as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime effectiveTo;

  final int effectiveToEpoch;

  final bool showToCustomer;

  final bool fullyCharged;

  final List<String> accountLocationKeys;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$effectiveTo = effectiveTo;
    _resultData['effectiveTo'] = l$effectiveTo.toIso8601String();
    final l$effectiveToEpoch = effectiveToEpoch;
    _resultData['effectiveToEpoch'] = l$effectiveToEpoch;
    final l$showToCustomer = showToCustomer;
    _resultData['showToCustomer'] = l$showToCustomer;
    final l$fullyCharged = fullyCharged;
    _resultData['fullyCharged'] = l$fullyCharged;
    final l$accountLocationKeys = accountLocationKeys;
    _resultData['accountLocationKeys'] = l$accountLocationKeys
        .map((e) => e)
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$effectiveTo = effectiveTo;
    final l$effectiveToEpoch = effectiveToEpoch;
    final l$showToCustomer = showToCustomer;
    final l$fullyCharged = fullyCharged;
    final l$accountLocationKeys = accountLocationKeys;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$effectiveTo,
      l$effectiveToEpoch,
      l$showToCustomer,
      l$fullyCharged,
      Object.hashAll(l$accountLocationKeys.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTags$createTags$$CollectedTag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$effectiveTo = effectiveTo;
    final lOther$effectiveTo = other.effectiveTo;
    if (l$effectiveTo != lOther$effectiveTo) {
      return false;
    }
    final l$effectiveToEpoch = effectiveToEpoch;
    final lOther$effectiveToEpoch = other.effectiveToEpoch;
    if (l$effectiveToEpoch != lOther$effectiveToEpoch) {
      return false;
    }
    final l$showToCustomer = showToCustomer;
    final lOther$showToCustomer = other.showToCustomer;
    if (l$showToCustomer != lOther$showToCustomer) {
      return false;
    }
    final l$fullyCharged = fullyCharged;
    final lOther$fullyCharged = other.fullyCharged;
    if (l$fullyCharged != lOther$fullyCharged) {
      return false;
    }
    final l$accountLocationKeys = accountLocationKeys;
    final lOther$accountLocationKeys = other.accountLocationKeys;
    if (l$accountLocationKeys.length != lOther$accountLocationKeys.length) {
      return false;
    }
    for (int i = 0; i < l$accountLocationKeys.length; i++) {
      final l$accountLocationKeys$entry = l$accountLocationKeys[i];
      final lOther$accountLocationKeys$entry = lOther$accountLocationKeys[i];
      if (l$accountLocationKeys$entry != lOther$accountLocationKeys$entry) {
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

extension UtilityExtension$Mutation$CreateTags$createTags$$CollectedTag
    on Mutation$CreateTags$createTags$$CollectedTag {
  CopyWith$Mutation$CreateTags$createTags$$CollectedTag<
    Mutation$CreateTags$createTags$$CollectedTag
  >
  get copyWith =>
      CopyWith$Mutation$CreateTags$createTags$$CollectedTag(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateTags$createTags$$CollectedTag<TRes> {
  factory CopyWith$Mutation$CreateTags$createTags$$CollectedTag(
    Mutation$CreateTags$createTags$$CollectedTag instance,
    TRes Function(Mutation$CreateTags$createTags$$CollectedTag) then,
  ) = _CopyWithImpl$Mutation$CreateTags$createTags$$CollectedTag;

  factory CopyWith$Mutation$CreateTags$createTags$$CollectedTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTags$createTags$$CollectedTag;

  TRes call({
    String? id,
    DateTime? effectiveTo,
    int? effectiveToEpoch,
    bool? showToCustomer,
    bool? fullyCharged,
    List<String>? accountLocationKeys,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateTags$createTags$$CollectedTag<TRes>
    implements CopyWith$Mutation$CreateTags$createTags$$CollectedTag<TRes> {
  _CopyWithImpl$Mutation$CreateTags$createTags$$CollectedTag(
    this._instance,
    this._then,
  );

  final Mutation$CreateTags$createTags$$CollectedTag _instance;

  final TRes Function(Mutation$CreateTags$createTags$$CollectedTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? effectiveTo = _undefined,
    Object? effectiveToEpoch = _undefined,
    Object? showToCustomer = _undefined,
    Object? fullyCharged = _undefined,
    Object? accountLocationKeys = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTags$createTags$$CollectedTag(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      effectiveTo: effectiveTo == _undefined || effectiveTo == null
          ? _instance.effectiveTo
          : (effectiveTo as DateTime),
      effectiveToEpoch:
          effectiveToEpoch == _undefined || effectiveToEpoch == null
          ? _instance.effectiveToEpoch
          : (effectiveToEpoch as int),
      showToCustomer: showToCustomer == _undefined || showToCustomer == null
          ? _instance.showToCustomer
          : (showToCustomer as bool),
      fullyCharged: fullyCharged == _undefined || fullyCharged == null
          ? _instance.fullyCharged
          : (fullyCharged as bool),
      accountLocationKeys:
          accountLocationKeys == _undefined || accountLocationKeys == null
          ? _instance.accountLocationKeys
          : (accountLocationKeys as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTags$createTags$$CollectedTag<TRes>
    implements CopyWith$Mutation$CreateTags$createTags$$CollectedTag<TRes> {
  _CopyWithStubImpl$Mutation$CreateTags$createTags$$CollectedTag(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? effectiveTo,
    int? effectiveToEpoch,
    bool? showToCustomer,
    bool? fullyCharged,
    List<String>? accountLocationKeys,
    String? $__typename,
  }) => _res;
}

class Mutation$CreateTags$createTags$$CreateTagError
    implements Fragment$CreateTagError, Mutation$CreateTags$createTags {
  Mutation$CreateTags$createTags$$CreateTagError({
    required this.message,
    this.$__typename = 'CreateTagError',
  });

  factory Mutation$CreateTags$createTags$$CreateTagError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTags$createTags$$CreateTagError(
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
    if (other is! Mutation$CreateTags$createTags$$CreateTagError ||
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

extension UtilityExtension$Mutation$CreateTags$createTags$$CreateTagError
    on Mutation$CreateTags$createTags$$CreateTagError {
  CopyWith$Mutation$CreateTags$createTags$$CreateTagError<
    Mutation$CreateTags$createTags$$CreateTagError
  >
  get copyWith =>
      CopyWith$Mutation$CreateTags$createTags$$CreateTagError(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateTags$createTags$$CreateTagError<TRes> {
  factory CopyWith$Mutation$CreateTags$createTags$$CreateTagError(
    Mutation$CreateTags$createTags$$CreateTagError instance,
    TRes Function(Mutation$CreateTags$createTags$$CreateTagError) then,
  ) = _CopyWithImpl$Mutation$CreateTags$createTags$$CreateTagError;

  factory CopyWith$Mutation$CreateTags$createTags$$CreateTagError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTags$createTags$$CreateTagError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateTags$createTags$$CreateTagError<TRes>
    implements CopyWith$Mutation$CreateTags$createTags$$CreateTagError<TRes> {
  _CopyWithImpl$Mutation$CreateTags$createTags$$CreateTagError(
    this._instance,
    this._then,
  );

  final Mutation$CreateTags$createTags$$CreateTagError _instance;

  final TRes Function(Mutation$CreateTags$createTags$$CreateTagError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CreateTags$createTags$$CreateTagError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CreateTags$createTags$$CreateTagError<TRes>
    implements CopyWith$Mutation$CreateTags$createTags$$CreateTagError<TRes> {
  _CopyWithStubImpl$Mutation$CreateTags$createTags$$CreateTagError(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
