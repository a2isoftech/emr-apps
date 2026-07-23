import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$ExportPdfForCompletedJobs {
  factory Variables$Query$ExportPdfForCompletedJobs(
          {required Input$ExportPdfForCompletedJobsFilterInput filter}) =>
      Variables$Query$ExportPdfForCompletedJobs._({
        r'filter': filter,
      });

  Variables$Query$ExportPdfForCompletedJobs._(this._$data);

  factory Variables$Query$ExportPdfForCompletedJobs.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = Input$ExportPdfForCompletedJobsFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$ExportPdfForCompletedJobs._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ExportPdfForCompletedJobsFilterInput get filter =>
      (_$data['filter'] as Input$ExportPdfForCompletedJobsFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$ExportPdfForCompletedJobs<
          Variables$Query$ExportPdfForCompletedJobs>
      get copyWith => CopyWith$Variables$Query$ExportPdfForCompletedJobs(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ExportPdfForCompletedJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([l$filter]);
  }
}

abstract class CopyWith$Variables$Query$ExportPdfForCompletedJobs<TRes> {
  factory CopyWith$Variables$Query$ExportPdfForCompletedJobs(
    Variables$Query$ExportPdfForCompletedJobs instance,
    TRes Function(Variables$Query$ExportPdfForCompletedJobs) then,
  ) = _CopyWithImpl$Variables$Query$ExportPdfForCompletedJobs;

  factory CopyWith$Variables$Query$ExportPdfForCompletedJobs.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ExportPdfForCompletedJobs;

  TRes call({Input$ExportPdfForCompletedJobsFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$ExportPdfForCompletedJobs<TRes>
    implements CopyWith$Variables$Query$ExportPdfForCompletedJobs<TRes> {
  _CopyWithImpl$Variables$Query$ExportPdfForCompletedJobs(
    this._instance,
    this._then,
  );

  final Variables$Query$ExportPdfForCompletedJobs _instance;

  final TRes Function(Variables$Query$ExportPdfForCompletedJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$ExportPdfForCompletedJobs._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$ExportPdfForCompletedJobsFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$ExportPdfForCompletedJobs<TRes>
    implements CopyWith$Variables$Query$ExportPdfForCompletedJobs<TRes> {
  _CopyWithStubImpl$Variables$Query$ExportPdfForCompletedJobs(this._res);

  TRes _res;

  call({Input$ExportPdfForCompletedJobsFilterInput? filter}) => _res;
}

class Query$ExportPdfForCompletedJobs {
  Query$ExportPdfForCompletedJobs({
    required this.exportPdfForCompletedJobs,
    this.$__typename = 'FormsQuery',
  });

  factory Query$ExportPdfForCompletedJobs.fromJson(Map<String, dynamic> json) {
    final l$exportPdfForCompletedJobs = json['exportPdfForCompletedJobs'];
    final l$$__typename = json['__typename'];
    return Query$ExportPdfForCompletedJobs(
      exportPdfForCompletedJobs:
          Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs.fromJson(
              (l$exportPdfForCompletedJobs as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs
      exportPdfForCompletedJobs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$exportPdfForCompletedJobs = exportPdfForCompletedJobs;
    _resultData['exportPdfForCompletedJobs'] =
        l$exportPdfForCompletedJobs.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$exportPdfForCompletedJobs = exportPdfForCompletedJobs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$exportPdfForCompletedJobs,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ExportPdfForCompletedJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$exportPdfForCompletedJobs = exportPdfForCompletedJobs;
    final lOther$exportPdfForCompletedJobs = other.exportPdfForCompletedJobs;
    if (l$exportPdfForCompletedJobs != lOther$exportPdfForCompletedJobs) {
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

extension UtilityExtension$Query$ExportPdfForCompletedJobs
    on Query$ExportPdfForCompletedJobs {
  CopyWith$Query$ExportPdfForCompletedJobs<Query$ExportPdfForCompletedJobs>
      get copyWith => CopyWith$Query$ExportPdfForCompletedJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ExportPdfForCompletedJobs<TRes> {
  factory CopyWith$Query$ExportPdfForCompletedJobs(
    Query$ExportPdfForCompletedJobs instance,
    TRes Function(Query$ExportPdfForCompletedJobs) then,
  ) = _CopyWithImpl$Query$ExportPdfForCompletedJobs;

  factory CopyWith$Query$ExportPdfForCompletedJobs.stub(TRes res) =
      _CopyWithStubImpl$Query$ExportPdfForCompletedJobs;

  TRes call({
    Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs?
        exportPdfForCompletedJobs,
    String? $__typename,
  });
  CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs<TRes>
      get exportPdfForCompletedJobs;
}

class _CopyWithImpl$Query$ExportPdfForCompletedJobs<TRes>
    implements CopyWith$Query$ExportPdfForCompletedJobs<TRes> {
  _CopyWithImpl$Query$ExportPdfForCompletedJobs(
    this._instance,
    this._then,
  );

  final Query$ExportPdfForCompletedJobs _instance;

  final TRes Function(Query$ExportPdfForCompletedJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? exportPdfForCompletedJobs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ExportPdfForCompletedJobs(
        exportPdfForCompletedJobs: exportPdfForCompletedJobs == _undefined ||
                exportPdfForCompletedJobs == null
            ? _instance.exportPdfForCompletedJobs
            : (exportPdfForCompletedJobs
                as Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs<TRes>
      get exportPdfForCompletedJobs {
    final local$exportPdfForCompletedJobs = _instance.exportPdfForCompletedJobs;
    return CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs(
        local$exportPdfForCompletedJobs,
        (e) => call(exportPdfForCompletedJobs: e));
  }
}

class _CopyWithStubImpl$Query$ExportPdfForCompletedJobs<TRes>
    implements CopyWith$Query$ExportPdfForCompletedJobs<TRes> {
  _CopyWithStubImpl$Query$ExportPdfForCompletedJobs(this._res);

  TRes _res;

  call({
    Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs?
        exportPdfForCompletedJobs,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs<TRes>
      get exportPdfForCompletedJobs =>
          CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs
              .stub(_res);
}

const documentNodeQueryExportPdfForCompletedJobs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ExportPdfForCompletedJobs'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'ExportPdfForCompletedJobsFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'exportPdfForCompletedJobs'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'zipFileAsBase64'),
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

class Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs {
  Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs({
    required this.zipFileAsBase64,
    this.$__typename = 'ExportPdfForCompletedJobs',
  });

  factory Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs.fromJson(
      Map<String, dynamic> json) {
    final l$zipFileAsBase64 = json['zipFileAsBase64'];
    final l$$__typename = json['__typename'];
    return Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs(
      zipFileAsBase64: (l$zipFileAsBase64 as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String zipFileAsBase64;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$zipFileAsBase64 = zipFileAsBase64;
    _resultData['zipFileAsBase64'] = l$zipFileAsBase64;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$zipFileAsBase64 = zipFileAsBase64;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$zipFileAsBase64,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$zipFileAsBase64 = zipFileAsBase64;
    final lOther$zipFileAsBase64 = other.zipFileAsBase64;
    if (l$zipFileAsBase64 != lOther$zipFileAsBase64) {
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

extension UtilityExtension$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs
    on Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs {
  CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs<
          Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs>
      get copyWith =>
          CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs<
    TRes> {
  factory CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs(
    Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs instance,
    TRes Function(Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs)
        then,
  ) = _CopyWithImpl$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs;

  factory CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs;

  TRes call({
    String? zipFileAsBase64,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs<
        TRes>
    implements
        CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs<
            TRes> {
  _CopyWithImpl$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs(
    this._instance,
    this._then,
  );

  final Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs _instance;

  final TRes Function(Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? zipFileAsBase64 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs(
        zipFileAsBase64:
            zipFileAsBase64 == _undefined || zipFileAsBase64 == null
                ? _instance.zipFileAsBase64
                : (zipFileAsBase64 as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs<
        TRes>
    implements
        CopyWith$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs<
            TRes> {
  _CopyWithStubImpl$Query$ExportPdfForCompletedJobs$exportPdfForCompletedJobs(
      this._res);

  TRes _res;

  call({
    String? zipFileAsBase64,
    String? $__typename,
  }) =>
      _res;
}
