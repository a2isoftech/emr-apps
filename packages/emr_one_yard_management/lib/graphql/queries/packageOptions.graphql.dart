import 'package:gql/ast.dart';

class Query$packageOptions {
  Query$packageOptions({
    this.packageOptions,
    this.$__typename = 'Query',
  });

  factory Query$packageOptions.fromJson(Map<String, dynamic> json) {
    final l$packageOptions = json['packageOptions'];
    final l$$__typename = json['__typename'];
    return Query$packageOptions(
      packageOptions: (l$packageOptions as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? packageOptions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$packageOptions = packageOptions;
    _resultData['packageOptions'] = l$packageOptions?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$packageOptions = packageOptions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$packageOptions == null
          ? null
          : Object.hashAll(l$packageOptions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$packageOptions) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$packageOptions = packageOptions;
    final lOther$packageOptions = other.packageOptions;
    if (l$packageOptions != null && lOther$packageOptions != null) {
      if (l$packageOptions.length != lOther$packageOptions.length) {
        return false;
      }
      for (int i = 0; i < l$packageOptions.length; i++) {
        final l$packageOptions$entry = l$packageOptions[i];
        final lOther$packageOptions$entry = lOther$packageOptions[i];
        if (l$packageOptions$entry != lOther$packageOptions$entry) {
          return false;
        }
      }
    } else if (l$packageOptions != lOther$packageOptions) {
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

extension UtilityExtension$Query$packageOptions on Query$packageOptions {
  CopyWith$Query$packageOptions<Query$packageOptions> get copyWith =>
      CopyWith$Query$packageOptions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$packageOptions<TRes> {
  factory CopyWith$Query$packageOptions(
    Query$packageOptions instance,
    TRes Function(Query$packageOptions) then,
  ) = _CopyWithImpl$Query$packageOptions;

  factory CopyWith$Query$packageOptions.stub(TRes res) =
      _CopyWithStubImpl$Query$packageOptions;

  TRes call({
    List<String?>? packageOptions,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$packageOptions<TRes>
    implements CopyWith$Query$packageOptions<TRes> {
  _CopyWithImpl$Query$packageOptions(
    this._instance,
    this._then,
  );

  final Query$packageOptions _instance;

  final TRes Function(Query$packageOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? packageOptions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$packageOptions(
        packageOptions: packageOptions == _undefined
            ? _instance.packageOptions
            : (packageOptions as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$packageOptions<TRes>
    implements CopyWith$Query$packageOptions<TRes> {
  _CopyWithStubImpl$Query$packageOptions(this._res);

  TRes _res;

  call({
    List<String?>? packageOptions,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQuerypackageOptions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'packageOptions'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'packageOptions'),
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
