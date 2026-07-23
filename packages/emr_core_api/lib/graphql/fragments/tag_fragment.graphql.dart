import 'package:gql/ast.dart';

class Fragment$Tag {
  Fragment$Tag({
    required this.id,
    required this.effectiveTo,
    required this.effectiveToEpoch,
    this.$__typename = 'Tag',
  });

  factory Fragment$Tag.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$effectiveTo = json['effectiveTo'];
    final l$effectiveToEpoch = json['effectiveToEpoch'];
    final l$$__typename = json['__typename'];
    return Fragment$Tag(
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
    if (other is! Fragment$Tag || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Tag on Fragment$Tag {
  CopyWith$Fragment$Tag<Fragment$Tag> get copyWith =>
      CopyWith$Fragment$Tag(this, (i) => i);
}

abstract class CopyWith$Fragment$Tag<TRes> {
  factory CopyWith$Fragment$Tag(
    Fragment$Tag instance,
    TRes Function(Fragment$Tag) then,
  ) = _CopyWithImpl$Fragment$Tag;

  factory CopyWith$Fragment$Tag.stub(TRes res) = _CopyWithStubImpl$Fragment$Tag;

  TRes call({
    String? id,
    DateTime? effectiveTo,
    int? effectiveToEpoch,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Tag<TRes> implements CopyWith$Fragment$Tag<TRes> {
  _CopyWithImpl$Fragment$Tag(this._instance, this._then);

  final Fragment$Tag _instance;

  final TRes Function(Fragment$Tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? effectiveTo = _undefined,
    Object? effectiveToEpoch = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$Tag(
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

class _CopyWithStubImpl$Fragment$Tag<TRes>
    implements CopyWith$Fragment$Tag<TRes> {
  _CopyWithStubImpl$Fragment$Tag(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? effectiveTo,
    int? effectiveToEpoch,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionTag = FragmentDefinitionNode(
  name: NameNode(value: 'Tag'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Tag'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'effectiveTo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'effectiveToEpoch'),
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
);
const documentNodeFragmentTag = DocumentNode(
  definitions: [fragmentDefinitionTag],
);
