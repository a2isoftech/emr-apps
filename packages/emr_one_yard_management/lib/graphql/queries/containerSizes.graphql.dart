import 'package:gql/ast.dart';

class Query$containerSizes {
  Query$containerSizes({
    this.containerSizes,
    this.$__typename = 'Query',
  });

  factory Query$containerSizes.fromJson(Map<String, dynamic> json) {
    final l$containerSizes = json['containerSizes'];
    final l$$__typename = json['__typename'];
    return Query$containerSizes(
      containerSizes: (l$containerSizes as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? containerSizes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$containerSizes = containerSizes;
    _resultData['containerSizes'] = l$containerSizes?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$containerSizes = containerSizes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$containerSizes == null
          ? null
          : Object.hashAll(l$containerSizes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$containerSizes) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$containerSizes = containerSizes;
    final lOther$containerSizes = other.containerSizes;
    if (l$containerSizes != null && lOther$containerSizes != null) {
      if (l$containerSizes.length != lOther$containerSizes.length) {
        return false;
      }
      for (int i = 0; i < l$containerSizes.length; i++) {
        final l$containerSizes$entry = l$containerSizes[i];
        final lOther$containerSizes$entry = lOther$containerSizes[i];
        if (l$containerSizes$entry != lOther$containerSizes$entry) {
          return false;
        }
      }
    } else if (l$containerSizes != lOther$containerSizes) {
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

extension UtilityExtension$Query$containerSizes on Query$containerSizes {
  CopyWith$Query$containerSizes<Query$containerSizes> get copyWith =>
      CopyWith$Query$containerSizes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$containerSizes<TRes> {
  factory CopyWith$Query$containerSizes(
    Query$containerSizes instance,
    TRes Function(Query$containerSizes) then,
  ) = _CopyWithImpl$Query$containerSizes;

  factory CopyWith$Query$containerSizes.stub(TRes res) =
      _CopyWithStubImpl$Query$containerSizes;

  TRes call({
    List<String?>? containerSizes,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$containerSizes<TRes>
    implements CopyWith$Query$containerSizes<TRes> {
  _CopyWithImpl$Query$containerSizes(
    this._instance,
    this._then,
  );

  final Query$containerSizes _instance;

  final TRes Function(Query$containerSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? containerSizes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$containerSizes(
        containerSizes: containerSizes == _undefined
            ? _instance.containerSizes
            : (containerSizes as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$containerSizes<TRes>
    implements CopyWith$Query$containerSizes<TRes> {
  _CopyWithStubImpl$Query$containerSizes(this._res);

  TRes _res;

  call({
    List<String?>? containerSizes,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQuerycontainerSizes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'containerSizes'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'containerSizes'),
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
]);
