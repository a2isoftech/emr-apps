import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$PriceListFacet {
  factory Variables$Query$PriceListFacet(
          {required Input$GetGuidePricesInput input}) =>
      Variables$Query$PriceListFacet._({
        r'input': input,
      });

  Variables$Query$PriceListFacet._(this._$data);

  factory Variables$Query$PriceListFacet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$GetGuidePricesInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$PriceListFacet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetGuidePricesInput get input =>
      (_$data['input'] as Input$GetGuidePricesInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$PriceListFacet<Variables$Query$PriceListFacet>
      get copyWith => CopyWith$Variables$Query$PriceListFacet(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PriceListFacet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$PriceListFacet<TRes> {
  factory CopyWith$Variables$Query$PriceListFacet(
    Variables$Query$PriceListFacet instance,
    TRes Function(Variables$Query$PriceListFacet) then,
  ) = _CopyWithImpl$Variables$Query$PriceListFacet;

  factory CopyWith$Variables$Query$PriceListFacet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PriceListFacet;

  TRes call({Input$GetGuidePricesInput? input});
}

class _CopyWithImpl$Variables$Query$PriceListFacet<TRes>
    implements CopyWith$Variables$Query$PriceListFacet<TRes> {
  _CopyWithImpl$Variables$Query$PriceListFacet(
    this._instance,
    this._then,
  );

  final Variables$Query$PriceListFacet _instance;

  final TRes Function(Variables$Query$PriceListFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$PriceListFacet._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$GetGuidePricesInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$PriceListFacet<TRes>
    implements CopyWith$Variables$Query$PriceListFacet<TRes> {
  _CopyWithStubImpl$Variables$Query$PriceListFacet(this._res);

  TRes _res;

  call({Input$GetGuidePricesInput? input}) => _res;
}

class Query$PriceListFacet {
  Query$PriceListFacet({
    required this.priceListFacet,
    this.$__typename = 'Query',
  });

  factory Query$PriceListFacet.fromJson(Map<String, dynamic> json) {
    final l$priceListFacet = json['priceListFacet'];
    final l$$__typename = json['__typename'];
    return Query$PriceListFacet(
      priceListFacet: (l$priceListFacet as List<dynamic>)
          .map((e) => Query$PriceListFacet$priceListFacet.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PriceListFacet$priceListFacet> priceListFacet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$priceListFacet = priceListFacet;
    _resultData['priceListFacet'] =
        l$priceListFacet.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$priceListFacet = priceListFacet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$priceListFacet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PriceListFacet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$priceListFacet = priceListFacet;
    final lOther$priceListFacet = other.priceListFacet;
    if (l$priceListFacet.length != lOther$priceListFacet.length) {
      return false;
    }
    for (int i = 0; i < l$priceListFacet.length; i++) {
      final l$priceListFacet$entry = l$priceListFacet[i];
      final lOther$priceListFacet$entry = lOther$priceListFacet[i];
      if (l$priceListFacet$entry != lOther$priceListFacet$entry) {
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

extension UtilityExtension$Query$PriceListFacet on Query$PriceListFacet {
  CopyWith$Query$PriceListFacet<Query$PriceListFacet> get copyWith =>
      CopyWith$Query$PriceListFacet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PriceListFacet<TRes> {
  factory CopyWith$Query$PriceListFacet(
    Query$PriceListFacet instance,
    TRes Function(Query$PriceListFacet) then,
  ) = _CopyWithImpl$Query$PriceListFacet;

  factory CopyWith$Query$PriceListFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$PriceListFacet;

  TRes call({
    List<Query$PriceListFacet$priceListFacet>? priceListFacet,
    String? $__typename,
  });
  TRes priceListFacet(
      Iterable<Query$PriceListFacet$priceListFacet> Function(
              Iterable<
                  CopyWith$Query$PriceListFacet$priceListFacet<
                      Query$PriceListFacet$priceListFacet>>)
          _fn);
}

class _CopyWithImpl$Query$PriceListFacet<TRes>
    implements CopyWith$Query$PriceListFacet<TRes> {
  _CopyWithImpl$Query$PriceListFacet(
    this._instance,
    this._then,
  );

  final Query$PriceListFacet _instance;

  final TRes Function(Query$PriceListFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priceListFacet = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PriceListFacet(
        priceListFacet: priceListFacet == _undefined || priceListFacet == null
            ? _instance.priceListFacet
            : (priceListFacet as List<Query$PriceListFacet$priceListFacet>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes priceListFacet(
          Iterable<Query$PriceListFacet$priceListFacet> Function(
                  Iterable<
                      CopyWith$Query$PriceListFacet$priceListFacet<
                          Query$PriceListFacet$priceListFacet>>)
              _fn) =>
      call(
          priceListFacet: _fn(_instance.priceListFacet
              .map((e) => CopyWith$Query$PriceListFacet$priceListFacet(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PriceListFacet<TRes>
    implements CopyWith$Query$PriceListFacet<TRes> {
  _CopyWithStubImpl$Query$PriceListFacet(this._res);

  TRes _res;

  call({
    List<Query$PriceListFacet$priceListFacet>? priceListFacet,
    String? $__typename,
  }) =>
      _res;

  priceListFacet(_fn) => _res;
}

const documentNodeQueryPriceListFacet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PriceListFacet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetGuidePricesInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'priceListFacet'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            selectionSet: SelectionSetNode(selections: [
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
                selectionSet: SelectionSetNode(selections: [
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

class Query$PriceListFacet$priceListFacet {
  Query$PriceListFacet$priceListFacet({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$PriceListFacet$priceListFacet.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$PriceListFacet$priceListFacet(
      key: (l$key as String),
      value: Query$PriceListFacet$priceListFacet$value.fromJson(
          (l$value as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$PriceListFacet$priceListFacet$value value;

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
    return Object.hashAll([
      l$key,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PriceListFacet$priceListFacet ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$PriceListFacet$priceListFacet
    on Query$PriceListFacet$priceListFacet {
  CopyWith$Query$PriceListFacet$priceListFacet<
          Query$PriceListFacet$priceListFacet>
      get copyWith => CopyWith$Query$PriceListFacet$priceListFacet(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PriceListFacet$priceListFacet<TRes> {
  factory CopyWith$Query$PriceListFacet$priceListFacet(
    Query$PriceListFacet$priceListFacet instance,
    TRes Function(Query$PriceListFacet$priceListFacet) then,
  ) = _CopyWithImpl$Query$PriceListFacet$priceListFacet;

  factory CopyWith$Query$PriceListFacet$priceListFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$PriceListFacet$priceListFacet;

  TRes call({
    String? key,
    Query$PriceListFacet$priceListFacet$value? value,
    String? $__typename,
  });
  CopyWith$Query$PriceListFacet$priceListFacet$value<TRes> get value;
}

class _CopyWithImpl$Query$PriceListFacet$priceListFacet<TRes>
    implements CopyWith$Query$PriceListFacet$priceListFacet<TRes> {
  _CopyWithImpl$Query$PriceListFacet$priceListFacet(
    this._instance,
    this._then,
  );

  final Query$PriceListFacet$priceListFacet _instance;

  final TRes Function(Query$PriceListFacet$priceListFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PriceListFacet$priceListFacet(
        key: key == _undefined || key == null ? _instance.key : (key as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as Query$PriceListFacet$priceListFacet$value),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PriceListFacet$priceListFacet$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Query$PriceListFacet$priceListFacet$value(
        local$value, (e) => call(value: e));
  }
}

class _CopyWithStubImpl$Query$PriceListFacet$priceListFacet<TRes>
    implements CopyWith$Query$PriceListFacet$priceListFacet<TRes> {
  _CopyWithStubImpl$Query$PriceListFacet$priceListFacet(this._res);

  TRes _res;

  call({
    String? key,
    Query$PriceListFacet$priceListFacet$value? value,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PriceListFacet$priceListFacet$value<TRes> get value =>
      CopyWith$Query$PriceListFacet$priceListFacet$value.stub(_res);
}

class Query$PriceListFacet$priceListFacet$value {
  Query$PriceListFacet$priceListFacet$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$PriceListFacet$priceListFacet$value.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$PriceListFacet$priceListFacet$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$PriceListFacet$priceListFacet$value$values.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$PriceListFacet$priceListFacet$value$values?>? values;

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
    if (other is! Query$PriceListFacet$priceListFacet$value ||
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

extension UtilityExtension$Query$PriceListFacet$priceListFacet$value
    on Query$PriceListFacet$priceListFacet$value {
  CopyWith$Query$PriceListFacet$priceListFacet$value<
          Query$PriceListFacet$priceListFacet$value>
      get copyWith => CopyWith$Query$PriceListFacet$priceListFacet$value(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PriceListFacet$priceListFacet$value<TRes> {
  factory CopyWith$Query$PriceListFacet$priceListFacet$value(
    Query$PriceListFacet$priceListFacet$value instance,
    TRes Function(Query$PriceListFacet$priceListFacet$value) then,
  ) = _CopyWithImpl$Query$PriceListFacet$priceListFacet$value;

  factory CopyWith$Query$PriceListFacet$priceListFacet$value.stub(TRes res) =
      _CopyWithStubImpl$Query$PriceListFacet$priceListFacet$value;

  TRes call({
    String? name,
    List<Query$PriceListFacet$priceListFacet$value$values?>? values,
    String? $__typename,
  });
  TRes values(
      Iterable<Query$PriceListFacet$priceListFacet$value$values?>? Function(
              Iterable<
                  CopyWith$Query$PriceListFacet$priceListFacet$value$values<
                      Query$PriceListFacet$priceListFacet$value$values>?>?)
          _fn);
}

class _CopyWithImpl$Query$PriceListFacet$priceListFacet$value<TRes>
    implements CopyWith$Query$PriceListFacet$priceListFacet$value<TRes> {
  _CopyWithImpl$Query$PriceListFacet$priceListFacet$value(
    this._instance,
    this._then,
  );

  final Query$PriceListFacet$priceListFacet$value _instance;

  final TRes Function(Query$PriceListFacet$priceListFacet$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PriceListFacet$priceListFacet$value(
        name: name == _undefined ? _instance.name : (name as String?),
        values: values == _undefined
            ? _instance.values
            : (values
                as List<Query$PriceListFacet$priceListFacet$value$values?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes values(
          Iterable<Query$PriceListFacet$priceListFacet$value$values?>? Function(
                  Iterable<
                      CopyWith$Query$PriceListFacet$priceListFacet$value$values<
                          Query$PriceListFacet$priceListFacet$value$values>?>?)
              _fn) =>
      call(
          values: _fn(_instance.values?.map((e) => e == null
              ? null
              : CopyWith$Query$PriceListFacet$priceListFacet$value$values(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$PriceListFacet$priceListFacet$value<TRes>
    implements CopyWith$Query$PriceListFacet$priceListFacet$value<TRes> {
  _CopyWithStubImpl$Query$PriceListFacet$priceListFacet$value(this._res);

  TRes _res;

  call({
    String? name,
    List<Query$PriceListFacet$priceListFacet$value$values?>? values,
    String? $__typename,
  }) =>
      _res;

  values(_fn) => _res;
}

class Query$PriceListFacet$priceListFacet$value$values {
  Query$PriceListFacet$priceListFacet$value$values({
    this.range,
    required this.count,
    this.$__typename = 'FacetValue',
  });

  factory Query$PriceListFacet$priceListFacet$value$values.fromJson(
      Map<String, dynamic> json) {
    final l$range = json['range'];
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$PriceListFacet$priceListFacet$value$values(
      range: (l$range as String?),
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? range;

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$range = range;
    _resultData['range'] = l$range;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$range = range;
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$range,
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PriceListFacet$priceListFacet$value$values ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PriceListFacet$priceListFacet$value$values
    on Query$PriceListFacet$priceListFacet$value$values {
  CopyWith$Query$PriceListFacet$priceListFacet$value$values<
          Query$PriceListFacet$priceListFacet$value$values>
      get copyWith => CopyWith$Query$PriceListFacet$priceListFacet$value$values(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PriceListFacet$priceListFacet$value$values<TRes> {
  factory CopyWith$Query$PriceListFacet$priceListFacet$value$values(
    Query$PriceListFacet$priceListFacet$value$values instance,
    TRes Function(Query$PriceListFacet$priceListFacet$value$values) then,
  ) = _CopyWithImpl$Query$PriceListFacet$priceListFacet$value$values;

  factory CopyWith$Query$PriceListFacet$priceListFacet$value$values.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PriceListFacet$priceListFacet$value$values;

  TRes call({
    String? range,
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PriceListFacet$priceListFacet$value$values<TRes>
    implements CopyWith$Query$PriceListFacet$priceListFacet$value$values<TRes> {
  _CopyWithImpl$Query$PriceListFacet$priceListFacet$value$values(
    this._instance,
    this._then,
  );

  final Query$PriceListFacet$priceListFacet$value$values _instance;

  final TRes Function(Query$PriceListFacet$priceListFacet$value$values) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? range = _undefined,
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PriceListFacet$priceListFacet$value$values(
        range: range == _undefined ? _instance.range : (range as String?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PriceListFacet$priceListFacet$value$values<TRes>
    implements CopyWith$Query$PriceListFacet$priceListFacet$value$values<TRes> {
  _CopyWithStubImpl$Query$PriceListFacet$priceListFacet$value$values(this._res);

  TRes _res;

  call({
    String? range,
    int? count,
    String? $__typename,
  }) =>
      _res;
}
