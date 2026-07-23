import 'package:gql/ast.dart';

class Query$GetMarketIndicatorSettings {
  Query$GetMarketIndicatorSettings({
    required this.account,
    this.$__typename = 'Query',
  });

  factory Query$GetMarketIndicatorSettings.fromJson(Map<String, dynamic> json) {
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetMarketIndicatorSettings(
      account: Query$GetMarketIndicatorSettings$account.fromJson(
          (l$account as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMarketIndicatorSettings$account account;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$account = account;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$account,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMarketIndicatorSettings) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
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

extension UtilityExtension$Query$GetMarketIndicatorSettings
    on Query$GetMarketIndicatorSettings {
  CopyWith$Query$GetMarketIndicatorSettings<Query$GetMarketIndicatorSettings>
      get copyWith => CopyWith$Query$GetMarketIndicatorSettings(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMarketIndicatorSettings<TRes> {
  factory CopyWith$Query$GetMarketIndicatorSettings(
    Query$GetMarketIndicatorSettings instance,
    TRes Function(Query$GetMarketIndicatorSettings) then,
  ) = _CopyWithImpl$Query$GetMarketIndicatorSettings;

  factory CopyWith$Query$GetMarketIndicatorSettings.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMarketIndicatorSettings;

  TRes call({
    Query$GetMarketIndicatorSettings$account? account,
    String? $__typename,
  });
  CopyWith$Query$GetMarketIndicatorSettings$account<TRes> get account;
}

class _CopyWithImpl$Query$GetMarketIndicatorSettings<TRes>
    implements CopyWith$Query$GetMarketIndicatorSettings<TRes> {
  _CopyWithImpl$Query$GetMarketIndicatorSettings(
    this._instance,
    this._then,
  );

  final Query$GetMarketIndicatorSettings _instance;

  final TRes Function(Query$GetMarketIndicatorSettings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMarketIndicatorSettings(
        account: account == _undefined || account == null
            ? _instance.account
            : (account as Query$GetMarketIndicatorSettings$account),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMarketIndicatorSettings$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$GetMarketIndicatorSettings$account(
        local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$GetMarketIndicatorSettings<TRes>
    implements CopyWith$Query$GetMarketIndicatorSettings<TRes> {
  _CopyWithStubImpl$Query$GetMarketIndicatorSettings(this._res);

  TRes _res;

  call({
    Query$GetMarketIndicatorSettings$account? account,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMarketIndicatorSettings$account<TRes> get account =>
      CopyWith$Query$GetMarketIndicatorSettings$account.stub(_res);
}

const documentNodeQueryGetMarketIndicatorSettings = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMarketIndicatorSettings'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'account'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'settings'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'marketIndicatorEnabled'),
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
]);

class Query$GetMarketIndicatorSettings$account {
  Query$GetMarketIndicatorSettings$account({
    required this.settings,
    this.$__typename = 'Account',
  });

  factory Query$GetMarketIndicatorSettings$account.fromJson(
      Map<String, dynamic> json) {
    final l$settings = json['settings'];
    final l$$__typename = json['__typename'];
    return Query$GetMarketIndicatorSettings$account(
      settings: Query$GetMarketIndicatorSettings$account$settings.fromJson(
          (l$settings as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMarketIndicatorSettings$account$settings settings;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$settings = settings;
    _resultData['settings'] = l$settings.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$settings = settings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$settings,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMarketIndicatorSettings$account) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$settings = settings;
    final lOther$settings = other.settings;
    if (l$settings != lOther$settings) {
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

extension UtilityExtension$Query$GetMarketIndicatorSettings$account
    on Query$GetMarketIndicatorSettings$account {
  CopyWith$Query$GetMarketIndicatorSettings$account<
          Query$GetMarketIndicatorSettings$account>
      get copyWith => CopyWith$Query$GetMarketIndicatorSettings$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMarketIndicatorSettings$account<TRes> {
  factory CopyWith$Query$GetMarketIndicatorSettings$account(
    Query$GetMarketIndicatorSettings$account instance,
    TRes Function(Query$GetMarketIndicatorSettings$account) then,
  ) = _CopyWithImpl$Query$GetMarketIndicatorSettings$account;

  factory CopyWith$Query$GetMarketIndicatorSettings$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMarketIndicatorSettings$account;

  TRes call({
    Query$GetMarketIndicatorSettings$account$settings? settings,
    String? $__typename,
  });
  CopyWith$Query$GetMarketIndicatorSettings$account$settings<TRes> get settings;
}

class _CopyWithImpl$Query$GetMarketIndicatorSettings$account<TRes>
    implements CopyWith$Query$GetMarketIndicatorSettings$account<TRes> {
  _CopyWithImpl$Query$GetMarketIndicatorSettings$account(
    this._instance,
    this._then,
  );

  final Query$GetMarketIndicatorSettings$account _instance;

  final TRes Function(Query$GetMarketIndicatorSettings$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? settings = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMarketIndicatorSettings$account(
        settings: settings == _undefined || settings == null
            ? _instance.settings
            : (settings as Query$GetMarketIndicatorSettings$account$settings),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMarketIndicatorSettings$account$settings<TRes>
      get settings {
    final local$settings = _instance.settings;
    return CopyWith$Query$GetMarketIndicatorSettings$account$settings(
        local$settings, (e) => call(settings: e));
  }
}

class _CopyWithStubImpl$Query$GetMarketIndicatorSettings$account<TRes>
    implements CopyWith$Query$GetMarketIndicatorSettings$account<TRes> {
  _CopyWithStubImpl$Query$GetMarketIndicatorSettings$account(this._res);

  TRes _res;

  call({
    Query$GetMarketIndicatorSettings$account$settings? settings,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMarketIndicatorSettings$account$settings<TRes>
      get settings =>
          CopyWith$Query$GetMarketIndicatorSettings$account$settings.stub(_res);
}

class Query$GetMarketIndicatorSettings$account$settings {
  Query$GetMarketIndicatorSettings$account$settings({
    required this.marketIndicatorEnabled,
    this.$__typename = 'AccountSettings',
  });

  factory Query$GetMarketIndicatorSettings$account$settings.fromJson(
      Map<String, dynamic> json) {
    final l$marketIndicatorEnabled = json['marketIndicatorEnabled'];
    final l$$__typename = json['__typename'];
    return Query$GetMarketIndicatorSettings$account$settings(
      marketIndicatorEnabled: (l$marketIndicatorEnabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool marketIndicatorEnabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$marketIndicatorEnabled = marketIndicatorEnabled;
    _resultData['marketIndicatorEnabled'] = l$marketIndicatorEnabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$marketIndicatorEnabled = marketIndicatorEnabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$marketIndicatorEnabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMarketIndicatorSettings$account$settings) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$marketIndicatorEnabled = marketIndicatorEnabled;
    final lOther$marketIndicatorEnabled = other.marketIndicatorEnabled;
    if (l$marketIndicatorEnabled != lOther$marketIndicatorEnabled) {
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

extension UtilityExtension$Query$GetMarketIndicatorSettings$account$settings
    on Query$GetMarketIndicatorSettings$account$settings {
  CopyWith$Query$GetMarketIndicatorSettings$account$settings<
          Query$GetMarketIndicatorSettings$account$settings>
      get copyWith =>
          CopyWith$Query$GetMarketIndicatorSettings$account$settings(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMarketIndicatorSettings$account$settings<
    TRes> {
  factory CopyWith$Query$GetMarketIndicatorSettings$account$settings(
    Query$GetMarketIndicatorSettings$account$settings instance,
    TRes Function(Query$GetMarketIndicatorSettings$account$settings) then,
  ) = _CopyWithImpl$Query$GetMarketIndicatorSettings$account$settings;

  factory CopyWith$Query$GetMarketIndicatorSettings$account$settings.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMarketIndicatorSettings$account$settings;

  TRes call({
    bool? marketIndicatorEnabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMarketIndicatorSettings$account$settings<TRes>
    implements
        CopyWith$Query$GetMarketIndicatorSettings$account$settings<TRes> {
  _CopyWithImpl$Query$GetMarketIndicatorSettings$account$settings(
    this._instance,
    this._then,
  );

  final Query$GetMarketIndicatorSettings$account$settings _instance;

  final TRes Function(Query$GetMarketIndicatorSettings$account$settings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? marketIndicatorEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMarketIndicatorSettings$account$settings(
        marketIndicatorEnabled: marketIndicatorEnabled == _undefined ||
                marketIndicatorEnabled == null
            ? _instance.marketIndicatorEnabled
            : (marketIndicatorEnabled as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMarketIndicatorSettings$account$settings<TRes>
    implements
        CopyWith$Query$GetMarketIndicatorSettings$account$settings<TRes> {
  _CopyWithStubImpl$Query$GetMarketIndicatorSettings$account$settings(
      this._res);

  TRes _res;

  call({
    bool? marketIndicatorEnabled,
    String? $__typename,
  }) =>
      _res;
}
