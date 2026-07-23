import 'package:gql/ast.dart';

class Fragment$ContactWithKey {
  Fragment$ContactWithKey({
    required this.key,
    this.$__typename = 'ContactWithKey',
  });

  factory Fragment$ContactWithKey.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Fragment$ContactWithKey(
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
    if (other is! Fragment$ContactWithKey || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$ContactWithKey on Fragment$ContactWithKey {
  CopyWith$Fragment$ContactWithKey<Fragment$ContactWithKey> get copyWith =>
      CopyWith$Fragment$ContactWithKey(this, (i) => i);
}

abstract class CopyWith$Fragment$ContactWithKey<TRes> {
  factory CopyWith$Fragment$ContactWithKey(
    Fragment$ContactWithKey instance,
    TRes Function(Fragment$ContactWithKey) then,
  ) = _CopyWithImpl$Fragment$ContactWithKey;

  factory CopyWith$Fragment$ContactWithKey.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ContactWithKey;

  TRes call({String? key, String? $__typename});
}

class _CopyWithImpl$Fragment$ContactWithKey<TRes>
    implements CopyWith$Fragment$ContactWithKey<TRes> {
  _CopyWithImpl$Fragment$ContactWithKey(this._instance, this._then);

  final Fragment$ContactWithKey _instance;

  final TRes Function(Fragment$ContactWithKey) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? key = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$ContactWithKey(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$ContactWithKey<TRes>
    implements CopyWith$Fragment$ContactWithKey<TRes> {
  _CopyWithStubImpl$Fragment$ContactWithKey(this._res);

  TRes _res;

  call({String? key, String? $__typename}) => _res;
}

const fragmentDefinitionContactWithKey = FragmentDefinitionNode(
  name: NameNode(value: 'ContactWithKey'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'ContactWithKey'),
      isNonNull: false,
    ),
  ),
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
);
const documentNodeFragmentContactWithKey = DocumentNode(
  definitions: [fragmentDefinitionContactWithKey],
);
