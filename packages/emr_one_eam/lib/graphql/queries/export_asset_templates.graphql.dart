import 'package:gql/ast.dart';

class Query$ExportAssetTemplates {
  Query$ExportAssetTemplates({
    required this.exportAssetTemplates,
    this.$__typename = 'Query',
  });

  factory Query$ExportAssetTemplates.fromJson(Map<String, dynamic> json) {
    final l$exportAssetTemplates = json['exportAssetTemplates'];
    final l$$__typename = json['__typename'];
    return Query$ExportAssetTemplates(
      exportAssetTemplates: (l$exportAssetTemplates as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String exportAssetTemplates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$exportAssetTemplates = exportAssetTemplates;
    _resultData['exportAssetTemplates'] = l$exportAssetTemplates;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$exportAssetTemplates = exportAssetTemplates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$exportAssetTemplates,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ExportAssetTemplates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$exportAssetTemplates = exportAssetTemplates;
    final lOther$exportAssetTemplates = other.exportAssetTemplates;
    if (l$exportAssetTemplates != lOther$exportAssetTemplates) {
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

extension UtilityExtension$Query$ExportAssetTemplates
    on Query$ExportAssetTemplates {
  CopyWith$Query$ExportAssetTemplates<Query$ExportAssetTemplates>
      get copyWith => CopyWith$Query$ExportAssetTemplates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ExportAssetTemplates<TRes> {
  factory CopyWith$Query$ExportAssetTemplates(
    Query$ExportAssetTemplates instance,
    TRes Function(Query$ExportAssetTemplates) then,
  ) = _CopyWithImpl$Query$ExportAssetTemplates;

  factory CopyWith$Query$ExportAssetTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$ExportAssetTemplates;

  TRes call({
    String? exportAssetTemplates,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ExportAssetTemplates<TRes>
    implements CopyWith$Query$ExportAssetTemplates<TRes> {
  _CopyWithImpl$Query$ExportAssetTemplates(
    this._instance,
    this._then,
  );

  final Query$ExportAssetTemplates _instance;

  final TRes Function(Query$ExportAssetTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? exportAssetTemplates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ExportAssetTemplates(
        exportAssetTemplates:
            exportAssetTemplates == _undefined || exportAssetTemplates == null
                ? _instance.exportAssetTemplates
                : (exportAssetTemplates as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ExportAssetTemplates<TRes>
    implements CopyWith$Query$ExportAssetTemplates<TRes> {
  _CopyWithStubImpl$Query$ExportAssetTemplates(this._res);

  TRes _res;

  call({
    String? exportAssetTemplates,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryExportAssetTemplates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ExportAssetTemplates'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'exportAssetTemplates'),
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
