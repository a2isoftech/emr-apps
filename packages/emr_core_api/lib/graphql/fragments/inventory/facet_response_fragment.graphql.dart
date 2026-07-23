import 'package:gql/ast.dart';

class Fragment$FacetResponse {
  Fragment$FacetResponse({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Fragment$FacetResponse.fromJson(Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$FacetResponse(
      key: (l$key as String),
      value: Fragment$FacetResponse$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Fragment$FacetResponse$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FacetResponse || runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Fragment$FacetResponse on Fragment$FacetResponse {
  CopyWith$Fragment$FacetResponse<Fragment$FacetResponse> get copyWith =>
      CopyWith$Fragment$FacetResponse(this, (i) => i);
}

abstract class CopyWith$Fragment$FacetResponse<TRes> {
  factory CopyWith$Fragment$FacetResponse(
    Fragment$FacetResponse instance,
    TRes Function(Fragment$FacetResponse) then,
  ) = _CopyWithImpl$Fragment$FacetResponse;

  factory CopyWith$Fragment$FacetResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FacetResponse;

  TRes call({
    String? key,
    Fragment$FacetResponse$value? value,
    String? $__typename,
  });
  CopyWith$Fragment$FacetResponse$value<TRes> get value;
}

class _CopyWithImpl$Fragment$FacetResponse<TRes>
    implements CopyWith$Fragment$FacetResponse<TRes> {
  _CopyWithImpl$Fragment$FacetResponse(this._instance, this._then);

  final Fragment$FacetResponse _instance;

  final TRes Function(Fragment$FacetResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$FacetResponse(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Fragment$FacetResponse$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$FacetResponse$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Fragment$FacetResponse$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$FacetResponse<TRes>
    implements CopyWith$Fragment$FacetResponse<TRes> {
  _CopyWithStubImpl$Fragment$FacetResponse(this._res);

  TRes _res;

  call({
    String? key,
    Fragment$FacetResponse$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$FacetResponse$value<TRes> get value =>
      CopyWith$Fragment$FacetResponse$value.stub(_res);
}

const fragmentDefinitionFacetResponse = FragmentDefinitionNode(
  name: NameNode(value: 'FacetResponse'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'KeyValuePairOfStringAndFacetResult'),
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
        name: NameNode(value: 'value'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'values'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'range'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'min'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'max'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'average'),
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
const documentNodeFragmentFacetResponse = DocumentNode(
  definitions: [fragmentDefinitionFacetResponse],
);

class Fragment$FacetResponse$value {
  Fragment$FacetResponse$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Fragment$FacetResponse$value.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Fragment$FacetResponse$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$FacetResponse$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Fragment$FacetResponse$value$values?>? values;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$values = values;
    _resultData['values'] = l$values?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$values = values;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$values == null ? null : Object.hashAll(l$values.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FacetResponse$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values != null && lOther$values != null) {
      if (l$values.length != lOther$values.length) {
        return false;
      }
      for (int i = 0; i < l$values.length; i++) {
        final l$values$entry = l$values[i];
        final lOther$values$entry = lOther$values[i];
        if (l$values$entry != lOther$values$entry) {
          return false;
        }
      }
    } else if (l$values != lOther$values) {
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

extension UtilityExtension$Fragment$FacetResponse$value
    on Fragment$FacetResponse$value {
  CopyWith$Fragment$FacetResponse$value<Fragment$FacetResponse$value>
  get copyWith => CopyWith$Fragment$FacetResponse$value(this, (i) => i);
}

abstract class CopyWith$Fragment$FacetResponse$value<TRes> {
  factory CopyWith$Fragment$FacetResponse$value(
    Fragment$FacetResponse$value instance,
    TRes Function(Fragment$FacetResponse$value) then,
  ) = _CopyWithImpl$Fragment$FacetResponse$value;

  factory CopyWith$Fragment$FacetResponse$value.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FacetResponse$value;

  TRes call({
    String? name,
    List<Fragment$FacetResponse$value$values?>? values,
    String? $__typename,
  });
  TRes values(
    Iterable<Fragment$FacetResponse$value$values?>? Function(
      Iterable<
        CopyWith$Fragment$FacetResponse$value$values<
          Fragment$FacetResponse$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$FacetResponse$value<TRes>
    implements CopyWith$Fragment$FacetResponse$value<TRes> {
  _CopyWithImpl$Fragment$FacetResponse$value(this._instance, this._then);

  final Fragment$FacetResponse$value _instance;

  final TRes Function(Fragment$FacetResponse$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$FacetResponse$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values as List<Fragment$FacetResponse$value$values?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<Fragment$FacetResponse$value$values?>? Function(
      Iterable<
        CopyWith$Fragment$FacetResponse$value$values<
          Fragment$FacetResponse$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$FacetResponse$value$values(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Fragment$FacetResponse$value<TRes>
    implements CopyWith$Fragment$FacetResponse$value<TRes> {
  _CopyWithStubImpl$Fragment$FacetResponse$value(this._res);

  TRes _res;

  call({
    String? name,
    List<Fragment$FacetResponse$value$values?>? values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Fragment$FacetResponse$value$values {
  Fragment$FacetResponse$value$values({
    this.name,
    this.range,
    required this.count,
    this.min,
    this.max,
    this.average,
    this.$__typename = 'FacetValue',
  });

  factory Fragment$FacetResponse$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$range = json['range'];
    final l$count = json['count'];
    final l$min = json['min'];
    final l$max = json['max'];
    final l$average = json['average'];
    final l$$__typename = json['__typename'];
    return Fragment$FacetResponse$value$values(
      name: (l$name as String?),
      range: (l$range as String?),
      count: (l$count as int),
      min: (l$min as num?)?.toDouble(),
      max: (l$max as num?)?.toDouble(),
      average: (l$average as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? range;

  final int count;

  final double? min;

  final double? max;

  final double? average;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$range = range;
    _resultData['range'] = l$range;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$min = min;
    _resultData['min'] = l$min;
    final l$max = max;
    _resultData['max'] = l$max;
    final l$average = average;
    _resultData['average'] = l$average;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$range = range;
    final l$count = count;
    final l$min = min;
    final l$max = max;
    final l$average = average;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$range,
      l$count,
      l$min,
      l$max,
      l$average,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FacetResponse$value$values ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$range = range;
    final lOther$range = other.range;
    if (l$range != lOther$range) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$average = average;
    final lOther$average = other.average;
    if (l$average != lOther$average) {
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

extension UtilityExtension$Fragment$FacetResponse$value$values
    on Fragment$FacetResponse$value$values {
  CopyWith$Fragment$FacetResponse$value$values<
    Fragment$FacetResponse$value$values
  >
  get copyWith => CopyWith$Fragment$FacetResponse$value$values(this, (i) => i);
}

abstract class CopyWith$Fragment$FacetResponse$value$values<TRes> {
  factory CopyWith$Fragment$FacetResponse$value$values(
    Fragment$FacetResponse$value$values instance,
    TRes Function(Fragment$FacetResponse$value$values) then,
  ) = _CopyWithImpl$Fragment$FacetResponse$value$values;

  factory CopyWith$Fragment$FacetResponse$value$values.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FacetResponse$value$values;

  TRes call({
    String? name,
    String? range,
    int? count,
    double? min,
    double? max,
    double? average,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FacetResponse$value$values<TRes>
    implements CopyWith$Fragment$FacetResponse$value$values<TRes> {
  _CopyWithImpl$Fragment$FacetResponse$value$values(this._instance, this._then);

  final Fragment$FacetResponse$value$values _instance;

  final TRes Function(Fragment$FacetResponse$value$values) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? range = _undefined,
    Object? count = _undefined,
    Object? min = _undefined,
    Object? max = _undefined,
    Object? average = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$FacetResponse$value$values(
      name: name == _undefined ? _instance.name : (name as String?),
      range: range == _undefined ? _instance.range : (range as String?),
      count: count == _undefined || count == null
          ? _instance.count
          : (count as int),
      min: min == _undefined ? _instance.min : (min as double?),
      max: max == _undefined ? _instance.max : (max as double?),
      average: average == _undefined ? _instance.average : (average as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$FacetResponse$value$values<TRes>
    implements CopyWith$Fragment$FacetResponse$value$values<TRes> {
  _CopyWithStubImpl$Fragment$FacetResponse$value$values(this._res);

  TRes _res;

  call({
    String? name,
    String? range,
    int? count,
    double? min,
    double? max,
    double? average,
    String? $__typename,
  }) => _res;
}
