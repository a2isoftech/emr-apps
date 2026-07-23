import 'package:gql/ast.dart';

class Fragment$CollectedTag {
  Fragment$CollectedTag({
    required this.id,
    required this.effectiveTo,
    required this.effectiveToEpoch,
    required this.showToCustomer,
    required this.fullyCharged,
    required this.accountLocationKeys,
    this.$__typename = 'CollectedTag',
  });

  factory Fragment$CollectedTag.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$effectiveTo = json['effectiveTo'];
    final l$effectiveToEpoch = json['effectiveToEpoch'];
    final l$showToCustomer = json['showToCustomer'];
    final l$fullyCharged = json['fullyCharged'];
    final l$accountLocationKeys = json['accountLocationKeys'];
    final l$$__typename = json['__typename'];
    return Fragment$CollectedTag(
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
    if (other is! Fragment$CollectedTag || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$CollectedTag on Fragment$CollectedTag {
  CopyWith$Fragment$CollectedTag<Fragment$CollectedTag> get copyWith =>
      CopyWith$Fragment$CollectedTag(this, (i) => i);
}

abstract class CopyWith$Fragment$CollectedTag<TRes> {
  factory CopyWith$Fragment$CollectedTag(
    Fragment$CollectedTag instance,
    TRes Function(Fragment$CollectedTag) then,
  ) = _CopyWithImpl$Fragment$CollectedTag;

  factory CopyWith$Fragment$CollectedTag.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CollectedTag;

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

class _CopyWithImpl$Fragment$CollectedTag<TRes>
    implements CopyWith$Fragment$CollectedTag<TRes> {
  _CopyWithImpl$Fragment$CollectedTag(this._instance, this._then);

  final Fragment$CollectedTag _instance;

  final TRes Function(Fragment$CollectedTag) _then;

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
    Fragment$CollectedTag(
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

class _CopyWithStubImpl$Fragment$CollectedTag<TRes>
    implements CopyWith$Fragment$CollectedTag<TRes> {
  _CopyWithStubImpl$Fragment$CollectedTag(this._res);

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

const fragmentDefinitionCollectedTag = FragmentDefinitionNode(
  name: NameNode(value: 'CollectedTag'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'CollectedTag'), isNonNull: false),
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
        name: NameNode(value: 'showToCustomer'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fullyCharged'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'accountLocationKeys'),
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
const documentNodeFragmentCollectedTag = DocumentNode(
  definitions: [fragmentDefinitionCollectedTag],
);
