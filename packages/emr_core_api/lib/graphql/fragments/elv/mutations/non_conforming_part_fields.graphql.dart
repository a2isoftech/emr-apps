import 'package:gql/ast.dart';

class Fragment$NonConformingPartFields {
  Fragment$NonConformingPartFields({
    required this.partKey,
    required this.partName,
    required this.partPhotos,
    this.$__typename = 'NonConformingPart',
  });

  factory Fragment$NonConformingPartFields.fromJson(Map<String, dynamic> json) {
    final l$partKey = json['partKey'];
    final l$partName = json['partName'];
    final l$partPhotos = json['partPhotos'];
    final l$$__typename = json['__typename'];
    return Fragment$NonConformingPartFields(
      partKey: (l$partKey as String),
      partName: (l$partName as String),
      partPhotos: (l$partPhotos as List<dynamic>)
          .map(
            (e) => Fragment$NonConformingPartFields$partPhotos.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String partKey;

  final String partName;

  final List<Fragment$NonConformingPartFields$partPhotos> partPhotos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partKey = partKey;
    _resultData['partKey'] = l$partKey;
    final l$partName = partName;
    _resultData['partName'] = l$partName;
    final l$partPhotos = partPhotos;
    _resultData['partPhotos'] = l$partPhotos.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partKey = partKey;
    final l$partName = partName;
    final l$partPhotos = partPhotos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$partKey,
      l$partName,
      Object.hashAll(l$partPhotos.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$NonConformingPartFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partKey = partKey;
    final lOther$partKey = other.partKey;
    if (l$partKey != lOther$partKey) {
      return false;
    }
    final l$partName = partName;
    final lOther$partName = other.partName;
    if (l$partName != lOther$partName) {
      return false;
    }
    final l$partPhotos = partPhotos;
    final lOther$partPhotos = other.partPhotos;
    if (l$partPhotos.length != lOther$partPhotos.length) {
      return false;
    }
    for (int i = 0; i < l$partPhotos.length; i++) {
      final l$partPhotos$entry = l$partPhotos[i];
      final lOther$partPhotos$entry = lOther$partPhotos[i];
      if (l$partPhotos$entry != lOther$partPhotos$entry) {
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

extension UtilityExtension$Fragment$NonConformingPartFields
    on Fragment$NonConformingPartFields {
  CopyWith$Fragment$NonConformingPartFields<Fragment$NonConformingPartFields>
  get copyWith => CopyWith$Fragment$NonConformingPartFields(this, (i) => i);
}

abstract class CopyWith$Fragment$NonConformingPartFields<TRes> {
  factory CopyWith$Fragment$NonConformingPartFields(
    Fragment$NonConformingPartFields instance,
    TRes Function(Fragment$NonConformingPartFields) then,
  ) = _CopyWithImpl$Fragment$NonConformingPartFields;

  factory CopyWith$Fragment$NonConformingPartFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$NonConformingPartFields;

  TRes call({
    String? partKey,
    String? partName,
    List<Fragment$NonConformingPartFields$partPhotos>? partPhotos,
    String? $__typename,
  });
  TRes partPhotos(
    Iterable<Fragment$NonConformingPartFields$partPhotos> Function(
      Iterable<
        CopyWith$Fragment$NonConformingPartFields$partPhotos<
          Fragment$NonConformingPartFields$partPhotos
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$NonConformingPartFields<TRes>
    implements CopyWith$Fragment$NonConformingPartFields<TRes> {
  _CopyWithImpl$Fragment$NonConformingPartFields(this._instance, this._then);

  final Fragment$NonConformingPartFields _instance;

  final TRes Function(Fragment$NonConformingPartFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partKey = _undefined,
    Object? partName = _undefined,
    Object? partPhotos = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$NonConformingPartFields(
      partKey: partKey == _undefined || partKey == null
          ? _instance.partKey
          : (partKey as String),
      partName: partName == _undefined || partName == null
          ? _instance.partName
          : (partName as String),
      partPhotos: partPhotos == _undefined || partPhotos == null
          ? _instance.partPhotos
          : (partPhotos as List<Fragment$NonConformingPartFields$partPhotos>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes partPhotos(
    Iterable<Fragment$NonConformingPartFields$partPhotos> Function(
      Iterable<
        CopyWith$Fragment$NonConformingPartFields$partPhotos<
          Fragment$NonConformingPartFields$partPhotos
        >
      >,
    )
    _fn,
  ) => call(
    partPhotos: _fn(
      _instance.partPhotos.map(
        (e) =>
            CopyWith$Fragment$NonConformingPartFields$partPhotos(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$NonConformingPartFields<TRes>
    implements CopyWith$Fragment$NonConformingPartFields<TRes> {
  _CopyWithStubImpl$Fragment$NonConformingPartFields(this._res);

  TRes _res;

  call({
    String? partKey,
    String? partName,
    List<Fragment$NonConformingPartFields$partPhotos>? partPhotos,
    String? $__typename,
  }) => _res;

  partPhotos(_fn) => _res;
}

const fragmentDefinitionNonConformingPartFields = FragmentDefinitionNode(
  name: NameNode(value: 'NonConformingPartFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'NonConformingPart'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'partKey'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'partName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'partPhotos'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'url'),
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
const documentNodeFragmentNonConformingPartFields = DocumentNode(
  definitions: [fragmentDefinitionNonConformingPartFields],
);

class Fragment$NonConformingPartFields$partPhotos {
  Fragment$NonConformingPartFields$partPhotos({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Fragment$NonConformingPartFields$partPhotos.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$NonConformingPartFields$partPhotos(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$NonConformingPartFields$partPhotos ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Fragment$NonConformingPartFields$partPhotos
    on Fragment$NonConformingPartFields$partPhotos {
  CopyWith$Fragment$NonConformingPartFields$partPhotos<
    Fragment$NonConformingPartFields$partPhotos
  >
  get copyWith =>
      CopyWith$Fragment$NonConformingPartFields$partPhotos(this, (i) => i);
}

abstract class CopyWith$Fragment$NonConformingPartFields$partPhotos<TRes> {
  factory CopyWith$Fragment$NonConformingPartFields$partPhotos(
    Fragment$NonConformingPartFields$partPhotos instance,
    TRes Function(Fragment$NonConformingPartFields$partPhotos) then,
  ) = _CopyWithImpl$Fragment$NonConformingPartFields$partPhotos;

  factory CopyWith$Fragment$NonConformingPartFields$partPhotos.stub(TRes res) =
      _CopyWithStubImpl$Fragment$NonConformingPartFields$partPhotos;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Fragment$NonConformingPartFields$partPhotos<TRes>
    implements CopyWith$Fragment$NonConformingPartFields$partPhotos<TRes> {
  _CopyWithImpl$Fragment$NonConformingPartFields$partPhotos(
    this._instance,
    this._then,
  );

  final Fragment$NonConformingPartFields$partPhotos _instance;

  final TRes Function(Fragment$NonConformingPartFields$partPhotos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$NonConformingPartFields$partPhotos(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$NonConformingPartFields$partPhotos<TRes>
    implements CopyWith$Fragment$NonConformingPartFields$partPhotos<TRes> {
  _CopyWithStubImpl$Fragment$NonConformingPartFields$partPhotos(this._res);

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}
