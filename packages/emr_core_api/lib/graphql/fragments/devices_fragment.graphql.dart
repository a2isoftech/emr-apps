import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$DevicesFragment {
  Fragment$DevicesFragment({
    required this.id,
    required this.yardCode,
    required this.yardId,
    required this.atmServers,
    required this.cashierCameras,
    required this.chequePrinters,
    required this.fingerprintScanners,
    required this.idWebcams,
    required this.remittancePrinters,
    this.$__typename = 'Devices',
  });

  factory Fragment$DevicesFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$yardCode = json['yardCode'];
    final l$yardId = json['yardId'];
    final l$atmServers = json['atmServers'];
    final l$cashierCameras = json['cashierCameras'];
    final l$chequePrinters = json['chequePrinters'];
    final l$fingerprintScanners = json['fingerprintScanners'];
    final l$idWebcams = json['idWebcams'];
    final l$remittancePrinters = json['remittancePrinters'];
    final l$$__typename = json['__typename'];
    return Fragment$DevicesFragment(
      id: (l$id as String),
      yardCode: (l$yardCode as String),
      yardId: (l$yardId as String),
      atmServers: (l$atmServers as List<dynamic>)
          .map(
            (e) => Fragment$DevicesFragment$atmServers.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      cashierCameras: (l$cashierCameras as List<dynamic>)
          .map(
            (e) => Fragment$DevicesFragment$cashierCameras.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      chequePrinters: (l$chequePrinters as List<dynamic>)
          .map(
            (e) => Fragment$DevicesFragment$chequePrinters.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      fingerprintScanners: (l$fingerprintScanners as List<dynamic>)
          .map(
            (e) => Fragment$DevicesFragment$fingerprintScanners.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      idWebcams: (l$idWebcams as List<dynamic>)
          .map(
            (e) => Fragment$DevicesFragment$idWebcams.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      remittancePrinters: (l$remittancePrinters as List<dynamic>)
          .map(
            (e) => Fragment$DevicesFragment$remittancePrinters.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String yardCode;

  final String yardId;

  final List<Fragment$DevicesFragment$atmServers> atmServers;

  final List<Fragment$DevicesFragment$cashierCameras> cashierCameras;

  final List<Fragment$DevicesFragment$chequePrinters> chequePrinters;

  final List<Fragment$DevicesFragment$fingerprintScanners> fingerprintScanners;

  final List<Fragment$DevicesFragment$idWebcams> idWebcams;

  final List<Fragment$DevicesFragment$remittancePrinters> remittancePrinters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$atmServers = atmServers;
    _resultData['atmServers'] = l$atmServers.map((e) => e.toJson()).toList();
    final l$cashierCameras = cashierCameras;
    _resultData['cashierCameras'] = l$cashierCameras
        .map((e) => e.toJson())
        .toList();
    final l$chequePrinters = chequePrinters;
    _resultData['chequePrinters'] = l$chequePrinters
        .map((e) => e.toJson())
        .toList();
    final l$fingerprintScanners = fingerprintScanners;
    _resultData['fingerprintScanners'] = l$fingerprintScanners
        .map((e) => e.toJson())
        .toList();
    final l$idWebcams = idWebcams;
    _resultData['idWebcams'] = l$idWebcams.map((e) => e.toJson()).toList();
    final l$remittancePrinters = remittancePrinters;
    _resultData['remittancePrinters'] = l$remittancePrinters
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$yardCode = yardCode;
    final l$yardId = yardId;
    final l$atmServers = atmServers;
    final l$cashierCameras = cashierCameras;
    final l$chequePrinters = chequePrinters;
    final l$fingerprintScanners = fingerprintScanners;
    final l$idWebcams = idWebcams;
    final l$remittancePrinters = remittancePrinters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$yardCode,
      l$yardId,
      Object.hashAll(l$atmServers.map((v) => v)),
      Object.hashAll(l$cashierCameras.map((v) => v)),
      Object.hashAll(l$chequePrinters.map((v) => v)),
      Object.hashAll(l$fingerprintScanners.map((v) => v)),
      Object.hashAll(l$idWebcams.map((v) => v)),
      Object.hashAll(l$remittancePrinters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DevicesFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$atmServers = atmServers;
    final lOther$atmServers = other.atmServers;
    if (l$atmServers.length != lOther$atmServers.length) {
      return false;
    }
    for (int i = 0; i < l$atmServers.length; i++) {
      final l$atmServers$entry = l$atmServers[i];
      final lOther$atmServers$entry = lOther$atmServers[i];
      if (l$atmServers$entry != lOther$atmServers$entry) {
        return false;
      }
    }
    final l$cashierCameras = cashierCameras;
    final lOther$cashierCameras = other.cashierCameras;
    if (l$cashierCameras.length != lOther$cashierCameras.length) {
      return false;
    }
    for (int i = 0; i < l$cashierCameras.length; i++) {
      final l$cashierCameras$entry = l$cashierCameras[i];
      final lOther$cashierCameras$entry = lOther$cashierCameras[i];
      if (l$cashierCameras$entry != lOther$cashierCameras$entry) {
        return false;
      }
    }
    final l$chequePrinters = chequePrinters;
    final lOther$chequePrinters = other.chequePrinters;
    if (l$chequePrinters.length != lOther$chequePrinters.length) {
      return false;
    }
    for (int i = 0; i < l$chequePrinters.length; i++) {
      final l$chequePrinters$entry = l$chequePrinters[i];
      final lOther$chequePrinters$entry = lOther$chequePrinters[i];
      if (l$chequePrinters$entry != lOther$chequePrinters$entry) {
        return false;
      }
    }
    final l$fingerprintScanners = fingerprintScanners;
    final lOther$fingerprintScanners = other.fingerprintScanners;
    if (l$fingerprintScanners.length != lOther$fingerprintScanners.length) {
      return false;
    }
    for (int i = 0; i < l$fingerprintScanners.length; i++) {
      final l$fingerprintScanners$entry = l$fingerprintScanners[i];
      final lOther$fingerprintScanners$entry = lOther$fingerprintScanners[i];
      if (l$fingerprintScanners$entry != lOther$fingerprintScanners$entry) {
        return false;
      }
    }
    final l$idWebcams = idWebcams;
    final lOther$idWebcams = other.idWebcams;
    if (l$idWebcams.length != lOther$idWebcams.length) {
      return false;
    }
    for (int i = 0; i < l$idWebcams.length; i++) {
      final l$idWebcams$entry = l$idWebcams[i];
      final lOther$idWebcams$entry = lOther$idWebcams[i];
      if (l$idWebcams$entry != lOther$idWebcams$entry) {
        return false;
      }
    }
    final l$remittancePrinters = remittancePrinters;
    final lOther$remittancePrinters = other.remittancePrinters;
    if (l$remittancePrinters.length != lOther$remittancePrinters.length) {
      return false;
    }
    for (int i = 0; i < l$remittancePrinters.length; i++) {
      final l$remittancePrinters$entry = l$remittancePrinters[i];
      final lOther$remittancePrinters$entry = lOther$remittancePrinters[i];
      if (l$remittancePrinters$entry != lOther$remittancePrinters$entry) {
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

extension UtilityExtension$Fragment$DevicesFragment
    on Fragment$DevicesFragment {
  CopyWith$Fragment$DevicesFragment<Fragment$DevicesFragment> get copyWith =>
      CopyWith$Fragment$DevicesFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$DevicesFragment<TRes> {
  factory CopyWith$Fragment$DevicesFragment(
    Fragment$DevicesFragment instance,
    TRes Function(Fragment$DevicesFragment) then,
  ) = _CopyWithImpl$Fragment$DevicesFragment;

  factory CopyWith$Fragment$DevicesFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DevicesFragment;

  TRes call({
    String? id,
    String? yardCode,
    String? yardId,
    List<Fragment$DevicesFragment$atmServers>? atmServers,
    List<Fragment$DevicesFragment$cashierCameras>? cashierCameras,
    List<Fragment$DevicesFragment$chequePrinters>? chequePrinters,
    List<Fragment$DevicesFragment$fingerprintScanners>? fingerprintScanners,
    List<Fragment$DevicesFragment$idWebcams>? idWebcams,
    List<Fragment$DevicesFragment$remittancePrinters>? remittancePrinters,
    String? $__typename,
  });
  TRes atmServers(
    Iterable<Fragment$DevicesFragment$atmServers> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$atmServers<
          Fragment$DevicesFragment$atmServers
        >
      >,
    )
    _fn,
  );
  TRes cashierCameras(
    Iterable<Fragment$DevicesFragment$cashierCameras> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$cashierCameras<
          Fragment$DevicesFragment$cashierCameras
        >
      >,
    )
    _fn,
  );
  TRes chequePrinters(
    Iterable<Fragment$DevicesFragment$chequePrinters> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$chequePrinters<
          Fragment$DevicesFragment$chequePrinters
        >
      >,
    )
    _fn,
  );
  TRes fingerprintScanners(
    Iterable<Fragment$DevicesFragment$fingerprintScanners> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$fingerprintScanners<
          Fragment$DevicesFragment$fingerprintScanners
        >
      >,
    )
    _fn,
  );
  TRes idWebcams(
    Iterable<Fragment$DevicesFragment$idWebcams> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$idWebcams<
          Fragment$DevicesFragment$idWebcams
        >
      >,
    )
    _fn,
  );
  TRes remittancePrinters(
    Iterable<Fragment$DevicesFragment$remittancePrinters> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$remittancePrinters<
          Fragment$DevicesFragment$remittancePrinters
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$DevicesFragment<TRes>
    implements CopyWith$Fragment$DevicesFragment<TRes> {
  _CopyWithImpl$Fragment$DevicesFragment(this._instance, this._then);

  final Fragment$DevicesFragment _instance;

  final TRes Function(Fragment$DevicesFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardCode = _undefined,
    Object? yardId = _undefined,
    Object? atmServers = _undefined,
    Object? cashierCameras = _undefined,
    Object? chequePrinters = _undefined,
    Object? fingerprintScanners = _undefined,
    Object? idWebcams = _undefined,
    Object? remittancePrinters = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DevicesFragment(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      atmServers: atmServers == _undefined || atmServers == null
          ? _instance.atmServers
          : (atmServers as List<Fragment$DevicesFragment$atmServers>),
      cashierCameras: cashierCameras == _undefined || cashierCameras == null
          ? _instance.cashierCameras
          : (cashierCameras as List<Fragment$DevicesFragment$cashierCameras>),
      chequePrinters: chequePrinters == _undefined || chequePrinters == null
          ? _instance.chequePrinters
          : (chequePrinters as List<Fragment$DevicesFragment$chequePrinters>),
      fingerprintScanners:
          fingerprintScanners == _undefined || fingerprintScanners == null
          ? _instance.fingerprintScanners
          : (fingerprintScanners
                as List<Fragment$DevicesFragment$fingerprintScanners>),
      idWebcams: idWebcams == _undefined || idWebcams == null
          ? _instance.idWebcams
          : (idWebcams as List<Fragment$DevicesFragment$idWebcams>),
      remittancePrinters:
          remittancePrinters == _undefined || remittancePrinters == null
          ? _instance.remittancePrinters
          : (remittancePrinters
                as List<Fragment$DevicesFragment$remittancePrinters>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes atmServers(
    Iterable<Fragment$DevicesFragment$atmServers> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$atmServers<
          Fragment$DevicesFragment$atmServers
        >
      >,
    )
    _fn,
  ) => call(
    atmServers: _fn(
      _instance.atmServers.map(
        (e) => CopyWith$Fragment$DevicesFragment$atmServers(e, (i) => i),
      ),
    ).toList(),
  );

  TRes cashierCameras(
    Iterable<Fragment$DevicesFragment$cashierCameras> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$cashierCameras<
          Fragment$DevicesFragment$cashierCameras
        >
      >,
    )
    _fn,
  ) => call(
    cashierCameras: _fn(
      _instance.cashierCameras.map(
        (e) => CopyWith$Fragment$DevicesFragment$cashierCameras(e, (i) => i),
      ),
    ).toList(),
  );

  TRes chequePrinters(
    Iterable<Fragment$DevicesFragment$chequePrinters> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$chequePrinters<
          Fragment$DevicesFragment$chequePrinters
        >
      >,
    )
    _fn,
  ) => call(
    chequePrinters: _fn(
      _instance.chequePrinters.map(
        (e) => CopyWith$Fragment$DevicesFragment$chequePrinters(e, (i) => i),
      ),
    ).toList(),
  );

  TRes fingerprintScanners(
    Iterable<Fragment$DevicesFragment$fingerprintScanners> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$fingerprintScanners<
          Fragment$DevicesFragment$fingerprintScanners
        >
      >,
    )
    _fn,
  ) => call(
    fingerprintScanners: _fn(
      _instance.fingerprintScanners.map(
        (e) =>
            CopyWith$Fragment$DevicesFragment$fingerprintScanners(e, (i) => i),
      ),
    ).toList(),
  );

  TRes idWebcams(
    Iterable<Fragment$DevicesFragment$idWebcams> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$idWebcams<
          Fragment$DevicesFragment$idWebcams
        >
      >,
    )
    _fn,
  ) => call(
    idWebcams: _fn(
      _instance.idWebcams.map(
        (e) => CopyWith$Fragment$DevicesFragment$idWebcams(e, (i) => i),
      ),
    ).toList(),
  );

  TRes remittancePrinters(
    Iterable<Fragment$DevicesFragment$remittancePrinters> Function(
      Iterable<
        CopyWith$Fragment$DevicesFragment$remittancePrinters<
          Fragment$DevicesFragment$remittancePrinters
        >
      >,
    )
    _fn,
  ) => call(
    remittancePrinters: _fn(
      _instance.remittancePrinters.map(
        (e) =>
            CopyWith$Fragment$DevicesFragment$remittancePrinters(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$DevicesFragment<TRes>
    implements CopyWith$Fragment$DevicesFragment<TRes> {
  _CopyWithStubImpl$Fragment$DevicesFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? yardCode,
    String? yardId,
    List<Fragment$DevicesFragment$atmServers>? atmServers,
    List<Fragment$DevicesFragment$cashierCameras>? cashierCameras,
    List<Fragment$DevicesFragment$chequePrinters>? chequePrinters,
    List<Fragment$DevicesFragment$fingerprintScanners>? fingerprintScanners,
    List<Fragment$DevicesFragment$idWebcams>? idWebcams,
    List<Fragment$DevicesFragment$remittancePrinters>? remittancePrinters,
    String? $__typename,
  }) => _res;

  atmServers(_fn) => _res;

  cashierCameras(_fn) => _res;

  chequePrinters(_fn) => _res;

  fingerprintScanners(_fn) => _res;

  idWebcams(_fn) => _res;

  remittancePrinters(_fn) => _res;
}

const fragmentDefinitionDevicesFragment = FragmentDefinitionNode(
  name: NameNode(value: 'DevicesFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Devices'), isNonNull: false),
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
        name: NameNode(value: 'yardCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'yardId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'atmServers'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'apiKey'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'atmServerDeviceType'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'authorisationAPIEndpoint'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'deviceId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'encryptionKey'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'ipAddress'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'paymentAPIEndPoint'),
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
        name: NameNode(value: 'cashierCameras'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'ipAddress'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
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
        name: NameNode(value: 'chequePrinters'),
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
              name: NameNode(value: 'printerName'),
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
        name: NameNode(value: 'fingerprintScanners'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'ipAddress'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
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
        name: NameNode(value: 'idWebcams'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'ipAddress'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
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
        name: NameNode(value: 'remittancePrinters'),
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
              name: NameNode(value: 'printerName'),
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
const documentNodeFragmentDevicesFragment = DocumentNode(
  definitions: [fragmentDefinitionDevicesFragment],
);

class Fragment$DevicesFragment$atmServers {
  Fragment$DevicesFragment$atmServers({
    required this.apiKey,
    required this.atmServerDeviceType,
    required this.authorisationAPIEndpoint,
    required this.deviceId,
    required this.encryptionKey,
    required this.ipAddress,
    required this.name,
    required this.paymentAPIEndPoint,
    this.$__typename = 'ATMServerDevice',
  });

  factory Fragment$DevicesFragment$atmServers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$apiKey = json['apiKey'];
    final l$atmServerDeviceType = json['atmServerDeviceType'];
    final l$authorisationAPIEndpoint = json['authorisationAPIEndpoint'];
    final l$deviceId = json['deviceId'];
    final l$encryptionKey = json['encryptionKey'];
    final l$ipAddress = json['ipAddress'];
    final l$name = json['name'];
    final l$paymentAPIEndPoint = json['paymentAPIEndPoint'];
    final l$$__typename = json['__typename'];
    return Fragment$DevicesFragment$atmServers(
      apiKey: (l$apiKey as String),
      atmServerDeviceType: fromJson$Enum$ATMServerDeviceType(
        (l$atmServerDeviceType as String),
      ),
      authorisationAPIEndpoint: (l$authorisationAPIEndpoint as String),
      deviceId: (l$deviceId as String),
      encryptionKey: (l$encryptionKey as String),
      ipAddress: (l$ipAddress as String),
      name: (l$name as String),
      paymentAPIEndPoint: (l$paymentAPIEndPoint as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String apiKey;

  final Enum$ATMServerDeviceType atmServerDeviceType;

  final String authorisationAPIEndpoint;

  final String deviceId;

  final String encryptionKey;

  final String ipAddress;

  final String name;

  final String paymentAPIEndPoint;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$apiKey = apiKey;
    _resultData['apiKey'] = l$apiKey;
    final l$atmServerDeviceType = atmServerDeviceType;
    _resultData['atmServerDeviceType'] = toJson$Enum$ATMServerDeviceType(
      l$atmServerDeviceType,
    );
    final l$authorisationAPIEndpoint = authorisationAPIEndpoint;
    _resultData['authorisationAPIEndpoint'] = l$authorisationAPIEndpoint;
    final l$deviceId = deviceId;
    _resultData['deviceId'] = l$deviceId;
    final l$encryptionKey = encryptionKey;
    _resultData['encryptionKey'] = l$encryptionKey;
    final l$ipAddress = ipAddress;
    _resultData['ipAddress'] = l$ipAddress;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$paymentAPIEndPoint = paymentAPIEndPoint;
    _resultData['paymentAPIEndPoint'] = l$paymentAPIEndPoint;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$apiKey = apiKey;
    final l$atmServerDeviceType = atmServerDeviceType;
    final l$authorisationAPIEndpoint = authorisationAPIEndpoint;
    final l$deviceId = deviceId;
    final l$encryptionKey = encryptionKey;
    final l$ipAddress = ipAddress;
    final l$name = name;
    final l$paymentAPIEndPoint = paymentAPIEndPoint;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$apiKey,
      l$atmServerDeviceType,
      l$authorisationAPIEndpoint,
      l$deviceId,
      l$encryptionKey,
      l$ipAddress,
      l$name,
      l$paymentAPIEndPoint,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DevicesFragment$atmServers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apiKey = apiKey;
    final lOther$apiKey = other.apiKey;
    if (l$apiKey != lOther$apiKey) {
      return false;
    }
    final l$atmServerDeviceType = atmServerDeviceType;
    final lOther$atmServerDeviceType = other.atmServerDeviceType;
    if (l$atmServerDeviceType != lOther$atmServerDeviceType) {
      return false;
    }
    final l$authorisationAPIEndpoint = authorisationAPIEndpoint;
    final lOther$authorisationAPIEndpoint = other.authorisationAPIEndpoint;
    if (l$authorisationAPIEndpoint != lOther$authorisationAPIEndpoint) {
      return false;
    }
    final l$deviceId = deviceId;
    final lOther$deviceId = other.deviceId;
    if (l$deviceId != lOther$deviceId) {
      return false;
    }
    final l$encryptionKey = encryptionKey;
    final lOther$encryptionKey = other.encryptionKey;
    if (l$encryptionKey != lOther$encryptionKey) {
      return false;
    }
    final l$ipAddress = ipAddress;
    final lOther$ipAddress = other.ipAddress;
    if (l$ipAddress != lOther$ipAddress) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$paymentAPIEndPoint = paymentAPIEndPoint;
    final lOther$paymentAPIEndPoint = other.paymentAPIEndPoint;
    if (l$paymentAPIEndPoint != lOther$paymentAPIEndPoint) {
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

extension UtilityExtension$Fragment$DevicesFragment$atmServers
    on Fragment$DevicesFragment$atmServers {
  CopyWith$Fragment$DevicesFragment$atmServers<
    Fragment$DevicesFragment$atmServers
  >
  get copyWith => CopyWith$Fragment$DevicesFragment$atmServers(this, (i) => i);
}

abstract class CopyWith$Fragment$DevicesFragment$atmServers<TRes> {
  factory CopyWith$Fragment$DevicesFragment$atmServers(
    Fragment$DevicesFragment$atmServers instance,
    TRes Function(Fragment$DevicesFragment$atmServers) then,
  ) = _CopyWithImpl$Fragment$DevicesFragment$atmServers;

  factory CopyWith$Fragment$DevicesFragment$atmServers.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DevicesFragment$atmServers;

  TRes call({
    String? apiKey,
    Enum$ATMServerDeviceType? atmServerDeviceType,
    String? authorisationAPIEndpoint,
    String? deviceId,
    String? encryptionKey,
    String? ipAddress,
    String? name,
    String? paymentAPIEndPoint,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$DevicesFragment$atmServers<TRes>
    implements CopyWith$Fragment$DevicesFragment$atmServers<TRes> {
  _CopyWithImpl$Fragment$DevicesFragment$atmServers(this._instance, this._then);

  final Fragment$DevicesFragment$atmServers _instance;

  final TRes Function(Fragment$DevicesFragment$atmServers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apiKey = _undefined,
    Object? atmServerDeviceType = _undefined,
    Object? authorisationAPIEndpoint = _undefined,
    Object? deviceId = _undefined,
    Object? encryptionKey = _undefined,
    Object? ipAddress = _undefined,
    Object? name = _undefined,
    Object? paymentAPIEndPoint = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DevicesFragment$atmServers(
      apiKey: apiKey == _undefined || apiKey == null
          ? _instance.apiKey
          : (apiKey as String),
      atmServerDeviceType:
          atmServerDeviceType == _undefined || atmServerDeviceType == null
          ? _instance.atmServerDeviceType
          : (atmServerDeviceType as Enum$ATMServerDeviceType),
      authorisationAPIEndpoint:
          authorisationAPIEndpoint == _undefined ||
              authorisationAPIEndpoint == null
          ? _instance.authorisationAPIEndpoint
          : (authorisationAPIEndpoint as String),
      deviceId: deviceId == _undefined || deviceId == null
          ? _instance.deviceId
          : (deviceId as String),
      encryptionKey: encryptionKey == _undefined || encryptionKey == null
          ? _instance.encryptionKey
          : (encryptionKey as String),
      ipAddress: ipAddress == _undefined || ipAddress == null
          ? _instance.ipAddress
          : (ipAddress as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      paymentAPIEndPoint:
          paymentAPIEndPoint == _undefined || paymentAPIEndPoint == null
          ? _instance.paymentAPIEndPoint
          : (paymentAPIEndPoint as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$DevicesFragment$atmServers<TRes>
    implements CopyWith$Fragment$DevicesFragment$atmServers<TRes> {
  _CopyWithStubImpl$Fragment$DevicesFragment$atmServers(this._res);

  TRes _res;

  call({
    String? apiKey,
    Enum$ATMServerDeviceType? atmServerDeviceType,
    String? authorisationAPIEndpoint,
    String? deviceId,
    String? encryptionKey,
    String? ipAddress,
    String? name,
    String? paymentAPIEndPoint,
    String? $__typename,
  }) => _res;
}

class Fragment$DevicesFragment$cashierCameras {
  Fragment$DevicesFragment$cashierCameras({
    required this.ipAddress,
    required this.name,
    this.$__typename = 'CashierCameraDevice',
  });

  factory Fragment$DevicesFragment$cashierCameras.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ipAddress = json['ipAddress'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$DevicesFragment$cashierCameras(
      ipAddress: (l$ipAddress as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String ipAddress;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ipAddress = ipAddress;
    _resultData['ipAddress'] = l$ipAddress;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ipAddress = ipAddress;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ipAddress, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DevicesFragment$cashierCameras ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ipAddress = ipAddress;
    final lOther$ipAddress = other.ipAddress;
    if (l$ipAddress != lOther$ipAddress) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$DevicesFragment$cashierCameras
    on Fragment$DevicesFragment$cashierCameras {
  CopyWith$Fragment$DevicesFragment$cashierCameras<
    Fragment$DevicesFragment$cashierCameras
  >
  get copyWith =>
      CopyWith$Fragment$DevicesFragment$cashierCameras(this, (i) => i);
}

abstract class CopyWith$Fragment$DevicesFragment$cashierCameras<TRes> {
  factory CopyWith$Fragment$DevicesFragment$cashierCameras(
    Fragment$DevicesFragment$cashierCameras instance,
    TRes Function(Fragment$DevicesFragment$cashierCameras) then,
  ) = _CopyWithImpl$Fragment$DevicesFragment$cashierCameras;

  factory CopyWith$Fragment$DevicesFragment$cashierCameras.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DevicesFragment$cashierCameras;

  TRes call({String? ipAddress, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$DevicesFragment$cashierCameras<TRes>
    implements CopyWith$Fragment$DevicesFragment$cashierCameras<TRes> {
  _CopyWithImpl$Fragment$DevicesFragment$cashierCameras(
    this._instance,
    this._then,
  );

  final Fragment$DevicesFragment$cashierCameras _instance;

  final TRes Function(Fragment$DevicesFragment$cashierCameras) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ipAddress = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DevicesFragment$cashierCameras(
      ipAddress: ipAddress == _undefined || ipAddress == null
          ? _instance.ipAddress
          : (ipAddress as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$DevicesFragment$cashierCameras<TRes>
    implements CopyWith$Fragment$DevicesFragment$cashierCameras<TRes> {
  _CopyWithStubImpl$Fragment$DevicesFragment$cashierCameras(this._res);

  TRes _res;

  call({String? ipAddress, String? name, String? $__typename}) => _res;
}

class Fragment$DevicesFragment$chequePrinters {
  Fragment$DevicesFragment$chequePrinters({
    required this.name,
    required this.printerName,
    this.$__typename = 'ChequePrinterDevice',
  });

  factory Fragment$DevicesFragment$chequePrinters.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$printerName = json['printerName'];
    final l$$__typename = json['__typename'];
    return Fragment$DevicesFragment$chequePrinters(
      name: (l$name as String),
      printerName: (l$printerName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String printerName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$printerName = printerName;
    _resultData['printerName'] = l$printerName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$printerName = printerName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$printerName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DevicesFragment$chequePrinters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$printerName = printerName;
    final lOther$printerName = other.printerName;
    if (l$printerName != lOther$printerName) {
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

extension UtilityExtension$Fragment$DevicesFragment$chequePrinters
    on Fragment$DevicesFragment$chequePrinters {
  CopyWith$Fragment$DevicesFragment$chequePrinters<
    Fragment$DevicesFragment$chequePrinters
  >
  get copyWith =>
      CopyWith$Fragment$DevicesFragment$chequePrinters(this, (i) => i);
}

abstract class CopyWith$Fragment$DevicesFragment$chequePrinters<TRes> {
  factory CopyWith$Fragment$DevicesFragment$chequePrinters(
    Fragment$DevicesFragment$chequePrinters instance,
    TRes Function(Fragment$DevicesFragment$chequePrinters) then,
  ) = _CopyWithImpl$Fragment$DevicesFragment$chequePrinters;

  factory CopyWith$Fragment$DevicesFragment$chequePrinters.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DevicesFragment$chequePrinters;

  TRes call({String? name, String? printerName, String? $__typename});
}

class _CopyWithImpl$Fragment$DevicesFragment$chequePrinters<TRes>
    implements CopyWith$Fragment$DevicesFragment$chequePrinters<TRes> {
  _CopyWithImpl$Fragment$DevicesFragment$chequePrinters(
    this._instance,
    this._then,
  );

  final Fragment$DevicesFragment$chequePrinters _instance;

  final TRes Function(Fragment$DevicesFragment$chequePrinters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? printerName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DevicesFragment$chequePrinters(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      printerName: printerName == _undefined || printerName == null
          ? _instance.printerName
          : (printerName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$DevicesFragment$chequePrinters<TRes>
    implements CopyWith$Fragment$DevicesFragment$chequePrinters<TRes> {
  _CopyWithStubImpl$Fragment$DevicesFragment$chequePrinters(this._res);

  TRes _res;

  call({String? name, String? printerName, String? $__typename}) => _res;
}

class Fragment$DevicesFragment$fingerprintScanners {
  Fragment$DevicesFragment$fingerprintScanners({
    required this.ipAddress,
    required this.name,
    this.$__typename = 'FingerprintScannerDevice',
  });

  factory Fragment$DevicesFragment$fingerprintScanners.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ipAddress = json['ipAddress'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$DevicesFragment$fingerprintScanners(
      ipAddress: (l$ipAddress as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String ipAddress;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ipAddress = ipAddress;
    _resultData['ipAddress'] = l$ipAddress;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ipAddress = ipAddress;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ipAddress, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DevicesFragment$fingerprintScanners ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ipAddress = ipAddress;
    final lOther$ipAddress = other.ipAddress;
    if (l$ipAddress != lOther$ipAddress) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$DevicesFragment$fingerprintScanners
    on Fragment$DevicesFragment$fingerprintScanners {
  CopyWith$Fragment$DevicesFragment$fingerprintScanners<
    Fragment$DevicesFragment$fingerprintScanners
  >
  get copyWith =>
      CopyWith$Fragment$DevicesFragment$fingerprintScanners(this, (i) => i);
}

abstract class CopyWith$Fragment$DevicesFragment$fingerprintScanners<TRes> {
  factory CopyWith$Fragment$DevicesFragment$fingerprintScanners(
    Fragment$DevicesFragment$fingerprintScanners instance,
    TRes Function(Fragment$DevicesFragment$fingerprintScanners) then,
  ) = _CopyWithImpl$Fragment$DevicesFragment$fingerprintScanners;

  factory CopyWith$Fragment$DevicesFragment$fingerprintScanners.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DevicesFragment$fingerprintScanners;

  TRes call({String? ipAddress, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$DevicesFragment$fingerprintScanners<TRes>
    implements CopyWith$Fragment$DevicesFragment$fingerprintScanners<TRes> {
  _CopyWithImpl$Fragment$DevicesFragment$fingerprintScanners(
    this._instance,
    this._then,
  );

  final Fragment$DevicesFragment$fingerprintScanners _instance;

  final TRes Function(Fragment$DevicesFragment$fingerprintScanners) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ipAddress = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DevicesFragment$fingerprintScanners(
      ipAddress: ipAddress == _undefined || ipAddress == null
          ? _instance.ipAddress
          : (ipAddress as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$DevicesFragment$fingerprintScanners<TRes>
    implements CopyWith$Fragment$DevicesFragment$fingerprintScanners<TRes> {
  _CopyWithStubImpl$Fragment$DevicesFragment$fingerprintScanners(this._res);

  TRes _res;

  call({String? ipAddress, String? name, String? $__typename}) => _res;
}

class Fragment$DevicesFragment$idWebcams {
  Fragment$DevicesFragment$idWebcams({
    required this.ipAddress,
    required this.name,
    this.$__typename = 'IdWebcamDevice',
  });

  factory Fragment$DevicesFragment$idWebcams.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ipAddress = json['ipAddress'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$DevicesFragment$idWebcams(
      ipAddress: (l$ipAddress as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String ipAddress;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ipAddress = ipAddress;
    _resultData['ipAddress'] = l$ipAddress;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ipAddress = ipAddress;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ipAddress, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DevicesFragment$idWebcams ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ipAddress = ipAddress;
    final lOther$ipAddress = other.ipAddress;
    if (l$ipAddress != lOther$ipAddress) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$DevicesFragment$idWebcams
    on Fragment$DevicesFragment$idWebcams {
  CopyWith$Fragment$DevicesFragment$idWebcams<
    Fragment$DevicesFragment$idWebcams
  >
  get copyWith => CopyWith$Fragment$DevicesFragment$idWebcams(this, (i) => i);
}

abstract class CopyWith$Fragment$DevicesFragment$idWebcams<TRes> {
  factory CopyWith$Fragment$DevicesFragment$idWebcams(
    Fragment$DevicesFragment$idWebcams instance,
    TRes Function(Fragment$DevicesFragment$idWebcams) then,
  ) = _CopyWithImpl$Fragment$DevicesFragment$idWebcams;

  factory CopyWith$Fragment$DevicesFragment$idWebcams.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DevicesFragment$idWebcams;

  TRes call({String? ipAddress, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$DevicesFragment$idWebcams<TRes>
    implements CopyWith$Fragment$DevicesFragment$idWebcams<TRes> {
  _CopyWithImpl$Fragment$DevicesFragment$idWebcams(this._instance, this._then);

  final Fragment$DevicesFragment$idWebcams _instance;

  final TRes Function(Fragment$DevicesFragment$idWebcams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ipAddress = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DevicesFragment$idWebcams(
      ipAddress: ipAddress == _undefined || ipAddress == null
          ? _instance.ipAddress
          : (ipAddress as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$DevicesFragment$idWebcams<TRes>
    implements CopyWith$Fragment$DevicesFragment$idWebcams<TRes> {
  _CopyWithStubImpl$Fragment$DevicesFragment$idWebcams(this._res);

  TRes _res;

  call({String? ipAddress, String? name, String? $__typename}) => _res;
}

class Fragment$DevicesFragment$remittancePrinters {
  Fragment$DevicesFragment$remittancePrinters({
    required this.name,
    required this.printerName,
    this.$__typename = 'RemittancePrinterDevice',
  });

  factory Fragment$DevicesFragment$remittancePrinters.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$printerName = json['printerName'];
    final l$$__typename = json['__typename'];
    return Fragment$DevicesFragment$remittancePrinters(
      name: (l$name as String),
      printerName: (l$printerName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String printerName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$printerName = printerName;
    _resultData['printerName'] = l$printerName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$printerName = printerName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$printerName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DevicesFragment$remittancePrinters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$printerName = printerName;
    final lOther$printerName = other.printerName;
    if (l$printerName != lOther$printerName) {
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

extension UtilityExtension$Fragment$DevicesFragment$remittancePrinters
    on Fragment$DevicesFragment$remittancePrinters {
  CopyWith$Fragment$DevicesFragment$remittancePrinters<
    Fragment$DevicesFragment$remittancePrinters
  >
  get copyWith =>
      CopyWith$Fragment$DevicesFragment$remittancePrinters(this, (i) => i);
}

abstract class CopyWith$Fragment$DevicesFragment$remittancePrinters<TRes> {
  factory CopyWith$Fragment$DevicesFragment$remittancePrinters(
    Fragment$DevicesFragment$remittancePrinters instance,
    TRes Function(Fragment$DevicesFragment$remittancePrinters) then,
  ) = _CopyWithImpl$Fragment$DevicesFragment$remittancePrinters;

  factory CopyWith$Fragment$DevicesFragment$remittancePrinters.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DevicesFragment$remittancePrinters;

  TRes call({String? name, String? printerName, String? $__typename});
}

class _CopyWithImpl$Fragment$DevicesFragment$remittancePrinters<TRes>
    implements CopyWith$Fragment$DevicesFragment$remittancePrinters<TRes> {
  _CopyWithImpl$Fragment$DevicesFragment$remittancePrinters(
    this._instance,
    this._then,
  );

  final Fragment$DevicesFragment$remittancePrinters _instance;

  final TRes Function(Fragment$DevicesFragment$remittancePrinters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? printerName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DevicesFragment$remittancePrinters(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      printerName: printerName == _undefined || printerName == null
          ? _instance.printerName
          : (printerName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$DevicesFragment$remittancePrinters<TRes>
    implements CopyWith$Fragment$DevicesFragment$remittancePrinters<TRes> {
  _CopyWithStubImpl$Fragment$DevicesFragment$remittancePrinters(this._res);

  TRes _res;

  call({String? name, String? printerName, String? $__typename}) => _res;
}
