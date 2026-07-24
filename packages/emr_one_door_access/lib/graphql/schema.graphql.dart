class Input$AccessControllerFilterInput {
  factory Input$AccessControllerFilterInput({
    List<Input$AccessControllerFilterInput>? and,
    List<Input$AccessControllerFilterInput>? or,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? site,
    Input$LatLongFilterInput? location,
    Input$StringOperationFilterInput? uri,
    Input$StringOperationFilterInput? username,
    Input$StringOperationFilterInput? password,
    Input$ListStringOperationFilterInput? accessPoints,
    Input$ListFilterInputTypeOfDoorFilterInput? doors,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? externalName,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  }) => Input$AccessControllerFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (name != null) r'name': name,
    if (site != null) r'site': site,
    if (location != null) r'location': location,
    if (uri != null) r'uri': uri,
    if (username != null) r'username': username,
    if (password != null) r'password': password,
    if (accessPoints != null) r'accessPoints': accessPoints,
    if (doors != null) r'doors': doors,
    if (externalId != null) r'externalId': externalId,
    if (externalName != null) r'externalName': externalName,
    if (createdOn != null) r'createdOn': createdOn,
    if (createdBy != null) r'createdBy': createdBy,
    if (id != null) r'id': id,
    if (active != null) r'active': active,
    if (modifiedOn != null) r'modifiedOn': modifiedOn,
    if (modifiedBy != null) r'modifiedBy': modifiedBy,
  });

  Input$AccessControllerFilterInput._(this._$data);

  factory Input$AccessControllerFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$AccessControllerFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$AccessControllerFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('site')) {
      final l$site = data['site'];
      result$data['site'] = l$site == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$site as Map<String, dynamic>),
            );
    }
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = l$location == null
          ? null
          : Input$LatLongFilterInput.fromJson(
              (l$location as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uri')) {
      final l$uri = data['uri'];
      result$data['uri'] = l$uri == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$uri as Map<String, dynamic>),
            );
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = l$username == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$username as Map<String, dynamic>),
            );
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = l$password == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$password as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessPoints')) {
      final l$accessPoints = data['accessPoints'];
      result$data['accessPoints'] = l$accessPoints == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$accessPoints as Map<String, dynamic>),
            );
    }
    if (data.containsKey('doors')) {
      final l$doors = data['doors'];
      result$data['doors'] = l$doors == null
          ? null
          : Input$ListFilterInputTypeOfDoorFilterInput.fromJson(
              (l$doors as Map<String, dynamic>),
            );
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = l$externalId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$externalId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('externalName')) {
      final l$externalName = data['externalName'];
      result$data['externalName'] = l$externalName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$externalName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$createdOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$createdBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>),
            );
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>),
            );
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$modifiedOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$modifiedBy as Map<String, dynamic>),
            );
    }
    return Input$AccessControllerFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AccessControllerFilterInput>? get and =>
      (_$data['and'] as List<Input$AccessControllerFilterInput>?);

  List<Input$AccessControllerFilterInput>? get or =>
      (_$data['or'] as List<Input$AccessControllerFilterInput>?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get site =>
      (_$data['site'] as Input$StringOperationFilterInput?);

  Input$LatLongFilterInput? get location =>
      (_$data['location'] as Input$LatLongFilterInput?);

  Input$StringOperationFilterInput? get uri =>
      (_$data['uri'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get username =>
      (_$data['username'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get password =>
      (_$data['password'] as Input$StringOperationFilterInput?);

  Input$ListStringOperationFilterInput? get accessPoints =>
      (_$data['accessPoints'] as Input$ListStringOperationFilterInput?);

  Input$ListFilterInputTypeOfDoorFilterInput? get doors =>
      (_$data['doors'] as Input$ListFilterInputTypeOfDoorFilterInput?);

  Input$StringOperationFilterInput? get externalId =>
      (_$data['externalId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get externalName =>
      (_$data['externalName'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get createdOn =>
      (_$data['createdOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get createdBy =>
      (_$data['createdBy'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get modifiedOn =>
      (_$data['modifiedOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get modifiedBy =>
      (_$data['modifiedBy'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('site')) {
      final l$site = site;
      result$data['site'] = l$site?.toJson();
    }
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] = l$location?.toJson();
    }
    if (_$data.containsKey('uri')) {
      final l$uri = uri;
      result$data['uri'] = l$uri?.toJson();
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username?.toJson();
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password?.toJson();
    }
    if (_$data.containsKey('accessPoints')) {
      final l$accessPoints = accessPoints;
      result$data['accessPoints'] = l$accessPoints?.toJson();
    }
    if (_$data.containsKey('doors')) {
      final l$doors = doors;
      result$data['doors'] = l$doors?.toJson();
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId?.toJson();
    }
    if (_$data.containsKey('externalName')) {
      final l$externalName = externalName;
      result$data['externalName'] = l$externalName?.toJson();
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn?.toJson();
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AccessControllerFilterInput<Input$AccessControllerFilterInput>
  get copyWith => CopyWith$Input$AccessControllerFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccessControllerFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (_$data.containsKey('site') != other._$data.containsKey('site')) {
      return false;
    }
    if (l$site != lOther$site) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (_$data.containsKey('location') !=
        other._$data.containsKey('location')) {
      return false;
    }
    if (l$location != lOther$location) {
      return false;
    }
    final l$uri = uri;
    final lOther$uri = other.uri;
    if (_$data.containsKey('uri') != other._$data.containsKey('uri')) {
      return false;
    }
    if (l$uri != lOther$uri) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$accessPoints = accessPoints;
    final lOther$accessPoints = other.accessPoints;
    if (_$data.containsKey('accessPoints') !=
        other._$data.containsKey('accessPoints')) {
      return false;
    }
    if (l$accessPoints != lOther$accessPoints) {
      return false;
    }
    final l$doors = doors;
    final lOther$doors = other.doors;
    if (_$data.containsKey('doors') != other._$data.containsKey('doors')) {
      return false;
    }
    if (l$doors != lOther$doors) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$externalName = externalName;
    final lOther$externalName = other.externalName;
    if (_$data.containsKey('externalName') !=
        other._$data.containsKey('externalName')) {
      return false;
    }
    if (l$externalName != lOther$externalName) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$name = name;
    final l$site = site;
    final l$location = location;
    final l$uri = uri;
    final l$username = username;
    final l$password = password;
    final l$accessPoints = accessPoints;
    final l$doors = doors;
    final l$externalId = externalId;
    final l$externalName = externalName;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$active = active;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('site') ? l$site : const {},
      _$data.containsKey('location') ? l$location : const {},
      _$data.containsKey('uri') ? l$uri : const {},
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('accessPoints') ? l$accessPoints : const {},
      _$data.containsKey('doors') ? l$doors : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('externalName') ? l$externalName : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccessControllerFilterInput<TRes> {
  factory CopyWith$Input$AccessControllerFilterInput(
    Input$AccessControllerFilterInput instance,
    TRes Function(Input$AccessControllerFilterInput) then,
  ) = _CopyWithImpl$Input$AccessControllerFilterInput;

  factory CopyWith$Input$AccessControllerFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccessControllerFilterInput;

  TRes call({
    List<Input$AccessControllerFilterInput>? and,
    List<Input$AccessControllerFilterInput>? or,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? site,
    Input$LatLongFilterInput? location,
    Input$StringOperationFilterInput? uri,
    Input$StringOperationFilterInput? username,
    Input$StringOperationFilterInput? password,
    Input$ListStringOperationFilterInput? accessPoints,
    Input$ListFilterInputTypeOfDoorFilterInput? doors,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? externalName,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  });
  TRes and(
    Iterable<Input$AccessControllerFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessControllerFilterInput<
          Input$AccessControllerFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$AccessControllerFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessControllerFilterInput<
          Input$AccessControllerFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get site;
  CopyWith$Input$LatLongFilterInput<TRes> get location;
  CopyWith$Input$StringOperationFilterInput<TRes> get uri;
  CopyWith$Input$StringOperationFilterInput<TRes> get username;
  CopyWith$Input$StringOperationFilterInput<TRes> get password;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get accessPoints;
  CopyWith$Input$ListFilterInputTypeOfDoorFilterInput<TRes> get doors;
  CopyWith$Input$StringOperationFilterInput<TRes> get externalId;
  CopyWith$Input$StringOperationFilterInput<TRes> get externalName;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy;
}

class _CopyWithImpl$Input$AccessControllerFilterInput<TRes>
    implements CopyWith$Input$AccessControllerFilterInput<TRes> {
  _CopyWithImpl$Input$AccessControllerFilterInput(this._instance, this._then);

  final Input$AccessControllerFilterInput _instance;

  final TRes Function(Input$AccessControllerFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? name = _undefined,
    Object? site = _undefined,
    Object? location = _undefined,
    Object? uri = _undefined,
    Object? username = _undefined,
    Object? password = _undefined,
    Object? accessPoints = _undefined,
    Object? doors = _undefined,
    Object? externalId = _undefined,
    Object? externalName = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
  }) => _then(
    Input$AccessControllerFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$AccessControllerFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input$AccessControllerFilterInput>?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (site != _undefined)
        'site': (site as Input$StringOperationFilterInput?),
      if (location != _undefined)
        'location': (location as Input$LatLongFilterInput?),
      if (uri != _undefined) 'uri': (uri as Input$StringOperationFilterInput?),
      if (username != _undefined)
        'username': (username as Input$StringOperationFilterInput?),
      if (password != _undefined)
        'password': (password as Input$StringOperationFilterInput?),
      if (accessPoints != _undefined)
        'accessPoints': (accessPoints as Input$ListStringOperationFilterInput?),
      if (doors != _undefined)
        'doors': (doors as Input$ListFilterInputTypeOfDoorFilterInput?),
      if (externalId != _undefined)
        'externalId': (externalId as Input$StringOperationFilterInput?),
      if (externalName != _undefined)
        'externalName': (externalName as Input$StringOperationFilterInput?),
      if (createdOn != _undefined)
        'createdOn': (createdOn as Input$DateTimeOperationFilterInput?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Input$StringOperationFilterInput?),
      if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
      if (active != _undefined)
        'active': (active as Input$BooleanOperationFilterInput?),
      if (modifiedOn != _undefined)
        'modifiedOn': (modifiedOn as Input$DateTimeOperationFilterInput?),
      if (modifiedBy != _undefined)
        'modifiedBy': (modifiedBy as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$AccessControllerFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessControllerFilterInput<
          Input$AccessControllerFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$AccessControllerFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$AccessControllerFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessControllerFilterInput<
          Input$AccessControllerFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$AccessControllerFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get site {
    final local$site = _instance.site;
    return local$site == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$site,
            (e) => call(site: e),
          );
  }

  CopyWith$Input$LatLongFilterInput<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Input$LatLongFilterInput.stub(_then(_instance))
        : CopyWith$Input$LatLongFilterInput(
            local$location,
            (e) => call(location: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get uri {
    final local$uri = _instance.uri;
    return local$uri == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$uri,
            (e) => call(uri: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get username {
    final local$username = _instance.username;
    return local$username == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$username,
            (e) => call(username: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get password {
    final local$password = _instance.password;
    return local$password == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$password,
            (e) => call(password: e),
          );
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get accessPoints {
    final local$accessPoints = _instance.accessPoints;
    return local$accessPoints == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$accessPoints,
            (e) => call(accessPoints: e),
          );
  }

  CopyWith$Input$ListFilterInputTypeOfDoorFilterInput<TRes> get doors {
    final local$doors = _instance.doors;
    return local$doors == null
        ? CopyWith$Input$ListFilterInputTypeOfDoorFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$ListFilterInputTypeOfDoorFilterInput(
            local$doors,
            (e) => call(doors: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId {
    final local$externalId = _instance.externalId;
    return local$externalId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$externalId,
            (e) => call(externalId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get externalName {
    final local$externalName = _instance.externalName;
    return local$externalName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$externalName,
            (e) => call(externalName: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn {
    final local$createdOn = _instance.createdOn;
    return local$createdOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$createdOn,
            (e) => call(createdOn: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$createdBy,
            (e) => call(createdBy: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id,
            (e) => call(id: e),
          );
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active,
            (e) => call(active: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn {
    final local$modifiedOn = _instance.modifiedOn;
    return local$modifiedOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$modifiedOn,
            (e) => call(modifiedOn: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy {
    final local$modifiedBy = _instance.modifiedBy;
    return local$modifiedBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$modifiedBy,
            (e) => call(modifiedBy: e),
          );
  }
}

class _CopyWithStubImpl$Input$AccessControllerFilterInput<TRes>
    implements CopyWith$Input$AccessControllerFilterInput<TRes> {
  _CopyWithStubImpl$Input$AccessControllerFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AccessControllerFilterInput>? and,
    List<Input$AccessControllerFilterInput>? or,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? site,
    Input$LatLongFilterInput? location,
    Input$StringOperationFilterInput? uri,
    Input$StringOperationFilterInput? username,
    Input$StringOperationFilterInput? password,
    Input$ListStringOperationFilterInput? accessPoints,
    Input$ListFilterInputTypeOfDoorFilterInput? doors,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? externalName,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get site =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$LatLongFilterInput<TRes> get location =>
      CopyWith$Input$LatLongFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get uri =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get username =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get password =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get accessPoints =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfDoorFilterInput<TRes> get doors =>
      CopyWith$Input$ListFilterInputTypeOfDoorFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get externalName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$AccessControllerSortInput {
  factory Input$AccessControllerSortInput({
    Enum$SortEnumType? name,
    Enum$SortEnumType? site,
    Input$LatLongSortInput? location,
    Enum$SortEnumType? uri,
    Enum$SortEnumType? username,
    Enum$SortEnumType? password,
    Enum$SortEnumType? externalId,
    Enum$SortEnumType? externalName,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  }) => Input$AccessControllerSortInput._({
    if (name != null) r'name': name,
    if (site != null) r'site': site,
    if (location != null) r'location': location,
    if (uri != null) r'uri': uri,
    if (username != null) r'username': username,
    if (password != null) r'password': password,
    if (externalId != null) r'externalId': externalId,
    if (externalName != null) r'externalName': externalName,
    if (createdOn != null) r'createdOn': createdOn,
    if (createdBy != null) r'createdBy': createdBy,
    if (id != null) r'id': id,
    if (active != null) r'active': active,
    if (modifiedOn != null) r'modifiedOn': modifiedOn,
    if (modifiedBy != null) r'modifiedBy': modifiedBy,
  });

  Input$AccessControllerSortInput._(this._$data);

  factory Input$AccessControllerSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('site')) {
      final l$site = data['site'];
      result$data['site'] = l$site == null
          ? null
          : fromJson$Enum$SortEnumType((l$site as String));
    }
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = l$location == null
          ? null
          : Input$LatLongSortInput.fromJson(
              (l$location as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uri')) {
      final l$uri = data['uri'];
      result$data['uri'] = l$uri == null
          ? null
          : fromJson$Enum$SortEnumType((l$uri as String));
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = l$username == null
          ? null
          : fromJson$Enum$SortEnumType((l$username as String));
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = l$password == null
          ? null
          : fromJson$Enum$SortEnumType((l$password as String));
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = l$externalId == null
          ? null
          : fromJson$Enum$SortEnumType((l$externalId as String));
    }
    if (data.containsKey('externalName')) {
      final l$externalName = data['externalName'];
      result$data['externalName'] = l$externalName == null
          ? null
          : fromJson$Enum$SortEnumType((l$externalName as String));
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdOn as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdBy as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedOn as String));
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedBy as String));
    }
    return Input$AccessControllerSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get site => (_$data['site'] as Enum$SortEnumType?);

  Input$LatLongSortInput? get location =>
      (_$data['location'] as Input$LatLongSortInput?);

  Enum$SortEnumType? get uri => (_$data['uri'] as Enum$SortEnumType?);

  Enum$SortEnumType? get username => (_$data['username'] as Enum$SortEnumType?);

  Enum$SortEnumType? get password => (_$data['password'] as Enum$SortEnumType?);

  Enum$SortEnumType? get externalId =>
      (_$data['externalId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get externalName =>
      (_$data['externalName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdOn =>
      (_$data['createdOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdBy =>
      (_$data['createdBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedOn =>
      (_$data['modifiedOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedBy =>
      (_$data['modifiedBy'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null
          ? null
          : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('site')) {
      final l$site = site;
      result$data['site'] = l$site == null
          ? null
          : toJson$Enum$SortEnumType(l$site);
    }
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] = l$location?.toJson();
    }
    if (_$data.containsKey('uri')) {
      final l$uri = uri;
      result$data['uri'] = l$uri == null
          ? null
          : toJson$Enum$SortEnumType(l$uri);
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username == null
          ? null
          : toJson$Enum$SortEnumType(l$username);
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password == null
          ? null
          : toJson$Enum$SortEnumType(l$password);
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId == null
          ? null
          : toJson$Enum$SortEnumType(l$externalId);
    }
    if (_$data.containsKey('externalName')) {
      final l$externalName = externalName;
      result$data['externalName'] = l$externalName == null
          ? null
          : toJson$Enum$SortEnumType(l$externalName);
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn == null
          ? null
          : toJson$Enum$SortEnumType(l$createdOn);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy == null
          ? null
          : toJson$Enum$SortEnumType(l$createdBy);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active == null
          ? null
          : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : toJson$Enum$SortEnumType(l$modifiedOn);
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : toJson$Enum$SortEnumType(l$modifiedBy);
    }
    return result$data;
  }

  CopyWith$Input$AccessControllerSortInput<Input$AccessControllerSortInput>
  get copyWith => CopyWith$Input$AccessControllerSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccessControllerSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (_$data.containsKey('site') != other._$data.containsKey('site')) {
      return false;
    }
    if (l$site != lOther$site) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (_$data.containsKey('location') !=
        other._$data.containsKey('location')) {
      return false;
    }
    if (l$location != lOther$location) {
      return false;
    }
    final l$uri = uri;
    final lOther$uri = other.uri;
    if (_$data.containsKey('uri') != other._$data.containsKey('uri')) {
      return false;
    }
    if (l$uri != lOther$uri) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$externalName = externalName;
    final lOther$externalName = other.externalName;
    if (_$data.containsKey('externalName') !=
        other._$data.containsKey('externalName')) {
      return false;
    }
    if (l$externalName != lOther$externalName) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$site = site;
    final l$location = location;
    final l$uri = uri;
    final l$username = username;
    final l$password = password;
    final l$externalId = externalId;
    final l$externalName = externalName;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$active = active;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('site') ? l$site : const {},
      _$data.containsKey('location') ? l$location : const {},
      _$data.containsKey('uri') ? l$uri : const {},
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('externalName') ? l$externalName : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccessControllerSortInput<TRes> {
  factory CopyWith$Input$AccessControllerSortInput(
    Input$AccessControllerSortInput instance,
    TRes Function(Input$AccessControllerSortInput) then,
  ) = _CopyWithImpl$Input$AccessControllerSortInput;

  factory CopyWith$Input$AccessControllerSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccessControllerSortInput;

  TRes call({
    Enum$SortEnumType? name,
    Enum$SortEnumType? site,
    Input$LatLongSortInput? location,
    Enum$SortEnumType? uri,
    Enum$SortEnumType? username,
    Enum$SortEnumType? password,
    Enum$SortEnumType? externalId,
    Enum$SortEnumType? externalName,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  });
  CopyWith$Input$LatLongSortInput<TRes> get location;
}

class _CopyWithImpl$Input$AccessControllerSortInput<TRes>
    implements CopyWith$Input$AccessControllerSortInput<TRes> {
  _CopyWithImpl$Input$AccessControllerSortInput(this._instance, this._then);

  final Input$AccessControllerSortInput _instance;

  final TRes Function(Input$AccessControllerSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? site = _undefined,
    Object? location = _undefined,
    Object? uri = _undefined,
    Object? username = _undefined,
    Object? password = _undefined,
    Object? externalId = _undefined,
    Object? externalName = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
  }) => _then(
    Input$AccessControllerSortInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as Enum$SortEnumType?),
      if (site != _undefined) 'site': (site as Enum$SortEnumType?),
      if (location != _undefined)
        'location': (location as Input$LatLongSortInput?),
      if (uri != _undefined) 'uri': (uri as Enum$SortEnumType?),
      if (username != _undefined) 'username': (username as Enum$SortEnumType?),
      if (password != _undefined) 'password': (password as Enum$SortEnumType?),
      if (externalId != _undefined)
        'externalId': (externalId as Enum$SortEnumType?),
      if (externalName != _undefined)
        'externalName': (externalName as Enum$SortEnumType?),
      if (createdOn != _undefined)
        'createdOn': (createdOn as Enum$SortEnumType?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Enum$SortEnumType?),
      if (id != _undefined) 'id': (id as Enum$SortEnumType?),
      if (active != _undefined) 'active': (active as Enum$SortEnumType?),
      if (modifiedOn != _undefined)
        'modifiedOn': (modifiedOn as Enum$SortEnumType?),
      if (modifiedBy != _undefined)
        'modifiedBy': (modifiedBy as Enum$SortEnumType?),
    }),
  );

  CopyWith$Input$LatLongSortInput<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Input$LatLongSortInput.stub(_then(_instance))
        : CopyWith$Input$LatLongSortInput(
            local$location,
            (e) => call(location: e),
          );
  }
}

class _CopyWithStubImpl$Input$AccessControllerSortInput<TRes>
    implements CopyWith$Input$AccessControllerSortInput<TRes> {
  _CopyWithStubImpl$Input$AccessControllerSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? name,
    Enum$SortEnumType? site,
    Input$LatLongSortInput? location,
    Enum$SortEnumType? uri,
    Enum$SortEnumType? username,
    Enum$SortEnumType? password,
    Enum$SortEnumType? externalId,
    Enum$SortEnumType? externalName,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  }) => _res;

  CopyWith$Input$LatLongSortInput<TRes> get location =>
      CopyWith$Input$LatLongSortInput.stub(_res);
}

class Input$AccessCredentialFilterInput {
  factory Input$AccessCredentialFilterInput({
    List<Input$AccessCredentialFilterInput>? and,
    List<Input$AccessCredentialFilterInput>? or,
    Input$StringOperationFilterInput? userId,
    Input$StringOperationFilterInput? groupId,
    Input$StringOperationFilterInput? accessPointId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? externalId,
    Input$DateTimeOperationFilterInput? deletedOn,
    Input$DateTimeOperationFilterInput? createdInDoorControllerOn,
    Input$DateTimeOperationFilterInput? deletedInDoorControllerOn,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  }) => Input$AccessCredentialFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (userId != null) r'userId': userId,
    if (groupId != null) r'groupId': groupId,
    if (accessPointId != null) r'accessPointId': accessPointId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (externalId != null) r'externalId': externalId,
    if (deletedOn != null) r'deletedOn': deletedOn,
    if (createdInDoorControllerOn != null)
      r'createdInDoorControllerOn': createdInDoorControllerOn,
    if (deletedInDoorControllerOn != null)
      r'deletedInDoorControllerOn': deletedInDoorControllerOn,
    if (createdOn != null) r'createdOn': createdOn,
    if (createdBy != null) r'createdBy': createdBy,
    if (id != null) r'id': id,
    if (active != null) r'active': active,
    if (modifiedOn != null) r'modifiedOn': modifiedOn,
    if (modifiedBy != null) r'modifiedBy': modifiedBy,
  });

  Input$AccessCredentialFilterInput._(this._$data);

  factory Input$AccessCredentialFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$AccessCredentialFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$AccessCredentialFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = l$userId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$userId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$groupId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessPointId')) {
      final l$accessPointId = data['accessPointId'];
      result$data['accessPointId'] = l$accessPointId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessPointId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessControllerId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = l$externalId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$externalId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('deletedOn')) {
      final l$deletedOn = data['deletedOn'];
      result$data['deletedOn'] = l$deletedOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$deletedOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdInDoorControllerOn')) {
      final l$createdInDoorControllerOn = data['createdInDoorControllerOn'];
      result$data['createdInDoorControllerOn'] =
          l$createdInDoorControllerOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$createdInDoorControllerOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('deletedInDoorControllerOn')) {
      final l$deletedInDoorControllerOn = data['deletedInDoorControllerOn'];
      result$data['deletedInDoorControllerOn'] =
          l$deletedInDoorControllerOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$deletedInDoorControllerOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$createdOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$createdBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>),
            );
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>),
            );
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$modifiedOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$modifiedBy as Map<String, dynamic>),
            );
    }
    return Input$AccessCredentialFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AccessCredentialFilterInput>? get and =>
      (_$data['and'] as List<Input$AccessCredentialFilterInput>?);

  List<Input$AccessCredentialFilterInput>? get or =>
      (_$data['or'] as List<Input$AccessCredentialFilterInput>?);

  Input$StringOperationFilterInput? get userId =>
      (_$data['userId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get groupId =>
      (_$data['groupId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accessPointId =>
      (_$data['accessPointId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accessControllerId =>
      (_$data['accessControllerId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get externalId =>
      (_$data['externalId'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get deletedOn =>
      (_$data['deletedOn'] as Input$DateTimeOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get createdInDoorControllerOn =>
      (_$data['createdInDoorControllerOn']
          as Input$DateTimeOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get deletedInDoorControllerOn =>
      (_$data['deletedInDoorControllerOn']
          as Input$DateTimeOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get createdOn =>
      (_$data['createdOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get createdBy =>
      (_$data['createdBy'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get modifiedOn =>
      (_$data['modifiedOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get modifiedBy =>
      (_$data['modifiedBy'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId?.toJson();
    }
    if (_$data.containsKey('accessPointId')) {
      final l$accessPointId = accessPointId;
      result$data['accessPointId'] = l$accessPointId?.toJson();
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId?.toJson();
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId?.toJson();
    }
    if (_$data.containsKey('deletedOn')) {
      final l$deletedOn = deletedOn;
      result$data['deletedOn'] = l$deletedOn?.toJson();
    }
    if (_$data.containsKey('createdInDoorControllerOn')) {
      final l$createdInDoorControllerOn = createdInDoorControllerOn;
      result$data['createdInDoorControllerOn'] = l$createdInDoorControllerOn
          ?.toJson();
    }
    if (_$data.containsKey('deletedInDoorControllerOn')) {
      final l$deletedInDoorControllerOn = deletedInDoorControllerOn;
      result$data['deletedInDoorControllerOn'] = l$deletedInDoorControllerOn
          ?.toJson();
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn?.toJson();
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AccessCredentialFilterInput<Input$AccessCredentialFilterInput>
  get copyWith => CopyWith$Input$AccessCredentialFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccessCredentialFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (_$data.containsKey('accessPointId') !=
        other._$data.containsKey('accessPointId')) {
      return false;
    }
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$deletedOn = deletedOn;
    final lOther$deletedOn = other.deletedOn;
    if (_$data.containsKey('deletedOn') !=
        other._$data.containsKey('deletedOn')) {
      return false;
    }
    if (l$deletedOn != lOther$deletedOn) {
      return false;
    }
    final l$createdInDoorControllerOn = createdInDoorControllerOn;
    final lOther$createdInDoorControllerOn = other.createdInDoorControllerOn;
    if (_$data.containsKey('createdInDoorControllerOn') !=
        other._$data.containsKey('createdInDoorControllerOn')) {
      return false;
    }
    if (l$createdInDoorControllerOn != lOther$createdInDoorControllerOn) {
      return false;
    }
    final l$deletedInDoorControllerOn = deletedInDoorControllerOn;
    final lOther$deletedInDoorControllerOn = other.deletedInDoorControllerOn;
    if (_$data.containsKey('deletedInDoorControllerOn') !=
        other._$data.containsKey('deletedInDoorControllerOn')) {
      return false;
    }
    if (l$deletedInDoorControllerOn != lOther$deletedInDoorControllerOn) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$userId = userId;
    final l$groupId = groupId;
    final l$accessPointId = accessPointId;
    final l$accessControllerId = accessControllerId;
    final l$externalId = externalId;
    final l$deletedOn = deletedOn;
    final l$createdInDoorControllerOn = createdInDoorControllerOn;
    final l$deletedInDoorControllerOn = deletedInDoorControllerOn;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$active = active;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('accessPointId') ? l$accessPointId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('deletedOn') ? l$deletedOn : const {},
      _$data.containsKey('createdInDoorControllerOn')
          ? l$createdInDoorControllerOn
          : const {},
      _$data.containsKey('deletedInDoorControllerOn')
          ? l$deletedInDoorControllerOn
          : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccessCredentialFilterInput<TRes> {
  factory CopyWith$Input$AccessCredentialFilterInput(
    Input$AccessCredentialFilterInput instance,
    TRes Function(Input$AccessCredentialFilterInput) then,
  ) = _CopyWithImpl$Input$AccessCredentialFilterInput;

  factory CopyWith$Input$AccessCredentialFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccessCredentialFilterInput;

  TRes call({
    List<Input$AccessCredentialFilterInput>? and,
    List<Input$AccessCredentialFilterInput>? or,
    Input$StringOperationFilterInput? userId,
    Input$StringOperationFilterInput? groupId,
    Input$StringOperationFilterInput? accessPointId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? externalId,
    Input$DateTimeOperationFilterInput? deletedOn,
    Input$DateTimeOperationFilterInput? createdInDoorControllerOn,
    Input$DateTimeOperationFilterInput? deletedInDoorControllerOn,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  });
  TRes and(
    Iterable<Input$AccessCredentialFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessCredentialFilterInput<
          Input$AccessCredentialFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$AccessCredentialFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessCredentialFilterInput<
          Input$AccessCredentialFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get userId;
  CopyWith$Input$StringOperationFilterInput<TRes> get groupId;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessPointId;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId;
  CopyWith$Input$StringOperationFilterInput<TRes> get externalId;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get deletedOn;
  CopyWith$Input$DateTimeOperationFilterInput<TRes>
  get createdInDoorControllerOn;
  CopyWith$Input$DateTimeOperationFilterInput<TRes>
  get deletedInDoorControllerOn;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy;
}

class _CopyWithImpl$Input$AccessCredentialFilterInput<TRes>
    implements CopyWith$Input$AccessCredentialFilterInput<TRes> {
  _CopyWithImpl$Input$AccessCredentialFilterInput(this._instance, this._then);

  final Input$AccessCredentialFilterInput _instance;

  final TRes Function(Input$AccessCredentialFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? userId = _undefined,
    Object? groupId = _undefined,
    Object? accessPointId = _undefined,
    Object? accessControllerId = _undefined,
    Object? externalId = _undefined,
    Object? deletedOn = _undefined,
    Object? createdInDoorControllerOn = _undefined,
    Object? deletedInDoorControllerOn = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
  }) => _then(
    Input$AccessCredentialFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$AccessCredentialFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input$AccessCredentialFilterInput>?),
      if (userId != _undefined)
        'userId': (userId as Input$StringOperationFilterInput?),
      if (groupId != _undefined)
        'groupId': (groupId as Input$StringOperationFilterInput?),
      if (accessPointId != _undefined)
        'accessPointId': (accessPointId as Input$StringOperationFilterInput?),
      if (accessControllerId != _undefined)
        'accessControllerId':
            (accessControllerId as Input$StringOperationFilterInput?),
      if (externalId != _undefined)
        'externalId': (externalId as Input$StringOperationFilterInput?),
      if (deletedOn != _undefined)
        'deletedOn': (deletedOn as Input$DateTimeOperationFilterInput?),
      if (createdInDoorControllerOn != _undefined)
        'createdInDoorControllerOn':
            (createdInDoorControllerOn as Input$DateTimeOperationFilterInput?),
      if (deletedInDoorControllerOn != _undefined)
        'deletedInDoorControllerOn':
            (deletedInDoorControllerOn as Input$DateTimeOperationFilterInput?),
      if (createdOn != _undefined)
        'createdOn': (createdOn as Input$DateTimeOperationFilterInput?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Input$StringOperationFilterInput?),
      if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
      if (active != _undefined)
        'active': (active as Input$BooleanOperationFilterInput?),
      if (modifiedOn != _undefined)
        'modifiedOn': (modifiedOn as Input$DateTimeOperationFilterInput?),
      if (modifiedBy != _undefined)
        'modifiedBy': (modifiedBy as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$AccessCredentialFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessCredentialFilterInput<
          Input$AccessCredentialFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$AccessCredentialFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$AccessCredentialFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessCredentialFilterInput<
          Input$AccessCredentialFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$AccessCredentialFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get userId {
    final local$userId = _instance.userId;
    return local$userId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$userId,
            (e) => call(userId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get groupId {
    final local$groupId = _instance.groupId;
    return local$groupId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$groupId,
            (e) => call(groupId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessPointId {
    final local$accessPointId = _instance.accessPointId;
    return local$accessPointId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessPointId,
            (e) => call(accessPointId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId {
    final local$accessControllerId = _instance.accessControllerId;
    return local$accessControllerId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessControllerId,
            (e) => call(accessControllerId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId {
    final local$externalId = _instance.externalId;
    return local$externalId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$externalId,
            (e) => call(externalId: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get deletedOn {
    final local$deletedOn = _instance.deletedOn;
    return local$deletedOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$deletedOn,
            (e) => call(deletedOn: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes>
  get createdInDoorControllerOn {
    final local$createdInDoorControllerOn = _instance.createdInDoorControllerOn;
    return local$createdInDoorControllerOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$createdInDoorControllerOn,
            (e) => call(createdInDoorControllerOn: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes>
  get deletedInDoorControllerOn {
    final local$deletedInDoorControllerOn = _instance.deletedInDoorControllerOn;
    return local$deletedInDoorControllerOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$deletedInDoorControllerOn,
            (e) => call(deletedInDoorControllerOn: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn {
    final local$createdOn = _instance.createdOn;
    return local$createdOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$createdOn,
            (e) => call(createdOn: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$createdBy,
            (e) => call(createdBy: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id,
            (e) => call(id: e),
          );
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active,
            (e) => call(active: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn {
    final local$modifiedOn = _instance.modifiedOn;
    return local$modifiedOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$modifiedOn,
            (e) => call(modifiedOn: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy {
    final local$modifiedBy = _instance.modifiedBy;
    return local$modifiedBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$modifiedBy,
            (e) => call(modifiedBy: e),
          );
  }
}

class _CopyWithStubImpl$Input$AccessCredentialFilterInput<TRes>
    implements CopyWith$Input$AccessCredentialFilterInput<TRes> {
  _CopyWithStubImpl$Input$AccessCredentialFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AccessCredentialFilterInput>? and,
    List<Input$AccessCredentialFilterInput>? or,
    Input$StringOperationFilterInput? userId,
    Input$StringOperationFilterInput? groupId,
    Input$StringOperationFilterInput? accessPointId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? externalId,
    Input$DateTimeOperationFilterInput? deletedOn,
    Input$DateTimeOperationFilterInput? createdInDoorControllerOn,
    Input$DateTimeOperationFilterInput? deletedInDoorControllerOn,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get userId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get groupId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessPointId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get deletedOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes>
  get createdInDoorControllerOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes>
  get deletedInDoorControllerOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$AccessCredentialSortInput {
  factory Input$AccessCredentialSortInput({
    Enum$SortEnumType? userId,
    Enum$SortEnumType? groupId,
    Enum$SortEnumType? accessPointId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? externalId,
    Enum$SortEnumType? deletedOn,
    Enum$SortEnumType? createdInDoorControllerOn,
    Enum$SortEnumType? deletedInDoorControllerOn,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  }) => Input$AccessCredentialSortInput._({
    if (userId != null) r'userId': userId,
    if (groupId != null) r'groupId': groupId,
    if (accessPointId != null) r'accessPointId': accessPointId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (externalId != null) r'externalId': externalId,
    if (deletedOn != null) r'deletedOn': deletedOn,
    if (createdInDoorControllerOn != null)
      r'createdInDoorControllerOn': createdInDoorControllerOn,
    if (deletedInDoorControllerOn != null)
      r'deletedInDoorControllerOn': deletedInDoorControllerOn,
    if (createdOn != null) r'createdOn': createdOn,
    if (createdBy != null) r'createdBy': createdBy,
    if (id != null) r'id': id,
    if (active != null) r'active': active,
    if (modifiedOn != null) r'modifiedOn': modifiedOn,
    if (modifiedBy != null) r'modifiedBy': modifiedBy,
  });

  Input$AccessCredentialSortInput._(this._$data);

  factory Input$AccessCredentialSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = l$userId == null
          ? null
          : fromJson$Enum$SortEnumType((l$userId as String));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson$Enum$SortEnumType((l$groupId as String));
    }
    if (data.containsKey('accessPointId')) {
      final l$accessPointId = data['accessPointId'];
      result$data['accessPointId'] = l$accessPointId == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessPointId as String));
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessControllerId as String));
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = l$externalId == null
          ? null
          : fromJson$Enum$SortEnumType((l$externalId as String));
    }
    if (data.containsKey('deletedOn')) {
      final l$deletedOn = data['deletedOn'];
      result$data['deletedOn'] = l$deletedOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$deletedOn as String));
    }
    if (data.containsKey('createdInDoorControllerOn')) {
      final l$createdInDoorControllerOn = data['createdInDoorControllerOn'];
      result$data['createdInDoorControllerOn'] =
          l$createdInDoorControllerOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdInDoorControllerOn as String));
    }
    if (data.containsKey('deletedInDoorControllerOn')) {
      final l$deletedInDoorControllerOn = data['deletedInDoorControllerOn'];
      result$data['deletedInDoorControllerOn'] =
          l$deletedInDoorControllerOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$deletedInDoorControllerOn as String));
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdOn as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdBy as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedOn as String));
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedBy as String));
    }
    return Input$AccessCredentialSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get userId => (_$data['userId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get groupId => (_$data['groupId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessPointId =>
      (_$data['accessPointId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessControllerId =>
      (_$data['accessControllerId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get externalId =>
      (_$data['externalId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get deletedOn =>
      (_$data['deletedOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdInDoorControllerOn =>
      (_$data['createdInDoorControllerOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get deletedInDoorControllerOn =>
      (_$data['deletedInDoorControllerOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdOn =>
      (_$data['createdOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdBy =>
      (_$data['createdBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedOn =>
      (_$data['modifiedOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedBy =>
      (_$data['modifiedBy'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId == null
          ? null
          : toJson$Enum$SortEnumType(l$userId);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : toJson$Enum$SortEnumType(l$groupId);
    }
    if (_$data.containsKey('accessPointId')) {
      final l$accessPointId = accessPointId;
      result$data['accessPointId'] = l$accessPointId == null
          ? null
          : toJson$Enum$SortEnumType(l$accessPointId);
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : toJson$Enum$SortEnumType(l$accessControllerId);
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId == null
          ? null
          : toJson$Enum$SortEnumType(l$externalId);
    }
    if (_$data.containsKey('deletedOn')) {
      final l$deletedOn = deletedOn;
      result$data['deletedOn'] = l$deletedOn == null
          ? null
          : toJson$Enum$SortEnumType(l$deletedOn);
    }
    if (_$data.containsKey('createdInDoorControllerOn')) {
      final l$createdInDoorControllerOn = createdInDoorControllerOn;
      result$data['createdInDoorControllerOn'] =
          l$createdInDoorControllerOn == null
          ? null
          : toJson$Enum$SortEnumType(l$createdInDoorControllerOn);
    }
    if (_$data.containsKey('deletedInDoorControllerOn')) {
      final l$deletedInDoorControllerOn = deletedInDoorControllerOn;
      result$data['deletedInDoorControllerOn'] =
          l$deletedInDoorControllerOn == null
          ? null
          : toJson$Enum$SortEnumType(l$deletedInDoorControllerOn);
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn == null
          ? null
          : toJson$Enum$SortEnumType(l$createdOn);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy == null
          ? null
          : toJson$Enum$SortEnumType(l$createdBy);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active == null
          ? null
          : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : toJson$Enum$SortEnumType(l$modifiedOn);
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : toJson$Enum$SortEnumType(l$modifiedBy);
    }
    return result$data;
  }

  CopyWith$Input$AccessCredentialSortInput<Input$AccessCredentialSortInput>
  get copyWith => CopyWith$Input$AccessCredentialSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccessCredentialSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (_$data.containsKey('accessPointId') !=
        other._$data.containsKey('accessPointId')) {
      return false;
    }
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$deletedOn = deletedOn;
    final lOther$deletedOn = other.deletedOn;
    if (_$data.containsKey('deletedOn') !=
        other._$data.containsKey('deletedOn')) {
      return false;
    }
    if (l$deletedOn != lOther$deletedOn) {
      return false;
    }
    final l$createdInDoorControllerOn = createdInDoorControllerOn;
    final lOther$createdInDoorControllerOn = other.createdInDoorControllerOn;
    if (_$data.containsKey('createdInDoorControllerOn') !=
        other._$data.containsKey('createdInDoorControllerOn')) {
      return false;
    }
    if (l$createdInDoorControllerOn != lOther$createdInDoorControllerOn) {
      return false;
    }
    final l$deletedInDoorControllerOn = deletedInDoorControllerOn;
    final lOther$deletedInDoorControllerOn = other.deletedInDoorControllerOn;
    if (_$data.containsKey('deletedInDoorControllerOn') !=
        other._$data.containsKey('deletedInDoorControllerOn')) {
      return false;
    }
    if (l$deletedInDoorControllerOn != lOther$deletedInDoorControllerOn) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$groupId = groupId;
    final l$accessPointId = accessPointId;
    final l$accessControllerId = accessControllerId;
    final l$externalId = externalId;
    final l$deletedOn = deletedOn;
    final l$createdInDoorControllerOn = createdInDoorControllerOn;
    final l$deletedInDoorControllerOn = deletedInDoorControllerOn;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$active = active;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('accessPointId') ? l$accessPointId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('deletedOn') ? l$deletedOn : const {},
      _$data.containsKey('createdInDoorControllerOn')
          ? l$createdInDoorControllerOn
          : const {},
      _$data.containsKey('deletedInDoorControllerOn')
          ? l$deletedInDoorControllerOn
          : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccessCredentialSortInput<TRes> {
  factory CopyWith$Input$AccessCredentialSortInput(
    Input$AccessCredentialSortInput instance,
    TRes Function(Input$AccessCredentialSortInput) then,
  ) = _CopyWithImpl$Input$AccessCredentialSortInput;

  factory CopyWith$Input$AccessCredentialSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccessCredentialSortInput;

  TRes call({
    Enum$SortEnumType? userId,
    Enum$SortEnumType? groupId,
    Enum$SortEnumType? accessPointId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? externalId,
    Enum$SortEnumType? deletedOn,
    Enum$SortEnumType? createdInDoorControllerOn,
    Enum$SortEnumType? deletedInDoorControllerOn,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  });
}

class _CopyWithImpl$Input$AccessCredentialSortInput<TRes>
    implements CopyWith$Input$AccessCredentialSortInput<TRes> {
  _CopyWithImpl$Input$AccessCredentialSortInput(this._instance, this._then);

  final Input$AccessCredentialSortInput _instance;

  final TRes Function(Input$AccessCredentialSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? groupId = _undefined,
    Object? accessPointId = _undefined,
    Object? accessControllerId = _undefined,
    Object? externalId = _undefined,
    Object? deletedOn = _undefined,
    Object? createdInDoorControllerOn = _undefined,
    Object? deletedInDoorControllerOn = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
  }) => _then(
    Input$AccessCredentialSortInput._({
      ..._instance._$data,
      if (userId != _undefined) 'userId': (userId as Enum$SortEnumType?),
      if (groupId != _undefined) 'groupId': (groupId as Enum$SortEnumType?),
      if (accessPointId != _undefined)
        'accessPointId': (accessPointId as Enum$SortEnumType?),
      if (accessControllerId != _undefined)
        'accessControllerId': (accessControllerId as Enum$SortEnumType?),
      if (externalId != _undefined)
        'externalId': (externalId as Enum$SortEnumType?),
      if (deletedOn != _undefined)
        'deletedOn': (deletedOn as Enum$SortEnumType?),
      if (createdInDoorControllerOn != _undefined)
        'createdInDoorControllerOn':
            (createdInDoorControllerOn as Enum$SortEnumType?),
      if (deletedInDoorControllerOn != _undefined)
        'deletedInDoorControllerOn':
            (deletedInDoorControllerOn as Enum$SortEnumType?),
      if (createdOn != _undefined)
        'createdOn': (createdOn as Enum$SortEnumType?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Enum$SortEnumType?),
      if (id != _undefined) 'id': (id as Enum$SortEnumType?),
      if (active != _undefined) 'active': (active as Enum$SortEnumType?),
      if (modifiedOn != _undefined)
        'modifiedOn': (modifiedOn as Enum$SortEnumType?),
      if (modifiedBy != _undefined)
        'modifiedBy': (modifiedBy as Enum$SortEnumType?),
    }),
  );
}

class _CopyWithStubImpl$Input$AccessCredentialSortInput<TRes>
    implements CopyWith$Input$AccessCredentialSortInput<TRes> {
  _CopyWithStubImpl$Input$AccessCredentialSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? userId,
    Enum$SortEnumType? groupId,
    Enum$SortEnumType? accessPointId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? externalId,
    Enum$SortEnumType? deletedOn,
    Enum$SortEnumType? createdInDoorControllerOn,
    Enum$SortEnumType? deletedInDoorControllerOn,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  }) => _res;
}

class Input$AccessProfileFilterInput {
  factory Input$AccessProfileFilterInput({
    List<Input$AccessProfileFilterInput>? and,
    List<Input$AccessProfileFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$ListStringOperationFilterInput? schedules,
  }) => Input$AccessProfileFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (externalId != null) r'externalId': externalId,
    if (name != null) r'name': name,
    if (description != null) r'description': description,
    if (schedules != null) r'schedules': schedules,
  });

  Input$AccessProfileFilterInput._(this._$data);

  factory Input$AccessProfileFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$AccessProfileFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$AccessProfileFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = l$externalId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$externalId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$description as Map<String, dynamic>),
            );
    }
    if (data.containsKey('schedules')) {
      final l$schedules = data['schedules'];
      result$data['schedules'] = l$schedules == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$schedules as Map<String, dynamic>),
            );
    }
    return Input$AccessProfileFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AccessProfileFilterInput>? get and =>
      (_$data['and'] as List<Input$AccessProfileFilterInput>?);

  List<Input$AccessProfileFilterInput>? get or =>
      (_$data['or'] as List<Input$AccessProfileFilterInput>?);

  Input$StringOperationFilterInput? get externalId =>
      (_$data['externalId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get description =>
      (_$data['description'] as Input$StringOperationFilterInput?);

  Input$ListStringOperationFilterInput? get schedules =>
      (_$data['schedules'] as Input$ListStringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('schedules')) {
      final l$schedules = schedules;
      result$data['schedules'] = l$schedules?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AccessProfileFilterInput<Input$AccessProfileFilterInput>
  get copyWith => CopyWith$Input$AccessProfileFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccessProfileFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$schedules = schedules;
    final lOther$schedules = other.schedules;
    if (_$data.containsKey('schedules') !=
        other._$data.containsKey('schedules')) {
      return false;
    }
    if (l$schedules != lOther$schedules) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$externalId = externalId;
    final l$name = name;
    final l$description = description;
    final l$schedules = schedules;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('schedules') ? l$schedules : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccessProfileFilterInput<TRes> {
  factory CopyWith$Input$AccessProfileFilterInput(
    Input$AccessProfileFilterInput instance,
    TRes Function(Input$AccessProfileFilterInput) then,
  ) = _CopyWithImpl$Input$AccessProfileFilterInput;

  factory CopyWith$Input$AccessProfileFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccessProfileFilterInput;

  TRes call({
    List<Input$AccessProfileFilterInput>? and,
    List<Input$AccessProfileFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$ListStringOperationFilterInput? schedules,
  });
  TRes and(
    Iterable<Input$AccessProfileFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessProfileFilterInput<Input$AccessProfileFilterInput>
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$AccessProfileFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessProfileFilterInput<Input$AccessProfileFilterInput>
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get externalId;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get description;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get schedules;
}

class _CopyWithImpl$Input$AccessProfileFilterInput<TRes>
    implements CopyWith$Input$AccessProfileFilterInput<TRes> {
  _CopyWithImpl$Input$AccessProfileFilterInput(this._instance, this._then);

  final Input$AccessProfileFilterInput _instance;

  final TRes Function(Input$AccessProfileFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? schedules = _undefined,
  }) => _then(
    Input$AccessProfileFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$AccessProfileFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input$AccessProfileFilterInput>?),
      if (externalId != _undefined)
        'externalId': (externalId as Input$StringOperationFilterInput?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (description != _undefined)
        'description': (description as Input$StringOperationFilterInput?),
      if (schedules != _undefined)
        'schedules': (schedules as Input$ListStringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$AccessProfileFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessProfileFilterInput<Input$AccessProfileFilterInput>
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$AccessProfileFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$AccessProfileFilterInput>? Function(
      Iterable<
        CopyWith$Input$AccessProfileFilterInput<Input$AccessProfileFilterInput>
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$AccessProfileFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId {
    final local$externalId = _instance.externalId;
    return local$externalId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$externalId,
            (e) => call(externalId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$description,
            (e) => call(description: e),
          );
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get schedules {
    final local$schedules = _instance.schedules;
    return local$schedules == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$schedules,
            (e) => call(schedules: e),
          );
  }
}

class _CopyWithStubImpl$Input$AccessProfileFilterInput<TRes>
    implements CopyWith$Input$AccessProfileFilterInput<TRes> {
  _CopyWithStubImpl$Input$AccessProfileFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AccessProfileFilterInput>? and,
    List<Input$AccessProfileFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$ListStringOperationFilterInput? schedules,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get description =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get schedules =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);
}

class Input$AttributeItemFilterInput {
  factory Input$AttributeItemFilterInput({
    List<Input$AttributeItemFilterInput>? and,
    List<Input$AttributeItemFilterInput>? or,
    Input$StringOperationFilterInput? type,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? value,
  }) => Input$AttributeItemFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (type != null) r'type': type,
    if (name != null) r'name': name,
    if (value != null) r'value': value,
  });

  Input$AttributeItemFilterInput._(this._$data);

  factory Input$AttributeItemFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$AttributeItemFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$AttributeItemFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$type as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$value as Map<String, dynamic>),
            );
    }
    return Input$AttributeItemFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AttributeItemFilterInput>? get and =>
      (_$data['and'] as List<Input$AttributeItemFilterInput>?);

  List<Input$AttributeItemFilterInput>? get or =>
      (_$data['or'] as List<Input$AttributeItemFilterInput>?);

  Input$StringOperationFilterInput? get type =>
      (_$data['type'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get value =>
      (_$data['value'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AttributeItemFilterInput<Input$AttributeItemFilterInput>
  get copyWith => CopyWith$Input$AttributeItemFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AttributeItemFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$type = type;
    final l$name = name;
    final l$value = value;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('value') ? l$value : const {},
    ]);
  }
}

abstract class CopyWith$Input$AttributeItemFilterInput<TRes> {
  factory CopyWith$Input$AttributeItemFilterInput(
    Input$AttributeItemFilterInput instance,
    TRes Function(Input$AttributeItemFilterInput) then,
  ) = _CopyWithImpl$Input$AttributeItemFilterInput;

  factory CopyWith$Input$AttributeItemFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AttributeItemFilterInput;

  TRes call({
    List<Input$AttributeItemFilterInput>? and,
    List<Input$AttributeItemFilterInput>? or,
    Input$StringOperationFilterInput? type,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? value,
  });
  TRes and(
    Iterable<Input$AttributeItemFilterInput>? Function(
      Iterable<
        CopyWith$Input$AttributeItemFilterInput<Input$AttributeItemFilterInput>
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$AttributeItemFilterInput>? Function(
      Iterable<
        CopyWith$Input$AttributeItemFilterInput<Input$AttributeItemFilterInput>
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get type;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get value;
}

class _CopyWithImpl$Input$AttributeItemFilterInput<TRes>
    implements CopyWith$Input$AttributeItemFilterInput<TRes> {
  _CopyWithImpl$Input$AttributeItemFilterInput(this._instance, this._then);

  final Input$AttributeItemFilterInput _instance;

  final TRes Function(Input$AttributeItemFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? type = _undefined,
    Object? name = _undefined,
    Object? value = _undefined,
  }) => _then(
    Input$AttributeItemFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$AttributeItemFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input$AttributeItemFilterInput>?),
      if (type != _undefined)
        'type': (type as Input$StringOperationFilterInput?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (value != _undefined)
        'value': (value as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$AttributeItemFilterInput>? Function(
      Iterable<
        CopyWith$Input$AttributeItemFilterInput<Input$AttributeItemFilterInput>
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$AttributeItemFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$AttributeItemFilterInput>? Function(
      Iterable<
        CopyWith$Input$AttributeItemFilterInput<Input$AttributeItemFilterInput>
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$AttributeItemFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$type,
            (e) => call(type: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$value,
            (e) => call(value: e),
          );
  }
}

class _CopyWithStubImpl$Input$AttributeItemFilterInput<TRes>
    implements CopyWith$Input$AttributeItemFilterInput<TRes> {
  _CopyWithStubImpl$Input$AttributeItemFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AttributeItemFilterInput>? and,
    List<Input$AttributeItemFilterInput>? or,
    Input$StringOperationFilterInput? type,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? value,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get type =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get value =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$BooleanOperationFilterInput {
  factory Input$BooleanOperationFilterInput({bool? eq, bool? neq}) =>
      Input$BooleanOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
      });

  Input$BooleanOperationFilterInput._(this._$data);

  factory Input$BooleanOperationFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as bool?);
    }
    return Input$BooleanOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get eq => (_$data['eq'] as bool?);

  bool? get neq => (_$data['neq'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    return result$data;
  }

  CopyWith$Input$BooleanOperationFilterInput<Input$BooleanOperationFilterInput>
  get copyWith => CopyWith$Input$BooleanOperationFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BooleanOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
    ]);
  }
}

abstract class CopyWith$Input$BooleanOperationFilterInput<TRes> {
  factory CopyWith$Input$BooleanOperationFilterInput(
    Input$BooleanOperationFilterInput instance,
    TRes Function(Input$BooleanOperationFilterInput) then,
  ) = _CopyWithImpl$Input$BooleanOperationFilterInput;

  factory CopyWith$Input$BooleanOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BooleanOperationFilterInput;

  TRes call({bool? eq, bool? neq});
}

class _CopyWithImpl$Input$BooleanOperationFilterInput<TRes>
    implements CopyWith$Input$BooleanOperationFilterInput<TRes> {
  _CopyWithImpl$Input$BooleanOperationFilterInput(this._instance, this._then);

  final Input$BooleanOperationFilterInput _instance;

  final TRes Function(Input$BooleanOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? eq = _undefined, Object? neq = _undefined}) => _then(
    Input$BooleanOperationFilterInput._({
      ..._instance._$data,
      if (eq != _undefined) 'eq': (eq as bool?),
      if (neq != _undefined) 'neq': (neq as bool?),
    }),
  );
}

class _CopyWithStubImpl$Input$BooleanOperationFilterInput<TRes>
    implements CopyWith$Input$BooleanOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$BooleanOperationFilterInput(this._res);

  TRes _res;

  call({bool? eq, bool? neq}) => _res;
}

class Input$CreateAccessControllerInput {
  factory Input$CreateAccessControllerInput({
    required String url,
    required String username,
    required String password,
    required String siteId,
    required String name,
  }) => Input$CreateAccessControllerInput._({
    r'url': url,
    r'username': username,
    r'password': password,
    r'siteId': siteId,
    r'name': name,
  });

  Input$CreateAccessControllerInput._(this._$data);

  factory Input$CreateAccessControllerInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$url = data['url'];
    result$data['url'] = (l$url as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$siteId = data['siteId'];
    result$data['siteId'] = (l$siteId as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$CreateAccessControllerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get url => (_$data['url'] as String);

  String get username => (_$data['username'] as String);

  String get password => (_$data['password'] as String);

  String get siteId => (_$data['siteId'] as String);

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$url = url;
    result$data['url'] = l$url;
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    final l$siteId = siteId;
    result$data['siteId'] = l$siteId;
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$CreateAccessControllerInput<Input$CreateAccessControllerInput>
  get copyWith => CopyWith$Input$CreateAccessControllerInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateAccessControllerInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$username = username;
    final l$password = password;
    final l$siteId = siteId;
    final l$name = name;
    return Object.hashAll([l$url, l$username, l$password, l$siteId, l$name]);
  }
}

abstract class CopyWith$Input$CreateAccessControllerInput<TRes> {
  factory CopyWith$Input$CreateAccessControllerInput(
    Input$CreateAccessControllerInput instance,
    TRes Function(Input$CreateAccessControllerInput) then,
  ) = _CopyWithImpl$Input$CreateAccessControllerInput;

  factory CopyWith$Input$CreateAccessControllerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateAccessControllerInput;

  TRes call({
    String? url,
    String? username,
    String? password,
    String? siteId,
    String? name,
  });
}

class _CopyWithImpl$Input$CreateAccessControllerInput<TRes>
    implements CopyWith$Input$CreateAccessControllerInput<TRes> {
  _CopyWithImpl$Input$CreateAccessControllerInput(this._instance, this._then);

  final Input$CreateAccessControllerInput _instance;

  final TRes Function(Input$CreateAccessControllerInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? username = _undefined,
    Object? password = _undefined,
    Object? siteId = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input$CreateAccessControllerInput._({
      ..._instance._$data,
      if (url != _undefined && url != null) 'url': (url as String),
      if (username != _undefined && username != null)
        'username': (username as String),
      if (password != _undefined && password != null)
        'password': (password as String),
      if (siteId != _undefined && siteId != null) 'siteId': (siteId as String),
      if (name != _undefined && name != null) 'name': (name as String),
    }),
  );
}

class _CopyWithStubImpl$Input$CreateAccessControllerInput<TRes>
    implements CopyWith$Input$CreateAccessControllerInput<TRes> {
  _CopyWithStubImpl$Input$CreateAccessControllerInput(this._res);

  TRes _res;

  call({
    String? url,
    String? username,
    String? password,
    String? siteId,
    String? name,
  }) => _res;
}

class Input$CreateGroupAndAccessPointLinkInput {
  factory Input$CreateGroupAndAccessPointLinkInput({
    required String groupId,
    required List<String> accessPointIds,
    required List<String> schedules,
  }) => Input$CreateGroupAndAccessPointLinkInput._({
    r'groupId': groupId,
    r'accessPointIds': accessPointIds,
    r'schedules': schedules,
  });

  Input$CreateGroupAndAccessPointLinkInput._(this._$data);

  factory Input$CreateGroupAndAccessPointLinkInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$groupId = data['groupId'];
    result$data['groupId'] = (l$groupId as String);
    final l$accessPointIds = data['accessPointIds'];
    result$data['accessPointIds'] = (l$accessPointIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$schedules = data['schedules'];
    result$data['schedules'] = (l$schedules as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Input$CreateGroupAndAccessPointLinkInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get groupId => (_$data['groupId'] as String);

  List<String> get accessPointIds => (_$data['accessPointIds'] as List<String>);

  List<String> get schedules => (_$data['schedules'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$groupId = groupId;
    result$data['groupId'] = l$groupId;
    final l$accessPointIds = accessPointIds;
    result$data['accessPointIds'] = l$accessPointIds.map((e) => e).toList();
    final l$schedules = schedules;
    result$data['schedules'] = l$schedules.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$CreateGroupAndAccessPointLinkInput<
    Input$CreateGroupAndAccessPointLinkInput
  >
  get copyWith =>
      CopyWith$Input$CreateGroupAndAccessPointLinkInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateGroupAndAccessPointLinkInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$accessPointIds = accessPointIds;
    final lOther$accessPointIds = other.accessPointIds;
    if (l$accessPointIds.length != lOther$accessPointIds.length) {
      return false;
    }
    for (int i = 0; i < l$accessPointIds.length; i++) {
      final l$accessPointIds$entry = l$accessPointIds[i];
      final lOther$accessPointIds$entry = lOther$accessPointIds[i];
      if (l$accessPointIds$entry != lOther$accessPointIds$entry) {
        return false;
      }
    }
    final l$schedules = schedules;
    final lOther$schedules = other.schedules;
    if (l$schedules.length != lOther$schedules.length) {
      return false;
    }
    for (int i = 0; i < l$schedules.length; i++) {
      final l$schedules$entry = l$schedules[i];
      final lOther$schedules$entry = lOther$schedules[i];
      if (l$schedules$entry != lOther$schedules$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$accessPointIds = accessPointIds;
    final l$schedules = schedules;
    return Object.hashAll([
      l$groupId,
      Object.hashAll(l$accessPointIds.map((v) => v)),
      Object.hashAll(l$schedules.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$CreateGroupAndAccessPointLinkInput<TRes> {
  factory CopyWith$Input$CreateGroupAndAccessPointLinkInput(
    Input$CreateGroupAndAccessPointLinkInput instance,
    TRes Function(Input$CreateGroupAndAccessPointLinkInput) then,
  ) = _CopyWithImpl$Input$CreateGroupAndAccessPointLinkInput;

  factory CopyWith$Input$CreateGroupAndAccessPointLinkInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateGroupAndAccessPointLinkInput;

  TRes call({
    String? groupId,
    List<String>? accessPointIds,
    List<String>? schedules,
  });
}

class _CopyWithImpl$Input$CreateGroupAndAccessPointLinkInput<TRes>
    implements CopyWith$Input$CreateGroupAndAccessPointLinkInput<TRes> {
  _CopyWithImpl$Input$CreateGroupAndAccessPointLinkInput(
    this._instance,
    this._then,
  );

  final Input$CreateGroupAndAccessPointLinkInput _instance;

  final TRes Function(Input$CreateGroupAndAccessPointLinkInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? accessPointIds = _undefined,
    Object? schedules = _undefined,
  }) => _then(
    Input$CreateGroupAndAccessPointLinkInput._({
      ..._instance._$data,
      if (groupId != _undefined && groupId != null)
        'groupId': (groupId as String),
      if (accessPointIds != _undefined && accessPointIds != null)
        'accessPointIds': (accessPointIds as List<String>),
      if (schedules != _undefined && schedules != null)
        'schedules': (schedules as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Input$CreateGroupAndAccessPointLinkInput<TRes>
    implements CopyWith$Input$CreateGroupAndAccessPointLinkInput<TRes> {
  _CopyWithStubImpl$Input$CreateGroupAndAccessPointLinkInput(this._res);

  TRes _res;

  call({
    String? groupId,
    List<String>? accessPointIds,
    List<String>? schedules,
  }) => _res;
}

class Input$CreateScheduleInput {
  factory Input$CreateScheduleInput({
    required String accessControllerId,
    required String token,
    required String scheduleName,
    required String definition,
  }) => Input$CreateScheduleInput._({
    r'accessControllerId': accessControllerId,
    r'token': token,
    r'scheduleName': scheduleName,
    r'definition': definition,
  });

  Input$CreateScheduleInput._(this._$data);

  factory Input$CreateScheduleInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = data['accessControllerId'];
    result$data['accessControllerId'] = (l$accessControllerId as String);
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    final l$scheduleName = data['scheduleName'];
    result$data['scheduleName'] = (l$scheduleName as String);
    final l$definition = data['definition'];
    result$data['definition'] = (l$definition as String);
    return Input$CreateScheduleInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessControllerId => (_$data['accessControllerId'] as String);

  String get token => (_$data['token'] as String);

  String get scheduleName => (_$data['scheduleName'] as String);

  String get definition => (_$data['definition'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = accessControllerId;
    result$data['accessControllerId'] = l$accessControllerId;
    final l$token = token;
    result$data['token'] = l$token;
    final l$scheduleName = scheduleName;
    result$data['scheduleName'] = l$scheduleName;
    final l$definition = definition;
    result$data['definition'] = l$definition;
    return result$data;
  }

  CopyWith$Input$CreateScheduleInput<Input$CreateScheduleInput> get copyWith =>
      CopyWith$Input$CreateScheduleInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateScheduleInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$scheduleName = scheduleName;
    final lOther$scheduleName = other.scheduleName;
    if (l$scheduleName != lOther$scheduleName) {
      return false;
    }
    final l$definition = definition;
    final lOther$definition = other.definition;
    if (l$definition != lOther$definition) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessControllerId = accessControllerId;
    final l$token = token;
    final l$scheduleName = scheduleName;
    final l$definition = definition;
    return Object.hashAll([
      l$accessControllerId,
      l$token,
      l$scheduleName,
      l$definition,
    ]);
  }
}

abstract class CopyWith$Input$CreateScheduleInput<TRes> {
  factory CopyWith$Input$CreateScheduleInput(
    Input$CreateScheduleInput instance,
    TRes Function(Input$CreateScheduleInput) then,
  ) = _CopyWithImpl$Input$CreateScheduleInput;

  factory CopyWith$Input$CreateScheduleInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateScheduleInput;

  TRes call({
    String? accessControllerId,
    String? token,
    String? scheduleName,
    String? definition,
  });
}

class _CopyWithImpl$Input$CreateScheduleInput<TRes>
    implements CopyWith$Input$CreateScheduleInput<TRes> {
  _CopyWithImpl$Input$CreateScheduleInput(this._instance, this._then);

  final Input$CreateScheduleInput _instance;

  final TRes Function(Input$CreateScheduleInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessControllerId = _undefined,
    Object? token = _undefined,
    Object? scheduleName = _undefined,
    Object? definition = _undefined,
  }) => _then(
    Input$CreateScheduleInput._({
      ..._instance._$data,
      if (accessControllerId != _undefined && accessControllerId != null)
        'accessControllerId': (accessControllerId as String),
      if (token != _undefined && token != null) 'token': (token as String),
      if (scheduleName != _undefined && scheduleName != null)
        'scheduleName': (scheduleName as String),
      if (definition != _undefined && definition != null)
        'definition': (definition as String),
    }),
  );
}

class _CopyWithStubImpl$Input$CreateScheduleInput<TRes>
    implements CopyWith$Input$CreateScheduleInput<TRes> {
  _CopyWithStubImpl$Input$CreateScheduleInput(this._res);

  TRes _res;

  call({
    String? accessControllerId,
    String? token,
    String? scheduleName,
    String? definition,
  }) => _res;
}

class Input$DateTimeOperationFilterInput {
  factory Input$DateTimeOperationFilterInput({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  }) => Input$DateTimeOperationFilterInput._({
    if (eq != null) r'eq': eq,
    if (neq != null) r'neq': neq,
    if ($in != null) r'in': $in,
    if (nin != null) r'nin': nin,
    if (gt != null) r'gt': gt,
    if (ngt != null) r'ngt': ngt,
    if (gte != null) r'gte': gte,
    if (ngte != null) r'ngte': ngte,
    if (lt != null) r'lt': lt,
    if (nlt != null) r'nlt': nlt,
    if (lte != null) r'lte': lte,
    if (nlte != null) r'nlte': nlte,
  });

  Input$DateTimeOperationFilterInput._(this._$data);

  factory Input$DateTimeOperationFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null
          ? null
          : DateTime.parse((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : DateTime.parse((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => e == null ? null : DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => e == null ? null : DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = l$gt == null
          ? null
          : DateTime.parse((l$gt as String));
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = l$ngt == null
          ? null
          : DateTime.parse((l$ngt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = l$gte == null
          ? null
          : DateTime.parse((l$gte as String));
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = l$ngte == null
          ? null
          : DateTime.parse((l$ngte as String));
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = l$lt == null
          ? null
          : DateTime.parse((l$lt as String));
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = l$nlt == null
          ? null
          : DateTime.parse((l$nlt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = l$lte == null
          ? null
          : DateTime.parse((l$lte as String));
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = l$nlte == null
          ? null
          : DateTime.parse((l$nlte as String));
    }
    return Input$DateTimeOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get eq => (_$data['eq'] as DateTime?);

  DateTime? get neq => (_$data['neq'] as DateTime?);

  List<DateTime?>? get $in => (_$data['in'] as List<DateTime?>?);

  List<DateTime?>? get nin => (_$data['nin'] as List<DateTime?>?);

  DateTime? get gt => (_$data['gt'] as DateTime?);

  DateTime? get ngt => (_$data['ngt'] as DateTime?);

  DateTime? get gte => (_$data['gte'] as DateTime?);

  DateTime? get ngte => (_$data['ngte'] as DateTime?);

  DateTime? get lt => (_$data['lt'] as DateTime?);

  DateTime? get nlt => (_$data['nlt'] as DateTime?);

  DateTime? get lte => (_$data['lte'] as DateTime?);

  DateTime? get nlte => (_$data['nlte'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq?.toIso8601String();
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq?.toIso8601String();
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e?.toIso8601String()).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e?.toIso8601String()).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt?.toIso8601String();
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt?.toIso8601String();
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte?.toIso8601String();
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte?.toIso8601String();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt?.toIso8601String();
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt?.toIso8601String();
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte?.toIso8601String();
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$DateTimeOperationFilterInput<
    Input$DateTimeOperationFilterInput
  >
  get copyWith => CopyWith$Input$DateTimeOperationFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DateTimeOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
                ? null
                : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  factory CopyWith$Input$DateTimeOperationFilterInput(
    Input$DateTimeOperationFilterInput instance,
    TRes Function(Input$DateTimeOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DateTimeOperationFilterInput;

  factory CopyWith$Input$DateTimeOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeOperationFilterInput;

  TRes call({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  });
}

class _CopyWithImpl$Input$DateTimeOperationFilterInput<TRes>
    implements CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DateTimeOperationFilterInput(this._instance, this._then);

  final Input$DateTimeOperationFilterInput _instance;

  final TRes Function(Input$DateTimeOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) => _then(
    Input$DateTimeOperationFilterInput._({
      ..._instance._$data,
      if (eq != _undefined) 'eq': (eq as DateTime?),
      if (neq != _undefined) 'neq': (neq as DateTime?),
      if ($in != _undefined) 'in': ($in as List<DateTime?>?),
      if (nin != _undefined) 'nin': (nin as List<DateTime?>?),
      if (gt != _undefined) 'gt': (gt as DateTime?),
      if (ngt != _undefined) 'ngt': (ngt as DateTime?),
      if (gte != _undefined) 'gte': (gte as DateTime?),
      if (ngte != _undefined) 'ngte': (ngte as DateTime?),
      if (lt != _undefined) 'lt': (lt as DateTime?),
      if (nlt != _undefined) 'nlt': (nlt as DateTime?),
      if (lte != _undefined) 'lte': (lte as DateTime?),
      if (nlte != _undefined) 'nlte': (nlte as DateTime?),
    }),
  );
}

class _CopyWithStubImpl$Input$DateTimeOperationFilterInput<TRes>
    implements CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DateTimeOperationFilterInput(this._res);

  TRes _res;

  call({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  }) => _res;
}

class Input$DecimalOperationFilterInput {
  factory Input$DecimalOperationFilterInput({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) => Input$DecimalOperationFilterInput._({
    if (eq != null) r'eq': eq,
    if (neq != null) r'neq': neq,
    if ($in != null) r'in': $in,
    if (nin != null) r'nin': nin,
    if (gt != null) r'gt': gt,
    if (ngt != null) r'ngt': ngt,
    if (gte != null) r'gte': gte,
    if (ngte != null) r'ngte': ngte,
    if (lt != null) r'lt': lt,
    if (nlt != null) r'nlt': nlt,
    if (lte != null) r'lte': lte,
    if (nlte != null) r'nlte': nlte,
  });

  Input$DecimalOperationFilterInput._(this._$data);

  factory Input$DecimalOperationFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as num?)?.toDouble();
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as num?)?.toDouble();
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as num?)?.toDouble();
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as num?)?.toDouble();
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as num?)?.toDouble();
    }
    return Input$DecimalOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get eq => (_$data['eq'] as double?);

  double? get neq => (_$data['neq'] as double?);

  List<double?>? get $in => (_$data['in'] as List<double?>?);

  List<double?>? get nin => (_$data['nin'] as List<double?>?);

  double? get gt => (_$data['gt'] as double?);

  double? get ngt => (_$data['ngt'] as double?);

  double? get gte => (_$data['gte'] as double?);

  double? get ngte => (_$data['ngte'] as double?);

  double? get lt => (_$data['lt'] as double?);

  double? get nlt => (_$data['nlt'] as double?);

  double? get lte => (_$data['lte'] as double?);

  double? get nlte => (_$data['nlte'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$DecimalOperationFilterInput<Input$DecimalOperationFilterInput>
  get copyWith => CopyWith$Input$DecimalOperationFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DecimalOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
                ? null
                : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$DecimalOperationFilterInput<TRes> {
  factory CopyWith$Input$DecimalOperationFilterInput(
    Input$DecimalOperationFilterInput instance,
    TRes Function(Input$DecimalOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DecimalOperationFilterInput;

  factory CopyWith$Input$DecimalOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DecimalOperationFilterInput;

  TRes call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  });
}

class _CopyWithImpl$Input$DecimalOperationFilterInput<TRes>
    implements CopyWith$Input$DecimalOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DecimalOperationFilterInput(this._instance, this._then);

  final Input$DecimalOperationFilterInput _instance;

  final TRes Function(Input$DecimalOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) => _then(
    Input$DecimalOperationFilterInput._({
      ..._instance._$data,
      if (eq != _undefined) 'eq': (eq as double?),
      if (neq != _undefined) 'neq': (neq as double?),
      if ($in != _undefined) 'in': ($in as List<double?>?),
      if (nin != _undefined) 'nin': (nin as List<double?>?),
      if (gt != _undefined) 'gt': (gt as double?),
      if (ngt != _undefined) 'ngt': (ngt as double?),
      if (gte != _undefined) 'gte': (gte as double?),
      if (ngte != _undefined) 'ngte': (ngte as double?),
      if (lt != _undefined) 'lt': (lt as double?),
      if (nlt != _undefined) 'nlt': (nlt as double?),
      if (lte != _undefined) 'lte': (lte as double?),
      if (nlte != _undefined) 'nlte': (nlte as double?),
    }),
  );
}

class _CopyWithStubImpl$Input$DecimalOperationFilterInput<TRes>
    implements CopyWith$Input$DecimalOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DecimalOperationFilterInput(this._res);

  TRes _res;

  call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) => _res;
}

class Input$DelinkGroupAndAccessPointInput {
  factory Input$DelinkGroupAndAccessPointInput({
    required String groupId,
    required List<String> accessPointIds,
  }) => Input$DelinkGroupAndAccessPointInput._({
    r'groupId': groupId,
    r'accessPointIds': accessPointIds,
  });

  Input$DelinkGroupAndAccessPointInput._(this._$data);

  factory Input$DelinkGroupAndAccessPointInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$groupId = data['groupId'];
    result$data['groupId'] = (l$groupId as String);
    final l$accessPointIds = data['accessPointIds'];
    result$data['accessPointIds'] = (l$accessPointIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Input$DelinkGroupAndAccessPointInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get groupId => (_$data['groupId'] as String);

  List<String> get accessPointIds => (_$data['accessPointIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$groupId = groupId;
    result$data['groupId'] = l$groupId;
    final l$accessPointIds = accessPointIds;
    result$data['accessPointIds'] = l$accessPointIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$DelinkGroupAndAccessPointInput<
    Input$DelinkGroupAndAccessPointInput
  >
  get copyWith => CopyWith$Input$DelinkGroupAndAccessPointInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DelinkGroupAndAccessPointInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$accessPointIds = accessPointIds;
    final lOther$accessPointIds = other.accessPointIds;
    if (l$accessPointIds.length != lOther$accessPointIds.length) {
      return false;
    }
    for (int i = 0; i < l$accessPointIds.length; i++) {
      final l$accessPointIds$entry = l$accessPointIds[i];
      final lOther$accessPointIds$entry = lOther$accessPointIds[i];
      if (l$accessPointIds$entry != lOther$accessPointIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$accessPointIds = accessPointIds;
    return Object.hashAll([
      l$groupId,
      Object.hashAll(l$accessPointIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$DelinkGroupAndAccessPointInput<TRes> {
  factory CopyWith$Input$DelinkGroupAndAccessPointInput(
    Input$DelinkGroupAndAccessPointInput instance,
    TRes Function(Input$DelinkGroupAndAccessPointInput) then,
  ) = _CopyWithImpl$Input$DelinkGroupAndAccessPointInput;

  factory CopyWith$Input$DelinkGroupAndAccessPointInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DelinkGroupAndAccessPointInput;

  TRes call({String? groupId, List<String>? accessPointIds});
}

class _CopyWithImpl$Input$DelinkGroupAndAccessPointInput<TRes>
    implements CopyWith$Input$DelinkGroupAndAccessPointInput<TRes> {
  _CopyWithImpl$Input$DelinkGroupAndAccessPointInput(
    this._instance,
    this._then,
  );

  final Input$DelinkGroupAndAccessPointInput _instance;

  final TRes Function(Input$DelinkGroupAndAccessPointInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? accessPointIds = _undefined,
  }) => _then(
    Input$DelinkGroupAndAccessPointInput._({
      ..._instance._$data,
      if (groupId != _undefined && groupId != null)
        'groupId': (groupId as String),
      if (accessPointIds != _undefined && accessPointIds != null)
        'accessPointIds': (accessPointIds as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Input$DelinkGroupAndAccessPointInput<TRes>
    implements CopyWith$Input$DelinkGroupAndAccessPointInput<TRes> {
  _CopyWithStubImpl$Input$DelinkGroupAndAccessPointInput(this._res);

  TRes _res;

  call({String? groupId, List<String>? accessPointIds}) => _res;
}

class Input$DoorAccessAttemptEventsIndexResultFilterInput {
  factory Input$DoorAccessAttemptEventsIndexResultFilterInput({
    List<Input$DoorAccessAttemptEventsIndexResultFilterInput>? and,
    List<Input$DoorAccessAttemptEventsIndexResultFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$LongOperationFilterInput? rowId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$DateTimeOperationFilterInput? utcTime,
    Input$StringOperationFilterInput? topic0,
    Input$StringOperationFilterInput? topic1,
    Input$StringOperationFilterInput? topic2,
    Input$StringOperationFilterInput? accessPointId,
    Input$StringOperationFilterInput? accessPointName,
    Input$BooleanOperationFilterInput? accessPointRestricted,
    Input$StringOperationFilterInput? userId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? email,
    Input$StringOperationFilterInput? cardNumber,
    Input$StringOperationFilterInput? rawCardNumber,
    Input$StringOperationFilterInput? accessResponse,
    Input$StringOperationFilterInput? snapshotUrl,
    Input$NullableOfSnapshotReasonEnumOperationFilterInput? snapshotReason,
  }) => Input$DoorAccessAttemptEventsIndexResultFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (id != null) r'id': id,
    if (rowId != null) r'rowId': rowId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (siteId != null) r'siteId': siteId,
    if (siteName != null) r'siteName': siteName,
    if (utcTime != null) r'utcTime': utcTime,
    if (topic0 != null) r'topic0': topic0,
    if (topic1 != null) r'topic1': topic1,
    if (topic2 != null) r'topic2': topic2,
    if (accessPointId != null) r'accessPointId': accessPointId,
    if (accessPointName != null) r'accessPointName': accessPointName,
    if (accessPointRestricted != null)
      r'accessPointRestricted': accessPointRestricted,
    if (userId != null) r'userId': userId,
    if (name != null) r'name': name,
    if (email != null) r'email': email,
    if (cardNumber != null) r'cardNumber': cardNumber,
    if (rawCardNumber != null) r'rawCardNumber': rawCardNumber,
    if (accessResponse != null) r'accessResponse': accessResponse,
    if (snapshotUrl != null) r'snapshotUrl': snapshotUrl,
    if (snapshotReason != null) r'snapshotReason': snapshotReason,
  });

  Input$DoorAccessAttemptEventsIndexResultFilterInput._(this._$data);

  factory Input$DoorAccessAttemptEventsIndexResultFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$DoorAccessAttemptEventsIndexResultFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$DoorAccessAttemptEventsIndexResultFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>),
            );
    }
    if (data.containsKey('rowId')) {
      final l$rowId = data['rowId'];
      result$data['rowId'] = l$rowId == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$rowId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessControllerId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = l$siteId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$siteId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('siteName')) {
      final l$siteName = data['siteName'];
      result$data['siteName'] = l$siteName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$siteName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('utcTime')) {
      final l$utcTime = data['utcTime'];
      result$data['utcTime'] = l$utcTime == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$utcTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('topic0')) {
      final l$topic0 = data['topic0'];
      result$data['topic0'] = l$topic0 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$topic0 as Map<String, dynamic>),
            );
    }
    if (data.containsKey('topic1')) {
      final l$topic1 = data['topic1'];
      result$data['topic1'] = l$topic1 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$topic1 as Map<String, dynamic>),
            );
    }
    if (data.containsKey('topic2')) {
      final l$topic2 = data['topic2'];
      result$data['topic2'] = l$topic2 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$topic2 as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessPointId')) {
      final l$accessPointId = data['accessPointId'];
      result$data['accessPointId'] = l$accessPointId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessPointId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessPointName')) {
      final l$accessPointName = data['accessPointName'];
      result$data['accessPointName'] = l$accessPointName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessPointName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessPointRestricted')) {
      final l$accessPointRestricted = data['accessPointRestricted'];
      result$data['accessPointRestricted'] = l$accessPointRestricted == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$accessPointRestricted as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = l$userId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$userId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$email as Map<String, dynamic>),
            );
    }
    if (data.containsKey('cardNumber')) {
      final l$cardNumber = data['cardNumber'];
      result$data['cardNumber'] = l$cardNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$cardNumber as Map<String, dynamic>),
            );
    }
    if (data.containsKey('rawCardNumber')) {
      final l$rawCardNumber = data['rawCardNumber'];
      result$data['rawCardNumber'] = l$rawCardNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$rawCardNumber as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessResponse')) {
      final l$accessResponse = data['accessResponse'];
      result$data['accessResponse'] = l$accessResponse == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessResponse as Map<String, dynamic>),
            );
    }
    if (data.containsKey('snapshotUrl')) {
      final l$snapshotUrl = data['snapshotUrl'];
      result$data['snapshotUrl'] = l$snapshotUrl == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$snapshotUrl as Map<String, dynamic>),
            );
    }
    if (data.containsKey('snapshotReason')) {
      final l$snapshotReason = data['snapshotReason'];
      result$data['snapshotReason'] = l$snapshotReason == null
          ? null
          : Input$NullableOfSnapshotReasonEnumOperationFilterInput.fromJson(
              (l$snapshotReason as Map<String, dynamic>),
            );
    }
    return Input$DoorAccessAttemptEventsIndexResultFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DoorAccessAttemptEventsIndexResultFilterInput>? get and =>
      (_$data['and']
          as List<Input$DoorAccessAttemptEventsIndexResultFilterInput>?);

  List<Input$DoorAccessAttemptEventsIndexResultFilterInput>? get or =>
      (_$data['or']
          as List<Input$DoorAccessAttemptEventsIndexResultFilterInput>?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$LongOperationFilterInput? get rowId =>
      (_$data['rowId'] as Input$LongOperationFilterInput?);

  Input$StringOperationFilterInput? get accessControllerId =>
      (_$data['accessControllerId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get siteId =>
      (_$data['siteId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get siteName =>
      (_$data['siteName'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get utcTime =>
      (_$data['utcTime'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get topic0 =>
      (_$data['topic0'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get topic1 =>
      (_$data['topic1'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get topic2 =>
      (_$data['topic2'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accessPointId =>
      (_$data['accessPointId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accessPointName =>
      (_$data['accessPointName'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get accessPointRestricted =>
      (_$data['accessPointRestricted'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get userId =>
      (_$data['userId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get email =>
      (_$data['email'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get cardNumber =>
      (_$data['cardNumber'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get rawCardNumber =>
      (_$data['rawCardNumber'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accessResponse =>
      (_$data['accessResponse'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get snapshotUrl =>
      (_$data['snapshotUrl'] as Input$StringOperationFilterInput?);

  Input$NullableOfSnapshotReasonEnumOperationFilterInput? get snapshotReason =>
      (_$data['snapshotReason']
          as Input$NullableOfSnapshotReasonEnumOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('rowId')) {
      final l$rowId = rowId;
      result$data['rowId'] = l$rowId?.toJson();
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId?.toJson();
    }
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId?.toJson();
    }
    if (_$data.containsKey('siteName')) {
      final l$siteName = siteName;
      result$data['siteName'] = l$siteName?.toJson();
    }
    if (_$data.containsKey('utcTime')) {
      final l$utcTime = utcTime;
      result$data['utcTime'] = l$utcTime?.toJson();
    }
    if (_$data.containsKey('topic0')) {
      final l$topic0 = topic0;
      result$data['topic0'] = l$topic0?.toJson();
    }
    if (_$data.containsKey('topic1')) {
      final l$topic1 = topic1;
      result$data['topic1'] = l$topic1?.toJson();
    }
    if (_$data.containsKey('topic2')) {
      final l$topic2 = topic2;
      result$data['topic2'] = l$topic2?.toJson();
    }
    if (_$data.containsKey('accessPointId')) {
      final l$accessPointId = accessPointId;
      result$data['accessPointId'] = l$accessPointId?.toJson();
    }
    if (_$data.containsKey('accessPointName')) {
      final l$accessPointName = accessPointName;
      result$data['accessPointName'] = l$accessPointName?.toJson();
    }
    if (_$data.containsKey('accessPointRestricted')) {
      final l$accessPointRestricted = accessPointRestricted;
      result$data['accessPointRestricted'] = l$accessPointRestricted?.toJson();
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email?.toJson();
    }
    if (_$data.containsKey('cardNumber')) {
      final l$cardNumber = cardNumber;
      result$data['cardNumber'] = l$cardNumber?.toJson();
    }
    if (_$data.containsKey('rawCardNumber')) {
      final l$rawCardNumber = rawCardNumber;
      result$data['rawCardNumber'] = l$rawCardNumber?.toJson();
    }
    if (_$data.containsKey('accessResponse')) {
      final l$accessResponse = accessResponse;
      result$data['accessResponse'] = l$accessResponse?.toJson();
    }
    if (_$data.containsKey('snapshotUrl')) {
      final l$snapshotUrl = snapshotUrl;
      result$data['snapshotUrl'] = l$snapshotUrl?.toJson();
    }
    if (_$data.containsKey('snapshotReason')) {
      final l$snapshotReason = snapshotReason;
      result$data['snapshotReason'] = l$snapshotReason?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput<
    Input$DoorAccessAttemptEventsIndexResultFilterInput
  >
  get copyWith => CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorAccessAttemptEventsIndexResultFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$rowId = rowId;
    final lOther$rowId = other.rowId;
    if (_$data.containsKey('rowId') != other._$data.containsKey('rowId')) {
      return false;
    }
    if (l$rowId != lOther$rowId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$siteName = siteName;
    final lOther$siteName = other.siteName;
    if (_$data.containsKey('siteName') !=
        other._$data.containsKey('siteName')) {
      return false;
    }
    if (l$siteName != lOther$siteName) {
      return false;
    }
    final l$utcTime = utcTime;
    final lOther$utcTime = other.utcTime;
    if (_$data.containsKey('utcTime') != other._$data.containsKey('utcTime')) {
      return false;
    }
    if (l$utcTime != lOther$utcTime) {
      return false;
    }
    final l$topic0 = topic0;
    final lOther$topic0 = other.topic0;
    if (_$data.containsKey('topic0') != other._$data.containsKey('topic0')) {
      return false;
    }
    if (l$topic0 != lOther$topic0) {
      return false;
    }
    final l$topic1 = topic1;
    final lOther$topic1 = other.topic1;
    if (_$data.containsKey('topic1') != other._$data.containsKey('topic1')) {
      return false;
    }
    if (l$topic1 != lOther$topic1) {
      return false;
    }
    final l$topic2 = topic2;
    final lOther$topic2 = other.topic2;
    if (_$data.containsKey('topic2') != other._$data.containsKey('topic2')) {
      return false;
    }
    if (l$topic2 != lOther$topic2) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (_$data.containsKey('accessPointId') !=
        other._$data.containsKey('accessPointId')) {
      return false;
    }
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$accessPointName = accessPointName;
    final lOther$accessPointName = other.accessPointName;
    if (_$data.containsKey('accessPointName') !=
        other._$data.containsKey('accessPointName')) {
      return false;
    }
    if (l$accessPointName != lOther$accessPointName) {
      return false;
    }
    final l$accessPointRestricted = accessPointRestricted;
    final lOther$accessPointRestricted = other.accessPointRestricted;
    if (_$data.containsKey('accessPointRestricted') !=
        other._$data.containsKey('accessPointRestricted')) {
      return false;
    }
    if (l$accessPointRestricted != lOther$accessPointRestricted) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$cardNumber = cardNumber;
    final lOther$cardNumber = other.cardNumber;
    if (_$data.containsKey('cardNumber') !=
        other._$data.containsKey('cardNumber')) {
      return false;
    }
    if (l$cardNumber != lOther$cardNumber) {
      return false;
    }
    final l$rawCardNumber = rawCardNumber;
    final lOther$rawCardNumber = other.rawCardNumber;
    if (_$data.containsKey('rawCardNumber') !=
        other._$data.containsKey('rawCardNumber')) {
      return false;
    }
    if (l$rawCardNumber != lOther$rawCardNumber) {
      return false;
    }
    final l$accessResponse = accessResponse;
    final lOther$accessResponse = other.accessResponse;
    if (_$data.containsKey('accessResponse') !=
        other._$data.containsKey('accessResponse')) {
      return false;
    }
    if (l$accessResponse != lOther$accessResponse) {
      return false;
    }
    final l$snapshotUrl = snapshotUrl;
    final lOther$snapshotUrl = other.snapshotUrl;
    if (_$data.containsKey('snapshotUrl') !=
        other._$data.containsKey('snapshotUrl')) {
      return false;
    }
    if (l$snapshotUrl != lOther$snapshotUrl) {
      return false;
    }
    final l$snapshotReason = snapshotReason;
    final lOther$snapshotReason = other.snapshotReason;
    if (_$data.containsKey('snapshotReason') !=
        other._$data.containsKey('snapshotReason')) {
      return false;
    }
    if (l$snapshotReason != lOther$snapshotReason) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$rowId = rowId;
    final l$accessControllerId = accessControllerId;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$utcTime = utcTime;
    final l$topic0 = topic0;
    final l$topic1 = topic1;
    final l$topic2 = topic2;
    final l$accessPointId = accessPointId;
    final l$accessPointName = accessPointName;
    final l$accessPointRestricted = accessPointRestricted;
    final l$userId = userId;
    final l$name = name;
    final l$email = email;
    final l$cardNumber = cardNumber;
    final l$rawCardNumber = rawCardNumber;
    final l$accessResponse = accessResponse;
    final l$snapshotUrl = snapshotUrl;
    final l$snapshotReason = snapshotReason;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('rowId') ? l$rowId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('siteName') ? l$siteName : const {},
      _$data.containsKey('utcTime') ? l$utcTime : const {},
      _$data.containsKey('topic0') ? l$topic0 : const {},
      _$data.containsKey('topic1') ? l$topic1 : const {},
      _$data.containsKey('topic2') ? l$topic2 : const {},
      _$data.containsKey('accessPointId') ? l$accessPointId : const {},
      _$data.containsKey('accessPointName') ? l$accessPointName : const {},
      _$data.containsKey('accessPointRestricted')
          ? l$accessPointRestricted
          : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('cardNumber') ? l$cardNumber : const {},
      _$data.containsKey('rawCardNumber') ? l$rawCardNumber : const {},
      _$data.containsKey('accessResponse') ? l$accessResponse : const {},
      _$data.containsKey('snapshotUrl') ? l$snapshotUrl : const {},
      _$data.containsKey('snapshotReason') ? l$snapshotReason : const {},
    ]);
  }
}

abstract class CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput<
  TRes
> {
  factory CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput(
    Input$DoorAccessAttemptEventsIndexResultFilterInput instance,
    TRes Function(Input$DoorAccessAttemptEventsIndexResultFilterInput) then,
  ) = _CopyWithImpl$Input$DoorAccessAttemptEventsIndexResultFilterInput;

  factory CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$DoorAccessAttemptEventsIndexResultFilterInput;

  TRes call({
    List<Input$DoorAccessAttemptEventsIndexResultFilterInput>? and,
    List<Input$DoorAccessAttemptEventsIndexResultFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$LongOperationFilterInput? rowId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$DateTimeOperationFilterInput? utcTime,
    Input$StringOperationFilterInput? topic0,
    Input$StringOperationFilterInput? topic1,
    Input$StringOperationFilterInput? topic2,
    Input$StringOperationFilterInput? accessPointId,
    Input$StringOperationFilterInput? accessPointName,
    Input$BooleanOperationFilterInput? accessPointRestricted,
    Input$StringOperationFilterInput? userId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? email,
    Input$StringOperationFilterInput? cardNumber,
    Input$StringOperationFilterInput? rawCardNumber,
    Input$StringOperationFilterInput? accessResponse,
    Input$StringOperationFilterInput? snapshotUrl,
    Input$NullableOfSnapshotReasonEnumOperationFilterInput? snapshotReason,
  });
  TRes and(
    Iterable<Input$DoorAccessAttemptEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput<
          Input$DoorAccessAttemptEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$DoorAccessAttemptEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput<
          Input$DoorAccessAttemptEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$LongOperationFilterInput<TRes> get rowId;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId;
  CopyWith$Input$StringOperationFilterInput<TRes> get siteId;
  CopyWith$Input$StringOperationFilterInput<TRes> get siteName;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get utcTime;
  CopyWith$Input$StringOperationFilterInput<TRes> get topic0;
  CopyWith$Input$StringOperationFilterInput<TRes> get topic1;
  CopyWith$Input$StringOperationFilterInput<TRes> get topic2;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessPointId;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessPointName;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get accessPointRestricted;
  CopyWith$Input$StringOperationFilterInput<TRes> get userId;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get email;
  CopyWith$Input$StringOperationFilterInput<TRes> get cardNumber;
  CopyWith$Input$StringOperationFilterInput<TRes> get rawCardNumber;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessResponse;
  CopyWith$Input$StringOperationFilterInput<TRes> get snapshotUrl;
  CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput<TRes>
  get snapshotReason;
}

class _CopyWithImpl$Input$DoorAccessAttemptEventsIndexResultFilterInput<TRes>
    implements
        CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput<TRes> {
  _CopyWithImpl$Input$DoorAccessAttemptEventsIndexResultFilterInput(
    this._instance,
    this._then,
  );

  final Input$DoorAccessAttemptEventsIndexResultFilterInput _instance;

  final TRes Function(Input$DoorAccessAttemptEventsIndexResultFilterInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? rowId = _undefined,
    Object? accessControllerId = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? utcTime = _undefined,
    Object? topic0 = _undefined,
    Object? topic1 = _undefined,
    Object? topic2 = _undefined,
    Object? accessPointId = _undefined,
    Object? accessPointName = _undefined,
    Object? accessPointRestricted = _undefined,
    Object? userId = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? cardNumber = _undefined,
    Object? rawCardNumber = _undefined,
    Object? accessResponse = _undefined,
    Object? snapshotUrl = _undefined,
    Object? snapshotReason = _undefined,
  }) => _then(
    Input$DoorAccessAttemptEventsIndexResultFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and':
            (and as List<Input$DoorAccessAttemptEventsIndexResultFilterInput>?),
      if (or != _undefined)
        'or':
            (or as List<Input$DoorAccessAttemptEventsIndexResultFilterInput>?),
      if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
      if (rowId != _undefined)
        'rowId': (rowId as Input$LongOperationFilterInput?),
      if (accessControllerId != _undefined)
        'accessControllerId':
            (accessControllerId as Input$StringOperationFilterInput?),
      if (siteId != _undefined)
        'siteId': (siteId as Input$StringOperationFilterInput?),
      if (siteName != _undefined)
        'siteName': (siteName as Input$StringOperationFilterInput?),
      if (utcTime != _undefined)
        'utcTime': (utcTime as Input$DateTimeOperationFilterInput?),
      if (topic0 != _undefined)
        'topic0': (topic0 as Input$StringOperationFilterInput?),
      if (topic1 != _undefined)
        'topic1': (topic1 as Input$StringOperationFilterInput?),
      if (topic2 != _undefined)
        'topic2': (topic2 as Input$StringOperationFilterInput?),
      if (accessPointId != _undefined)
        'accessPointId': (accessPointId as Input$StringOperationFilterInput?),
      if (accessPointName != _undefined)
        'accessPointName':
            (accessPointName as Input$StringOperationFilterInput?),
      if (accessPointRestricted != _undefined)
        'accessPointRestricted':
            (accessPointRestricted as Input$BooleanOperationFilterInput?),
      if (userId != _undefined)
        'userId': (userId as Input$StringOperationFilterInput?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (email != _undefined)
        'email': (email as Input$StringOperationFilterInput?),
      if (cardNumber != _undefined)
        'cardNumber': (cardNumber as Input$StringOperationFilterInput?),
      if (rawCardNumber != _undefined)
        'rawCardNumber': (rawCardNumber as Input$StringOperationFilterInput?),
      if (accessResponse != _undefined)
        'accessResponse': (accessResponse as Input$StringOperationFilterInput?),
      if (snapshotUrl != _undefined)
        'snapshotUrl': (snapshotUrl as Input$StringOperationFilterInput?),
      if (snapshotReason != _undefined)
        'snapshotReason':
            (snapshotReason
                as Input$NullableOfSnapshotReasonEnumOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$DoorAccessAttemptEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput<
          Input$DoorAccessAttemptEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$DoorAccessAttemptEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput<
          Input$DoorAccessAttemptEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id,
            (e) => call(id: e),
          );
  }

  CopyWith$Input$LongOperationFilterInput<TRes> get rowId {
    final local$rowId = _instance.rowId;
    return local$rowId == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$rowId,
            (e) => call(rowId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId {
    final local$accessControllerId = _instance.accessControllerId;
    return local$accessControllerId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessControllerId,
            (e) => call(accessControllerId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get siteId {
    final local$siteId = _instance.siteId;
    return local$siteId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$siteId,
            (e) => call(siteId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get siteName {
    final local$siteName = _instance.siteName;
    return local$siteName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$siteName,
            (e) => call(siteName: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get utcTime {
    final local$utcTime = _instance.utcTime;
    return local$utcTime == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$utcTime,
            (e) => call(utcTime: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get topic0 {
    final local$topic0 = _instance.topic0;
    return local$topic0 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$topic0,
            (e) => call(topic0: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get topic1 {
    final local$topic1 = _instance.topic1;
    return local$topic1 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$topic1,
            (e) => call(topic1: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get topic2 {
    final local$topic2 = _instance.topic2;
    return local$topic2 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$topic2,
            (e) => call(topic2: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessPointId {
    final local$accessPointId = _instance.accessPointId;
    return local$accessPointId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessPointId,
            (e) => call(accessPointId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessPointName {
    final local$accessPointName = _instance.accessPointName;
    return local$accessPointName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessPointName,
            (e) => call(accessPointName: e),
          );
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get accessPointRestricted {
    final local$accessPointRestricted = _instance.accessPointRestricted;
    return local$accessPointRestricted == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$accessPointRestricted,
            (e) => call(accessPointRestricted: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get userId {
    final local$userId = _instance.userId;
    return local$userId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$userId,
            (e) => call(userId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get email {
    final local$email = _instance.email;
    return local$email == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$email,
            (e) => call(email: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get cardNumber {
    final local$cardNumber = _instance.cardNumber;
    return local$cardNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$cardNumber,
            (e) => call(cardNumber: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get rawCardNumber {
    final local$rawCardNumber = _instance.rawCardNumber;
    return local$rawCardNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$rawCardNumber,
            (e) => call(rawCardNumber: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessResponse {
    final local$accessResponse = _instance.accessResponse;
    return local$accessResponse == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessResponse,
            (e) => call(accessResponse: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get snapshotUrl {
    final local$snapshotUrl = _instance.snapshotUrl;
    return local$snapshotUrl == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$snapshotUrl,
            (e) => call(snapshotUrl: e),
          );
  }

  CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput<TRes>
  get snapshotReason {
    final local$snapshotReason = _instance.snapshotReason;
    return local$snapshotReason == null
        ? CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput(
            local$snapshotReason,
            (e) => call(snapshotReason: e),
          );
  }
}

class _CopyWithStubImpl$Input$DoorAccessAttemptEventsIndexResultFilterInput<
  TRes
>
    implements
        CopyWith$Input$DoorAccessAttemptEventsIndexResultFilterInput<TRes> {
  _CopyWithStubImpl$Input$DoorAccessAttemptEventsIndexResultFilterInput(
    this._res,
  );

  TRes _res;

  call({
    List<Input$DoorAccessAttemptEventsIndexResultFilterInput>? and,
    List<Input$DoorAccessAttemptEventsIndexResultFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$LongOperationFilterInput? rowId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$DateTimeOperationFilterInput? utcTime,
    Input$StringOperationFilterInput? topic0,
    Input$StringOperationFilterInput? topic1,
    Input$StringOperationFilterInput? topic2,
    Input$StringOperationFilterInput? accessPointId,
    Input$StringOperationFilterInput? accessPointName,
    Input$BooleanOperationFilterInput? accessPointRestricted,
    Input$StringOperationFilterInput? userId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? email,
    Input$StringOperationFilterInput? cardNumber,
    Input$StringOperationFilterInput? rawCardNumber,
    Input$StringOperationFilterInput? accessResponse,
    Input$StringOperationFilterInput? snapshotUrl,
    Input$NullableOfSnapshotReasonEnumOperationFilterInput? snapshotReason,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$LongOperationFilterInput<TRes> get rowId =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get siteId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get siteName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get utcTime =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get topic0 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get topic1 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get topic2 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessPointId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessPointName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get accessPointRestricted =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get userId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get email =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get cardNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get rawCardNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessResponse =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get snapshotUrl =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput<TRes>
  get snapshotReason =>
      CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput.stub(
        _res,
      );
}

class Input$DoorAccessAttemptEventsIndexResultSortInput {
  factory Input$DoorAccessAttemptEventsIndexResultSortInput({
    Enum$SortEnumType? id,
    Enum$SortEnumType? rowId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? utcTime,
    Enum$SortEnumType? topic0,
    Enum$SortEnumType? topic1,
    Enum$SortEnumType? topic2,
    Enum$SortEnumType? accessPointId,
    Enum$SortEnumType? accessPointName,
    Enum$SortEnumType? accessPointRestricted,
    Enum$SortEnumType? userId,
    Enum$SortEnumType? name,
    Enum$SortEnumType? email,
    Enum$SortEnumType? cardNumber,
    Enum$SortEnumType? rawCardNumber,
    Enum$SortEnumType? accessResponse,
    Enum$SortEnumType? snapshotUrl,
    Enum$SortEnumType? snapshotReason,
  }) => Input$DoorAccessAttemptEventsIndexResultSortInput._({
    if (id != null) r'id': id,
    if (rowId != null) r'rowId': rowId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (siteId != null) r'siteId': siteId,
    if (siteName != null) r'siteName': siteName,
    if (utcTime != null) r'utcTime': utcTime,
    if (topic0 != null) r'topic0': topic0,
    if (topic1 != null) r'topic1': topic1,
    if (topic2 != null) r'topic2': topic2,
    if (accessPointId != null) r'accessPointId': accessPointId,
    if (accessPointName != null) r'accessPointName': accessPointName,
    if (accessPointRestricted != null)
      r'accessPointRestricted': accessPointRestricted,
    if (userId != null) r'userId': userId,
    if (name != null) r'name': name,
    if (email != null) r'email': email,
    if (cardNumber != null) r'cardNumber': cardNumber,
    if (rawCardNumber != null) r'rawCardNumber': rawCardNumber,
    if (accessResponse != null) r'accessResponse': accessResponse,
    if (snapshotUrl != null) r'snapshotUrl': snapshotUrl,
    if (snapshotReason != null) r'snapshotReason': snapshotReason,
  });

  Input$DoorAccessAttemptEventsIndexResultSortInput._(this._$data);

  factory Input$DoorAccessAttemptEventsIndexResultSortInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('rowId')) {
      final l$rowId = data['rowId'];
      result$data['rowId'] = l$rowId == null
          ? null
          : fromJson$Enum$SortEnumType((l$rowId as String));
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessControllerId as String));
    }
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = l$siteId == null
          ? null
          : fromJson$Enum$SortEnumType((l$siteId as String));
    }
    if (data.containsKey('siteName')) {
      final l$siteName = data['siteName'];
      result$data['siteName'] = l$siteName == null
          ? null
          : fromJson$Enum$SortEnumType((l$siteName as String));
    }
    if (data.containsKey('utcTime')) {
      final l$utcTime = data['utcTime'];
      result$data['utcTime'] = l$utcTime == null
          ? null
          : fromJson$Enum$SortEnumType((l$utcTime as String));
    }
    if (data.containsKey('topic0')) {
      final l$topic0 = data['topic0'];
      result$data['topic0'] = l$topic0 == null
          ? null
          : fromJson$Enum$SortEnumType((l$topic0 as String));
    }
    if (data.containsKey('topic1')) {
      final l$topic1 = data['topic1'];
      result$data['topic1'] = l$topic1 == null
          ? null
          : fromJson$Enum$SortEnumType((l$topic1 as String));
    }
    if (data.containsKey('topic2')) {
      final l$topic2 = data['topic2'];
      result$data['topic2'] = l$topic2 == null
          ? null
          : fromJson$Enum$SortEnumType((l$topic2 as String));
    }
    if (data.containsKey('accessPointId')) {
      final l$accessPointId = data['accessPointId'];
      result$data['accessPointId'] = l$accessPointId == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessPointId as String));
    }
    if (data.containsKey('accessPointName')) {
      final l$accessPointName = data['accessPointName'];
      result$data['accessPointName'] = l$accessPointName == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessPointName as String));
    }
    if (data.containsKey('accessPointRestricted')) {
      final l$accessPointRestricted = data['accessPointRestricted'];
      result$data['accessPointRestricted'] = l$accessPointRestricted == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessPointRestricted as String));
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = l$userId == null
          ? null
          : fromJson$Enum$SortEnumType((l$userId as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : fromJson$Enum$SortEnumType((l$email as String));
    }
    if (data.containsKey('cardNumber')) {
      final l$cardNumber = data['cardNumber'];
      result$data['cardNumber'] = l$cardNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$cardNumber as String));
    }
    if (data.containsKey('rawCardNumber')) {
      final l$rawCardNumber = data['rawCardNumber'];
      result$data['rawCardNumber'] = l$rawCardNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$rawCardNumber as String));
    }
    if (data.containsKey('accessResponse')) {
      final l$accessResponse = data['accessResponse'];
      result$data['accessResponse'] = l$accessResponse == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessResponse as String));
    }
    if (data.containsKey('snapshotUrl')) {
      final l$snapshotUrl = data['snapshotUrl'];
      result$data['snapshotUrl'] = l$snapshotUrl == null
          ? null
          : fromJson$Enum$SortEnumType((l$snapshotUrl as String));
    }
    if (data.containsKey('snapshotReason')) {
      final l$snapshotReason = data['snapshotReason'];
      result$data['snapshotReason'] = l$snapshotReason == null
          ? null
          : fromJson$Enum$SortEnumType((l$snapshotReason as String));
    }
    return Input$DoorAccessAttemptEventsIndexResultSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get rowId => (_$data['rowId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessControllerId =>
      (_$data['accessControllerId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get siteId => (_$data['siteId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get siteName => (_$data['siteName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get utcTime => (_$data['utcTime'] as Enum$SortEnumType?);

  Enum$SortEnumType? get topic0 => (_$data['topic0'] as Enum$SortEnumType?);

  Enum$SortEnumType? get topic1 => (_$data['topic1'] as Enum$SortEnumType?);

  Enum$SortEnumType? get topic2 => (_$data['topic2'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessPointId =>
      (_$data['accessPointId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessPointName =>
      (_$data['accessPointName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessPointRestricted =>
      (_$data['accessPointRestricted'] as Enum$SortEnumType?);

  Enum$SortEnumType? get userId => (_$data['userId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get email => (_$data['email'] as Enum$SortEnumType?);

  Enum$SortEnumType? get cardNumber =>
      (_$data['cardNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get rawCardNumber =>
      (_$data['rawCardNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessResponse =>
      (_$data['accessResponse'] as Enum$SortEnumType?);

  Enum$SortEnumType? get snapshotUrl =>
      (_$data['snapshotUrl'] as Enum$SortEnumType?);

  Enum$SortEnumType? get snapshotReason =>
      (_$data['snapshotReason'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('rowId')) {
      final l$rowId = rowId;
      result$data['rowId'] = l$rowId == null
          ? null
          : toJson$Enum$SortEnumType(l$rowId);
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : toJson$Enum$SortEnumType(l$accessControllerId);
    }
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId == null
          ? null
          : toJson$Enum$SortEnumType(l$siteId);
    }
    if (_$data.containsKey('siteName')) {
      final l$siteName = siteName;
      result$data['siteName'] = l$siteName == null
          ? null
          : toJson$Enum$SortEnumType(l$siteName);
    }
    if (_$data.containsKey('utcTime')) {
      final l$utcTime = utcTime;
      result$data['utcTime'] = l$utcTime == null
          ? null
          : toJson$Enum$SortEnumType(l$utcTime);
    }
    if (_$data.containsKey('topic0')) {
      final l$topic0 = topic0;
      result$data['topic0'] = l$topic0 == null
          ? null
          : toJson$Enum$SortEnumType(l$topic0);
    }
    if (_$data.containsKey('topic1')) {
      final l$topic1 = topic1;
      result$data['topic1'] = l$topic1 == null
          ? null
          : toJson$Enum$SortEnumType(l$topic1);
    }
    if (_$data.containsKey('topic2')) {
      final l$topic2 = topic2;
      result$data['topic2'] = l$topic2 == null
          ? null
          : toJson$Enum$SortEnumType(l$topic2);
    }
    if (_$data.containsKey('accessPointId')) {
      final l$accessPointId = accessPointId;
      result$data['accessPointId'] = l$accessPointId == null
          ? null
          : toJson$Enum$SortEnumType(l$accessPointId);
    }
    if (_$data.containsKey('accessPointName')) {
      final l$accessPointName = accessPointName;
      result$data['accessPointName'] = l$accessPointName == null
          ? null
          : toJson$Enum$SortEnumType(l$accessPointName);
    }
    if (_$data.containsKey('accessPointRestricted')) {
      final l$accessPointRestricted = accessPointRestricted;
      result$data['accessPointRestricted'] = l$accessPointRestricted == null
          ? null
          : toJson$Enum$SortEnumType(l$accessPointRestricted);
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId == null
          ? null
          : toJson$Enum$SortEnumType(l$userId);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null
          ? null
          : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email == null
          ? null
          : toJson$Enum$SortEnumType(l$email);
    }
    if (_$data.containsKey('cardNumber')) {
      final l$cardNumber = cardNumber;
      result$data['cardNumber'] = l$cardNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$cardNumber);
    }
    if (_$data.containsKey('rawCardNumber')) {
      final l$rawCardNumber = rawCardNumber;
      result$data['rawCardNumber'] = l$rawCardNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$rawCardNumber);
    }
    if (_$data.containsKey('accessResponse')) {
      final l$accessResponse = accessResponse;
      result$data['accessResponse'] = l$accessResponse == null
          ? null
          : toJson$Enum$SortEnumType(l$accessResponse);
    }
    if (_$data.containsKey('snapshotUrl')) {
      final l$snapshotUrl = snapshotUrl;
      result$data['snapshotUrl'] = l$snapshotUrl == null
          ? null
          : toJson$Enum$SortEnumType(l$snapshotUrl);
    }
    if (_$data.containsKey('snapshotReason')) {
      final l$snapshotReason = snapshotReason;
      result$data['snapshotReason'] = l$snapshotReason == null
          ? null
          : toJson$Enum$SortEnumType(l$snapshotReason);
    }
    return result$data;
  }

  CopyWith$Input$DoorAccessAttemptEventsIndexResultSortInput<
    Input$DoorAccessAttemptEventsIndexResultSortInput
  >
  get copyWith => CopyWith$Input$DoorAccessAttemptEventsIndexResultSortInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorAccessAttemptEventsIndexResultSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$rowId = rowId;
    final lOther$rowId = other.rowId;
    if (_$data.containsKey('rowId') != other._$data.containsKey('rowId')) {
      return false;
    }
    if (l$rowId != lOther$rowId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$siteName = siteName;
    final lOther$siteName = other.siteName;
    if (_$data.containsKey('siteName') !=
        other._$data.containsKey('siteName')) {
      return false;
    }
    if (l$siteName != lOther$siteName) {
      return false;
    }
    final l$utcTime = utcTime;
    final lOther$utcTime = other.utcTime;
    if (_$data.containsKey('utcTime') != other._$data.containsKey('utcTime')) {
      return false;
    }
    if (l$utcTime != lOther$utcTime) {
      return false;
    }
    final l$topic0 = topic0;
    final lOther$topic0 = other.topic0;
    if (_$data.containsKey('topic0') != other._$data.containsKey('topic0')) {
      return false;
    }
    if (l$topic0 != lOther$topic0) {
      return false;
    }
    final l$topic1 = topic1;
    final lOther$topic1 = other.topic1;
    if (_$data.containsKey('topic1') != other._$data.containsKey('topic1')) {
      return false;
    }
    if (l$topic1 != lOther$topic1) {
      return false;
    }
    final l$topic2 = topic2;
    final lOther$topic2 = other.topic2;
    if (_$data.containsKey('topic2') != other._$data.containsKey('topic2')) {
      return false;
    }
    if (l$topic2 != lOther$topic2) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (_$data.containsKey('accessPointId') !=
        other._$data.containsKey('accessPointId')) {
      return false;
    }
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$accessPointName = accessPointName;
    final lOther$accessPointName = other.accessPointName;
    if (_$data.containsKey('accessPointName') !=
        other._$data.containsKey('accessPointName')) {
      return false;
    }
    if (l$accessPointName != lOther$accessPointName) {
      return false;
    }
    final l$accessPointRestricted = accessPointRestricted;
    final lOther$accessPointRestricted = other.accessPointRestricted;
    if (_$data.containsKey('accessPointRestricted') !=
        other._$data.containsKey('accessPointRestricted')) {
      return false;
    }
    if (l$accessPointRestricted != lOther$accessPointRestricted) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$cardNumber = cardNumber;
    final lOther$cardNumber = other.cardNumber;
    if (_$data.containsKey('cardNumber') !=
        other._$data.containsKey('cardNumber')) {
      return false;
    }
    if (l$cardNumber != lOther$cardNumber) {
      return false;
    }
    final l$rawCardNumber = rawCardNumber;
    final lOther$rawCardNumber = other.rawCardNumber;
    if (_$data.containsKey('rawCardNumber') !=
        other._$data.containsKey('rawCardNumber')) {
      return false;
    }
    if (l$rawCardNumber != lOther$rawCardNumber) {
      return false;
    }
    final l$accessResponse = accessResponse;
    final lOther$accessResponse = other.accessResponse;
    if (_$data.containsKey('accessResponse') !=
        other._$data.containsKey('accessResponse')) {
      return false;
    }
    if (l$accessResponse != lOther$accessResponse) {
      return false;
    }
    final l$snapshotUrl = snapshotUrl;
    final lOther$snapshotUrl = other.snapshotUrl;
    if (_$data.containsKey('snapshotUrl') !=
        other._$data.containsKey('snapshotUrl')) {
      return false;
    }
    if (l$snapshotUrl != lOther$snapshotUrl) {
      return false;
    }
    final l$snapshotReason = snapshotReason;
    final lOther$snapshotReason = other.snapshotReason;
    if (_$data.containsKey('snapshotReason') !=
        other._$data.containsKey('snapshotReason')) {
      return false;
    }
    if (l$snapshotReason != lOther$snapshotReason) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rowId = rowId;
    final l$accessControllerId = accessControllerId;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$utcTime = utcTime;
    final l$topic0 = topic0;
    final l$topic1 = topic1;
    final l$topic2 = topic2;
    final l$accessPointId = accessPointId;
    final l$accessPointName = accessPointName;
    final l$accessPointRestricted = accessPointRestricted;
    final l$userId = userId;
    final l$name = name;
    final l$email = email;
    final l$cardNumber = cardNumber;
    final l$rawCardNumber = rawCardNumber;
    final l$accessResponse = accessResponse;
    final l$snapshotUrl = snapshotUrl;
    final l$snapshotReason = snapshotReason;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('rowId') ? l$rowId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('siteName') ? l$siteName : const {},
      _$data.containsKey('utcTime') ? l$utcTime : const {},
      _$data.containsKey('topic0') ? l$topic0 : const {},
      _$data.containsKey('topic1') ? l$topic1 : const {},
      _$data.containsKey('topic2') ? l$topic2 : const {},
      _$data.containsKey('accessPointId') ? l$accessPointId : const {},
      _$data.containsKey('accessPointName') ? l$accessPointName : const {},
      _$data.containsKey('accessPointRestricted')
          ? l$accessPointRestricted
          : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('cardNumber') ? l$cardNumber : const {},
      _$data.containsKey('rawCardNumber') ? l$rawCardNumber : const {},
      _$data.containsKey('accessResponse') ? l$accessResponse : const {},
      _$data.containsKey('snapshotUrl') ? l$snapshotUrl : const {},
      _$data.containsKey('snapshotReason') ? l$snapshotReason : const {},
    ]);
  }
}

abstract class CopyWith$Input$DoorAccessAttemptEventsIndexResultSortInput<
  TRes
> {
  factory CopyWith$Input$DoorAccessAttemptEventsIndexResultSortInput(
    Input$DoorAccessAttemptEventsIndexResultSortInput instance,
    TRes Function(Input$DoorAccessAttemptEventsIndexResultSortInput) then,
  ) = _CopyWithImpl$Input$DoorAccessAttemptEventsIndexResultSortInput;

  factory CopyWith$Input$DoorAccessAttemptEventsIndexResultSortInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$DoorAccessAttemptEventsIndexResultSortInput;

  TRes call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? rowId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? utcTime,
    Enum$SortEnumType? topic0,
    Enum$SortEnumType? topic1,
    Enum$SortEnumType? topic2,
    Enum$SortEnumType? accessPointId,
    Enum$SortEnumType? accessPointName,
    Enum$SortEnumType? accessPointRestricted,
    Enum$SortEnumType? userId,
    Enum$SortEnumType? name,
    Enum$SortEnumType? email,
    Enum$SortEnumType? cardNumber,
    Enum$SortEnumType? rawCardNumber,
    Enum$SortEnumType? accessResponse,
    Enum$SortEnumType? snapshotUrl,
    Enum$SortEnumType? snapshotReason,
  });
}

class _CopyWithImpl$Input$DoorAccessAttemptEventsIndexResultSortInput<TRes>
    implements
        CopyWith$Input$DoorAccessAttemptEventsIndexResultSortInput<TRes> {
  _CopyWithImpl$Input$DoorAccessAttemptEventsIndexResultSortInput(
    this._instance,
    this._then,
  );

  final Input$DoorAccessAttemptEventsIndexResultSortInput _instance;

  final TRes Function(Input$DoorAccessAttemptEventsIndexResultSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? rowId = _undefined,
    Object? accessControllerId = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? utcTime = _undefined,
    Object? topic0 = _undefined,
    Object? topic1 = _undefined,
    Object? topic2 = _undefined,
    Object? accessPointId = _undefined,
    Object? accessPointName = _undefined,
    Object? accessPointRestricted = _undefined,
    Object? userId = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? cardNumber = _undefined,
    Object? rawCardNumber = _undefined,
    Object? accessResponse = _undefined,
    Object? snapshotUrl = _undefined,
    Object? snapshotReason = _undefined,
  }) => _then(
    Input$DoorAccessAttemptEventsIndexResultSortInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum$SortEnumType?),
      if (rowId != _undefined) 'rowId': (rowId as Enum$SortEnumType?),
      if (accessControllerId != _undefined)
        'accessControllerId': (accessControllerId as Enum$SortEnumType?),
      if (siteId != _undefined) 'siteId': (siteId as Enum$SortEnumType?),
      if (siteName != _undefined) 'siteName': (siteName as Enum$SortEnumType?),
      if (utcTime != _undefined) 'utcTime': (utcTime as Enum$SortEnumType?),
      if (topic0 != _undefined) 'topic0': (topic0 as Enum$SortEnumType?),
      if (topic1 != _undefined) 'topic1': (topic1 as Enum$SortEnumType?),
      if (topic2 != _undefined) 'topic2': (topic2 as Enum$SortEnumType?),
      if (accessPointId != _undefined)
        'accessPointId': (accessPointId as Enum$SortEnumType?),
      if (accessPointName != _undefined)
        'accessPointName': (accessPointName as Enum$SortEnumType?),
      if (accessPointRestricted != _undefined)
        'accessPointRestricted': (accessPointRestricted as Enum$SortEnumType?),
      if (userId != _undefined) 'userId': (userId as Enum$SortEnumType?),
      if (name != _undefined) 'name': (name as Enum$SortEnumType?),
      if (email != _undefined) 'email': (email as Enum$SortEnumType?),
      if (cardNumber != _undefined)
        'cardNumber': (cardNumber as Enum$SortEnumType?),
      if (rawCardNumber != _undefined)
        'rawCardNumber': (rawCardNumber as Enum$SortEnumType?),
      if (accessResponse != _undefined)
        'accessResponse': (accessResponse as Enum$SortEnumType?),
      if (snapshotUrl != _undefined)
        'snapshotUrl': (snapshotUrl as Enum$SortEnumType?),
      if (snapshotReason != _undefined)
        'snapshotReason': (snapshotReason as Enum$SortEnumType?),
    }),
  );
}

class _CopyWithStubImpl$Input$DoorAccessAttemptEventsIndexResultSortInput<TRes>
    implements
        CopyWith$Input$DoorAccessAttemptEventsIndexResultSortInput<TRes> {
  _CopyWithStubImpl$Input$DoorAccessAttemptEventsIndexResultSortInput(
    this._res,
  );

  TRes _res;

  call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? rowId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? utcTime,
    Enum$SortEnumType? topic0,
    Enum$SortEnumType? topic1,
    Enum$SortEnumType? topic2,
    Enum$SortEnumType? accessPointId,
    Enum$SortEnumType? accessPointName,
    Enum$SortEnumType? accessPointRestricted,
    Enum$SortEnumType? userId,
    Enum$SortEnumType? name,
    Enum$SortEnumType? email,
    Enum$SortEnumType? cardNumber,
    Enum$SortEnumType? rawCardNumber,
    Enum$SortEnumType? accessResponse,
    Enum$SortEnumType? snapshotUrl,
    Enum$SortEnumType? snapshotReason,
  }) => _res;
}

class Input$DoorFilterInput {
  factory Input$DoorFilterInput({
    List<Input$DoorFilterInput>? and,
    List<Input$DoorFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$StringOperationFilterInput? accessTime,
    Input$StringOperationFilterInput? openTooLongTime,
    Input$StringOperationFilterInput? preAlarmTime,
    Input$StringOperationFilterInput? extendedAccessTime,
    Input$StringOperationFilterInput? extendedOpenTooLongTime,
    Input$StringOperationFilterInput? heartbeatInterval,
    Input$DoorPriorityConfigurationFilterInput? priorityConfiguration,
    Input$StringOperationFilterInput? defaultPriority,
    Input$DoorScheduleConfigurationFilterInput? scheduleConfiguration,
  }) => Input$DoorFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (externalId != null) r'externalId': externalId,
    if (name != null) r'name': name,
    if (description != null) r'description': description,
    if (accessTime != null) r'accessTime': accessTime,
    if (openTooLongTime != null) r'openTooLongTime': openTooLongTime,
    if (preAlarmTime != null) r'preAlarmTime': preAlarmTime,
    if (extendedAccessTime != null) r'extendedAccessTime': extendedAccessTime,
    if (extendedOpenTooLongTime != null)
      r'extendedOpenTooLongTime': extendedOpenTooLongTime,
    if (heartbeatInterval != null) r'heartbeatInterval': heartbeatInterval,
    if (priorityConfiguration != null)
      r'priorityConfiguration': priorityConfiguration,
    if (defaultPriority != null) r'defaultPriority': defaultPriority,
    if (scheduleConfiguration != null)
      r'scheduleConfiguration': scheduleConfiguration,
  });

  Input$DoorFilterInput._(this._$data);

  factory Input$DoorFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$DoorFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$DoorFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = l$externalId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$externalId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$description as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessTime')) {
      final l$accessTime = data['accessTime'];
      result$data['accessTime'] = l$accessTime == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('openTooLongTime')) {
      final l$openTooLongTime = data['openTooLongTime'];
      result$data['openTooLongTime'] = l$openTooLongTime == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$openTooLongTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('preAlarmTime')) {
      final l$preAlarmTime = data['preAlarmTime'];
      result$data['preAlarmTime'] = l$preAlarmTime == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$preAlarmTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('extendedAccessTime')) {
      final l$extendedAccessTime = data['extendedAccessTime'];
      result$data['extendedAccessTime'] = l$extendedAccessTime == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$extendedAccessTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('extendedOpenTooLongTime')) {
      final l$extendedOpenTooLongTime = data['extendedOpenTooLongTime'];
      result$data['extendedOpenTooLongTime'] = l$extendedOpenTooLongTime == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$extendedOpenTooLongTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('heartbeatInterval')) {
      final l$heartbeatInterval = data['heartbeatInterval'];
      result$data['heartbeatInterval'] = l$heartbeatInterval == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$heartbeatInterval as Map<String, dynamic>),
            );
    }
    if (data.containsKey('priorityConfiguration')) {
      final l$priorityConfiguration = data['priorityConfiguration'];
      result$data['priorityConfiguration'] = l$priorityConfiguration == null
          ? null
          : Input$DoorPriorityConfigurationFilterInput.fromJson(
              (l$priorityConfiguration as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultPriority')) {
      final l$defaultPriority = data['defaultPriority'];
      result$data['defaultPriority'] = l$defaultPriority == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$defaultPriority as Map<String, dynamic>),
            );
    }
    if (data.containsKey('scheduleConfiguration')) {
      final l$scheduleConfiguration = data['scheduleConfiguration'];
      result$data['scheduleConfiguration'] = l$scheduleConfiguration == null
          ? null
          : Input$DoorScheduleConfigurationFilterInput.fromJson(
              (l$scheduleConfiguration as Map<String, dynamic>),
            );
    }
    return Input$DoorFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DoorFilterInput>? get and =>
      (_$data['and'] as List<Input$DoorFilterInput>?);

  List<Input$DoorFilterInput>? get or =>
      (_$data['or'] as List<Input$DoorFilterInput>?);

  Input$StringOperationFilterInput? get externalId =>
      (_$data['externalId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get description =>
      (_$data['description'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accessTime =>
      (_$data['accessTime'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get openTooLongTime =>
      (_$data['openTooLongTime'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get preAlarmTime =>
      (_$data['preAlarmTime'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get extendedAccessTime =>
      (_$data['extendedAccessTime'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get extendedOpenTooLongTime =>
      (_$data['extendedOpenTooLongTime'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get heartbeatInterval =>
      (_$data['heartbeatInterval'] as Input$StringOperationFilterInput?);

  Input$DoorPriorityConfigurationFilterInput? get priorityConfiguration =>
      (_$data['priorityConfiguration']
          as Input$DoorPriorityConfigurationFilterInput?);

  Input$StringOperationFilterInput? get defaultPriority =>
      (_$data['defaultPriority'] as Input$StringOperationFilterInput?);

  Input$DoorScheduleConfigurationFilterInput? get scheduleConfiguration =>
      (_$data['scheduleConfiguration']
          as Input$DoorScheduleConfigurationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('accessTime')) {
      final l$accessTime = accessTime;
      result$data['accessTime'] = l$accessTime?.toJson();
    }
    if (_$data.containsKey('openTooLongTime')) {
      final l$openTooLongTime = openTooLongTime;
      result$data['openTooLongTime'] = l$openTooLongTime?.toJson();
    }
    if (_$data.containsKey('preAlarmTime')) {
      final l$preAlarmTime = preAlarmTime;
      result$data['preAlarmTime'] = l$preAlarmTime?.toJson();
    }
    if (_$data.containsKey('extendedAccessTime')) {
      final l$extendedAccessTime = extendedAccessTime;
      result$data['extendedAccessTime'] = l$extendedAccessTime?.toJson();
    }
    if (_$data.containsKey('extendedOpenTooLongTime')) {
      final l$extendedOpenTooLongTime = extendedOpenTooLongTime;
      result$data['extendedOpenTooLongTime'] = l$extendedOpenTooLongTime
          ?.toJson();
    }
    if (_$data.containsKey('heartbeatInterval')) {
      final l$heartbeatInterval = heartbeatInterval;
      result$data['heartbeatInterval'] = l$heartbeatInterval?.toJson();
    }
    if (_$data.containsKey('priorityConfiguration')) {
      final l$priorityConfiguration = priorityConfiguration;
      result$data['priorityConfiguration'] = l$priorityConfiguration?.toJson();
    }
    if (_$data.containsKey('defaultPriority')) {
      final l$defaultPriority = defaultPriority;
      result$data['defaultPriority'] = l$defaultPriority?.toJson();
    }
    if (_$data.containsKey('scheduleConfiguration')) {
      final l$scheduleConfiguration = scheduleConfiguration;
      result$data['scheduleConfiguration'] = l$scheduleConfiguration?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DoorFilterInput<Input$DoorFilterInput> get copyWith =>
      CopyWith$Input$DoorFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$accessTime = accessTime;
    final lOther$accessTime = other.accessTime;
    if (_$data.containsKey('accessTime') !=
        other._$data.containsKey('accessTime')) {
      return false;
    }
    if (l$accessTime != lOther$accessTime) {
      return false;
    }
    final l$openTooLongTime = openTooLongTime;
    final lOther$openTooLongTime = other.openTooLongTime;
    if (_$data.containsKey('openTooLongTime') !=
        other._$data.containsKey('openTooLongTime')) {
      return false;
    }
    if (l$openTooLongTime != lOther$openTooLongTime) {
      return false;
    }
    final l$preAlarmTime = preAlarmTime;
    final lOther$preAlarmTime = other.preAlarmTime;
    if (_$data.containsKey('preAlarmTime') !=
        other._$data.containsKey('preAlarmTime')) {
      return false;
    }
    if (l$preAlarmTime != lOther$preAlarmTime) {
      return false;
    }
    final l$extendedAccessTime = extendedAccessTime;
    final lOther$extendedAccessTime = other.extendedAccessTime;
    if (_$data.containsKey('extendedAccessTime') !=
        other._$data.containsKey('extendedAccessTime')) {
      return false;
    }
    if (l$extendedAccessTime != lOther$extendedAccessTime) {
      return false;
    }
    final l$extendedOpenTooLongTime = extendedOpenTooLongTime;
    final lOther$extendedOpenTooLongTime = other.extendedOpenTooLongTime;
    if (_$data.containsKey('extendedOpenTooLongTime') !=
        other._$data.containsKey('extendedOpenTooLongTime')) {
      return false;
    }
    if (l$extendedOpenTooLongTime != lOther$extendedOpenTooLongTime) {
      return false;
    }
    final l$heartbeatInterval = heartbeatInterval;
    final lOther$heartbeatInterval = other.heartbeatInterval;
    if (_$data.containsKey('heartbeatInterval') !=
        other._$data.containsKey('heartbeatInterval')) {
      return false;
    }
    if (l$heartbeatInterval != lOther$heartbeatInterval) {
      return false;
    }
    final l$priorityConfiguration = priorityConfiguration;
    final lOther$priorityConfiguration = other.priorityConfiguration;
    if (_$data.containsKey('priorityConfiguration') !=
        other._$data.containsKey('priorityConfiguration')) {
      return false;
    }
    if (l$priorityConfiguration != lOther$priorityConfiguration) {
      return false;
    }
    final l$defaultPriority = defaultPriority;
    final lOther$defaultPriority = other.defaultPriority;
    if (_$data.containsKey('defaultPriority') !=
        other._$data.containsKey('defaultPriority')) {
      return false;
    }
    if (l$defaultPriority != lOther$defaultPriority) {
      return false;
    }
    final l$scheduleConfiguration = scheduleConfiguration;
    final lOther$scheduleConfiguration = other.scheduleConfiguration;
    if (_$data.containsKey('scheduleConfiguration') !=
        other._$data.containsKey('scheduleConfiguration')) {
      return false;
    }
    if (l$scheduleConfiguration != lOther$scheduleConfiguration) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$externalId = externalId;
    final l$name = name;
    final l$description = description;
    final l$accessTime = accessTime;
    final l$openTooLongTime = openTooLongTime;
    final l$preAlarmTime = preAlarmTime;
    final l$extendedAccessTime = extendedAccessTime;
    final l$extendedOpenTooLongTime = extendedOpenTooLongTime;
    final l$heartbeatInterval = heartbeatInterval;
    final l$priorityConfiguration = priorityConfiguration;
    final l$defaultPriority = defaultPriority;
    final l$scheduleConfiguration = scheduleConfiguration;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('accessTime') ? l$accessTime : const {},
      _$data.containsKey('openTooLongTime') ? l$openTooLongTime : const {},
      _$data.containsKey('preAlarmTime') ? l$preAlarmTime : const {},
      _$data.containsKey('extendedAccessTime')
          ? l$extendedAccessTime
          : const {},
      _$data.containsKey('extendedOpenTooLongTime')
          ? l$extendedOpenTooLongTime
          : const {},
      _$data.containsKey('heartbeatInterval') ? l$heartbeatInterval : const {},
      _$data.containsKey('priorityConfiguration')
          ? l$priorityConfiguration
          : const {},
      _$data.containsKey('defaultPriority') ? l$defaultPriority : const {},
      _$data.containsKey('scheduleConfiguration')
          ? l$scheduleConfiguration
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$DoorFilterInput<TRes> {
  factory CopyWith$Input$DoorFilterInput(
    Input$DoorFilterInput instance,
    TRes Function(Input$DoorFilterInput) then,
  ) = _CopyWithImpl$Input$DoorFilterInput;

  factory CopyWith$Input$DoorFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorFilterInput;

  TRes call({
    List<Input$DoorFilterInput>? and,
    List<Input$DoorFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$StringOperationFilterInput? accessTime,
    Input$StringOperationFilterInput? openTooLongTime,
    Input$StringOperationFilterInput? preAlarmTime,
    Input$StringOperationFilterInput? extendedAccessTime,
    Input$StringOperationFilterInput? extendedOpenTooLongTime,
    Input$StringOperationFilterInput? heartbeatInterval,
    Input$DoorPriorityConfigurationFilterInput? priorityConfiguration,
    Input$StringOperationFilterInput? defaultPriority,
    Input$DoorScheduleConfigurationFilterInput? scheduleConfiguration,
  });
  TRes and(
    Iterable<Input$DoorFilterInput>? Function(
      Iterable<CopyWith$Input$DoorFilterInput<Input$DoorFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$DoorFilterInput>? Function(
      Iterable<CopyWith$Input$DoorFilterInput<Input$DoorFilterInput>>?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get externalId;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get description;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessTime;
  CopyWith$Input$StringOperationFilterInput<TRes> get openTooLongTime;
  CopyWith$Input$StringOperationFilterInput<TRes> get preAlarmTime;
  CopyWith$Input$StringOperationFilterInput<TRes> get extendedAccessTime;
  CopyWith$Input$StringOperationFilterInput<TRes> get extendedOpenTooLongTime;
  CopyWith$Input$StringOperationFilterInput<TRes> get heartbeatInterval;
  CopyWith$Input$DoorPriorityConfigurationFilterInput<TRes>
  get priorityConfiguration;
  CopyWith$Input$StringOperationFilterInput<TRes> get defaultPriority;
  CopyWith$Input$DoorScheduleConfigurationFilterInput<TRes>
  get scheduleConfiguration;
}

class _CopyWithImpl$Input$DoorFilterInput<TRes>
    implements CopyWith$Input$DoorFilterInput<TRes> {
  _CopyWithImpl$Input$DoorFilterInput(this._instance, this._then);

  final Input$DoorFilterInput _instance;

  final TRes Function(Input$DoorFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? accessTime = _undefined,
    Object? openTooLongTime = _undefined,
    Object? preAlarmTime = _undefined,
    Object? extendedAccessTime = _undefined,
    Object? extendedOpenTooLongTime = _undefined,
    Object? heartbeatInterval = _undefined,
    Object? priorityConfiguration = _undefined,
    Object? defaultPriority = _undefined,
    Object? scheduleConfiguration = _undefined,
  }) => _then(
    Input$DoorFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input$DoorFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input$DoorFilterInput>?),
      if (externalId != _undefined)
        'externalId': (externalId as Input$StringOperationFilterInput?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (description != _undefined)
        'description': (description as Input$StringOperationFilterInput?),
      if (accessTime != _undefined)
        'accessTime': (accessTime as Input$StringOperationFilterInput?),
      if (openTooLongTime != _undefined)
        'openTooLongTime':
            (openTooLongTime as Input$StringOperationFilterInput?),
      if (preAlarmTime != _undefined)
        'preAlarmTime': (preAlarmTime as Input$StringOperationFilterInput?),
      if (extendedAccessTime != _undefined)
        'extendedAccessTime':
            (extendedAccessTime as Input$StringOperationFilterInput?),
      if (extendedOpenTooLongTime != _undefined)
        'extendedOpenTooLongTime':
            (extendedOpenTooLongTime as Input$StringOperationFilterInput?),
      if (heartbeatInterval != _undefined)
        'heartbeatInterval':
            (heartbeatInterval as Input$StringOperationFilterInput?),
      if (priorityConfiguration != _undefined)
        'priorityConfiguration':
            (priorityConfiguration
                as Input$DoorPriorityConfigurationFilterInput?),
      if (defaultPriority != _undefined)
        'defaultPriority':
            (defaultPriority as Input$StringOperationFilterInput?),
      if (scheduleConfiguration != _undefined)
        'scheduleConfiguration':
            (scheduleConfiguration
                as Input$DoorScheduleConfigurationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$DoorFilterInput>? Function(
      Iterable<CopyWith$Input$DoorFilterInput<Input$DoorFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith$Input$DoorFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$DoorFilterInput>? Function(
      Iterable<CopyWith$Input$DoorFilterInput<Input$DoorFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith$Input$DoorFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId {
    final local$externalId = _instance.externalId;
    return local$externalId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$externalId,
            (e) => call(externalId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$description,
            (e) => call(description: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessTime {
    final local$accessTime = _instance.accessTime;
    return local$accessTime == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessTime,
            (e) => call(accessTime: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get openTooLongTime {
    final local$openTooLongTime = _instance.openTooLongTime;
    return local$openTooLongTime == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$openTooLongTime,
            (e) => call(openTooLongTime: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get preAlarmTime {
    final local$preAlarmTime = _instance.preAlarmTime;
    return local$preAlarmTime == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$preAlarmTime,
            (e) => call(preAlarmTime: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get extendedAccessTime {
    final local$extendedAccessTime = _instance.extendedAccessTime;
    return local$extendedAccessTime == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$extendedAccessTime,
            (e) => call(extendedAccessTime: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get extendedOpenTooLongTime {
    final local$extendedOpenTooLongTime = _instance.extendedOpenTooLongTime;
    return local$extendedOpenTooLongTime == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$extendedOpenTooLongTime,
            (e) => call(extendedOpenTooLongTime: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get heartbeatInterval {
    final local$heartbeatInterval = _instance.heartbeatInterval;
    return local$heartbeatInterval == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$heartbeatInterval,
            (e) => call(heartbeatInterval: e),
          );
  }

  CopyWith$Input$DoorPriorityConfigurationFilterInput<TRes>
  get priorityConfiguration {
    final local$priorityConfiguration = _instance.priorityConfiguration;
    return local$priorityConfiguration == null
        ? CopyWith$Input$DoorPriorityConfigurationFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$DoorPriorityConfigurationFilterInput(
            local$priorityConfiguration,
            (e) => call(priorityConfiguration: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get defaultPriority {
    final local$defaultPriority = _instance.defaultPriority;
    return local$defaultPriority == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$defaultPriority,
            (e) => call(defaultPriority: e),
          );
  }

  CopyWith$Input$DoorScheduleConfigurationFilterInput<TRes>
  get scheduleConfiguration {
    final local$scheduleConfiguration = _instance.scheduleConfiguration;
    return local$scheduleConfiguration == null
        ? CopyWith$Input$DoorScheduleConfigurationFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$DoorScheduleConfigurationFilterInput(
            local$scheduleConfiguration,
            (e) => call(scheduleConfiguration: e),
          );
  }
}

class _CopyWithStubImpl$Input$DoorFilterInput<TRes>
    implements CopyWith$Input$DoorFilterInput<TRes> {
  _CopyWithStubImpl$Input$DoorFilterInput(this._res);

  TRes _res;

  call({
    List<Input$DoorFilterInput>? and,
    List<Input$DoorFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$StringOperationFilterInput? accessTime,
    Input$StringOperationFilterInput? openTooLongTime,
    Input$StringOperationFilterInput? preAlarmTime,
    Input$StringOperationFilterInput? extendedAccessTime,
    Input$StringOperationFilterInput? extendedOpenTooLongTime,
    Input$StringOperationFilterInput? heartbeatInterval,
    Input$DoorPriorityConfigurationFilterInput? priorityConfiguration,
    Input$StringOperationFilterInput? defaultPriority,
    Input$DoorScheduleConfigurationFilterInput? scheduleConfiguration,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get description =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessTime =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get openTooLongTime =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get preAlarmTime =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get extendedAccessTime =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get extendedOpenTooLongTime =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get heartbeatInterval =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DoorPriorityConfigurationFilterInput<TRes>
  get priorityConfiguration =>
      CopyWith$Input$DoorPriorityConfigurationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get defaultPriority =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DoorScheduleConfigurationFilterInput<TRes>
  get scheduleConfiguration =>
      CopyWith$Input$DoorScheduleConfigurationFilterInput.stub(_res);
}

class Input$DoorPriorityActionFilterInput {
  factory Input$DoorPriorityActionFilterInput({
    List<Input$DoorPriorityActionFilterInput>? and,
    List<Input$DoorPriorityActionFilterInput>? or,
    Input$StringOperationFilterInput? priorityLevel,
    Input$StringOperationFilterInput? doorAction,
  }) => Input$DoorPriorityActionFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (priorityLevel != null) r'priorityLevel': priorityLevel,
    if (doorAction != null) r'doorAction': doorAction,
  });

  Input$DoorPriorityActionFilterInput._(this._$data);

  factory Input$DoorPriorityActionFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$DoorPriorityActionFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$DoorPriorityActionFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('priorityLevel')) {
      final l$priorityLevel = data['priorityLevel'];
      result$data['priorityLevel'] = l$priorityLevel == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$priorityLevel as Map<String, dynamic>),
            );
    }
    if (data.containsKey('doorAction')) {
      final l$doorAction = data['doorAction'];
      result$data['doorAction'] = l$doorAction == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$doorAction as Map<String, dynamic>),
            );
    }
    return Input$DoorPriorityActionFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DoorPriorityActionFilterInput>? get and =>
      (_$data['and'] as List<Input$DoorPriorityActionFilterInput>?);

  List<Input$DoorPriorityActionFilterInput>? get or =>
      (_$data['or'] as List<Input$DoorPriorityActionFilterInput>?);

  Input$StringOperationFilterInput? get priorityLevel =>
      (_$data['priorityLevel'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get doorAction =>
      (_$data['doorAction'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('priorityLevel')) {
      final l$priorityLevel = priorityLevel;
      result$data['priorityLevel'] = l$priorityLevel?.toJson();
    }
    if (_$data.containsKey('doorAction')) {
      final l$doorAction = doorAction;
      result$data['doorAction'] = l$doorAction?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DoorPriorityActionFilterInput<
    Input$DoorPriorityActionFilterInput
  >
  get copyWith => CopyWith$Input$DoorPriorityActionFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorPriorityActionFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$priorityLevel = priorityLevel;
    final lOther$priorityLevel = other.priorityLevel;
    if (_$data.containsKey('priorityLevel') !=
        other._$data.containsKey('priorityLevel')) {
      return false;
    }
    if (l$priorityLevel != lOther$priorityLevel) {
      return false;
    }
    final l$doorAction = doorAction;
    final lOther$doorAction = other.doorAction;
    if (_$data.containsKey('doorAction') !=
        other._$data.containsKey('doorAction')) {
      return false;
    }
    if (l$doorAction != lOther$doorAction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$priorityLevel = priorityLevel;
    final l$doorAction = doorAction;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('priorityLevel') ? l$priorityLevel : const {},
      _$data.containsKey('doorAction') ? l$doorAction : const {},
    ]);
  }
}

abstract class CopyWith$Input$DoorPriorityActionFilterInput<TRes> {
  factory CopyWith$Input$DoorPriorityActionFilterInput(
    Input$DoorPriorityActionFilterInput instance,
    TRes Function(Input$DoorPriorityActionFilterInput) then,
  ) = _CopyWithImpl$Input$DoorPriorityActionFilterInput;

  factory CopyWith$Input$DoorPriorityActionFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorPriorityActionFilterInput;

  TRes call({
    List<Input$DoorPriorityActionFilterInput>? and,
    List<Input$DoorPriorityActionFilterInput>? or,
    Input$StringOperationFilterInput? priorityLevel,
    Input$StringOperationFilterInput? doorAction,
  });
  TRes and(
    Iterable<Input$DoorPriorityActionFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorPriorityActionFilterInput<
          Input$DoorPriorityActionFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$DoorPriorityActionFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorPriorityActionFilterInput<
          Input$DoorPriorityActionFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get priorityLevel;
  CopyWith$Input$StringOperationFilterInput<TRes> get doorAction;
}

class _CopyWithImpl$Input$DoorPriorityActionFilterInput<TRes>
    implements CopyWith$Input$DoorPriorityActionFilterInput<TRes> {
  _CopyWithImpl$Input$DoorPriorityActionFilterInput(this._instance, this._then);

  final Input$DoorPriorityActionFilterInput _instance;

  final TRes Function(Input$DoorPriorityActionFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? priorityLevel = _undefined,
    Object? doorAction = _undefined,
  }) => _then(
    Input$DoorPriorityActionFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$DoorPriorityActionFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input$DoorPriorityActionFilterInput>?),
      if (priorityLevel != _undefined)
        'priorityLevel': (priorityLevel as Input$StringOperationFilterInput?),
      if (doorAction != _undefined)
        'doorAction': (doorAction as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$DoorPriorityActionFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorPriorityActionFilterInput<
          Input$DoorPriorityActionFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$DoorPriorityActionFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$DoorPriorityActionFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorPriorityActionFilterInput<
          Input$DoorPriorityActionFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$DoorPriorityActionFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get priorityLevel {
    final local$priorityLevel = _instance.priorityLevel;
    return local$priorityLevel == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$priorityLevel,
            (e) => call(priorityLevel: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get doorAction {
    final local$doorAction = _instance.doorAction;
    return local$doorAction == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$doorAction,
            (e) => call(doorAction: e),
          );
  }
}

class _CopyWithStubImpl$Input$DoorPriorityActionFilterInput<TRes>
    implements CopyWith$Input$DoorPriorityActionFilterInput<TRes> {
  _CopyWithStubImpl$Input$DoorPriorityActionFilterInput(this._res);

  TRes _res;

  call({
    List<Input$DoorPriorityActionFilterInput>? and,
    List<Input$DoorPriorityActionFilterInput>? or,
    Input$StringOperationFilterInput? priorityLevel,
    Input$StringOperationFilterInput? doorAction,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get priorityLevel =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get doorAction =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$DoorPriorityActionInput {
  factory Input$DoorPriorityActionInput({
    required String priorityLevel,
    required String doorAction,
  }) => Input$DoorPriorityActionInput._({
    r'priorityLevel': priorityLevel,
    r'doorAction': doorAction,
  });

  Input$DoorPriorityActionInput._(this._$data);

  factory Input$DoorPriorityActionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$priorityLevel = data['priorityLevel'];
    result$data['priorityLevel'] = (l$priorityLevel as String);
    final l$doorAction = data['doorAction'];
    result$data['doorAction'] = (l$doorAction as String);
    return Input$DoorPriorityActionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get priorityLevel => (_$data['priorityLevel'] as String);

  String get doorAction => (_$data['doorAction'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$priorityLevel = priorityLevel;
    result$data['priorityLevel'] = l$priorityLevel;
    final l$doorAction = doorAction;
    result$data['doorAction'] = l$doorAction;
    return result$data;
  }

  CopyWith$Input$DoorPriorityActionInput<Input$DoorPriorityActionInput>
  get copyWith => CopyWith$Input$DoorPriorityActionInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorPriorityActionInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$priorityLevel = priorityLevel;
    final lOther$priorityLevel = other.priorityLevel;
    if (l$priorityLevel != lOther$priorityLevel) {
      return false;
    }
    final l$doorAction = doorAction;
    final lOther$doorAction = other.doorAction;
    if (l$doorAction != lOther$doorAction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$priorityLevel = priorityLevel;
    final l$doorAction = doorAction;
    return Object.hashAll([l$priorityLevel, l$doorAction]);
  }
}

abstract class CopyWith$Input$DoorPriorityActionInput<TRes> {
  factory CopyWith$Input$DoorPriorityActionInput(
    Input$DoorPriorityActionInput instance,
    TRes Function(Input$DoorPriorityActionInput) then,
  ) = _CopyWithImpl$Input$DoorPriorityActionInput;

  factory CopyWith$Input$DoorPriorityActionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorPriorityActionInput;

  TRes call({String? priorityLevel, String? doorAction});
}

class _CopyWithImpl$Input$DoorPriorityActionInput<TRes>
    implements CopyWith$Input$DoorPriorityActionInput<TRes> {
  _CopyWithImpl$Input$DoorPriorityActionInput(this._instance, this._then);

  final Input$DoorPriorityActionInput _instance;

  final TRes Function(Input$DoorPriorityActionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priorityLevel = _undefined,
    Object? doorAction = _undefined,
  }) => _then(
    Input$DoorPriorityActionInput._({
      ..._instance._$data,
      if (priorityLevel != _undefined && priorityLevel != null)
        'priorityLevel': (priorityLevel as String),
      if (doorAction != _undefined && doorAction != null)
        'doorAction': (doorAction as String),
    }),
  );
}

class _CopyWithStubImpl$Input$DoorPriorityActionInput<TRes>
    implements CopyWith$Input$DoorPriorityActionInput<TRes> {
  _CopyWithStubImpl$Input$DoorPriorityActionInput(this._res);

  TRes _res;

  call({String? priorityLevel, String? doorAction}) => _res;
}

class Input$DoorPriorityConfigurationFilterInput {
  factory Input$DoorPriorityConfigurationFilterInput({
    List<Input$DoorPriorityConfigurationFilterInput>? and,
    List<Input$DoorPriorityConfigurationFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? defaultPriority,
    Input$ListFilterInputTypeOfDoorPriorityActionFilterInput?
    doorPriorityAction,
  }) => Input$DoorPriorityConfigurationFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (externalId != null) r'externalId': externalId,
    if (name != null) r'name': name,
    if (defaultPriority != null) r'defaultPriority': defaultPriority,
    if (doorPriorityAction != null) r'doorPriorityAction': doorPriorityAction,
  });

  Input$DoorPriorityConfigurationFilterInput._(this._$data);

  factory Input$DoorPriorityConfigurationFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$DoorPriorityConfigurationFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$DoorPriorityConfigurationFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = l$externalId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$externalId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultPriority')) {
      final l$defaultPriority = data['defaultPriority'];
      result$data['defaultPriority'] = l$defaultPriority == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$defaultPriority as Map<String, dynamic>),
            );
    }
    if (data.containsKey('doorPriorityAction')) {
      final l$doorPriorityAction = data['doorPriorityAction'];
      result$data['doorPriorityAction'] = l$doorPriorityAction == null
          ? null
          : Input$ListFilterInputTypeOfDoorPriorityActionFilterInput.fromJson(
              (l$doorPriorityAction as Map<String, dynamic>),
            );
    }
    return Input$DoorPriorityConfigurationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DoorPriorityConfigurationFilterInput>? get and =>
      (_$data['and'] as List<Input$DoorPriorityConfigurationFilterInput>?);

  List<Input$DoorPriorityConfigurationFilterInput>? get or =>
      (_$data['or'] as List<Input$DoorPriorityConfigurationFilterInput>?);

  Input$StringOperationFilterInput? get externalId =>
      (_$data['externalId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get defaultPriority =>
      (_$data['defaultPriority'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfDoorPriorityActionFilterInput?
  get doorPriorityAction =>
      (_$data['doorPriorityAction']
          as Input$ListFilterInputTypeOfDoorPriorityActionFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('defaultPriority')) {
      final l$defaultPriority = defaultPriority;
      result$data['defaultPriority'] = l$defaultPriority?.toJson();
    }
    if (_$data.containsKey('doorPriorityAction')) {
      final l$doorPriorityAction = doorPriorityAction;
      result$data['doorPriorityAction'] = l$doorPriorityAction?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DoorPriorityConfigurationFilterInput<
    Input$DoorPriorityConfigurationFilterInput
  >
  get copyWith =>
      CopyWith$Input$DoorPriorityConfigurationFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorPriorityConfigurationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$defaultPriority = defaultPriority;
    final lOther$defaultPriority = other.defaultPriority;
    if (_$data.containsKey('defaultPriority') !=
        other._$data.containsKey('defaultPriority')) {
      return false;
    }
    if (l$defaultPriority != lOther$defaultPriority) {
      return false;
    }
    final l$doorPriorityAction = doorPriorityAction;
    final lOther$doorPriorityAction = other.doorPriorityAction;
    if (_$data.containsKey('doorPriorityAction') !=
        other._$data.containsKey('doorPriorityAction')) {
      return false;
    }
    if (l$doorPriorityAction != lOther$doorPriorityAction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$externalId = externalId;
    final l$name = name;
    final l$defaultPriority = defaultPriority;
    final l$doorPriorityAction = doorPriorityAction;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('defaultPriority') ? l$defaultPriority : const {},
      _$data.containsKey('doorPriorityAction')
          ? l$doorPriorityAction
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$DoorPriorityConfigurationFilterInput<TRes> {
  factory CopyWith$Input$DoorPriorityConfigurationFilterInput(
    Input$DoorPriorityConfigurationFilterInput instance,
    TRes Function(Input$DoorPriorityConfigurationFilterInput) then,
  ) = _CopyWithImpl$Input$DoorPriorityConfigurationFilterInput;

  factory CopyWith$Input$DoorPriorityConfigurationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorPriorityConfigurationFilterInput;

  TRes call({
    List<Input$DoorPriorityConfigurationFilterInput>? and,
    List<Input$DoorPriorityConfigurationFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? defaultPriority,
    Input$ListFilterInputTypeOfDoorPriorityActionFilterInput?
    doorPriorityAction,
  });
  TRes and(
    Iterable<Input$DoorPriorityConfigurationFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorPriorityConfigurationFilterInput<
          Input$DoorPriorityConfigurationFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$DoorPriorityConfigurationFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorPriorityConfigurationFilterInput<
          Input$DoorPriorityConfigurationFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get externalId;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get defaultPriority;
  CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput<TRes>
  get doorPriorityAction;
}

class _CopyWithImpl$Input$DoorPriorityConfigurationFilterInput<TRes>
    implements CopyWith$Input$DoorPriorityConfigurationFilterInput<TRes> {
  _CopyWithImpl$Input$DoorPriorityConfigurationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DoorPriorityConfigurationFilterInput _instance;

  final TRes Function(Input$DoorPriorityConfigurationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? defaultPriority = _undefined,
    Object? doorPriorityAction = _undefined,
  }) => _then(
    Input$DoorPriorityConfigurationFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$DoorPriorityConfigurationFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input$DoorPriorityConfigurationFilterInput>?),
      if (externalId != _undefined)
        'externalId': (externalId as Input$StringOperationFilterInput?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (defaultPriority != _undefined)
        'defaultPriority':
            (defaultPriority as Input$StringOperationFilterInput?),
      if (doorPriorityAction != _undefined)
        'doorPriorityAction':
            (doorPriorityAction
                as Input$ListFilterInputTypeOfDoorPriorityActionFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$DoorPriorityConfigurationFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorPriorityConfigurationFilterInput<
          Input$DoorPriorityConfigurationFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$DoorPriorityConfigurationFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$DoorPriorityConfigurationFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorPriorityConfigurationFilterInput<
          Input$DoorPriorityConfigurationFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$DoorPriorityConfigurationFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId {
    final local$externalId = _instance.externalId;
    return local$externalId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$externalId,
            (e) => call(externalId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get defaultPriority {
    final local$defaultPriority = _instance.defaultPriority;
    return local$defaultPriority == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$defaultPriority,
            (e) => call(defaultPriority: e),
          );
  }

  CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput<TRes>
  get doorPriorityAction {
    final local$doorPriorityAction = _instance.doorPriorityAction;
    return local$doorPriorityAction == null
        ? CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput(
            local$doorPriorityAction,
            (e) => call(doorPriorityAction: e),
          );
  }
}

class _CopyWithStubImpl$Input$DoorPriorityConfigurationFilterInput<TRes>
    implements CopyWith$Input$DoorPriorityConfigurationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DoorPriorityConfigurationFilterInput(this._res);

  TRes _res;

  call({
    List<Input$DoorPriorityConfigurationFilterInput>? and,
    List<Input$DoorPriorityConfigurationFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? defaultPriority,
    Input$ListFilterInputTypeOfDoorPriorityActionFilterInput?
    doorPriorityAction,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get defaultPriority =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput<TRes>
  get doorPriorityAction =>
      CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput.stub(
        _res,
      );
}

class Input$DoorPriorityConfigurationInput {
  factory Input$DoorPriorityConfigurationInput({
    required String externalId,
    required String name,
    required String defaultPriority,
    required List<Input$DoorPriorityActionInput> doorPriorityAction,
  }) => Input$DoorPriorityConfigurationInput._({
    r'externalId': externalId,
    r'name': name,
    r'defaultPriority': defaultPriority,
    r'doorPriorityAction': doorPriorityAction,
  });

  Input$DoorPriorityConfigurationInput._(this._$data);

  factory Input$DoorPriorityConfigurationInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$externalId = data['externalId'];
    result$data['externalId'] = (l$externalId as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$defaultPriority = data['defaultPriority'];
    result$data['defaultPriority'] = (l$defaultPriority as String);
    final l$doorPriorityAction = data['doorPriorityAction'];
    result$data['doorPriorityAction'] = (l$doorPriorityAction as List<dynamic>)
        .map(
          (e) => Input$DoorPriorityActionInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    return Input$DoorPriorityConfigurationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get externalId => (_$data['externalId'] as String);

  String get name => (_$data['name'] as String);

  String get defaultPriority => (_$data['defaultPriority'] as String);

  List<Input$DoorPriorityActionInput> get doorPriorityAction =>
      (_$data['doorPriorityAction'] as List<Input$DoorPriorityActionInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$externalId = externalId;
    result$data['externalId'] = l$externalId;
    final l$name = name;
    result$data['name'] = l$name;
    final l$defaultPriority = defaultPriority;
    result$data['defaultPriority'] = l$defaultPriority;
    final l$doorPriorityAction = doorPriorityAction;
    result$data['doorPriorityAction'] = l$doorPriorityAction
        .map((e) => e.toJson())
        .toList();
    return result$data;
  }

  CopyWith$Input$DoorPriorityConfigurationInput<
    Input$DoorPriorityConfigurationInput
  >
  get copyWith => CopyWith$Input$DoorPriorityConfigurationInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorPriorityConfigurationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$defaultPriority = defaultPriority;
    final lOther$defaultPriority = other.defaultPriority;
    if (l$defaultPriority != lOther$defaultPriority) {
      return false;
    }
    final l$doorPriorityAction = doorPriorityAction;
    final lOther$doorPriorityAction = other.doorPriorityAction;
    if (l$doorPriorityAction.length != lOther$doorPriorityAction.length) {
      return false;
    }
    for (int i = 0; i < l$doorPriorityAction.length; i++) {
      final l$doorPriorityAction$entry = l$doorPriorityAction[i];
      final lOther$doorPriorityAction$entry = lOther$doorPriorityAction[i];
      if (l$doorPriorityAction$entry != lOther$doorPriorityAction$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$externalId = externalId;
    final l$name = name;
    final l$defaultPriority = defaultPriority;
    final l$doorPriorityAction = doorPriorityAction;
    return Object.hashAll([
      l$externalId,
      l$name,
      l$defaultPriority,
      Object.hashAll(l$doorPriorityAction.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$DoorPriorityConfigurationInput<TRes> {
  factory CopyWith$Input$DoorPriorityConfigurationInput(
    Input$DoorPriorityConfigurationInput instance,
    TRes Function(Input$DoorPriorityConfigurationInput) then,
  ) = _CopyWithImpl$Input$DoorPriorityConfigurationInput;

  factory CopyWith$Input$DoorPriorityConfigurationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorPriorityConfigurationInput;

  TRes call({
    String? externalId,
    String? name,
    String? defaultPriority,
    List<Input$DoorPriorityActionInput>? doorPriorityAction,
  });
  TRes doorPriorityAction(
    Iterable<Input$DoorPriorityActionInput> Function(
      Iterable<
        CopyWith$Input$DoorPriorityActionInput<Input$DoorPriorityActionInput>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Input$DoorPriorityConfigurationInput<TRes>
    implements CopyWith$Input$DoorPriorityConfigurationInput<TRes> {
  _CopyWithImpl$Input$DoorPriorityConfigurationInput(
    this._instance,
    this._then,
  );

  final Input$DoorPriorityConfigurationInput _instance;

  final TRes Function(Input$DoorPriorityConfigurationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? defaultPriority = _undefined,
    Object? doorPriorityAction = _undefined,
  }) => _then(
    Input$DoorPriorityConfigurationInput._({
      ..._instance._$data,
      if (externalId != _undefined && externalId != null)
        'externalId': (externalId as String),
      if (name != _undefined && name != null) 'name': (name as String),
      if (defaultPriority != _undefined && defaultPriority != null)
        'defaultPriority': (defaultPriority as String),
      if (doorPriorityAction != _undefined && doorPriorityAction != null)
        'doorPriorityAction':
            (doorPriorityAction as List<Input$DoorPriorityActionInput>),
    }),
  );

  TRes doorPriorityAction(
    Iterable<Input$DoorPriorityActionInput> Function(
      Iterable<
        CopyWith$Input$DoorPriorityActionInput<Input$DoorPriorityActionInput>
      >,
    )
    _fn,
  ) => call(
    doorPriorityAction: _fn(
      _instance.doorPriorityAction.map(
        (e) => CopyWith$Input$DoorPriorityActionInput(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Input$DoorPriorityConfigurationInput<TRes>
    implements CopyWith$Input$DoorPriorityConfigurationInput<TRes> {
  _CopyWithStubImpl$Input$DoorPriorityConfigurationInput(this._res);

  TRes _res;

  call({
    String? externalId,
    String? name,
    String? defaultPriority,
    List<Input$DoorPriorityActionInput>? doorPriorityAction,
  }) => _res;

  doorPriorityAction(_fn) => _res;
}

class Input$DoorScheduleConfigurationFilterInput {
  factory Input$DoorScheduleConfigurationFilterInput({
    List<Input$DoorScheduleConfigurationFilterInput>? and,
    List<Input$DoorScheduleConfigurationFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$ListFilterInputTypeOfDoorScheduleItemFilterInput? doorSchedule,
  }) => Input$DoorScheduleConfigurationFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (externalId != null) r'externalId': externalId,
    if (name != null) r'name': name,
    if (description != null) r'description': description,
    if (doorSchedule != null) r'doorSchedule': doorSchedule,
  });

  Input$DoorScheduleConfigurationFilterInput._(this._$data);

  factory Input$DoorScheduleConfigurationFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$DoorScheduleConfigurationFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$DoorScheduleConfigurationFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = l$externalId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$externalId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$description as Map<String, dynamic>),
            );
    }
    if (data.containsKey('doorSchedule')) {
      final l$doorSchedule = data['doorSchedule'];
      result$data['doorSchedule'] = l$doorSchedule == null
          ? null
          : Input$ListFilterInputTypeOfDoorScheduleItemFilterInput.fromJson(
              (l$doorSchedule as Map<String, dynamic>),
            );
    }
    return Input$DoorScheduleConfigurationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DoorScheduleConfigurationFilterInput>? get and =>
      (_$data['and'] as List<Input$DoorScheduleConfigurationFilterInput>?);

  List<Input$DoorScheduleConfigurationFilterInput>? get or =>
      (_$data['or'] as List<Input$DoorScheduleConfigurationFilterInput>?);

  Input$StringOperationFilterInput? get externalId =>
      (_$data['externalId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get description =>
      (_$data['description'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfDoorScheduleItemFilterInput? get doorSchedule =>
      (_$data['doorSchedule']
          as Input$ListFilterInputTypeOfDoorScheduleItemFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('doorSchedule')) {
      final l$doorSchedule = doorSchedule;
      result$data['doorSchedule'] = l$doorSchedule?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DoorScheduleConfigurationFilterInput<
    Input$DoorScheduleConfigurationFilterInput
  >
  get copyWith =>
      CopyWith$Input$DoorScheduleConfigurationFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorScheduleConfigurationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$doorSchedule = doorSchedule;
    final lOther$doorSchedule = other.doorSchedule;
    if (_$data.containsKey('doorSchedule') !=
        other._$data.containsKey('doorSchedule')) {
      return false;
    }
    if (l$doorSchedule != lOther$doorSchedule) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$externalId = externalId;
    final l$name = name;
    final l$description = description;
    final l$doorSchedule = doorSchedule;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('doorSchedule') ? l$doorSchedule : const {},
    ]);
  }
}

abstract class CopyWith$Input$DoorScheduleConfigurationFilterInput<TRes> {
  factory CopyWith$Input$DoorScheduleConfigurationFilterInput(
    Input$DoorScheduleConfigurationFilterInput instance,
    TRes Function(Input$DoorScheduleConfigurationFilterInput) then,
  ) = _CopyWithImpl$Input$DoorScheduleConfigurationFilterInput;

  factory CopyWith$Input$DoorScheduleConfigurationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorScheduleConfigurationFilterInput;

  TRes call({
    List<Input$DoorScheduleConfigurationFilterInput>? and,
    List<Input$DoorScheduleConfigurationFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$ListFilterInputTypeOfDoorScheduleItemFilterInput? doorSchedule,
  });
  TRes and(
    Iterable<Input$DoorScheduleConfigurationFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduleConfigurationFilterInput<
          Input$DoorScheduleConfigurationFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$DoorScheduleConfigurationFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduleConfigurationFilterInput<
          Input$DoorScheduleConfigurationFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get externalId;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get description;
  CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput<TRes>
  get doorSchedule;
}

class _CopyWithImpl$Input$DoorScheduleConfigurationFilterInput<TRes>
    implements CopyWith$Input$DoorScheduleConfigurationFilterInput<TRes> {
  _CopyWithImpl$Input$DoorScheduleConfigurationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DoorScheduleConfigurationFilterInput _instance;

  final TRes Function(Input$DoorScheduleConfigurationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? doorSchedule = _undefined,
  }) => _then(
    Input$DoorScheduleConfigurationFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$DoorScheduleConfigurationFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input$DoorScheduleConfigurationFilterInput>?),
      if (externalId != _undefined)
        'externalId': (externalId as Input$StringOperationFilterInput?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (description != _undefined)
        'description': (description as Input$StringOperationFilterInput?),
      if (doorSchedule != _undefined)
        'doorSchedule':
            (doorSchedule
                as Input$ListFilterInputTypeOfDoorScheduleItemFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$DoorScheduleConfigurationFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduleConfigurationFilterInput<
          Input$DoorScheduleConfigurationFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$DoorScheduleConfigurationFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$DoorScheduleConfigurationFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduleConfigurationFilterInput<
          Input$DoorScheduleConfigurationFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$DoorScheduleConfigurationFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId {
    final local$externalId = _instance.externalId;
    return local$externalId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$externalId,
            (e) => call(externalId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$description,
            (e) => call(description: e),
          );
  }

  CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput<TRes>
  get doorSchedule {
    final local$doorSchedule = _instance.doorSchedule;
    return local$doorSchedule == null
        ? CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput(
            local$doorSchedule,
            (e) => call(doorSchedule: e),
          );
  }
}

class _CopyWithStubImpl$Input$DoorScheduleConfigurationFilterInput<TRes>
    implements CopyWith$Input$DoorScheduleConfigurationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DoorScheduleConfigurationFilterInput(this._res);

  TRes _res;

  call({
    List<Input$DoorScheduleConfigurationFilterInput>? and,
    List<Input$DoorScheduleConfigurationFilterInput>? or,
    Input$StringOperationFilterInput? externalId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$ListFilterInputTypeOfDoorScheduleItemFilterInput? doorSchedule,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get description =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput<TRes>
  get doorSchedule =>
      CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput.stub(
        _res,
      );
}

class Input$DoorScheduleConfigurationInput {
  factory Input$DoorScheduleConfigurationInput({
    required String externalId,
    required String name,
    required String description,
    required List<Input$DoorScheduleItemInput> doorSchedule,
  }) => Input$DoorScheduleConfigurationInput._({
    r'externalId': externalId,
    r'name': name,
    r'description': description,
    r'doorSchedule': doorSchedule,
  });

  Input$DoorScheduleConfigurationInput._(this._$data);

  factory Input$DoorScheduleConfigurationInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$externalId = data['externalId'];
    result$data['externalId'] = (l$externalId as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$doorSchedule = data['doorSchedule'];
    result$data['doorSchedule'] = (l$doorSchedule as List<dynamic>)
        .map(
          (e) =>
              Input$DoorScheduleItemInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    return Input$DoorScheduleConfigurationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get externalId => (_$data['externalId'] as String);

  String get name => (_$data['name'] as String);

  String get description => (_$data['description'] as String);

  List<Input$DoorScheduleItemInput> get doorSchedule =>
      (_$data['doorSchedule'] as List<Input$DoorScheduleItemInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$externalId = externalId;
    result$data['externalId'] = l$externalId;
    final l$name = name;
    result$data['name'] = l$name;
    final l$description = description;
    result$data['description'] = l$description;
    final l$doorSchedule = doorSchedule;
    result$data['doorSchedule'] = l$doorSchedule
        .map((e) => e.toJson())
        .toList();
    return result$data;
  }

  CopyWith$Input$DoorScheduleConfigurationInput<
    Input$DoorScheduleConfigurationInput
  >
  get copyWith => CopyWith$Input$DoorScheduleConfigurationInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorScheduleConfigurationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$doorSchedule = doorSchedule;
    final lOther$doorSchedule = other.doorSchedule;
    if (l$doorSchedule.length != lOther$doorSchedule.length) {
      return false;
    }
    for (int i = 0; i < l$doorSchedule.length; i++) {
      final l$doorSchedule$entry = l$doorSchedule[i];
      final lOther$doorSchedule$entry = lOther$doorSchedule[i];
      if (l$doorSchedule$entry != lOther$doorSchedule$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$externalId = externalId;
    final l$name = name;
    final l$description = description;
    final l$doorSchedule = doorSchedule;
    return Object.hashAll([
      l$externalId,
      l$name,
      l$description,
      Object.hashAll(l$doorSchedule.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$DoorScheduleConfigurationInput<TRes> {
  factory CopyWith$Input$DoorScheduleConfigurationInput(
    Input$DoorScheduleConfigurationInput instance,
    TRes Function(Input$DoorScheduleConfigurationInput) then,
  ) = _CopyWithImpl$Input$DoorScheduleConfigurationInput;

  factory CopyWith$Input$DoorScheduleConfigurationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorScheduleConfigurationInput;

  TRes call({
    String? externalId,
    String? name,
    String? description,
    List<Input$DoorScheduleItemInput>? doorSchedule,
  });
  TRes doorSchedule(
    Iterable<Input$DoorScheduleItemInput> Function(
      Iterable<
        CopyWith$Input$DoorScheduleItemInput<Input$DoorScheduleItemInput>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Input$DoorScheduleConfigurationInput<TRes>
    implements CopyWith$Input$DoorScheduleConfigurationInput<TRes> {
  _CopyWithImpl$Input$DoorScheduleConfigurationInput(
    this._instance,
    this._then,
  );

  final Input$DoorScheduleConfigurationInput _instance;

  final TRes Function(Input$DoorScheduleConfigurationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? doorSchedule = _undefined,
  }) => _then(
    Input$DoorScheduleConfigurationInput._({
      ..._instance._$data,
      if (externalId != _undefined && externalId != null)
        'externalId': (externalId as String),
      if (name != _undefined && name != null) 'name': (name as String),
      if (description != _undefined && description != null)
        'description': (description as String),
      if (doorSchedule != _undefined && doorSchedule != null)
        'doorSchedule': (doorSchedule as List<Input$DoorScheduleItemInput>),
    }),
  );

  TRes doorSchedule(
    Iterable<Input$DoorScheduleItemInput> Function(
      Iterable<
        CopyWith$Input$DoorScheduleItemInput<Input$DoorScheduleItemInput>
      >,
    )
    _fn,
  ) => call(
    doorSchedule: _fn(
      _instance.doorSchedule.map(
        (e) => CopyWith$Input$DoorScheduleItemInput(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Input$DoorScheduleConfigurationInput<TRes>
    implements CopyWith$Input$DoorScheduleConfigurationInput<TRes> {
  _CopyWithStubImpl$Input$DoorScheduleConfigurationInput(this._res);

  TRes _res;

  call({
    String? externalId,
    String? name,
    String? description,
    List<Input$DoorScheduleItemInput>? doorSchedule,
  }) => _res;

  doorSchedule(_fn) => _res;
}

class Input$DoorScheduleItemFilterInput {
  factory Input$DoorScheduleItemFilterInput({
    List<Input$DoorScheduleItemFilterInput>? and,
    List<Input$DoorScheduleItemFilterInput>? or,
    Input$StringOperationFilterInput? priorityLevel,
    Input$ListFilterInputTypeOfDoorScheduledStateFilterInput? scheduledState,
  }) => Input$DoorScheduleItemFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (priorityLevel != null) r'priorityLevel': priorityLevel,
    if (scheduledState != null) r'scheduledState': scheduledState,
  });

  Input$DoorScheduleItemFilterInput._(this._$data);

  factory Input$DoorScheduleItemFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$DoorScheduleItemFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$DoorScheduleItemFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('priorityLevel')) {
      final l$priorityLevel = data['priorityLevel'];
      result$data['priorityLevel'] = l$priorityLevel == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$priorityLevel as Map<String, dynamic>),
            );
    }
    if (data.containsKey('scheduledState')) {
      final l$scheduledState = data['scheduledState'];
      result$data['scheduledState'] = l$scheduledState == null
          ? null
          : Input$ListFilterInputTypeOfDoorScheduledStateFilterInput.fromJson(
              (l$scheduledState as Map<String, dynamic>),
            );
    }
    return Input$DoorScheduleItemFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DoorScheduleItemFilterInput>? get and =>
      (_$data['and'] as List<Input$DoorScheduleItemFilterInput>?);

  List<Input$DoorScheduleItemFilterInput>? get or =>
      (_$data['or'] as List<Input$DoorScheduleItemFilterInput>?);

  Input$StringOperationFilterInput? get priorityLevel =>
      (_$data['priorityLevel'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfDoorScheduledStateFilterInput?
  get scheduledState =>
      (_$data['scheduledState']
          as Input$ListFilterInputTypeOfDoorScheduledStateFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('priorityLevel')) {
      final l$priorityLevel = priorityLevel;
      result$data['priorityLevel'] = l$priorityLevel?.toJson();
    }
    if (_$data.containsKey('scheduledState')) {
      final l$scheduledState = scheduledState;
      result$data['scheduledState'] = l$scheduledState?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DoorScheduleItemFilterInput<Input$DoorScheduleItemFilterInput>
  get copyWith => CopyWith$Input$DoorScheduleItemFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorScheduleItemFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$priorityLevel = priorityLevel;
    final lOther$priorityLevel = other.priorityLevel;
    if (_$data.containsKey('priorityLevel') !=
        other._$data.containsKey('priorityLevel')) {
      return false;
    }
    if (l$priorityLevel != lOther$priorityLevel) {
      return false;
    }
    final l$scheduledState = scheduledState;
    final lOther$scheduledState = other.scheduledState;
    if (_$data.containsKey('scheduledState') !=
        other._$data.containsKey('scheduledState')) {
      return false;
    }
    if (l$scheduledState != lOther$scheduledState) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$priorityLevel = priorityLevel;
    final l$scheduledState = scheduledState;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('priorityLevel') ? l$priorityLevel : const {},
      _$data.containsKey('scheduledState') ? l$scheduledState : const {},
    ]);
  }
}

abstract class CopyWith$Input$DoorScheduleItemFilterInput<TRes> {
  factory CopyWith$Input$DoorScheduleItemFilterInput(
    Input$DoorScheduleItemFilterInput instance,
    TRes Function(Input$DoorScheduleItemFilterInput) then,
  ) = _CopyWithImpl$Input$DoorScheduleItemFilterInput;

  factory CopyWith$Input$DoorScheduleItemFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorScheduleItemFilterInput;

  TRes call({
    List<Input$DoorScheduleItemFilterInput>? and,
    List<Input$DoorScheduleItemFilterInput>? or,
    Input$StringOperationFilterInput? priorityLevel,
    Input$ListFilterInputTypeOfDoorScheduledStateFilterInput? scheduledState,
  });
  TRes and(
    Iterable<Input$DoorScheduleItemFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduleItemFilterInput<
          Input$DoorScheduleItemFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$DoorScheduleItemFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduleItemFilterInput<
          Input$DoorScheduleItemFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get priorityLevel;
  CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput<TRes>
  get scheduledState;
}

class _CopyWithImpl$Input$DoorScheduleItemFilterInput<TRes>
    implements CopyWith$Input$DoorScheduleItemFilterInput<TRes> {
  _CopyWithImpl$Input$DoorScheduleItemFilterInput(this._instance, this._then);

  final Input$DoorScheduleItemFilterInput _instance;

  final TRes Function(Input$DoorScheduleItemFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? priorityLevel = _undefined,
    Object? scheduledState = _undefined,
  }) => _then(
    Input$DoorScheduleItemFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$DoorScheduleItemFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input$DoorScheduleItemFilterInput>?),
      if (priorityLevel != _undefined)
        'priorityLevel': (priorityLevel as Input$StringOperationFilterInput?),
      if (scheduledState != _undefined)
        'scheduledState':
            (scheduledState
                as Input$ListFilterInputTypeOfDoorScheduledStateFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$DoorScheduleItemFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduleItemFilterInput<
          Input$DoorScheduleItemFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$DoorScheduleItemFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$DoorScheduleItemFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduleItemFilterInput<
          Input$DoorScheduleItemFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$DoorScheduleItemFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get priorityLevel {
    final local$priorityLevel = _instance.priorityLevel;
    return local$priorityLevel == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$priorityLevel,
            (e) => call(priorityLevel: e),
          );
  }

  CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput<TRes>
  get scheduledState {
    final local$scheduledState = _instance.scheduledState;
    return local$scheduledState == null
        ? CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput(
            local$scheduledState,
            (e) => call(scheduledState: e),
          );
  }
}

class _CopyWithStubImpl$Input$DoorScheduleItemFilterInput<TRes>
    implements CopyWith$Input$DoorScheduleItemFilterInput<TRes> {
  _CopyWithStubImpl$Input$DoorScheduleItemFilterInput(this._res);

  TRes _res;

  call({
    List<Input$DoorScheduleItemFilterInput>? and,
    List<Input$DoorScheduleItemFilterInput>? or,
    Input$StringOperationFilterInput? priorityLevel,
    Input$ListFilterInputTypeOfDoorScheduledStateFilterInput? scheduledState,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get priorityLevel =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput<TRes>
  get scheduledState =>
      CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput.stub(
        _res,
      );
}

class Input$DoorScheduleItemInput {
  factory Input$DoorScheduleItemInput({
    required String priorityLevel,
    required List<Input$DoorScheduledStateInput> scheduledState,
  }) => Input$DoorScheduleItemInput._({
    r'priorityLevel': priorityLevel,
    r'scheduledState': scheduledState,
  });

  Input$DoorScheduleItemInput._(this._$data);

  factory Input$DoorScheduleItemInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$priorityLevel = data['priorityLevel'];
    result$data['priorityLevel'] = (l$priorityLevel as String);
    final l$scheduledState = data['scheduledState'];
    result$data['scheduledState'] = (l$scheduledState as List<dynamic>)
        .map(
          (e) => Input$DoorScheduledStateInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    return Input$DoorScheduleItemInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get priorityLevel => (_$data['priorityLevel'] as String);

  List<Input$DoorScheduledStateInput> get scheduledState =>
      (_$data['scheduledState'] as List<Input$DoorScheduledStateInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$priorityLevel = priorityLevel;
    result$data['priorityLevel'] = l$priorityLevel;
    final l$scheduledState = scheduledState;
    result$data['scheduledState'] = l$scheduledState
        .map((e) => e.toJson())
        .toList();
    return result$data;
  }

  CopyWith$Input$DoorScheduleItemInput<Input$DoorScheduleItemInput>
  get copyWith => CopyWith$Input$DoorScheduleItemInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorScheduleItemInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$priorityLevel = priorityLevel;
    final lOther$priorityLevel = other.priorityLevel;
    if (l$priorityLevel != lOther$priorityLevel) {
      return false;
    }
    final l$scheduledState = scheduledState;
    final lOther$scheduledState = other.scheduledState;
    if (l$scheduledState.length != lOther$scheduledState.length) {
      return false;
    }
    for (int i = 0; i < l$scheduledState.length; i++) {
      final l$scheduledState$entry = l$scheduledState[i];
      final lOther$scheduledState$entry = lOther$scheduledState[i];
      if (l$scheduledState$entry != lOther$scheduledState$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$priorityLevel = priorityLevel;
    final l$scheduledState = scheduledState;
    return Object.hashAll([
      l$priorityLevel,
      Object.hashAll(l$scheduledState.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$DoorScheduleItemInput<TRes> {
  factory CopyWith$Input$DoorScheduleItemInput(
    Input$DoorScheduleItemInput instance,
    TRes Function(Input$DoorScheduleItemInput) then,
  ) = _CopyWithImpl$Input$DoorScheduleItemInput;

  factory CopyWith$Input$DoorScheduleItemInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorScheduleItemInput;

  TRes call({
    String? priorityLevel,
    List<Input$DoorScheduledStateInput>? scheduledState,
  });
  TRes scheduledState(
    Iterable<Input$DoorScheduledStateInput> Function(
      Iterable<
        CopyWith$Input$DoorScheduledStateInput<Input$DoorScheduledStateInput>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Input$DoorScheduleItemInput<TRes>
    implements CopyWith$Input$DoorScheduleItemInput<TRes> {
  _CopyWithImpl$Input$DoorScheduleItemInput(this._instance, this._then);

  final Input$DoorScheduleItemInput _instance;

  final TRes Function(Input$DoorScheduleItemInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priorityLevel = _undefined,
    Object? scheduledState = _undefined,
  }) => _then(
    Input$DoorScheduleItemInput._({
      ..._instance._$data,
      if (priorityLevel != _undefined && priorityLevel != null)
        'priorityLevel': (priorityLevel as String),
      if (scheduledState != _undefined && scheduledState != null)
        'scheduledState':
            (scheduledState as List<Input$DoorScheduledStateInput>),
    }),
  );

  TRes scheduledState(
    Iterable<Input$DoorScheduledStateInput> Function(
      Iterable<
        CopyWith$Input$DoorScheduledStateInput<Input$DoorScheduledStateInput>
      >,
    )
    _fn,
  ) => call(
    scheduledState: _fn(
      _instance.scheduledState.map(
        (e) => CopyWith$Input$DoorScheduledStateInput(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Input$DoorScheduleItemInput<TRes>
    implements CopyWith$Input$DoorScheduleItemInput<TRes> {
  _CopyWithStubImpl$Input$DoorScheduleItemInput(this._res);

  TRes _res;

  call({
    String? priorityLevel,
    List<Input$DoorScheduledStateInput>? scheduledState,
  }) => _res;

  scheduledState(_fn) => _res;
}

class Input$DoorScheduledStateFilterInput {
  factory Input$DoorScheduledStateFilterInput({
    List<Input$DoorScheduledStateFilterInput>? and,
    List<Input$DoorScheduledStateFilterInput>? or,
    Input$ListStringOperationFilterInput? scheduleToken,
    Input$StringOperationFilterInput? enterAction,
  }) => Input$DoorScheduledStateFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (scheduleToken != null) r'scheduleToken': scheduleToken,
    if (enterAction != null) r'enterAction': enterAction,
  });

  Input$DoorScheduledStateFilterInput._(this._$data);

  factory Input$DoorScheduledStateFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$DoorScheduledStateFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$DoorScheduledStateFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('scheduleToken')) {
      final l$scheduleToken = data['scheduleToken'];
      result$data['scheduleToken'] = l$scheduleToken == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$scheduleToken as Map<String, dynamic>),
            );
    }
    if (data.containsKey('enterAction')) {
      final l$enterAction = data['enterAction'];
      result$data['enterAction'] = l$enterAction == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$enterAction as Map<String, dynamic>),
            );
    }
    return Input$DoorScheduledStateFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DoorScheduledStateFilterInput>? get and =>
      (_$data['and'] as List<Input$DoorScheduledStateFilterInput>?);

  List<Input$DoorScheduledStateFilterInput>? get or =>
      (_$data['or'] as List<Input$DoorScheduledStateFilterInput>?);

  Input$ListStringOperationFilterInput? get scheduleToken =>
      (_$data['scheduleToken'] as Input$ListStringOperationFilterInput?);

  Input$StringOperationFilterInput? get enterAction =>
      (_$data['enterAction'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('scheduleToken')) {
      final l$scheduleToken = scheduleToken;
      result$data['scheduleToken'] = l$scheduleToken?.toJson();
    }
    if (_$data.containsKey('enterAction')) {
      final l$enterAction = enterAction;
      result$data['enterAction'] = l$enterAction?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DoorScheduledStateFilterInput<
    Input$DoorScheduledStateFilterInput
  >
  get copyWith => CopyWith$Input$DoorScheduledStateFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorScheduledStateFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$scheduleToken = scheduleToken;
    final lOther$scheduleToken = other.scheduleToken;
    if (_$data.containsKey('scheduleToken') !=
        other._$data.containsKey('scheduleToken')) {
      return false;
    }
    if (l$scheduleToken != lOther$scheduleToken) {
      return false;
    }
    final l$enterAction = enterAction;
    final lOther$enterAction = other.enterAction;
    if (_$data.containsKey('enterAction') !=
        other._$data.containsKey('enterAction')) {
      return false;
    }
    if (l$enterAction != lOther$enterAction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$scheduleToken = scheduleToken;
    final l$enterAction = enterAction;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('scheduleToken') ? l$scheduleToken : const {},
      _$data.containsKey('enterAction') ? l$enterAction : const {},
    ]);
  }
}

abstract class CopyWith$Input$DoorScheduledStateFilterInput<TRes> {
  factory CopyWith$Input$DoorScheduledStateFilterInput(
    Input$DoorScheduledStateFilterInput instance,
    TRes Function(Input$DoorScheduledStateFilterInput) then,
  ) = _CopyWithImpl$Input$DoorScheduledStateFilterInput;

  factory CopyWith$Input$DoorScheduledStateFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorScheduledStateFilterInput;

  TRes call({
    List<Input$DoorScheduledStateFilterInput>? and,
    List<Input$DoorScheduledStateFilterInput>? or,
    Input$ListStringOperationFilterInput? scheduleToken,
    Input$StringOperationFilterInput? enterAction,
  });
  TRes and(
    Iterable<Input$DoorScheduledStateFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduledStateFilterInput<
          Input$DoorScheduledStateFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$DoorScheduledStateFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduledStateFilterInput<
          Input$DoorScheduledStateFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$ListStringOperationFilterInput<TRes> get scheduleToken;
  CopyWith$Input$StringOperationFilterInput<TRes> get enterAction;
}

class _CopyWithImpl$Input$DoorScheduledStateFilterInput<TRes>
    implements CopyWith$Input$DoorScheduledStateFilterInput<TRes> {
  _CopyWithImpl$Input$DoorScheduledStateFilterInput(this._instance, this._then);

  final Input$DoorScheduledStateFilterInput _instance;

  final TRes Function(Input$DoorScheduledStateFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? scheduleToken = _undefined,
    Object? enterAction = _undefined,
  }) => _then(
    Input$DoorScheduledStateFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$DoorScheduledStateFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input$DoorScheduledStateFilterInput>?),
      if (scheduleToken != _undefined)
        'scheduleToken':
            (scheduleToken as Input$ListStringOperationFilterInput?),
      if (enterAction != _undefined)
        'enterAction': (enterAction as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$DoorScheduledStateFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduledStateFilterInput<
          Input$DoorScheduledStateFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$DoorScheduledStateFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$DoorScheduledStateFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorScheduledStateFilterInput<
          Input$DoorScheduledStateFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$DoorScheduledStateFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$ListStringOperationFilterInput<TRes> get scheduleToken {
    final local$scheduleToken = _instance.scheduleToken;
    return local$scheduleToken == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$scheduleToken,
            (e) => call(scheduleToken: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get enterAction {
    final local$enterAction = _instance.enterAction;
    return local$enterAction == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$enterAction,
            (e) => call(enterAction: e),
          );
  }
}

class _CopyWithStubImpl$Input$DoorScheduledStateFilterInput<TRes>
    implements CopyWith$Input$DoorScheduledStateFilterInput<TRes> {
  _CopyWithStubImpl$Input$DoorScheduledStateFilterInput(this._res);

  TRes _res;

  call({
    List<Input$DoorScheduledStateFilterInput>? and,
    List<Input$DoorScheduledStateFilterInput>? or,
    Input$ListStringOperationFilterInput? scheduleToken,
    Input$StringOperationFilterInput? enterAction,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$ListStringOperationFilterInput<TRes> get scheduleToken =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get enterAction =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$DoorScheduledStateInput {
  factory Input$DoorScheduledStateInput({
    required List<String> scheduleToken,
    required String enterAction,
  }) => Input$DoorScheduledStateInput._({
    r'scheduleToken': scheduleToken,
    r'enterAction': enterAction,
  });

  Input$DoorScheduledStateInput._(this._$data);

  factory Input$DoorScheduledStateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$scheduleToken = data['scheduleToken'];
    result$data['scheduleToken'] = (l$scheduleToken as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$enterAction = data['enterAction'];
    result$data['enterAction'] = (l$enterAction as String);
    return Input$DoorScheduledStateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get scheduleToken => (_$data['scheduleToken'] as List<String>);

  String get enterAction => (_$data['enterAction'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$scheduleToken = scheduleToken;
    result$data['scheduleToken'] = l$scheduleToken.map((e) => e).toList();
    final l$enterAction = enterAction;
    result$data['enterAction'] = l$enterAction;
    return result$data;
  }

  CopyWith$Input$DoorScheduledStateInput<Input$DoorScheduledStateInput>
  get copyWith => CopyWith$Input$DoorScheduledStateInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorScheduledStateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scheduleToken = scheduleToken;
    final lOther$scheduleToken = other.scheduleToken;
    if (l$scheduleToken.length != lOther$scheduleToken.length) {
      return false;
    }
    for (int i = 0; i < l$scheduleToken.length; i++) {
      final l$scheduleToken$entry = l$scheduleToken[i];
      final lOther$scheduleToken$entry = lOther$scheduleToken[i];
      if (l$scheduleToken$entry != lOther$scheduleToken$entry) {
        return false;
      }
    }
    final l$enterAction = enterAction;
    final lOther$enterAction = other.enterAction;
    if (l$enterAction != lOther$enterAction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$scheduleToken = scheduleToken;
    final l$enterAction = enterAction;
    return Object.hashAll([
      Object.hashAll(l$scheduleToken.map((v) => v)),
      l$enterAction,
    ]);
  }
}

abstract class CopyWith$Input$DoorScheduledStateInput<TRes> {
  factory CopyWith$Input$DoorScheduledStateInput(
    Input$DoorScheduledStateInput instance,
    TRes Function(Input$DoorScheduledStateInput) then,
  ) = _CopyWithImpl$Input$DoorScheduledStateInput;

  factory CopyWith$Input$DoorScheduledStateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorScheduledStateInput;

  TRes call({List<String>? scheduleToken, String? enterAction});
}

class _CopyWithImpl$Input$DoorScheduledStateInput<TRes>
    implements CopyWith$Input$DoorScheduledStateInput<TRes> {
  _CopyWithImpl$Input$DoorScheduledStateInput(this._instance, this._then);

  final Input$DoorScheduledStateInput _instance;

  final TRes Function(Input$DoorScheduledStateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scheduleToken = _undefined,
    Object? enterAction = _undefined,
  }) => _then(
    Input$DoorScheduledStateInput._({
      ..._instance._$data,
      if (scheduleToken != _undefined && scheduleToken != null)
        'scheduleToken': (scheduleToken as List<String>),
      if (enterAction != _undefined && enterAction != null)
        'enterAction': (enterAction as String),
    }),
  );
}

class _CopyWithStubImpl$Input$DoorScheduledStateInput<TRes>
    implements CopyWith$Input$DoorScheduledStateInput<TRes> {
  _CopyWithStubImpl$Input$DoorScheduledStateInput(this._res);

  TRes _res;

  call({List<String>? scheduleToken, String? enterAction}) => _res;
}

class Input$DoorSearchIndexResultFilterInput {
  factory Input$DoorSearchIndexResultFilterInput({
    List<Input$DoorSearchIndexResultFilterInput>? and,
    List<Input$DoorSearchIndexResultFilterInput>? or,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? accessControllerName,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$StringOperationFilterInput? doorExternalId,
    Input$StringOperationFilterInput? doorName,
    Input$StringOperationFilterInput? priorityConfigId,
    Input$StringOperationFilterInput? priorityConfigName,
    Input$StringOperationFilterInput? defaultPriority,
    Input$StringOperationFilterInput? scheduleConfigId,
    Input$StringOperationFilterInput? scheduleConfigName,
  }) => Input$DoorSearchIndexResultFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (accessControllerName != null)
      r'accessControllerName': accessControllerName,
    if (siteId != null) r'siteId': siteId,
    if (siteName != null) r'siteName': siteName,
    if (doorExternalId != null) r'doorExternalId': doorExternalId,
    if (doorName != null) r'doorName': doorName,
    if (priorityConfigId != null) r'priorityConfigId': priorityConfigId,
    if (priorityConfigName != null) r'priorityConfigName': priorityConfigName,
    if (defaultPriority != null) r'defaultPriority': defaultPriority,
    if (scheduleConfigId != null) r'scheduleConfigId': scheduleConfigId,
    if (scheduleConfigName != null) r'scheduleConfigName': scheduleConfigName,
  });

  Input$DoorSearchIndexResultFilterInput._(this._$data);

  factory Input$DoorSearchIndexResultFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$DoorSearchIndexResultFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$DoorSearchIndexResultFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessControllerId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessControllerName')) {
      final l$accessControllerName = data['accessControllerName'];
      result$data['accessControllerName'] = l$accessControllerName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessControllerName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = l$siteId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$siteId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('siteName')) {
      final l$siteName = data['siteName'];
      result$data['siteName'] = l$siteName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$siteName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('doorExternalId')) {
      final l$doorExternalId = data['doorExternalId'];
      result$data['doorExternalId'] = l$doorExternalId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$doorExternalId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('doorName')) {
      final l$doorName = data['doorName'];
      result$data['doorName'] = l$doorName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$doorName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('priorityConfigId')) {
      final l$priorityConfigId = data['priorityConfigId'];
      result$data['priorityConfigId'] = l$priorityConfigId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$priorityConfigId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('priorityConfigName')) {
      final l$priorityConfigName = data['priorityConfigName'];
      result$data['priorityConfigName'] = l$priorityConfigName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$priorityConfigName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultPriority')) {
      final l$defaultPriority = data['defaultPriority'];
      result$data['defaultPriority'] = l$defaultPriority == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$defaultPriority as Map<String, dynamic>),
            );
    }
    if (data.containsKey('scheduleConfigId')) {
      final l$scheduleConfigId = data['scheduleConfigId'];
      result$data['scheduleConfigId'] = l$scheduleConfigId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$scheduleConfigId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('scheduleConfigName')) {
      final l$scheduleConfigName = data['scheduleConfigName'];
      result$data['scheduleConfigName'] = l$scheduleConfigName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$scheduleConfigName as Map<String, dynamic>),
            );
    }
    return Input$DoorSearchIndexResultFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DoorSearchIndexResultFilterInput>? get and =>
      (_$data['and'] as List<Input$DoorSearchIndexResultFilterInput>?);

  List<Input$DoorSearchIndexResultFilterInput>? get or =>
      (_$data['or'] as List<Input$DoorSearchIndexResultFilterInput>?);

  Input$StringOperationFilterInput? get accessControllerId =>
      (_$data['accessControllerId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accessControllerName =>
      (_$data['accessControllerName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get siteId =>
      (_$data['siteId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get siteName =>
      (_$data['siteName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get doorExternalId =>
      (_$data['doorExternalId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get doorName =>
      (_$data['doorName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get priorityConfigId =>
      (_$data['priorityConfigId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get priorityConfigName =>
      (_$data['priorityConfigName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get defaultPriority =>
      (_$data['defaultPriority'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get scheduleConfigId =>
      (_$data['scheduleConfigId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get scheduleConfigName =>
      (_$data['scheduleConfigName'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId?.toJson();
    }
    if (_$data.containsKey('accessControllerName')) {
      final l$accessControllerName = accessControllerName;
      result$data['accessControllerName'] = l$accessControllerName?.toJson();
    }
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId?.toJson();
    }
    if (_$data.containsKey('siteName')) {
      final l$siteName = siteName;
      result$data['siteName'] = l$siteName?.toJson();
    }
    if (_$data.containsKey('doorExternalId')) {
      final l$doorExternalId = doorExternalId;
      result$data['doorExternalId'] = l$doorExternalId?.toJson();
    }
    if (_$data.containsKey('doorName')) {
      final l$doorName = doorName;
      result$data['doorName'] = l$doorName?.toJson();
    }
    if (_$data.containsKey('priorityConfigId')) {
      final l$priorityConfigId = priorityConfigId;
      result$data['priorityConfigId'] = l$priorityConfigId?.toJson();
    }
    if (_$data.containsKey('priorityConfigName')) {
      final l$priorityConfigName = priorityConfigName;
      result$data['priorityConfigName'] = l$priorityConfigName?.toJson();
    }
    if (_$data.containsKey('defaultPriority')) {
      final l$defaultPriority = defaultPriority;
      result$data['defaultPriority'] = l$defaultPriority?.toJson();
    }
    if (_$data.containsKey('scheduleConfigId')) {
      final l$scheduleConfigId = scheduleConfigId;
      result$data['scheduleConfigId'] = l$scheduleConfigId?.toJson();
    }
    if (_$data.containsKey('scheduleConfigName')) {
      final l$scheduleConfigName = scheduleConfigName;
      result$data['scheduleConfigName'] = l$scheduleConfigName?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DoorSearchIndexResultFilterInput<
    Input$DoorSearchIndexResultFilterInput
  >
  get copyWith =>
      CopyWith$Input$DoorSearchIndexResultFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorSearchIndexResultFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$accessControllerName = accessControllerName;
    final lOther$accessControllerName = other.accessControllerName;
    if (_$data.containsKey('accessControllerName') !=
        other._$data.containsKey('accessControllerName')) {
      return false;
    }
    if (l$accessControllerName != lOther$accessControllerName) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$siteName = siteName;
    final lOther$siteName = other.siteName;
    if (_$data.containsKey('siteName') !=
        other._$data.containsKey('siteName')) {
      return false;
    }
    if (l$siteName != lOther$siteName) {
      return false;
    }
    final l$doorExternalId = doorExternalId;
    final lOther$doorExternalId = other.doorExternalId;
    if (_$data.containsKey('doorExternalId') !=
        other._$data.containsKey('doorExternalId')) {
      return false;
    }
    if (l$doorExternalId != lOther$doorExternalId) {
      return false;
    }
    final l$doorName = doorName;
    final lOther$doorName = other.doorName;
    if (_$data.containsKey('doorName') !=
        other._$data.containsKey('doorName')) {
      return false;
    }
    if (l$doorName != lOther$doorName) {
      return false;
    }
    final l$priorityConfigId = priorityConfigId;
    final lOther$priorityConfigId = other.priorityConfigId;
    if (_$data.containsKey('priorityConfigId') !=
        other._$data.containsKey('priorityConfigId')) {
      return false;
    }
    if (l$priorityConfigId != lOther$priorityConfigId) {
      return false;
    }
    final l$priorityConfigName = priorityConfigName;
    final lOther$priorityConfigName = other.priorityConfigName;
    if (_$data.containsKey('priorityConfigName') !=
        other._$data.containsKey('priorityConfigName')) {
      return false;
    }
    if (l$priorityConfigName != lOther$priorityConfigName) {
      return false;
    }
    final l$defaultPriority = defaultPriority;
    final lOther$defaultPriority = other.defaultPriority;
    if (_$data.containsKey('defaultPriority') !=
        other._$data.containsKey('defaultPriority')) {
      return false;
    }
    if (l$defaultPriority != lOther$defaultPriority) {
      return false;
    }
    final l$scheduleConfigId = scheduleConfigId;
    final lOther$scheduleConfigId = other.scheduleConfigId;
    if (_$data.containsKey('scheduleConfigId') !=
        other._$data.containsKey('scheduleConfigId')) {
      return false;
    }
    if (l$scheduleConfigId != lOther$scheduleConfigId) {
      return false;
    }
    final l$scheduleConfigName = scheduleConfigName;
    final lOther$scheduleConfigName = other.scheduleConfigName;
    if (_$data.containsKey('scheduleConfigName') !=
        other._$data.containsKey('scheduleConfigName')) {
      return false;
    }
    if (l$scheduleConfigName != lOther$scheduleConfigName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$accessControllerId = accessControllerId;
    final l$accessControllerName = accessControllerName;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$doorExternalId = doorExternalId;
    final l$doorName = doorName;
    final l$priorityConfigId = priorityConfigId;
    final l$priorityConfigName = priorityConfigName;
    final l$defaultPriority = defaultPriority;
    final l$scheduleConfigId = scheduleConfigId;
    final l$scheduleConfigName = scheduleConfigName;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('accessControllerName')
          ? l$accessControllerName
          : const {},
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('siteName') ? l$siteName : const {},
      _$data.containsKey('doorExternalId') ? l$doorExternalId : const {},
      _$data.containsKey('doorName') ? l$doorName : const {},
      _$data.containsKey('priorityConfigId') ? l$priorityConfigId : const {},
      _$data.containsKey('priorityConfigName')
          ? l$priorityConfigName
          : const {},
      _$data.containsKey('defaultPriority') ? l$defaultPriority : const {},
      _$data.containsKey('scheduleConfigId') ? l$scheduleConfigId : const {},
      _$data.containsKey('scheduleConfigName')
          ? l$scheduleConfigName
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$DoorSearchIndexResultFilterInput<TRes> {
  factory CopyWith$Input$DoorSearchIndexResultFilterInput(
    Input$DoorSearchIndexResultFilterInput instance,
    TRes Function(Input$DoorSearchIndexResultFilterInput) then,
  ) = _CopyWithImpl$Input$DoorSearchIndexResultFilterInput;

  factory CopyWith$Input$DoorSearchIndexResultFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorSearchIndexResultFilterInput;

  TRes call({
    List<Input$DoorSearchIndexResultFilterInput>? and,
    List<Input$DoorSearchIndexResultFilterInput>? or,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? accessControllerName,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$StringOperationFilterInput? doorExternalId,
    Input$StringOperationFilterInput? doorName,
    Input$StringOperationFilterInput? priorityConfigId,
    Input$StringOperationFilterInput? priorityConfigName,
    Input$StringOperationFilterInput? defaultPriority,
    Input$StringOperationFilterInput? scheduleConfigId,
    Input$StringOperationFilterInput? scheduleConfigName,
  });
  TRes and(
    Iterable<Input$DoorSearchIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorSearchIndexResultFilterInput<
          Input$DoorSearchIndexResultFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$DoorSearchIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorSearchIndexResultFilterInput<
          Input$DoorSearchIndexResultFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerName;
  CopyWith$Input$StringOperationFilterInput<TRes> get siteId;
  CopyWith$Input$StringOperationFilterInput<TRes> get siteName;
  CopyWith$Input$StringOperationFilterInput<TRes> get doorExternalId;
  CopyWith$Input$StringOperationFilterInput<TRes> get doorName;
  CopyWith$Input$StringOperationFilterInput<TRes> get priorityConfigId;
  CopyWith$Input$StringOperationFilterInput<TRes> get priorityConfigName;
  CopyWith$Input$StringOperationFilterInput<TRes> get defaultPriority;
  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleConfigId;
  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleConfigName;
}

class _CopyWithImpl$Input$DoorSearchIndexResultFilterInput<TRes>
    implements CopyWith$Input$DoorSearchIndexResultFilterInput<TRes> {
  _CopyWithImpl$Input$DoorSearchIndexResultFilterInput(
    this._instance,
    this._then,
  );

  final Input$DoorSearchIndexResultFilterInput _instance;

  final TRes Function(Input$DoorSearchIndexResultFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? accessControllerId = _undefined,
    Object? accessControllerName = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? doorExternalId = _undefined,
    Object? doorName = _undefined,
    Object? priorityConfigId = _undefined,
    Object? priorityConfigName = _undefined,
    Object? defaultPriority = _undefined,
    Object? scheduleConfigId = _undefined,
    Object? scheduleConfigName = _undefined,
  }) => _then(
    Input$DoorSearchIndexResultFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$DoorSearchIndexResultFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input$DoorSearchIndexResultFilterInput>?),
      if (accessControllerId != _undefined)
        'accessControllerId':
            (accessControllerId as Input$StringOperationFilterInput?),
      if (accessControllerName != _undefined)
        'accessControllerName':
            (accessControllerName as Input$StringOperationFilterInput?),
      if (siteId != _undefined)
        'siteId': (siteId as Input$StringOperationFilterInput?),
      if (siteName != _undefined)
        'siteName': (siteName as Input$StringOperationFilterInput?),
      if (doorExternalId != _undefined)
        'doorExternalId': (doorExternalId as Input$StringOperationFilterInput?),
      if (doorName != _undefined)
        'doorName': (doorName as Input$StringOperationFilterInput?),
      if (priorityConfigId != _undefined)
        'priorityConfigId':
            (priorityConfigId as Input$StringOperationFilterInput?),
      if (priorityConfigName != _undefined)
        'priorityConfigName':
            (priorityConfigName as Input$StringOperationFilterInput?),
      if (defaultPriority != _undefined)
        'defaultPriority':
            (defaultPriority as Input$StringOperationFilterInput?),
      if (scheduleConfigId != _undefined)
        'scheduleConfigId':
            (scheduleConfigId as Input$StringOperationFilterInput?),
      if (scheduleConfigName != _undefined)
        'scheduleConfigName':
            (scheduleConfigName as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$DoorSearchIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorSearchIndexResultFilterInput<
          Input$DoorSearchIndexResultFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$DoorSearchIndexResultFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$DoorSearchIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$DoorSearchIndexResultFilterInput<
          Input$DoorSearchIndexResultFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$DoorSearchIndexResultFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId {
    final local$accessControllerId = _instance.accessControllerId;
    return local$accessControllerId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessControllerId,
            (e) => call(accessControllerId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerName {
    final local$accessControllerName = _instance.accessControllerName;
    return local$accessControllerName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessControllerName,
            (e) => call(accessControllerName: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get siteId {
    final local$siteId = _instance.siteId;
    return local$siteId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$siteId,
            (e) => call(siteId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get siteName {
    final local$siteName = _instance.siteName;
    return local$siteName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$siteName,
            (e) => call(siteName: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get doorExternalId {
    final local$doorExternalId = _instance.doorExternalId;
    return local$doorExternalId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$doorExternalId,
            (e) => call(doorExternalId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get doorName {
    final local$doorName = _instance.doorName;
    return local$doorName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$doorName,
            (e) => call(doorName: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get priorityConfigId {
    final local$priorityConfigId = _instance.priorityConfigId;
    return local$priorityConfigId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$priorityConfigId,
            (e) => call(priorityConfigId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get priorityConfigName {
    final local$priorityConfigName = _instance.priorityConfigName;
    return local$priorityConfigName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$priorityConfigName,
            (e) => call(priorityConfigName: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get defaultPriority {
    final local$defaultPriority = _instance.defaultPriority;
    return local$defaultPriority == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$defaultPriority,
            (e) => call(defaultPriority: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleConfigId {
    final local$scheduleConfigId = _instance.scheduleConfigId;
    return local$scheduleConfigId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$scheduleConfigId,
            (e) => call(scheduleConfigId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleConfigName {
    final local$scheduleConfigName = _instance.scheduleConfigName;
    return local$scheduleConfigName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$scheduleConfigName,
            (e) => call(scheduleConfigName: e),
          );
  }
}

class _CopyWithStubImpl$Input$DoorSearchIndexResultFilterInput<TRes>
    implements CopyWith$Input$DoorSearchIndexResultFilterInput<TRes> {
  _CopyWithStubImpl$Input$DoorSearchIndexResultFilterInput(this._res);

  TRes _res;

  call({
    List<Input$DoorSearchIndexResultFilterInput>? and,
    List<Input$DoorSearchIndexResultFilterInput>? or,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? accessControllerName,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$StringOperationFilterInput? doorExternalId,
    Input$StringOperationFilterInput? doorName,
    Input$StringOperationFilterInput? priorityConfigId,
    Input$StringOperationFilterInput? priorityConfigName,
    Input$StringOperationFilterInput? defaultPriority,
    Input$StringOperationFilterInput? scheduleConfigId,
    Input$StringOperationFilterInput? scheduleConfigName,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get siteId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get siteName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get doorExternalId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get doorName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get priorityConfigId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get priorityConfigName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get defaultPriority =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleConfigId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleConfigName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$DoorSearchIndexResultSortInput {
  factory Input$DoorSearchIndexResultSortInput({
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? accessControllerName,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? doorExternalId,
    Enum$SortEnumType? doorName,
    Enum$SortEnumType? priorityConfigId,
    Enum$SortEnumType? priorityConfigName,
    Enum$SortEnumType? defaultPriority,
    Enum$SortEnumType? scheduleConfigId,
    Enum$SortEnumType? scheduleConfigName,
  }) => Input$DoorSearchIndexResultSortInput._({
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (accessControllerName != null)
      r'accessControllerName': accessControllerName,
    if (siteId != null) r'siteId': siteId,
    if (siteName != null) r'siteName': siteName,
    if (doorExternalId != null) r'doorExternalId': doorExternalId,
    if (doorName != null) r'doorName': doorName,
    if (priorityConfigId != null) r'priorityConfigId': priorityConfigId,
    if (priorityConfigName != null) r'priorityConfigName': priorityConfigName,
    if (defaultPriority != null) r'defaultPriority': defaultPriority,
    if (scheduleConfigId != null) r'scheduleConfigId': scheduleConfigId,
    if (scheduleConfigName != null) r'scheduleConfigName': scheduleConfigName,
  });

  Input$DoorSearchIndexResultSortInput._(this._$data);

  factory Input$DoorSearchIndexResultSortInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessControllerId as String));
    }
    if (data.containsKey('accessControllerName')) {
      final l$accessControllerName = data['accessControllerName'];
      result$data['accessControllerName'] = l$accessControllerName == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessControllerName as String));
    }
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = l$siteId == null
          ? null
          : fromJson$Enum$SortEnumType((l$siteId as String));
    }
    if (data.containsKey('siteName')) {
      final l$siteName = data['siteName'];
      result$data['siteName'] = l$siteName == null
          ? null
          : fromJson$Enum$SortEnumType((l$siteName as String));
    }
    if (data.containsKey('doorExternalId')) {
      final l$doorExternalId = data['doorExternalId'];
      result$data['doorExternalId'] = l$doorExternalId == null
          ? null
          : fromJson$Enum$SortEnumType((l$doorExternalId as String));
    }
    if (data.containsKey('doorName')) {
      final l$doorName = data['doorName'];
      result$data['doorName'] = l$doorName == null
          ? null
          : fromJson$Enum$SortEnumType((l$doorName as String));
    }
    if (data.containsKey('priorityConfigId')) {
      final l$priorityConfigId = data['priorityConfigId'];
      result$data['priorityConfigId'] = l$priorityConfigId == null
          ? null
          : fromJson$Enum$SortEnumType((l$priorityConfigId as String));
    }
    if (data.containsKey('priorityConfigName')) {
      final l$priorityConfigName = data['priorityConfigName'];
      result$data['priorityConfigName'] = l$priorityConfigName == null
          ? null
          : fromJson$Enum$SortEnumType((l$priorityConfigName as String));
    }
    if (data.containsKey('defaultPriority')) {
      final l$defaultPriority = data['defaultPriority'];
      result$data['defaultPriority'] = l$defaultPriority == null
          ? null
          : fromJson$Enum$SortEnumType((l$defaultPriority as String));
    }
    if (data.containsKey('scheduleConfigId')) {
      final l$scheduleConfigId = data['scheduleConfigId'];
      result$data['scheduleConfigId'] = l$scheduleConfigId == null
          ? null
          : fromJson$Enum$SortEnumType((l$scheduleConfigId as String));
    }
    if (data.containsKey('scheduleConfigName')) {
      final l$scheduleConfigName = data['scheduleConfigName'];
      result$data['scheduleConfigName'] = l$scheduleConfigName == null
          ? null
          : fromJson$Enum$SortEnumType((l$scheduleConfigName as String));
    }
    return Input$DoorSearchIndexResultSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get accessControllerId =>
      (_$data['accessControllerId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessControllerName =>
      (_$data['accessControllerName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get siteId => (_$data['siteId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get siteName => (_$data['siteName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get doorExternalId =>
      (_$data['doorExternalId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get doorName => (_$data['doorName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get priorityConfigId =>
      (_$data['priorityConfigId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get priorityConfigName =>
      (_$data['priorityConfigName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get defaultPriority =>
      (_$data['defaultPriority'] as Enum$SortEnumType?);

  Enum$SortEnumType? get scheduleConfigId =>
      (_$data['scheduleConfigId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get scheduleConfigName =>
      (_$data['scheduleConfigName'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : toJson$Enum$SortEnumType(l$accessControllerId);
    }
    if (_$data.containsKey('accessControllerName')) {
      final l$accessControllerName = accessControllerName;
      result$data['accessControllerName'] = l$accessControllerName == null
          ? null
          : toJson$Enum$SortEnumType(l$accessControllerName);
    }
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId == null
          ? null
          : toJson$Enum$SortEnumType(l$siteId);
    }
    if (_$data.containsKey('siteName')) {
      final l$siteName = siteName;
      result$data['siteName'] = l$siteName == null
          ? null
          : toJson$Enum$SortEnumType(l$siteName);
    }
    if (_$data.containsKey('doorExternalId')) {
      final l$doorExternalId = doorExternalId;
      result$data['doorExternalId'] = l$doorExternalId == null
          ? null
          : toJson$Enum$SortEnumType(l$doorExternalId);
    }
    if (_$data.containsKey('doorName')) {
      final l$doorName = doorName;
      result$data['doorName'] = l$doorName == null
          ? null
          : toJson$Enum$SortEnumType(l$doorName);
    }
    if (_$data.containsKey('priorityConfigId')) {
      final l$priorityConfigId = priorityConfigId;
      result$data['priorityConfigId'] = l$priorityConfigId == null
          ? null
          : toJson$Enum$SortEnumType(l$priorityConfigId);
    }
    if (_$data.containsKey('priorityConfigName')) {
      final l$priorityConfigName = priorityConfigName;
      result$data['priorityConfigName'] = l$priorityConfigName == null
          ? null
          : toJson$Enum$SortEnumType(l$priorityConfigName);
    }
    if (_$data.containsKey('defaultPriority')) {
      final l$defaultPriority = defaultPriority;
      result$data['defaultPriority'] = l$defaultPriority == null
          ? null
          : toJson$Enum$SortEnumType(l$defaultPriority);
    }
    if (_$data.containsKey('scheduleConfigId')) {
      final l$scheduleConfigId = scheduleConfigId;
      result$data['scheduleConfigId'] = l$scheduleConfigId == null
          ? null
          : toJson$Enum$SortEnumType(l$scheduleConfigId);
    }
    if (_$data.containsKey('scheduleConfigName')) {
      final l$scheduleConfigName = scheduleConfigName;
      result$data['scheduleConfigName'] = l$scheduleConfigName == null
          ? null
          : toJson$Enum$SortEnumType(l$scheduleConfigName);
    }
    return result$data;
  }

  CopyWith$Input$DoorSearchIndexResultSortInput<
    Input$DoorSearchIndexResultSortInput
  >
  get copyWith => CopyWith$Input$DoorSearchIndexResultSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DoorSearchIndexResultSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$accessControllerName = accessControllerName;
    final lOther$accessControllerName = other.accessControllerName;
    if (_$data.containsKey('accessControllerName') !=
        other._$data.containsKey('accessControllerName')) {
      return false;
    }
    if (l$accessControllerName != lOther$accessControllerName) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$siteName = siteName;
    final lOther$siteName = other.siteName;
    if (_$data.containsKey('siteName') !=
        other._$data.containsKey('siteName')) {
      return false;
    }
    if (l$siteName != lOther$siteName) {
      return false;
    }
    final l$doorExternalId = doorExternalId;
    final lOther$doorExternalId = other.doorExternalId;
    if (_$data.containsKey('doorExternalId') !=
        other._$data.containsKey('doorExternalId')) {
      return false;
    }
    if (l$doorExternalId != lOther$doorExternalId) {
      return false;
    }
    final l$doorName = doorName;
    final lOther$doorName = other.doorName;
    if (_$data.containsKey('doorName') !=
        other._$data.containsKey('doorName')) {
      return false;
    }
    if (l$doorName != lOther$doorName) {
      return false;
    }
    final l$priorityConfigId = priorityConfigId;
    final lOther$priorityConfigId = other.priorityConfigId;
    if (_$data.containsKey('priorityConfigId') !=
        other._$data.containsKey('priorityConfigId')) {
      return false;
    }
    if (l$priorityConfigId != lOther$priorityConfigId) {
      return false;
    }
    final l$priorityConfigName = priorityConfigName;
    final lOther$priorityConfigName = other.priorityConfigName;
    if (_$data.containsKey('priorityConfigName') !=
        other._$data.containsKey('priorityConfigName')) {
      return false;
    }
    if (l$priorityConfigName != lOther$priorityConfigName) {
      return false;
    }
    final l$defaultPriority = defaultPriority;
    final lOther$defaultPriority = other.defaultPriority;
    if (_$data.containsKey('defaultPriority') !=
        other._$data.containsKey('defaultPriority')) {
      return false;
    }
    if (l$defaultPriority != lOther$defaultPriority) {
      return false;
    }
    final l$scheduleConfigId = scheduleConfigId;
    final lOther$scheduleConfigId = other.scheduleConfigId;
    if (_$data.containsKey('scheduleConfigId') !=
        other._$data.containsKey('scheduleConfigId')) {
      return false;
    }
    if (l$scheduleConfigId != lOther$scheduleConfigId) {
      return false;
    }
    final l$scheduleConfigName = scheduleConfigName;
    final lOther$scheduleConfigName = other.scheduleConfigName;
    if (_$data.containsKey('scheduleConfigName') !=
        other._$data.containsKey('scheduleConfigName')) {
      return false;
    }
    if (l$scheduleConfigName != lOther$scheduleConfigName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessControllerId = accessControllerId;
    final l$accessControllerName = accessControllerName;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$doorExternalId = doorExternalId;
    final l$doorName = doorName;
    final l$priorityConfigId = priorityConfigId;
    final l$priorityConfigName = priorityConfigName;
    final l$defaultPriority = defaultPriority;
    final l$scheduleConfigId = scheduleConfigId;
    final l$scheduleConfigName = scheduleConfigName;
    return Object.hashAll([
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('accessControllerName')
          ? l$accessControllerName
          : const {},
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('siteName') ? l$siteName : const {},
      _$data.containsKey('doorExternalId') ? l$doorExternalId : const {},
      _$data.containsKey('doorName') ? l$doorName : const {},
      _$data.containsKey('priorityConfigId') ? l$priorityConfigId : const {},
      _$data.containsKey('priorityConfigName')
          ? l$priorityConfigName
          : const {},
      _$data.containsKey('defaultPriority') ? l$defaultPriority : const {},
      _$data.containsKey('scheduleConfigId') ? l$scheduleConfigId : const {},
      _$data.containsKey('scheduleConfigName')
          ? l$scheduleConfigName
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$DoorSearchIndexResultSortInput<TRes> {
  factory CopyWith$Input$DoorSearchIndexResultSortInput(
    Input$DoorSearchIndexResultSortInput instance,
    TRes Function(Input$DoorSearchIndexResultSortInput) then,
  ) = _CopyWithImpl$Input$DoorSearchIndexResultSortInput;

  factory CopyWith$Input$DoorSearchIndexResultSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DoorSearchIndexResultSortInput;

  TRes call({
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? accessControllerName,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? doorExternalId,
    Enum$SortEnumType? doorName,
    Enum$SortEnumType? priorityConfigId,
    Enum$SortEnumType? priorityConfigName,
    Enum$SortEnumType? defaultPriority,
    Enum$SortEnumType? scheduleConfigId,
    Enum$SortEnumType? scheduleConfigName,
  });
}

class _CopyWithImpl$Input$DoorSearchIndexResultSortInput<TRes>
    implements CopyWith$Input$DoorSearchIndexResultSortInput<TRes> {
  _CopyWithImpl$Input$DoorSearchIndexResultSortInput(
    this._instance,
    this._then,
  );

  final Input$DoorSearchIndexResultSortInput _instance;

  final TRes Function(Input$DoorSearchIndexResultSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessControllerId = _undefined,
    Object? accessControllerName = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? doorExternalId = _undefined,
    Object? doorName = _undefined,
    Object? priorityConfigId = _undefined,
    Object? priorityConfigName = _undefined,
    Object? defaultPriority = _undefined,
    Object? scheduleConfigId = _undefined,
    Object? scheduleConfigName = _undefined,
  }) => _then(
    Input$DoorSearchIndexResultSortInput._({
      ..._instance._$data,
      if (accessControllerId != _undefined)
        'accessControllerId': (accessControllerId as Enum$SortEnumType?),
      if (accessControllerName != _undefined)
        'accessControllerName': (accessControllerName as Enum$SortEnumType?),
      if (siteId != _undefined) 'siteId': (siteId as Enum$SortEnumType?),
      if (siteName != _undefined) 'siteName': (siteName as Enum$SortEnumType?),
      if (doorExternalId != _undefined)
        'doorExternalId': (doorExternalId as Enum$SortEnumType?),
      if (doorName != _undefined) 'doorName': (doorName as Enum$SortEnumType?),
      if (priorityConfigId != _undefined)
        'priorityConfigId': (priorityConfigId as Enum$SortEnumType?),
      if (priorityConfigName != _undefined)
        'priorityConfigName': (priorityConfigName as Enum$SortEnumType?),
      if (defaultPriority != _undefined)
        'defaultPriority': (defaultPriority as Enum$SortEnumType?),
      if (scheduleConfigId != _undefined)
        'scheduleConfigId': (scheduleConfigId as Enum$SortEnumType?),
      if (scheduleConfigName != _undefined)
        'scheduleConfigName': (scheduleConfigName as Enum$SortEnumType?),
    }),
  );
}

class _CopyWithStubImpl$Input$DoorSearchIndexResultSortInput<TRes>
    implements CopyWith$Input$DoorSearchIndexResultSortInput<TRes> {
  _CopyWithStubImpl$Input$DoorSearchIndexResultSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? accessControllerName,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? doorExternalId,
    Enum$SortEnumType? doorName,
    Enum$SortEnumType? priorityConfigId,
    Enum$SortEnumType? priorityConfigName,
    Enum$SortEnumType? defaultPriority,
    Enum$SortEnumType? scheduleConfigId,
    Enum$SortEnumType? scheduleConfigName,
  }) => _res;
}

class Input$EmailMessageInput {
  factory Input$EmailMessageInput({
    required List<String> to,
    required String subject,
    required String messageBody,
    required String from,
    List<String>? cc,
    List<String>? bcc,
    required bool isHtmlMessageBody,
  }) => Input$EmailMessageInput._({
    r'to': to,
    r'subject': subject,
    r'messageBody': messageBody,
    r'from': from,
    if (cc != null) r'cc': cc,
    if (bcc != null) r'bcc': bcc,
    r'isHtmlMessageBody': isHtmlMessageBody,
  });

  Input$EmailMessageInput._(this._$data);

  factory Input$EmailMessageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$to = data['to'];
    result$data['to'] = (l$to as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$subject = data['subject'];
    result$data['subject'] = (l$subject as String);
    final l$messageBody = data['messageBody'];
    result$data['messageBody'] = (l$messageBody as String);
    final l$from = data['from'];
    result$data['from'] = (l$from as String);
    if (data.containsKey('cc')) {
      final l$cc = data['cc'];
      result$data['cc'] = (l$cc as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('bcc')) {
      final l$bcc = data['bcc'];
      result$data['bcc'] = (l$bcc as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    final l$isHtmlMessageBody = data['isHtmlMessageBody'];
    result$data['isHtmlMessageBody'] = (l$isHtmlMessageBody as bool);
    return Input$EmailMessageInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get to => (_$data['to'] as List<String>);

  String get subject => (_$data['subject'] as String);

  String get messageBody => (_$data['messageBody'] as String);

  String get from => (_$data['from'] as String);

  List<String>? get cc => (_$data['cc'] as List<String>?);

  List<String>? get bcc => (_$data['bcc'] as List<String>?);

  bool get isHtmlMessageBody => (_$data['isHtmlMessageBody'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$to = to;
    result$data['to'] = l$to.map((e) => e).toList();
    final l$subject = subject;
    result$data['subject'] = l$subject;
    final l$messageBody = messageBody;
    result$data['messageBody'] = l$messageBody;
    final l$from = from;
    result$data['from'] = l$from;
    if (_$data.containsKey('cc')) {
      final l$cc = cc;
      result$data['cc'] = l$cc?.map((e) => e).toList();
    }
    if (_$data.containsKey('bcc')) {
      final l$bcc = bcc;
      result$data['bcc'] = l$bcc?.map((e) => e).toList();
    }
    final l$isHtmlMessageBody = isHtmlMessageBody;
    result$data['isHtmlMessageBody'] = l$isHtmlMessageBody;
    return result$data;
  }

  CopyWith$Input$EmailMessageInput<Input$EmailMessageInput> get copyWith =>
      CopyWith$Input$EmailMessageInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$EmailMessageInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (l$to.length != lOther$to.length) {
      return false;
    }
    for (int i = 0; i < l$to.length; i++) {
      final l$to$entry = l$to[i];
      final lOther$to$entry = lOther$to[i];
      if (l$to$entry != lOther$to$entry) {
        return false;
      }
    }
    final l$subject = subject;
    final lOther$subject = other.subject;
    if (l$subject != lOther$subject) {
      return false;
    }
    final l$messageBody = messageBody;
    final lOther$messageBody = other.messageBody;
    if (l$messageBody != lOther$messageBody) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) {
      return false;
    }
    final l$cc = cc;
    final lOther$cc = other.cc;
    if (_$data.containsKey('cc') != other._$data.containsKey('cc')) {
      return false;
    }
    if (l$cc != null && lOther$cc != null) {
      if (l$cc.length != lOther$cc.length) {
        return false;
      }
      for (int i = 0; i < l$cc.length; i++) {
        final l$cc$entry = l$cc[i];
        final lOther$cc$entry = lOther$cc[i];
        if (l$cc$entry != lOther$cc$entry) {
          return false;
        }
      }
    } else if (l$cc != lOther$cc) {
      return false;
    }
    final l$bcc = bcc;
    final lOther$bcc = other.bcc;
    if (_$data.containsKey('bcc') != other._$data.containsKey('bcc')) {
      return false;
    }
    if (l$bcc != null && lOther$bcc != null) {
      if (l$bcc.length != lOther$bcc.length) {
        return false;
      }
      for (int i = 0; i < l$bcc.length; i++) {
        final l$bcc$entry = l$bcc[i];
        final lOther$bcc$entry = lOther$bcc[i];
        if (l$bcc$entry != lOther$bcc$entry) {
          return false;
        }
      }
    } else if (l$bcc != lOther$bcc) {
      return false;
    }
    final l$isHtmlMessageBody = isHtmlMessageBody;
    final lOther$isHtmlMessageBody = other.isHtmlMessageBody;
    if (l$isHtmlMessageBody != lOther$isHtmlMessageBody) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$to = to;
    final l$subject = subject;
    final l$messageBody = messageBody;
    final l$from = from;
    final l$cc = cc;
    final l$bcc = bcc;
    final l$isHtmlMessageBody = isHtmlMessageBody;
    return Object.hashAll([
      Object.hashAll(l$to.map((v) => v)),
      l$subject,
      l$messageBody,
      l$from,
      _$data.containsKey('cc')
          ? l$cc == null
                ? null
                : Object.hashAll(l$cc.map((v) => v))
          : const {},
      _$data.containsKey('bcc')
          ? l$bcc == null
                ? null
                : Object.hashAll(l$bcc.map((v) => v))
          : const {},
      l$isHtmlMessageBody,
    ]);
  }
}

abstract class CopyWith$Input$EmailMessageInput<TRes> {
  factory CopyWith$Input$EmailMessageInput(
    Input$EmailMessageInput instance,
    TRes Function(Input$EmailMessageInput) then,
  ) = _CopyWithImpl$Input$EmailMessageInput;

  factory CopyWith$Input$EmailMessageInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EmailMessageInput;

  TRes call({
    List<String>? to,
    String? subject,
    String? messageBody,
    String? from,
    List<String>? cc,
    List<String>? bcc,
    bool? isHtmlMessageBody,
  });
}

class _CopyWithImpl$Input$EmailMessageInput<TRes>
    implements CopyWith$Input$EmailMessageInput<TRes> {
  _CopyWithImpl$Input$EmailMessageInput(this._instance, this._then);

  final Input$EmailMessageInput _instance;

  final TRes Function(Input$EmailMessageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? to = _undefined,
    Object? subject = _undefined,
    Object? messageBody = _undefined,
    Object? from = _undefined,
    Object? cc = _undefined,
    Object? bcc = _undefined,
    Object? isHtmlMessageBody = _undefined,
  }) => _then(
    Input$EmailMessageInput._({
      ..._instance._$data,
      if (to != _undefined && to != null) 'to': (to as List<String>),
      if (subject != _undefined && subject != null)
        'subject': (subject as String),
      if (messageBody != _undefined && messageBody != null)
        'messageBody': (messageBody as String),
      if (from != _undefined && from != null) 'from': (from as String),
      if (cc != _undefined) 'cc': (cc as List<String>?),
      if (bcc != _undefined) 'bcc': (bcc as List<String>?),
      if (isHtmlMessageBody != _undefined && isHtmlMessageBody != null)
        'isHtmlMessageBody': (isHtmlMessageBody as bool),
    }),
  );
}

class _CopyWithStubImpl$Input$EmailMessageInput<TRes>
    implements CopyWith$Input$EmailMessageInput<TRes> {
  _CopyWithStubImpl$Input$EmailMessageInput(this._res);

  TRes _res;

  call({
    List<String>? to,
    String? subject,
    String? messageBody,
    String? from,
    List<String>? cc,
    List<String>? bcc,
    bool? isHtmlMessageBody,
  }) => _res;
}

class Input$GroupFilterInput {
  factory Input$GroupFilterInput({
    List<Input$GroupFilterInput>? and,
    List<Input$GroupFilterInput>? or,
    Input$StringOperationFilterInput? azureId,
    Input$StringOperationFilterInput? name,
    Input$ListStringOperationFilterInput? users,
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput?
    accessPoints,
    Input$DateTimeOperationFilterInput? lastUpdatedFromAzureAdOn,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  }) => Input$GroupFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (azureId != null) r'azureId': azureId,
    if (name != null) r'name': name,
    if (users != null) r'users': users,
    if (accessPoints != null) r'accessPoints': accessPoints,
    if (lastUpdatedFromAzureAdOn != null)
      r'lastUpdatedFromAzureAdOn': lastUpdatedFromAzureAdOn,
    if (createdOn != null) r'createdOn': createdOn,
    if (createdBy != null) r'createdBy': createdBy,
    if (id != null) r'id': id,
    if (active != null) r'active': active,
    if (modifiedOn != null) r'modifiedOn': modifiedOn,
    if (modifiedBy != null) r'modifiedBy': modifiedBy,
  });

  Input$GroupFilterInput._(this._$data);

  factory Input$GroupFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$GroupFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$GroupFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('azureId')) {
      final l$azureId = data['azureId'];
      result$data['azureId'] = l$azureId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$azureId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('users')) {
      final l$users = data['users'];
      result$data['users'] = l$users == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$users as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessPoints')) {
      final l$accessPoints = data['accessPoints'];
      result$data['accessPoints'] = l$accessPoints == null
          ? null
          : Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput.fromJson(
              (l$accessPoints as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastUpdatedFromAzureAdOn')) {
      final l$lastUpdatedFromAzureAdOn = data['lastUpdatedFromAzureAdOn'];
      result$data['lastUpdatedFromAzureAdOn'] =
          l$lastUpdatedFromAzureAdOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$lastUpdatedFromAzureAdOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$createdOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$createdBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>),
            );
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>),
            );
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$modifiedOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$modifiedBy as Map<String, dynamic>),
            );
    }
    return Input$GroupFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$GroupFilterInput>? get and =>
      (_$data['and'] as List<Input$GroupFilterInput>?);

  List<Input$GroupFilterInput>? get or =>
      (_$data['or'] as List<Input$GroupFilterInput>?);

  Input$StringOperationFilterInput? get azureId =>
      (_$data['azureId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$ListStringOperationFilterInput? get users =>
      (_$data['users'] as Input$ListStringOperationFilterInput?);

  Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput?
  get accessPoints =>
      (_$data['accessPoints']
          as Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput?);

  Input$DateTimeOperationFilterInput? get lastUpdatedFromAzureAdOn =>
      (_$data['lastUpdatedFromAzureAdOn']
          as Input$DateTimeOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get createdOn =>
      (_$data['createdOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get createdBy =>
      (_$data['createdBy'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get modifiedOn =>
      (_$data['modifiedOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get modifiedBy =>
      (_$data['modifiedBy'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('azureId')) {
      final l$azureId = azureId;
      result$data['azureId'] = l$azureId?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('users')) {
      final l$users = users;
      result$data['users'] = l$users?.toJson();
    }
    if (_$data.containsKey('accessPoints')) {
      final l$accessPoints = accessPoints;
      result$data['accessPoints'] = l$accessPoints?.toJson();
    }
    if (_$data.containsKey('lastUpdatedFromAzureAdOn')) {
      final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
      result$data['lastUpdatedFromAzureAdOn'] = l$lastUpdatedFromAzureAdOn
          ?.toJson();
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn?.toJson();
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$GroupFilterInput<Input$GroupFilterInput> get copyWith =>
      CopyWith$Input$GroupFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GroupFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (_$data.containsKey('azureId') != other._$data.containsKey('azureId')) {
      return false;
    }
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (_$data.containsKey('users') != other._$data.containsKey('users')) {
      return false;
    }
    if (l$users != lOther$users) {
      return false;
    }
    final l$accessPoints = accessPoints;
    final lOther$accessPoints = other.accessPoints;
    if (_$data.containsKey('accessPoints') !=
        other._$data.containsKey('accessPoints')) {
      return false;
    }
    if (l$accessPoints != lOther$accessPoints) {
      return false;
    }
    final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
    final lOther$lastUpdatedFromAzureAdOn = other.lastUpdatedFromAzureAdOn;
    if (_$data.containsKey('lastUpdatedFromAzureAdOn') !=
        other._$data.containsKey('lastUpdatedFromAzureAdOn')) {
      return false;
    }
    if (l$lastUpdatedFromAzureAdOn != lOther$lastUpdatedFromAzureAdOn) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$azureId = azureId;
    final l$name = name;
    final l$users = users;
    final l$accessPoints = accessPoints;
    final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$active = active;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('azureId') ? l$azureId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('users') ? l$users : const {},
      _$data.containsKey('accessPoints') ? l$accessPoints : const {},
      _$data.containsKey('lastUpdatedFromAzureAdOn')
          ? l$lastUpdatedFromAzureAdOn
          : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$GroupFilterInput<TRes> {
  factory CopyWith$Input$GroupFilterInput(
    Input$GroupFilterInput instance,
    TRes Function(Input$GroupFilterInput) then,
  ) = _CopyWithImpl$Input$GroupFilterInput;

  factory CopyWith$Input$GroupFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupFilterInput;

  TRes call({
    List<Input$GroupFilterInput>? and,
    List<Input$GroupFilterInput>? or,
    Input$StringOperationFilterInput? azureId,
    Input$StringOperationFilterInput? name,
    Input$ListStringOperationFilterInput? users,
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput?
    accessPoints,
    Input$DateTimeOperationFilterInput? lastUpdatedFromAzureAdOn,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  });
  TRes and(
    Iterable<Input$GroupFilterInput>? Function(
      Iterable<CopyWith$Input$GroupFilterInput<Input$GroupFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$GroupFilterInput>? Function(
      Iterable<CopyWith$Input$GroupFilterInput<Input$GroupFilterInput>>?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get azureId;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get users;
  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput<
    TRes
  >
  get accessPoints;
  CopyWith$Input$DateTimeOperationFilterInput<TRes>
  get lastUpdatedFromAzureAdOn;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy;
}

class _CopyWithImpl$Input$GroupFilterInput<TRes>
    implements CopyWith$Input$GroupFilterInput<TRes> {
  _CopyWithImpl$Input$GroupFilterInput(this._instance, this._then);

  final Input$GroupFilterInput _instance;

  final TRes Function(Input$GroupFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? users = _undefined,
    Object? accessPoints = _undefined,
    Object? lastUpdatedFromAzureAdOn = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
  }) => _then(
    Input$GroupFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input$GroupFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input$GroupFilterInput>?),
      if (azureId != _undefined)
        'azureId': (azureId as Input$StringOperationFilterInput?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (users != _undefined)
        'users': (users as Input$ListStringOperationFilterInput?),
      if (accessPoints != _undefined)
        'accessPoints':
            (accessPoints
                as Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput?),
      if (lastUpdatedFromAzureAdOn != _undefined)
        'lastUpdatedFromAzureAdOn':
            (lastUpdatedFromAzureAdOn as Input$DateTimeOperationFilterInput?),
      if (createdOn != _undefined)
        'createdOn': (createdOn as Input$DateTimeOperationFilterInput?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Input$StringOperationFilterInput?),
      if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
      if (active != _undefined)
        'active': (active as Input$BooleanOperationFilterInput?),
      if (modifiedOn != _undefined)
        'modifiedOn': (modifiedOn as Input$DateTimeOperationFilterInput?),
      if (modifiedBy != _undefined)
        'modifiedBy': (modifiedBy as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$GroupFilterInput>? Function(
      Iterable<CopyWith$Input$GroupFilterInput<Input$GroupFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith$Input$GroupFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$GroupFilterInput>? Function(
      Iterable<CopyWith$Input$GroupFilterInput<Input$GroupFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith$Input$GroupFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get azureId {
    final local$azureId = _instance.azureId;
    return local$azureId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$azureId,
            (e) => call(azureId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get users {
    final local$users = _instance.users;
    return local$users == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$users,
            (e) => call(users: e),
          );
  }

  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput<
    TRes
  >
  get accessPoints {
    final local$accessPoints = _instance.accessPoints;
    return local$accessPoints == null
        ? CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput(
            local$accessPoints,
            (e) => call(accessPoints: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes>
  get lastUpdatedFromAzureAdOn {
    final local$lastUpdatedFromAzureAdOn = _instance.lastUpdatedFromAzureAdOn;
    return local$lastUpdatedFromAzureAdOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$lastUpdatedFromAzureAdOn,
            (e) => call(lastUpdatedFromAzureAdOn: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn {
    final local$createdOn = _instance.createdOn;
    return local$createdOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$createdOn,
            (e) => call(createdOn: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$createdBy,
            (e) => call(createdBy: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id,
            (e) => call(id: e),
          );
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active,
            (e) => call(active: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn {
    final local$modifiedOn = _instance.modifiedOn;
    return local$modifiedOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$modifiedOn,
            (e) => call(modifiedOn: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy {
    final local$modifiedBy = _instance.modifiedBy;
    return local$modifiedBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$modifiedBy,
            (e) => call(modifiedBy: e),
          );
  }
}

class _CopyWithStubImpl$Input$GroupFilterInput<TRes>
    implements CopyWith$Input$GroupFilterInput<TRes> {
  _CopyWithStubImpl$Input$GroupFilterInput(this._res);

  TRes _res;

  call({
    List<Input$GroupFilterInput>? and,
    List<Input$GroupFilterInput>? or,
    Input$StringOperationFilterInput? azureId,
    Input$StringOperationFilterInput? name,
    Input$ListStringOperationFilterInput? users,
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput?
    accessPoints,
    Input$DateTimeOperationFilterInput? lastUpdatedFromAzureAdOn,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get azureId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get users =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput<
    TRes
  >
  get accessPoints =>
      CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput.stub(
        _res,
      );

  CopyWith$Input$DateTimeOperationFilterInput<TRes>
  get lastUpdatedFromAzureAdOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$GroupSortInput {
  factory Input$GroupSortInput({
    Enum$SortEnumType? azureId,
    Enum$SortEnumType? name,
    Enum$SortEnumType? lastUpdatedFromAzureAdOn,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  }) => Input$GroupSortInput._({
    if (azureId != null) r'azureId': azureId,
    if (name != null) r'name': name,
    if (lastUpdatedFromAzureAdOn != null)
      r'lastUpdatedFromAzureAdOn': lastUpdatedFromAzureAdOn,
    if (createdOn != null) r'createdOn': createdOn,
    if (createdBy != null) r'createdBy': createdBy,
    if (id != null) r'id': id,
    if (active != null) r'active': active,
    if (modifiedOn != null) r'modifiedOn': modifiedOn,
    if (modifiedBy != null) r'modifiedBy': modifiedBy,
  });

  Input$GroupSortInput._(this._$data);

  factory Input$GroupSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('azureId')) {
      final l$azureId = data['azureId'];
      result$data['azureId'] = l$azureId == null
          ? null
          : fromJson$Enum$SortEnumType((l$azureId as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('lastUpdatedFromAzureAdOn')) {
      final l$lastUpdatedFromAzureAdOn = data['lastUpdatedFromAzureAdOn'];
      result$data['lastUpdatedFromAzureAdOn'] =
          l$lastUpdatedFromAzureAdOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$lastUpdatedFromAzureAdOn as String));
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdOn as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdBy as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedOn as String));
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedBy as String));
    }
    return Input$GroupSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get azureId => (_$data['azureId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get lastUpdatedFromAzureAdOn =>
      (_$data['lastUpdatedFromAzureAdOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdOn =>
      (_$data['createdOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdBy =>
      (_$data['createdBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedOn =>
      (_$data['modifiedOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedBy =>
      (_$data['modifiedBy'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('azureId')) {
      final l$azureId = azureId;
      result$data['azureId'] = l$azureId == null
          ? null
          : toJson$Enum$SortEnumType(l$azureId);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null
          ? null
          : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('lastUpdatedFromAzureAdOn')) {
      final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
      result$data['lastUpdatedFromAzureAdOn'] =
          l$lastUpdatedFromAzureAdOn == null
          ? null
          : toJson$Enum$SortEnumType(l$lastUpdatedFromAzureAdOn);
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn == null
          ? null
          : toJson$Enum$SortEnumType(l$createdOn);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy == null
          ? null
          : toJson$Enum$SortEnumType(l$createdBy);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active == null
          ? null
          : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : toJson$Enum$SortEnumType(l$modifiedOn);
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : toJson$Enum$SortEnumType(l$modifiedBy);
    }
    return result$data;
  }

  CopyWith$Input$GroupSortInput<Input$GroupSortInput> get copyWith =>
      CopyWith$Input$GroupSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GroupSortInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (_$data.containsKey('azureId') != other._$data.containsKey('azureId')) {
      return false;
    }
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
    final lOther$lastUpdatedFromAzureAdOn = other.lastUpdatedFromAzureAdOn;
    if (_$data.containsKey('lastUpdatedFromAzureAdOn') !=
        other._$data.containsKey('lastUpdatedFromAzureAdOn')) {
      return false;
    }
    if (l$lastUpdatedFromAzureAdOn != lOther$lastUpdatedFromAzureAdOn) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$azureId = azureId;
    final l$name = name;
    final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$active = active;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    return Object.hashAll([
      _$data.containsKey('azureId') ? l$azureId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('lastUpdatedFromAzureAdOn')
          ? l$lastUpdatedFromAzureAdOn
          : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$GroupSortInput<TRes> {
  factory CopyWith$Input$GroupSortInput(
    Input$GroupSortInput instance,
    TRes Function(Input$GroupSortInput) then,
  ) = _CopyWithImpl$Input$GroupSortInput;

  factory CopyWith$Input$GroupSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupSortInput;

  TRes call({
    Enum$SortEnumType? azureId,
    Enum$SortEnumType? name,
    Enum$SortEnumType? lastUpdatedFromAzureAdOn,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  });
}

class _CopyWithImpl$Input$GroupSortInput<TRes>
    implements CopyWith$Input$GroupSortInput<TRes> {
  _CopyWithImpl$Input$GroupSortInput(this._instance, this._then);

  final Input$GroupSortInput _instance;

  final TRes Function(Input$GroupSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? lastUpdatedFromAzureAdOn = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
  }) => _then(
    Input$GroupSortInput._({
      ..._instance._$data,
      if (azureId != _undefined) 'azureId': (azureId as Enum$SortEnumType?),
      if (name != _undefined) 'name': (name as Enum$SortEnumType?),
      if (lastUpdatedFromAzureAdOn != _undefined)
        'lastUpdatedFromAzureAdOn':
            (lastUpdatedFromAzureAdOn as Enum$SortEnumType?),
      if (createdOn != _undefined)
        'createdOn': (createdOn as Enum$SortEnumType?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Enum$SortEnumType?),
      if (id != _undefined) 'id': (id as Enum$SortEnumType?),
      if (active != _undefined) 'active': (active as Enum$SortEnumType?),
      if (modifiedOn != _undefined)
        'modifiedOn': (modifiedOn as Enum$SortEnumType?),
      if (modifiedBy != _undefined)
        'modifiedBy': (modifiedBy as Enum$SortEnumType?),
    }),
  );
}

class _CopyWithStubImpl$Input$GroupSortInput<TRes>
    implements CopyWith$Input$GroupSortInput<TRes> {
  _CopyWithStubImpl$Input$GroupSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? azureId,
    Enum$SortEnumType? name,
    Enum$SortEnumType? lastUpdatedFromAzureAdOn,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  }) => _res;
}

class Input$HotspotInput {
  factory Input$HotspotInput({
    required String id,
    required String name,
    required double x,
    required double y,
    required String status,
    String? accessPointId,
    required int orderIndex,
  }) => Input$HotspotInput._({
    r'id': id,
    r'name': name,
    r'x': x,
    r'y': y,
    r'status': status,
    if (accessPointId != null) r'accessPointId': accessPointId,
    r'orderIndex': orderIndex,
  });

  Input$HotspotInput._(this._$data);

  factory Input$HotspotInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$x = data['x'];
    result$data['x'] = (l$x as num).toDouble();
    final l$y = data['y'];
    result$data['y'] = (l$y as num).toDouble();
    final l$status = data['status'];
    result$data['status'] = (l$status as String);
    if (data.containsKey('accessPointId')) {
      final l$accessPointId = data['accessPointId'];
      result$data['accessPointId'] = (l$accessPointId as String?);
    }
    final l$orderIndex = data['orderIndex'];
    result$data['orderIndex'] = (l$orderIndex as int);
    return Input$HotspotInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get name => (_$data['name'] as String);

  double get x => (_$data['x'] as double);

  double get y => (_$data['y'] as double);

  String get status => (_$data['status'] as String);

  String? get accessPointId => (_$data['accessPointId'] as String?);

  int get orderIndex => (_$data['orderIndex'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$x = x;
    result$data['x'] = l$x;
    final l$y = y;
    result$data['y'] = l$y;
    final l$status = status;
    result$data['status'] = l$status;
    if (_$data.containsKey('accessPointId')) {
      final l$accessPointId = accessPointId;
      result$data['accessPointId'] = l$accessPointId;
    }
    final l$orderIndex = orderIndex;
    result$data['orderIndex'] = l$orderIndex;
    return result$data;
  }

  CopyWith$Input$HotspotInput<Input$HotspotInput> get copyWith =>
      CopyWith$Input$HotspotInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$HotspotInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$x = x;
    final lOther$x = other.x;
    if (l$x != lOther$x) {
      return false;
    }
    final l$y = y;
    final lOther$y = other.y;
    if (l$y != lOther$y) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (_$data.containsKey('accessPointId') !=
        other._$data.containsKey('accessPointId')) {
      return false;
    }
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$orderIndex = orderIndex;
    final lOther$orderIndex = other.orderIndex;
    if (l$orderIndex != lOther$orderIndex) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$x = x;
    final l$y = y;
    final l$status = status;
    final l$accessPointId = accessPointId;
    final l$orderIndex = orderIndex;
    return Object.hashAll([
      l$id,
      l$name,
      l$x,
      l$y,
      l$status,
      _$data.containsKey('accessPointId') ? l$accessPointId : const {},
      l$orderIndex,
    ]);
  }
}

abstract class CopyWith$Input$HotspotInput<TRes> {
  factory CopyWith$Input$HotspotInput(
    Input$HotspotInput instance,
    TRes Function(Input$HotspotInput) then,
  ) = _CopyWithImpl$Input$HotspotInput;

  factory CopyWith$Input$HotspotInput.stub(TRes res) =
      _CopyWithStubImpl$Input$HotspotInput;

  TRes call({
    String? id,
    String? name,
    double? x,
    double? y,
    String? status,
    String? accessPointId,
    int? orderIndex,
  });
}

class _CopyWithImpl$Input$HotspotInput<TRes>
    implements CopyWith$Input$HotspotInput<TRes> {
  _CopyWithImpl$Input$HotspotInput(this._instance, this._then);

  final Input$HotspotInput _instance;

  final TRes Function(Input$HotspotInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? x = _undefined,
    Object? y = _undefined,
    Object? status = _undefined,
    Object? accessPointId = _undefined,
    Object? orderIndex = _undefined,
  }) => _then(
    Input$HotspotInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (name != _undefined && name != null) 'name': (name as String),
      if (x != _undefined && x != null) 'x': (x as double),
      if (y != _undefined && y != null) 'y': (y as double),
      if (status != _undefined && status != null) 'status': (status as String),
      if (accessPointId != _undefined)
        'accessPointId': (accessPointId as String?),
      if (orderIndex != _undefined && orderIndex != null)
        'orderIndex': (orderIndex as int),
    }),
  );
}

class _CopyWithStubImpl$Input$HotspotInput<TRes>
    implements CopyWith$Input$HotspotInput<TRes> {
  _CopyWithStubImpl$Input$HotspotInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    double? x,
    double? y,
    String? status,
    String? accessPointId,
    int? orderIndex,
  }) => _res;
}

class Input$KeyValuePairOfStringAndAccessProfileFilterInput {
  factory Input$KeyValuePairOfStringAndAccessProfileFilterInput({
    List<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? and,
    List<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? or,
    Input$StringOperationFilterInput? key,
    Input$AccessProfileFilterInput? value,
  }) => Input$KeyValuePairOfStringAndAccessProfileFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (key != null) r'key': key,
    if (value != null) r'value': value,
  });

  Input$KeyValuePairOfStringAndAccessProfileFilterInput._(this._$data);

  factory Input$KeyValuePairOfStringAndAccessProfileFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input$KeyValuePairOfStringAndAccessProfileFilterInput.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input$KeyValuePairOfStringAndAccessProfileFilterInput.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList();
    }
    if (data.containsKey('key')) {
      final l$key = data['key'];
      result$data['key'] = l$key == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$key as Map<String, dynamic>),
            );
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$AccessProfileFilterInput.fromJson(
              (l$value as Map<String, dynamic>),
            );
    }
    return Input$KeyValuePairOfStringAndAccessProfileFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? get and =>
      (_$data['and']
          as List<Input$KeyValuePairOfStringAndAccessProfileFilterInput>?);

  List<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? get or =>
      (_$data['or']
          as List<Input$KeyValuePairOfStringAndAccessProfileFilterInput>?);

  Input$StringOperationFilterInput? get key =>
      (_$data['key'] as Input$StringOperationFilterInput?);

  Input$AccessProfileFilterInput? get value =>
      (_$data['value'] as Input$AccessProfileFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('key')) {
      final l$key = key;
      result$data['key'] = l$key?.toJson();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<
    Input$KeyValuePairOfStringAndAccessProfileFilterInput
  >
  get copyWith =>
      CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$KeyValuePairOfStringAndAccessProfileFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (_$data.containsKey('key') != other._$data.containsKey('key')) {
      return false;
    }
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$key = key;
    final l$value = value;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('key') ? l$key : const {},
      _$data.containsKey('value') ? l$value : const {},
    ]);
  }
}

abstract class CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<
  TRes
> {
  factory CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput(
    Input$KeyValuePairOfStringAndAccessProfileFilterInput instance,
    TRes Function(Input$KeyValuePairOfStringAndAccessProfileFilterInput) then,
  ) = _CopyWithImpl$Input$KeyValuePairOfStringAndAccessProfileFilterInput;

  factory CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$KeyValuePairOfStringAndAccessProfileFilterInput;

  TRes call({
    List<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? and,
    List<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? or,
    Input$StringOperationFilterInput? key,
    Input$AccessProfileFilterInput? value,
  });
  TRes and(
    Iterable<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? Function(
      Iterable<
        CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<
          Input$KeyValuePairOfStringAndAccessProfileFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? Function(
      Iterable<
        CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<
          Input$KeyValuePairOfStringAndAccessProfileFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get key;
  CopyWith$Input$AccessProfileFilterInput<TRes> get value;
}

class _CopyWithImpl$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes>
    implements
        CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes> {
  _CopyWithImpl$Input$KeyValuePairOfStringAndAccessProfileFilterInput(
    this._instance,
    this._then,
  );

  final Input$KeyValuePairOfStringAndAccessProfileFilterInput _instance;

  final TRes Function(Input$KeyValuePairOfStringAndAccessProfileFilterInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? key = _undefined,
    Object? value = _undefined,
  }) => _then(
    Input$KeyValuePairOfStringAndAccessProfileFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and':
            (and
                as List<
                  Input$KeyValuePairOfStringAndAccessProfileFilterInput
                >?),
      if (or != _undefined)
        'or':
            (or
                as List<
                  Input$KeyValuePairOfStringAndAccessProfileFilterInput
                >?),
      if (key != _undefined) 'key': (key as Input$StringOperationFilterInput?),
      if (value != _undefined)
        'value': (value as Input$AccessProfileFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? Function(
      Iterable<
        CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<
          Input$KeyValuePairOfStringAndAccessProfileFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? Function(
      Iterable<
        CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<
          Input$KeyValuePairOfStringAndAccessProfileFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get key {
    final local$key = _instance.key;
    return local$key == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$key,
            (e) => call(key: e),
          );
  }

  CopyWith$Input$AccessProfileFilterInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$AccessProfileFilterInput.stub(_then(_instance))
        : CopyWith$Input$AccessProfileFilterInput(
            local$value,
            (e) => call(value: e),
          );
  }
}

class _CopyWithStubImpl$Input$KeyValuePairOfStringAndAccessProfileFilterInput<
  TRes
>
    implements
        CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes> {
  _CopyWithStubImpl$Input$KeyValuePairOfStringAndAccessProfileFilterInput(
    this._res,
  );

  TRes _res;

  call({
    List<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? and,
    List<Input$KeyValuePairOfStringAndAccessProfileFilterInput>? or,
    Input$StringOperationFilterInput? key,
    Input$AccessProfileFilterInput? value,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get key =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$AccessProfileFilterInput<TRes> get value =>
      CopyWith$Input$AccessProfileFilterInput.stub(_res);
}

class Input$LatLongFilterInput {
  factory Input$LatLongFilterInput({
    List<Input$LatLongFilterInput>? and,
    List<Input$LatLongFilterInput>? or,
    Input$DecimalOperationFilterInput? latitude,
    Input$DecimalOperationFilterInput? longitude,
  }) => Input$LatLongFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (latitude != null) r'latitude': latitude,
    if (longitude != null) r'longitude': longitude,
  });

  Input$LatLongFilterInput._(this._$data);

  factory Input$LatLongFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input$LatLongFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input$LatLongFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = l$latitude == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$latitude as Map<String, dynamic>),
            );
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = l$longitude == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$longitude as Map<String, dynamic>),
            );
    }
    return Input$LatLongFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$LatLongFilterInput>? get and =>
      (_$data['and'] as List<Input$LatLongFilterInput>?);

  List<Input$LatLongFilterInput>? get or =>
      (_$data['or'] as List<Input$LatLongFilterInput>?);

  Input$DecimalOperationFilterInput? get latitude =>
      (_$data['latitude'] as Input$DecimalOperationFilterInput?);

  Input$DecimalOperationFilterInput? get longitude =>
      (_$data['longitude'] as Input$DecimalOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] = l$latitude?.toJson();
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] = l$longitude?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$LatLongFilterInput<Input$LatLongFilterInput> get copyWith =>
      CopyWith$Input$LatLongFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LatLongFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$latitude = latitude;
    final l$longitude = longitude;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
    ]);
  }
}

abstract class CopyWith$Input$LatLongFilterInput<TRes> {
  factory CopyWith$Input$LatLongFilterInput(
    Input$LatLongFilterInput instance,
    TRes Function(Input$LatLongFilterInput) then,
  ) = _CopyWithImpl$Input$LatLongFilterInput;

  factory CopyWith$Input$LatLongFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LatLongFilterInput;

  TRes call({
    List<Input$LatLongFilterInput>? and,
    List<Input$LatLongFilterInput>? or,
    Input$DecimalOperationFilterInput? latitude,
    Input$DecimalOperationFilterInput? longitude,
  });
  TRes and(
    Iterable<Input$LatLongFilterInput>? Function(
      Iterable<CopyWith$Input$LatLongFilterInput<Input$LatLongFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$LatLongFilterInput>? Function(
      Iterable<CopyWith$Input$LatLongFilterInput<Input$LatLongFilterInput>>?,
    )
    _fn,
  );
  CopyWith$Input$DecimalOperationFilterInput<TRes> get latitude;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get longitude;
}

class _CopyWithImpl$Input$LatLongFilterInput<TRes>
    implements CopyWith$Input$LatLongFilterInput<TRes> {
  _CopyWithImpl$Input$LatLongFilterInput(this._instance, this._then);

  final Input$LatLongFilterInput _instance;

  final TRes Function(Input$LatLongFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? latitude = _undefined,
    Object? longitude = _undefined,
  }) => _then(
    Input$LatLongFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input$LatLongFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input$LatLongFilterInput>?),
      if (latitude != _undefined)
        'latitude': (latitude as Input$DecimalOperationFilterInput?),
      if (longitude != _undefined)
        'longitude': (longitude as Input$DecimalOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$LatLongFilterInput>? Function(
      Iterable<CopyWith$Input$LatLongFilterInput<Input$LatLongFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith$Input$LatLongFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$LatLongFilterInput>? Function(
      Iterable<CopyWith$Input$LatLongFilterInput<Input$LatLongFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith$Input$LatLongFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith$Input$DecimalOperationFilterInput<TRes> get latitude {
    final local$latitude = _instance.latitude;
    return local$latitude == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$latitude,
            (e) => call(latitude: e),
          );
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get longitude {
    final local$longitude = _instance.longitude;
    return local$longitude == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$longitude,
            (e) => call(longitude: e),
          );
  }
}

class _CopyWithStubImpl$Input$LatLongFilterInput<TRes>
    implements CopyWith$Input$LatLongFilterInput<TRes> {
  _CopyWithStubImpl$Input$LatLongFilterInput(this._res);

  TRes _res;

  call({
    List<Input$LatLongFilterInput>? and,
    List<Input$LatLongFilterInput>? or,
    Input$DecimalOperationFilterInput? latitude,
    Input$DecimalOperationFilterInput? longitude,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$DecimalOperationFilterInput<TRes> get latitude =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get longitude =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);
}

class Input$LatLongSortInput {
  factory Input$LatLongSortInput({
    Enum$SortEnumType? latitude,
    Enum$SortEnumType? longitude,
  }) => Input$LatLongSortInput._({
    if (latitude != null) r'latitude': latitude,
    if (longitude != null) r'longitude': longitude,
  });

  Input$LatLongSortInput._(this._$data);

  factory Input$LatLongSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = l$latitude == null
          ? null
          : fromJson$Enum$SortEnumType((l$latitude as String));
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = l$longitude == null
          ? null
          : fromJson$Enum$SortEnumType((l$longitude as String));
    }
    return Input$LatLongSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get latitude => (_$data['latitude'] as Enum$SortEnumType?);

  Enum$SortEnumType? get longitude =>
      (_$data['longitude'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] = l$latitude == null
          ? null
          : toJson$Enum$SortEnumType(l$latitude);
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] = l$longitude == null
          ? null
          : toJson$Enum$SortEnumType(l$longitude);
    }
    return result$data;
  }

  CopyWith$Input$LatLongSortInput<Input$LatLongSortInput> get copyWith =>
      CopyWith$Input$LatLongSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LatLongSortInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    return Object.hashAll([
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
    ]);
  }
}

abstract class CopyWith$Input$LatLongSortInput<TRes> {
  factory CopyWith$Input$LatLongSortInput(
    Input$LatLongSortInput instance,
    TRes Function(Input$LatLongSortInput) then,
  ) = _CopyWithImpl$Input$LatLongSortInput;

  factory CopyWith$Input$LatLongSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LatLongSortInput;

  TRes call({Enum$SortEnumType? latitude, Enum$SortEnumType? longitude});
}

class _CopyWithImpl$Input$LatLongSortInput<TRes>
    implements CopyWith$Input$LatLongSortInput<TRes> {
  _CopyWithImpl$Input$LatLongSortInput(this._instance, this._then);

  final Input$LatLongSortInput _instance;

  final TRes Function(Input$LatLongSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? latitude = _undefined, Object? longitude = _undefined}) =>
      _then(
        Input$LatLongSortInput._({
          ..._instance._$data,
          if (latitude != _undefined)
            'latitude': (latitude as Enum$SortEnumType?),
          if (longitude != _undefined)
            'longitude': (longitude as Enum$SortEnumType?),
        }),
      );
}

class _CopyWithStubImpl$Input$LatLongSortInput<TRes>
    implements CopyWith$Input$LatLongSortInput<TRes> {
  _CopyWithStubImpl$Input$LatLongSortInput(this._res);

  TRes _res;

  call({Enum$SortEnumType? latitude, Enum$SortEnumType? longitude}) => _res;
}

class Input$ListFilterInputTypeOfAttributeItemFilterInput {
  factory Input$ListFilterInputTypeOfAttributeItemFilterInput({
    Input$AttributeItemFilterInput? all,
    Input$AttributeItemFilterInput? none,
    Input$AttributeItemFilterInput? some,
    bool? any,
  }) => Input$ListFilterInputTypeOfAttributeItemFilterInput._({
    if (all != null) r'all': all,
    if (none != null) r'none': none,
    if (some != null) r'some': some,
    if (any != null) r'any': any,
  });

  Input$ListFilterInputTypeOfAttributeItemFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfAttributeItemFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$AttributeItemFilterInput.fromJson(
              (l$all as Map<String, dynamic>),
            );
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AttributeItemFilterInput.fromJson(
              (l$none as Map<String, dynamic>),
            );
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AttributeItemFilterInput.fromJson(
              (l$some as Map<String, dynamic>),
            );
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAttributeItemFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AttributeItemFilterInput? get all =>
      (_$data['all'] as Input$AttributeItemFilterInput?);

  Input$AttributeItemFilterInput? get none =>
      (_$data['none'] as Input$AttributeItemFilterInput?);

  Input$AttributeItemFilterInput? get some =>
      (_$data['some'] as Input$AttributeItemFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput<
    Input$ListFilterInputTypeOfAttributeItemFilterInput
  >
  get copyWith => CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfAttributeItemFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput<
  TRes
> {
  factory CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput(
    Input$ListFilterInputTypeOfAttributeItemFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfAttributeItemFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAttributeItemFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$ListFilterInputTypeOfAttributeItemFilterInput;

  TRes call({
    Input$AttributeItemFilterInput? all,
    Input$AttributeItemFilterInput? none,
    Input$AttributeItemFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AttributeItemFilterInput<TRes> get all;
  CopyWith$Input$AttributeItemFilterInput<TRes> get none;
  CopyWith$Input$AttributeItemFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAttributeItemFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAttributeItemFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAttributeItemFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfAttributeItemFilterInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) => _then(
    Input$ListFilterInputTypeOfAttributeItemFilterInput._({
      ..._instance._$data,
      if (all != _undefined) 'all': (all as Input$AttributeItemFilterInput?),
      if (none != _undefined) 'none': (none as Input$AttributeItemFilterInput?),
      if (some != _undefined) 'some': (some as Input$AttributeItemFilterInput?),
      if (any != _undefined) 'any': (any as bool?),
    }),
  );

  CopyWith$Input$AttributeItemFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$AttributeItemFilterInput.stub(_then(_instance))
        : CopyWith$Input$AttributeItemFilterInput(
            local$all,
            (e) => call(all: e),
          );
  }

  CopyWith$Input$AttributeItemFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AttributeItemFilterInput.stub(_then(_instance))
        : CopyWith$Input$AttributeItemFilterInput(
            local$none,
            (e) => call(none: e),
          );
  }

  CopyWith$Input$AttributeItemFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AttributeItemFilterInput.stub(_then(_instance))
        : CopyWith$Input$AttributeItemFilterInput(
            local$some,
            (e) => call(some: e),
          );
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAttributeItemFilterInput<
  TRes
>
    implements
        CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAttributeItemFilterInput(
    this._res,
  );

  TRes _res;

  call({
    Input$AttributeItemFilterInput? all,
    Input$AttributeItemFilterInput? none,
    Input$AttributeItemFilterInput? some,
    bool? any,
  }) => _res;

  CopyWith$Input$AttributeItemFilterInput<TRes> get all =>
      CopyWith$Input$AttributeItemFilterInput.stub(_res);

  CopyWith$Input$AttributeItemFilterInput<TRes> get none =>
      CopyWith$Input$AttributeItemFilterInput.stub(_res);

  CopyWith$Input$AttributeItemFilterInput<TRes> get some =>
      CopyWith$Input$AttributeItemFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfDoorFilterInput {
  factory Input$ListFilterInputTypeOfDoorFilterInput({
    Input$DoorFilterInput? all,
    Input$DoorFilterInput? none,
    Input$DoorFilterInput? some,
    bool? any,
  }) => Input$ListFilterInputTypeOfDoorFilterInput._({
    if (all != null) r'all': all,
    if (none != null) r'none': none,
    if (some != null) r'some': some,
    if (any != null) r'any': any,
  });

  Input$ListFilterInputTypeOfDoorFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfDoorFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$DoorFilterInput.fromJson((l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$DoorFilterInput.fromJson((l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$DoorFilterInput.fromJson((l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfDoorFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DoorFilterInput? get all => (_$data['all'] as Input$DoorFilterInput?);

  Input$DoorFilterInput? get none => (_$data['none'] as Input$DoorFilterInput?);

  Input$DoorFilterInput? get some => (_$data['some'] as Input$DoorFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfDoorFilterInput<
    Input$ListFilterInputTypeOfDoorFilterInput
  >
  get copyWith =>
      CopyWith$Input$ListFilterInputTypeOfDoorFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfDoorFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfDoorFilterInput<TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfDoorFilterInput(
    Input$ListFilterInputTypeOfDoorFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfDoorFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfDoorFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfDoorFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorFilterInput;

  TRes call({
    Input$DoorFilterInput? all,
    Input$DoorFilterInput? none,
    Input$DoorFilterInput? some,
    bool? any,
  });
  CopyWith$Input$DoorFilterInput<TRes> get all;
  CopyWith$Input$DoorFilterInput<TRes> get none;
  CopyWith$Input$DoorFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfDoorFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfDoorFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfDoorFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfDoorFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfDoorFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) => _then(
    Input$ListFilterInputTypeOfDoorFilterInput._({
      ..._instance._$data,
      if (all != _undefined) 'all': (all as Input$DoorFilterInput?),
      if (none != _undefined) 'none': (none as Input$DoorFilterInput?),
      if (some != _undefined) 'some': (some as Input$DoorFilterInput?),
      if (any != _undefined) 'any': (any as bool?),
    }),
  );

  CopyWith$Input$DoorFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$DoorFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorFilterInput(local$all, (e) => call(all: e));
  }

  CopyWith$Input$DoorFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$DoorFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorFilterInput(local$none, (e) => call(none: e));
  }

  CopyWith$Input$DoorFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$DoorFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorFilterInput(local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfDoorFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorFilterInput(this._res);

  TRes _res;

  call({
    Input$DoorFilterInput? all,
    Input$DoorFilterInput? none,
    Input$DoorFilterInput? some,
    bool? any,
  }) => _res;

  CopyWith$Input$DoorFilterInput<TRes> get all =>
      CopyWith$Input$DoorFilterInput.stub(_res);

  CopyWith$Input$DoorFilterInput<TRes> get none =>
      CopyWith$Input$DoorFilterInput.stub(_res);

  CopyWith$Input$DoorFilterInput<TRes> get some =>
      CopyWith$Input$DoorFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfDoorPriorityActionFilterInput {
  factory Input$ListFilterInputTypeOfDoorPriorityActionFilterInput({
    Input$DoorPriorityActionFilterInput? all,
    Input$DoorPriorityActionFilterInput? none,
    Input$DoorPriorityActionFilterInput? some,
    bool? any,
  }) => Input$ListFilterInputTypeOfDoorPriorityActionFilterInput._({
    if (all != null) r'all': all,
    if (none != null) r'none': none,
    if (some != null) r'some': some,
    if (any != null) r'any': any,
  });

  Input$ListFilterInputTypeOfDoorPriorityActionFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfDoorPriorityActionFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$DoorPriorityActionFilterInput.fromJson(
              (l$all as Map<String, dynamic>),
            );
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$DoorPriorityActionFilterInput.fromJson(
              (l$none as Map<String, dynamic>),
            );
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$DoorPriorityActionFilterInput.fromJson(
              (l$some as Map<String, dynamic>),
            );
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfDoorPriorityActionFilterInput._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Input$DoorPriorityActionFilterInput? get all =>
      (_$data['all'] as Input$DoorPriorityActionFilterInput?);

  Input$DoorPriorityActionFilterInput? get none =>
      (_$data['none'] as Input$DoorPriorityActionFilterInput?);

  Input$DoorPriorityActionFilterInput? get some =>
      (_$data['some'] as Input$DoorPriorityActionFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput<
    Input$ListFilterInputTypeOfDoorPriorityActionFilterInput
  >
  get copyWith =>
      CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfDoorPriorityActionFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput<
  TRes
> {
  factory CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput(
    Input$ListFilterInputTypeOfDoorPriorityActionFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfDoorPriorityActionFilterInput)
    then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput;

  TRes call({
    Input$DoorPriorityActionFilterInput? all,
    Input$DoorPriorityActionFilterInput? none,
    Input$DoorPriorityActionFilterInput? some,
    bool? any,
  });
  CopyWith$Input$DoorPriorityActionFilterInput<TRes> get all;
  CopyWith$Input$DoorPriorityActionFilterInput<TRes> get none;
  CopyWith$Input$DoorPriorityActionFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput<
  TRes
>
    implements
        CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput<
          TRes
        > {
  _CopyWithImpl$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfDoorPriorityActionFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfDoorPriorityActionFilterInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) => _then(
    Input$ListFilterInputTypeOfDoorPriorityActionFilterInput._({
      ..._instance._$data,
      if (all != _undefined)
        'all': (all as Input$DoorPriorityActionFilterInput?),
      if (none != _undefined)
        'none': (none as Input$DoorPriorityActionFilterInput?),
      if (some != _undefined)
        'some': (some as Input$DoorPriorityActionFilterInput?),
      if (any != _undefined) 'any': (any as bool?),
    }),
  );

  CopyWith$Input$DoorPriorityActionFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$DoorPriorityActionFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorPriorityActionFilterInput(
            local$all,
            (e) => call(all: e),
          );
  }

  CopyWith$Input$DoorPriorityActionFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$DoorPriorityActionFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorPriorityActionFilterInput(
            local$none,
            (e) => call(none: e),
          );
  }

  CopyWith$Input$DoorPriorityActionFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$DoorPriorityActionFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorPriorityActionFilterInput(
            local$some,
            (e) => call(some: e),
          );
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput<
  TRes
>
    implements
        CopyWith$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput<
          TRes
        > {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorPriorityActionFilterInput(
    this._res,
  );

  TRes _res;

  call({
    Input$DoorPriorityActionFilterInput? all,
    Input$DoorPriorityActionFilterInput? none,
    Input$DoorPriorityActionFilterInput? some,
    bool? any,
  }) => _res;

  CopyWith$Input$DoorPriorityActionFilterInput<TRes> get all =>
      CopyWith$Input$DoorPriorityActionFilterInput.stub(_res);

  CopyWith$Input$DoorPriorityActionFilterInput<TRes> get none =>
      CopyWith$Input$DoorPriorityActionFilterInput.stub(_res);

  CopyWith$Input$DoorPriorityActionFilterInput<TRes> get some =>
      CopyWith$Input$DoorPriorityActionFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfDoorScheduleItemFilterInput {
  factory Input$ListFilterInputTypeOfDoorScheduleItemFilterInput({
    Input$DoorScheduleItemFilterInput? all,
    Input$DoorScheduleItemFilterInput? none,
    Input$DoorScheduleItemFilterInput? some,
    bool? any,
  }) => Input$ListFilterInputTypeOfDoorScheduleItemFilterInput._({
    if (all != null) r'all': all,
    if (none != null) r'none': none,
    if (some != null) r'some': some,
    if (any != null) r'any': any,
  });

  Input$ListFilterInputTypeOfDoorScheduleItemFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfDoorScheduleItemFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$DoorScheduleItemFilterInput.fromJson(
              (l$all as Map<String, dynamic>),
            );
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$DoorScheduleItemFilterInput.fromJson(
              (l$none as Map<String, dynamic>),
            );
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$DoorScheduleItemFilterInput.fromJson(
              (l$some as Map<String, dynamic>),
            );
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfDoorScheduleItemFilterInput._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Input$DoorScheduleItemFilterInput? get all =>
      (_$data['all'] as Input$DoorScheduleItemFilterInput?);

  Input$DoorScheduleItemFilterInput? get none =>
      (_$data['none'] as Input$DoorScheduleItemFilterInput?);

  Input$DoorScheduleItemFilterInput? get some =>
      (_$data['some'] as Input$DoorScheduleItemFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput<
    Input$ListFilterInputTypeOfDoorScheduleItemFilterInput
  >
  get copyWith =>
      CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfDoorScheduleItemFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput<
  TRes
> {
  factory CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput(
    Input$ListFilterInputTypeOfDoorScheduleItemFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfDoorScheduleItemFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput;

  TRes call({
    Input$DoorScheduleItemFilterInput? all,
    Input$DoorScheduleItemFilterInput? none,
    Input$DoorScheduleItemFilterInput? some,
    bool? any,
  });
  CopyWith$Input$DoorScheduleItemFilterInput<TRes> get all;
  CopyWith$Input$DoorScheduleItemFilterInput<TRes> get none;
  CopyWith$Input$DoorScheduleItemFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfDoorScheduleItemFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfDoorScheduleItemFilterInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) => _then(
    Input$ListFilterInputTypeOfDoorScheduleItemFilterInput._({
      ..._instance._$data,
      if (all != _undefined) 'all': (all as Input$DoorScheduleItemFilterInput?),
      if (none != _undefined)
        'none': (none as Input$DoorScheduleItemFilterInput?),
      if (some != _undefined)
        'some': (some as Input$DoorScheduleItemFilterInput?),
      if (any != _undefined) 'any': (any as bool?),
    }),
  );

  CopyWith$Input$DoorScheduleItemFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$DoorScheduleItemFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorScheduleItemFilterInput(
            local$all,
            (e) => call(all: e),
          );
  }

  CopyWith$Input$DoorScheduleItemFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$DoorScheduleItemFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorScheduleItemFilterInput(
            local$none,
            (e) => call(none: e),
          );
  }

  CopyWith$Input$DoorScheduleItemFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$DoorScheduleItemFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorScheduleItemFilterInput(
            local$some,
            (e) => call(some: e),
          );
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput<
  TRes
>
    implements
        CopyWith$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorScheduleItemFilterInput(
    this._res,
  );

  TRes _res;

  call({
    Input$DoorScheduleItemFilterInput? all,
    Input$DoorScheduleItemFilterInput? none,
    Input$DoorScheduleItemFilterInput? some,
    bool? any,
  }) => _res;

  CopyWith$Input$DoorScheduleItemFilterInput<TRes> get all =>
      CopyWith$Input$DoorScheduleItemFilterInput.stub(_res);

  CopyWith$Input$DoorScheduleItemFilterInput<TRes> get none =>
      CopyWith$Input$DoorScheduleItemFilterInput.stub(_res);

  CopyWith$Input$DoorScheduleItemFilterInput<TRes> get some =>
      CopyWith$Input$DoorScheduleItemFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfDoorScheduledStateFilterInput {
  factory Input$ListFilterInputTypeOfDoorScheduledStateFilterInput({
    Input$DoorScheduledStateFilterInput? all,
    Input$DoorScheduledStateFilterInput? none,
    Input$DoorScheduledStateFilterInput? some,
    bool? any,
  }) => Input$ListFilterInputTypeOfDoorScheduledStateFilterInput._({
    if (all != null) r'all': all,
    if (none != null) r'none': none,
    if (some != null) r'some': some,
    if (any != null) r'any': any,
  });

  Input$ListFilterInputTypeOfDoorScheduledStateFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfDoorScheduledStateFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$DoorScheduledStateFilterInput.fromJson(
              (l$all as Map<String, dynamic>),
            );
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$DoorScheduledStateFilterInput.fromJson(
              (l$none as Map<String, dynamic>),
            );
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$DoorScheduledStateFilterInput.fromJson(
              (l$some as Map<String, dynamic>),
            );
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfDoorScheduledStateFilterInput._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Input$DoorScheduledStateFilterInput? get all =>
      (_$data['all'] as Input$DoorScheduledStateFilterInput?);

  Input$DoorScheduledStateFilterInput? get none =>
      (_$data['none'] as Input$DoorScheduledStateFilterInput?);

  Input$DoorScheduledStateFilterInput? get some =>
      (_$data['some'] as Input$DoorScheduledStateFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput<
    Input$ListFilterInputTypeOfDoorScheduledStateFilterInput
  >
  get copyWith =>
      CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfDoorScheduledStateFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput<
  TRes
> {
  factory CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput(
    Input$ListFilterInputTypeOfDoorScheduledStateFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfDoorScheduledStateFilterInput)
    then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput;

  TRes call({
    Input$DoorScheduledStateFilterInput? all,
    Input$DoorScheduledStateFilterInput? none,
    Input$DoorScheduledStateFilterInput? some,
    bool? any,
  });
  CopyWith$Input$DoorScheduledStateFilterInput<TRes> get all;
  CopyWith$Input$DoorScheduledStateFilterInput<TRes> get none;
  CopyWith$Input$DoorScheduledStateFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput<
  TRes
>
    implements
        CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput<
          TRes
        > {
  _CopyWithImpl$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfDoorScheduledStateFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfDoorScheduledStateFilterInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) => _then(
    Input$ListFilterInputTypeOfDoorScheduledStateFilterInput._({
      ..._instance._$data,
      if (all != _undefined)
        'all': (all as Input$DoorScheduledStateFilterInput?),
      if (none != _undefined)
        'none': (none as Input$DoorScheduledStateFilterInput?),
      if (some != _undefined)
        'some': (some as Input$DoorScheduledStateFilterInput?),
      if (any != _undefined) 'any': (any as bool?),
    }),
  );

  CopyWith$Input$DoorScheduledStateFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$DoorScheduledStateFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorScheduledStateFilterInput(
            local$all,
            (e) => call(all: e),
          );
  }

  CopyWith$Input$DoorScheduledStateFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$DoorScheduledStateFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorScheduledStateFilterInput(
            local$none,
            (e) => call(none: e),
          );
  }

  CopyWith$Input$DoorScheduledStateFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$DoorScheduledStateFilterInput.stub(_then(_instance))
        : CopyWith$Input$DoorScheduledStateFilterInput(
            local$some,
            (e) => call(some: e),
          );
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput<
  TRes
>
    implements
        CopyWith$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput<
          TRes
        > {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfDoorScheduledStateFilterInput(
    this._res,
  );

  TRes _res;

  call({
    Input$DoorScheduledStateFilterInput? all,
    Input$DoorScheduledStateFilterInput? none,
    Input$DoorScheduledStateFilterInput? some,
    bool? any,
  }) => _res;

  CopyWith$Input$DoorScheduledStateFilterInput<TRes> get all =>
      CopyWith$Input$DoorScheduledStateFilterInput.stub(_res);

  CopyWith$Input$DoorScheduledStateFilterInput<TRes> get none =>
      CopyWith$Input$DoorScheduledStateFilterInput.stub(_res);

  CopyWith$Input$DoorScheduledStateFilterInput<TRes> get some =>
      CopyWith$Input$DoorScheduledStateFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput {
  factory Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput({
    Input$KeyValuePairOfStringAndAccessProfileFilterInput? all,
    Input$KeyValuePairOfStringAndAccessProfileFilterInput? none,
    Input$KeyValuePairOfStringAndAccessProfileFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput._(
        {
          if (all != null) r'all': all,
          if (none != null) r'none': none,
          if (some != null) r'some': some,
          if (any != null) r'any': any,
        },
      );

  Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput._(
    this._$data,
  );

  factory Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$KeyValuePairOfStringAndAccessProfileFilterInput.fromJson(
              (l$all as Map<String, dynamic>),
            );
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$KeyValuePairOfStringAndAccessProfileFilterInput.fromJson(
              (l$none as Map<String, dynamic>),
            );
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$KeyValuePairOfStringAndAccessProfileFilterInput.fromJson(
              (l$some as Map<String, dynamic>),
            );
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Input$KeyValuePairOfStringAndAccessProfileFilterInput? get all =>
      (_$data['all'] as Input$KeyValuePairOfStringAndAccessProfileFilterInput?);

  Input$KeyValuePairOfStringAndAccessProfileFilterInput? get none =>
      (_$data['none']
          as Input$KeyValuePairOfStringAndAccessProfileFilterInput?);

  Input$KeyValuePairOfStringAndAccessProfileFilterInput? get some =>
      (_$data['some']
          as Input$KeyValuePairOfStringAndAccessProfileFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput<
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput
  >
  get copyWith =>
      CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput<
  TRes
> {
  factory CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput(
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput
    instance,
    TRes Function(
      Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput,
    )
    then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput;

  TRes call({
    Input$KeyValuePairOfStringAndAccessProfileFilterInput? all,
    Input$KeyValuePairOfStringAndAccessProfileFilterInput? none,
    Input$KeyValuePairOfStringAndAccessProfileFilterInput? some,
    bool? any,
  });
  CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes> get all;
  CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes> get none;
  CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput<
  TRes
>
    implements
        CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput<
          TRes
        > {
  _CopyWithImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput
  _instance;

  final TRes Function(
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) => _then(
    Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput._(
      {
        ..._instance._$data,
        if (all != _undefined)
          'all':
              (all as Input$KeyValuePairOfStringAndAccessProfileFilterInput?),
        if (none != _undefined)
          'none':
              (none as Input$KeyValuePairOfStringAndAccessProfileFilterInput?),
        if (some != _undefined)
          'some':
              (some as Input$KeyValuePairOfStringAndAccessProfileFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      },
    ),
  );

  CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput(
            local$all,
            (e) => call(all: e),
          );
  }

  CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes>
  get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput(
            local$none,
            (e) => call(none: e),
          );
  }

  CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes>
  get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput(
            local$some,
            (e) => call(some: e),
          );
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput<
  TRes
>
    implements
        CopyWith$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput<
          TRes
        > {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfKeyValuePairOfStringAndAccessProfileFilterInput(
    this._res,
  );

  TRes _res;

  call({
    Input$KeyValuePairOfStringAndAccessProfileFilterInput? all,
    Input$KeyValuePairOfStringAndAccessProfileFilterInput? none,
    Input$KeyValuePairOfStringAndAccessProfileFilterInput? some,
    bool? any,
  }) => _res;

  CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes>
  get all =>
      CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput.stub(_res);

  CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes>
  get none =>
      CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput.stub(_res);

  CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput<TRes>
  get some =>
      CopyWith$Input$KeyValuePairOfStringAndAccessProfileFilterInput.stub(_res);
}

class Input$ListStringOperationFilterInput {
  factory Input$ListStringOperationFilterInput({
    Input$StringOperationFilterInput? all,
    Input$StringOperationFilterInput? none,
    Input$StringOperationFilterInput? some,
    bool? any,
  }) => Input$ListStringOperationFilterInput._({
    if (all != null) r'all': all,
    if (none != null) r'none': none,
    if (some != null) r'some': some,
    if (any != null) r'any': any,
  });

  Input$ListStringOperationFilterInput._(this._$data);

  factory Input$ListStringOperationFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$all as Map<String, dynamic>),
            );
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$none as Map<String, dynamic>),
            );
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$some as Map<String, dynamic>),
            );
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListStringOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringOperationFilterInput? get all =>
      (_$data['all'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get none =>
      (_$data['none'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get some =>
      (_$data['some'] as Input$StringOperationFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListStringOperationFilterInput<
    Input$ListStringOperationFilterInput
  >
  get copyWith => CopyWith$Input$ListStringOperationFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListStringOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListStringOperationFilterInput<TRes> {
  factory CopyWith$Input$ListStringOperationFilterInput(
    Input$ListStringOperationFilterInput instance,
    TRes Function(Input$ListStringOperationFilterInput) then,
  ) = _CopyWithImpl$Input$ListStringOperationFilterInput;

  factory CopyWith$Input$ListStringOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ListStringOperationFilterInput;

  TRes call({
    Input$StringOperationFilterInput? all,
    Input$StringOperationFilterInput? none,
    Input$StringOperationFilterInput? some,
    bool? any,
  });
  CopyWith$Input$StringOperationFilterInput<TRes> get all;
  CopyWith$Input$StringOperationFilterInput<TRes> get none;
  CopyWith$Input$StringOperationFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListStringOperationFilterInput<TRes>
    implements CopyWith$Input$ListStringOperationFilterInput<TRes> {
  _CopyWithImpl$Input$ListStringOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListStringOperationFilterInput _instance;

  final TRes Function(Input$ListStringOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) => _then(
    Input$ListStringOperationFilterInput._({
      ..._instance._$data,
      if (all != _undefined) 'all': (all as Input$StringOperationFilterInput?),
      if (none != _undefined)
        'none': (none as Input$StringOperationFilterInput?),
      if (some != _undefined)
        'some': (some as Input$StringOperationFilterInput?),
      if (any != _undefined) 'any': (any as bool?),
    }),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$all,
            (e) => call(all: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$none,
            (e) => call(none: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$some,
            (e) => call(some: e),
          );
  }
}

class _CopyWithStubImpl$Input$ListStringOperationFilterInput<TRes>
    implements CopyWith$Input$ListStringOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListStringOperationFilterInput(this._res);

  TRes _res;

  call({
    Input$StringOperationFilterInput? all,
    Input$StringOperationFilterInput? none,
    Input$StringOperationFilterInput? some,
    bool? any,
  }) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get all =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get none =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get some =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$LongOperationFilterInput {
  factory Input$LongOperationFilterInput({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) => Input$LongOperationFilterInput._({
    if (eq != null) r'eq': eq,
    if (neq != null) r'neq': neq,
    if ($in != null) r'in': $in,
    if (nin != null) r'nin': nin,
    if (gt != null) r'gt': gt,
    if (ngt != null) r'ngt': ngt,
    if (gte != null) r'gte': gte,
    if (ngte != null) r'ngte': ngte,
    if (lt != null) r'lt': lt,
    if (nlt != null) r'nlt': nlt,
    if (lte != null) r'lte': lte,
    if (nlte != null) r'nlte': nlte,
  });

  Input$LongOperationFilterInput._(this._$data);

  factory Input$LongOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as int?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as int?);
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as int?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as int?);
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as int?);
    }
    return Input$LongOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);

  int? get neq => (_$data['neq'] as int?);

  List<int?>? get $in => (_$data['in'] as List<int?>?);

  List<int?>? get nin => (_$data['nin'] as List<int?>?);

  int? get gt => (_$data['gt'] as int?);

  int? get ngt => (_$data['ngt'] as int?);

  int? get gte => (_$data['gte'] as int?);

  int? get ngte => (_$data['ngte'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get nlt => (_$data['nlt'] as int?);

  int? get lte => (_$data['lte'] as int?);

  int? get nlte => (_$data['nlte'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$LongOperationFilterInput<Input$LongOperationFilterInput>
  get copyWith => CopyWith$Input$LongOperationFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LongOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
                ? null
                : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$LongOperationFilterInput<TRes> {
  factory CopyWith$Input$LongOperationFilterInput(
    Input$LongOperationFilterInput instance,
    TRes Function(Input$LongOperationFilterInput) then,
  ) = _CopyWithImpl$Input$LongOperationFilterInput;

  factory CopyWith$Input$LongOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LongOperationFilterInput;

  TRes call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  });
}

class _CopyWithImpl$Input$LongOperationFilterInput<TRes>
    implements CopyWith$Input$LongOperationFilterInput<TRes> {
  _CopyWithImpl$Input$LongOperationFilterInput(this._instance, this._then);

  final Input$LongOperationFilterInput _instance;

  final TRes Function(Input$LongOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) => _then(
    Input$LongOperationFilterInput._({
      ..._instance._$data,
      if (eq != _undefined) 'eq': (eq as int?),
      if (neq != _undefined) 'neq': (neq as int?),
      if ($in != _undefined) 'in': ($in as List<int?>?),
      if (nin != _undefined) 'nin': (nin as List<int?>?),
      if (gt != _undefined) 'gt': (gt as int?),
      if (ngt != _undefined) 'ngt': (ngt as int?),
      if (gte != _undefined) 'gte': (gte as int?),
      if (ngte != _undefined) 'ngte': (ngte as int?),
      if (lt != _undefined) 'lt': (lt as int?),
      if (nlt != _undefined) 'nlt': (nlt as int?),
      if (lte != _undefined) 'lte': (lte as int?),
      if (nlte != _undefined) 'nlte': (nlte as int?),
    }),
  );
}

class _CopyWithStubImpl$Input$LongOperationFilterInput<TRes>
    implements CopyWith$Input$LongOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$LongOperationFilterInput(this._res);

  TRes _res;

  call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) => _res;
}

class Input$NotificationInput {
  factory Input$NotificationInput({
    required String id,
    required Enum$NotificationTypeEnum type,
    required String siteId,
    required String siteName,
    required String title,
    required String message,
    required Enum$NotificationSeverityEnum severity,
    required DateTime utcCreated,
  }) => Input$NotificationInput._({
    r'id': id,
    r'type': type,
    r'siteId': siteId,
    r'siteName': siteName,
    r'title': title,
    r'message': message,
    r'severity': severity,
    r'utcCreated': utcCreated,
  });

  Input$NotificationInput._(this._$data);

  factory Input$NotificationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$NotificationTypeEnum(
      (l$type as String),
    );
    final l$siteId = data['siteId'];
    result$data['siteId'] = (l$siteId as String);
    final l$siteName = data['siteName'];
    result$data['siteName'] = (l$siteName as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$message = data['message'];
    result$data['message'] = (l$message as String);
    final l$severity = data['severity'];
    result$data['severity'] = fromJson$Enum$NotificationSeverityEnum(
      (l$severity as String),
    );
    final l$utcCreated = data['utcCreated'];
    result$data['utcCreated'] = DateTime.parse((l$utcCreated as String));
    return Input$NotificationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Enum$NotificationTypeEnum get type =>
      (_$data['type'] as Enum$NotificationTypeEnum);

  String get siteId => (_$data['siteId'] as String);

  String get siteName => (_$data['siteName'] as String);

  String get title => (_$data['title'] as String);

  String get message => (_$data['message'] as String);

  Enum$NotificationSeverityEnum get severity =>
      (_$data['severity'] as Enum$NotificationSeverityEnum);

  DateTime get utcCreated => (_$data['utcCreated'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$type = type;
    result$data['type'] = toJson$Enum$NotificationTypeEnum(l$type);
    final l$siteId = siteId;
    result$data['siteId'] = l$siteId;
    final l$siteName = siteName;
    result$data['siteName'] = l$siteName;
    final l$title = title;
    result$data['title'] = l$title;
    final l$message = message;
    result$data['message'] = l$message;
    final l$severity = severity;
    result$data['severity'] = toJson$Enum$NotificationSeverityEnum(l$severity);
    final l$utcCreated = utcCreated;
    result$data['utcCreated'] = l$utcCreated.toIso8601String();
    return result$data;
  }

  CopyWith$Input$NotificationInput<Input$NotificationInput> get copyWith =>
      CopyWith$Input$NotificationInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NotificationInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$siteName = siteName;
    final lOther$siteName = other.siteName;
    if (l$siteName != lOther$siteName) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$severity = severity;
    final lOther$severity = other.severity;
    if (l$severity != lOther$severity) {
      return false;
    }
    final l$utcCreated = utcCreated;
    final lOther$utcCreated = other.utcCreated;
    if (l$utcCreated != lOther$utcCreated) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$title = title;
    final l$message = message;
    final l$severity = severity;
    final l$utcCreated = utcCreated;
    return Object.hashAll([
      l$id,
      l$type,
      l$siteId,
      l$siteName,
      l$title,
      l$message,
      l$severity,
      l$utcCreated,
    ]);
  }
}

abstract class CopyWith$Input$NotificationInput<TRes> {
  factory CopyWith$Input$NotificationInput(
    Input$NotificationInput instance,
    TRes Function(Input$NotificationInput) then,
  ) = _CopyWithImpl$Input$NotificationInput;

  factory CopyWith$Input$NotificationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NotificationInput;

  TRes call({
    String? id,
    Enum$NotificationTypeEnum? type,
    String? siteId,
    String? siteName,
    String? title,
    String? message,
    Enum$NotificationSeverityEnum? severity,
    DateTime? utcCreated,
  });
}

class _CopyWithImpl$Input$NotificationInput<TRes>
    implements CopyWith$Input$NotificationInput<TRes> {
  _CopyWithImpl$Input$NotificationInput(this._instance, this._then);

  final Input$NotificationInput _instance;

  final TRes Function(Input$NotificationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? title = _undefined,
    Object? message = _undefined,
    Object? severity = _undefined,
    Object? utcCreated = _undefined,
  }) => _then(
    Input$NotificationInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (type != _undefined && type != null)
        'type': (type as Enum$NotificationTypeEnum),
      if (siteId != _undefined && siteId != null) 'siteId': (siteId as String),
      if (siteName != _undefined && siteName != null)
        'siteName': (siteName as String),
      if (title != _undefined && title != null) 'title': (title as String),
      if (message != _undefined && message != null)
        'message': (message as String),
      if (severity != _undefined && severity != null)
        'severity': (severity as Enum$NotificationSeverityEnum),
      if (utcCreated != _undefined && utcCreated != null)
        'utcCreated': (utcCreated as DateTime),
    }),
  );
}

class _CopyWithStubImpl$Input$NotificationInput<TRes>
    implements CopyWith$Input$NotificationInput<TRes> {
  _CopyWithStubImpl$Input$NotificationInput(this._res);

  TRes _res;

  call({
    String? id,
    Enum$NotificationTypeEnum? type,
    String? siteId,
    String? siteName,
    String? title,
    String? message,
    Enum$NotificationSeverityEnum? severity,
    DateTime? utcCreated,
  }) => _res;
}

class Input$NullableOfSnapshotReasonEnumOperationFilterInput {
  factory Input$NullableOfSnapshotReasonEnumOperationFilterInput({
    Enum$SnapshotReasonEnum? eq,
    Enum$SnapshotReasonEnum? neq,
    List<Enum$SnapshotReasonEnum?>? $in,
    List<Enum$SnapshotReasonEnum?>? nin,
  }) => Input$NullableOfSnapshotReasonEnumOperationFilterInput._({
    if (eq != null) r'eq': eq,
    if (neq != null) r'neq': neq,
    if ($in != null) r'in': $in,
    if (nin != null) r'nin': nin,
  });

  Input$NullableOfSnapshotReasonEnumOperationFilterInput._(this._$data);

  factory Input$NullableOfSnapshotReasonEnumOperationFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null
          ? null
          : fromJson$Enum$SnapshotReasonEnum((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$SnapshotReasonEnum((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : fromJson$Enum$SnapshotReasonEnum((e as String)),
          )
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : fromJson$Enum$SnapshotReasonEnum((e as String)),
          )
          .toList();
    }
    return Input$NullableOfSnapshotReasonEnumOperationFilterInput._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Enum$SnapshotReasonEnum? get eq => (_$data['eq'] as Enum$SnapshotReasonEnum?);

  Enum$SnapshotReasonEnum? get neq =>
      (_$data['neq'] as Enum$SnapshotReasonEnum?);

  List<Enum$SnapshotReasonEnum?>? get $in =>
      (_$data['in'] as List<Enum$SnapshotReasonEnum?>?);

  List<Enum$SnapshotReasonEnum?>? get nin =>
      (_$data['nin'] as List<Enum$SnapshotReasonEnum?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null
          ? null
          : toJson$Enum$SnapshotReasonEnum(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq == null
          ? null
          : toJson$Enum$SnapshotReasonEnum(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in
          ?.map((e) => e == null ? null : toJson$Enum$SnapshotReasonEnum(e))
          .toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin
          ?.map((e) => e == null ? null : toJson$Enum$SnapshotReasonEnum(e))
          .toList();
    }
    return result$data;
  }

  CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput<
    Input$NullableOfSnapshotReasonEnumOperationFilterInput
  >
  get copyWith =>
      CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NullableOfSnapshotReasonEnumOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
                ? null
                : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput<
  TRes
> {
  factory CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput(
    Input$NullableOfSnapshotReasonEnumOperationFilterInput instance,
    TRes Function(Input$NullableOfSnapshotReasonEnumOperationFilterInput) then,
  ) = _CopyWithImpl$Input$NullableOfSnapshotReasonEnumOperationFilterInput;

  factory CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$NullableOfSnapshotReasonEnumOperationFilterInput;

  TRes call({
    Enum$SnapshotReasonEnum? eq,
    Enum$SnapshotReasonEnum? neq,
    List<Enum$SnapshotReasonEnum?>? $in,
    List<Enum$SnapshotReasonEnum?>? nin,
  });
}

class _CopyWithImpl$Input$NullableOfSnapshotReasonEnumOperationFilterInput<TRes>
    implements
        CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput<TRes> {
  _CopyWithImpl$Input$NullableOfSnapshotReasonEnumOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$NullableOfSnapshotReasonEnumOperationFilterInput _instance;

  final TRes Function(Input$NullableOfSnapshotReasonEnumOperationFilterInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) => _then(
    Input$NullableOfSnapshotReasonEnumOperationFilterInput._({
      ..._instance._$data,
      if (eq != _undefined) 'eq': (eq as Enum$SnapshotReasonEnum?),
      if (neq != _undefined) 'neq': (neq as Enum$SnapshotReasonEnum?),
      if ($in != _undefined) 'in': ($in as List<Enum$SnapshotReasonEnum?>?),
      if (nin != _undefined) 'nin': (nin as List<Enum$SnapshotReasonEnum?>?),
    }),
  );
}

class _CopyWithStubImpl$Input$NullableOfSnapshotReasonEnumOperationFilterInput<
  TRes
>
    implements
        CopyWith$Input$NullableOfSnapshotReasonEnumOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$NullableOfSnapshotReasonEnumOperationFilterInput(
    this._res,
  );

  TRes _res;

  call({
    Enum$SnapshotReasonEnum? eq,
    Enum$SnapshotReasonEnum? neq,
    List<Enum$SnapshotReasonEnum?>? $in,
    List<Enum$SnapshotReasonEnum?>? nin,
  }) => _res;
}

class Input$SaveAccessPointCameraInput {
  factory Input$SaveAccessPointCameraInput({
    required String accessPointId,
    required String cameraName,
    required String ipAddress,
    required String snapshotUrl,
    String? username,
    String? password,
    String? streamPath,
  }) => Input$SaveAccessPointCameraInput._({
    r'accessPointId': accessPointId,
    r'cameraName': cameraName,
    r'ipAddress': ipAddress,
    r'snapshotUrl': snapshotUrl,
    if (username != null) r'username': username,
    if (password != null) r'password': password,
    if (streamPath != null) r'streamPath': streamPath,
  });

  Input$SaveAccessPointCameraInput._(this._$data);

  factory Input$SaveAccessPointCameraInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accessPointId = data['accessPointId'];
    result$data['accessPointId'] = (l$accessPointId as String);
    final l$cameraName = data['cameraName'];
    result$data['cameraName'] = (l$cameraName as String);
    final l$ipAddress = data['ipAddress'];
    result$data['ipAddress'] = (l$ipAddress as String);
    final l$snapshotUrl = data['snapshotUrl'];
    result$data['snapshotUrl'] = (l$snapshotUrl as String);
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('streamPath')) {
      final l$streamPath = data['streamPath'];
      result$data['streamPath'] = (l$streamPath as String?);
    }
    return Input$SaveAccessPointCameraInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessPointId => (_$data['accessPointId'] as String);

  String get cameraName => (_$data['cameraName'] as String);

  String get ipAddress => (_$data['ipAddress'] as String);

  String get snapshotUrl => (_$data['snapshotUrl'] as String);

  String? get username => (_$data['username'] as String?);

  String? get password => (_$data['password'] as String?);

  String? get streamPath => (_$data['streamPath'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessPointId = accessPointId;
    result$data['accessPointId'] = l$accessPointId;
    final l$cameraName = cameraName;
    result$data['cameraName'] = l$cameraName;
    final l$ipAddress = ipAddress;
    result$data['ipAddress'] = l$ipAddress;
    final l$snapshotUrl = snapshotUrl;
    result$data['snapshotUrl'] = l$snapshotUrl;
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('streamPath')) {
      final l$streamPath = streamPath;
      result$data['streamPath'] = l$streamPath;
    }
    return result$data;
  }

  CopyWith$Input$SaveAccessPointCameraInput<Input$SaveAccessPointCameraInput>
  get copyWith => CopyWith$Input$SaveAccessPointCameraInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SaveAccessPointCameraInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$cameraName = cameraName;
    final lOther$cameraName = other.cameraName;
    if (l$cameraName != lOther$cameraName) {
      return false;
    }
    final l$ipAddress = ipAddress;
    final lOther$ipAddress = other.ipAddress;
    if (l$ipAddress != lOther$ipAddress) {
      return false;
    }
    final l$snapshotUrl = snapshotUrl;
    final lOther$snapshotUrl = other.snapshotUrl;
    if (l$snapshotUrl != lOther$snapshotUrl) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$streamPath = streamPath;
    final lOther$streamPath = other.streamPath;
    if (_$data.containsKey('streamPath') !=
        other._$data.containsKey('streamPath')) {
      return false;
    }
    if (l$streamPath != lOther$streamPath) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessPointId = accessPointId;
    final l$cameraName = cameraName;
    final l$ipAddress = ipAddress;
    final l$snapshotUrl = snapshotUrl;
    final l$username = username;
    final l$password = password;
    final l$streamPath = streamPath;
    return Object.hashAll([
      l$accessPointId,
      l$cameraName,
      l$ipAddress,
      l$snapshotUrl,
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('streamPath') ? l$streamPath : const {},
    ]);
  }
}

abstract class CopyWith$Input$SaveAccessPointCameraInput<TRes> {
  factory CopyWith$Input$SaveAccessPointCameraInput(
    Input$SaveAccessPointCameraInput instance,
    TRes Function(Input$SaveAccessPointCameraInput) then,
  ) = _CopyWithImpl$Input$SaveAccessPointCameraInput;

  factory CopyWith$Input$SaveAccessPointCameraInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SaveAccessPointCameraInput;

  TRes call({
    String? accessPointId,
    String? cameraName,
    String? ipAddress,
    String? snapshotUrl,
    String? username,
    String? password,
    String? streamPath,
  });
}

class _CopyWithImpl$Input$SaveAccessPointCameraInput<TRes>
    implements CopyWith$Input$SaveAccessPointCameraInput<TRes> {
  _CopyWithImpl$Input$SaveAccessPointCameraInput(this._instance, this._then);

  final Input$SaveAccessPointCameraInput _instance;

  final TRes Function(Input$SaveAccessPointCameraInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessPointId = _undefined,
    Object? cameraName = _undefined,
    Object? ipAddress = _undefined,
    Object? snapshotUrl = _undefined,
    Object? username = _undefined,
    Object? password = _undefined,
    Object? streamPath = _undefined,
  }) => _then(
    Input$SaveAccessPointCameraInput._({
      ..._instance._$data,
      if (accessPointId != _undefined && accessPointId != null)
        'accessPointId': (accessPointId as String),
      if (cameraName != _undefined && cameraName != null)
        'cameraName': (cameraName as String),
      if (ipAddress != _undefined && ipAddress != null)
        'ipAddress': (ipAddress as String),
      if (snapshotUrl != _undefined && snapshotUrl != null)
        'snapshotUrl': (snapshotUrl as String),
      if (username != _undefined) 'username': (username as String?),
      if (password != _undefined) 'password': (password as String?),
      if (streamPath != _undefined) 'streamPath': (streamPath as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$SaveAccessPointCameraInput<TRes>
    implements CopyWith$Input$SaveAccessPointCameraInput<TRes> {
  _CopyWithStubImpl$Input$SaveAccessPointCameraInput(this._res);

  TRes _res;

  call({
    String? accessPointId,
    String? cameraName,
    String? ipAddress,
    String? snapshotUrl,
    String? username,
    String? password,
    String? streamPath,
  }) => _res;
}

class Input$ScheduleFilterInput {
  factory Input$ScheduleFilterInput({
    List<Input$ScheduleFilterInput>? and,
    List<Input$ScheduleFilterInput>? or,
    Input$StringOperationFilterInput? token,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$StringOperationFilterInput? scheduleDefinition,
    Input$ListFilterInputTypeOfAttributeItemFilterInput? attribute,
    Input$StringOperationFilterInput? exceptionScheduleDefinition,
  }) => Input$ScheduleFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (token != null) r'token': token,
    if (name != null) r'name': name,
    if (description != null) r'description': description,
    if (scheduleDefinition != null) r'scheduleDefinition': scheduleDefinition,
    if (attribute != null) r'attribute': attribute,
    if (exceptionScheduleDefinition != null)
      r'exceptionScheduleDefinition': exceptionScheduleDefinition,
  });

  Input$ScheduleFilterInput._(this._$data);

  factory Input$ScheduleFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input$ScheduleFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input$ScheduleFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('token')) {
      final l$token = data['token'];
      result$data['token'] = l$token == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$token as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$description as Map<String, dynamic>),
            );
    }
    if (data.containsKey('scheduleDefinition')) {
      final l$scheduleDefinition = data['scheduleDefinition'];
      result$data['scheduleDefinition'] = l$scheduleDefinition == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$scheduleDefinition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attribute')) {
      final l$attribute = data['attribute'];
      result$data['attribute'] = l$attribute == null
          ? null
          : Input$ListFilterInputTypeOfAttributeItemFilterInput.fromJson(
              (l$attribute as Map<String, dynamic>),
            );
    }
    if (data.containsKey('exceptionScheduleDefinition')) {
      final l$exceptionScheduleDefinition = data['exceptionScheduleDefinition'];
      result$data['exceptionScheduleDefinition'] =
          l$exceptionScheduleDefinition == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$exceptionScheduleDefinition as Map<String, dynamic>),
            );
    }
    return Input$ScheduleFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ScheduleFilterInput>? get and =>
      (_$data['and'] as List<Input$ScheduleFilterInput>?);

  List<Input$ScheduleFilterInput>? get or =>
      (_$data['or'] as List<Input$ScheduleFilterInput>?);

  Input$StringOperationFilterInput? get token =>
      (_$data['token'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get description =>
      (_$data['description'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get scheduleDefinition =>
      (_$data['scheduleDefinition'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfAttributeItemFilterInput? get attribute =>
      (_$data['attribute']
          as Input$ListFilterInputTypeOfAttributeItemFilterInput?);

  Input$StringOperationFilterInput? get exceptionScheduleDefinition =>
      (_$data['exceptionScheduleDefinition']
          as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('token')) {
      final l$token = token;
      result$data['token'] = l$token?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('scheduleDefinition')) {
      final l$scheduleDefinition = scheduleDefinition;
      result$data['scheduleDefinition'] = l$scheduleDefinition?.toJson();
    }
    if (_$data.containsKey('attribute')) {
      final l$attribute = attribute;
      result$data['attribute'] = l$attribute?.toJson();
    }
    if (_$data.containsKey('exceptionScheduleDefinition')) {
      final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
      result$data['exceptionScheduleDefinition'] = l$exceptionScheduleDefinition
          ?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ScheduleFilterInput<Input$ScheduleFilterInput> get copyWith =>
      CopyWith$Input$ScheduleFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ScheduleFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (_$data.containsKey('token') != other._$data.containsKey('token')) {
      return false;
    }
    if (l$token != lOther$token) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$scheduleDefinition = scheduleDefinition;
    final lOther$scheduleDefinition = other.scheduleDefinition;
    if (_$data.containsKey('scheduleDefinition') !=
        other._$data.containsKey('scheduleDefinition')) {
      return false;
    }
    if (l$scheduleDefinition != lOther$scheduleDefinition) {
      return false;
    }
    final l$attribute = attribute;
    final lOther$attribute = other.attribute;
    if (_$data.containsKey('attribute') !=
        other._$data.containsKey('attribute')) {
      return false;
    }
    if (l$attribute != lOther$attribute) {
      return false;
    }
    final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
    final lOther$exceptionScheduleDefinition =
        other.exceptionScheduleDefinition;
    if (_$data.containsKey('exceptionScheduleDefinition') !=
        other._$data.containsKey('exceptionScheduleDefinition')) {
      return false;
    }
    if (l$exceptionScheduleDefinition != lOther$exceptionScheduleDefinition) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$token = token;
    final l$name = name;
    final l$description = description;
    final l$scheduleDefinition = scheduleDefinition;
    final l$attribute = attribute;
    final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('scheduleDefinition')
          ? l$scheduleDefinition
          : const {},
      _$data.containsKey('attribute') ? l$attribute : const {},
      _$data.containsKey('exceptionScheduleDefinition')
          ? l$exceptionScheduleDefinition
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ScheduleFilterInput<TRes> {
  factory CopyWith$Input$ScheduleFilterInput(
    Input$ScheduleFilterInput instance,
    TRes Function(Input$ScheduleFilterInput) then,
  ) = _CopyWithImpl$Input$ScheduleFilterInput;

  factory CopyWith$Input$ScheduleFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ScheduleFilterInput;

  TRes call({
    List<Input$ScheduleFilterInput>? and,
    List<Input$ScheduleFilterInput>? or,
    Input$StringOperationFilterInput? token,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$StringOperationFilterInput? scheduleDefinition,
    Input$ListFilterInputTypeOfAttributeItemFilterInput? attribute,
    Input$StringOperationFilterInput? exceptionScheduleDefinition,
  });
  TRes and(
    Iterable<Input$ScheduleFilterInput>? Function(
      Iterable<CopyWith$Input$ScheduleFilterInput<Input$ScheduleFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$ScheduleFilterInput>? Function(
      Iterable<CopyWith$Input$ScheduleFilterInput<Input$ScheduleFilterInput>>?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get token;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get description;
  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleDefinition;
  CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput<TRes>
  get attribute;
  CopyWith$Input$StringOperationFilterInput<TRes>
  get exceptionScheduleDefinition;
}

class _CopyWithImpl$Input$ScheduleFilterInput<TRes>
    implements CopyWith$Input$ScheduleFilterInput<TRes> {
  _CopyWithImpl$Input$ScheduleFilterInput(this._instance, this._then);

  final Input$ScheduleFilterInput _instance;

  final TRes Function(Input$ScheduleFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? token = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? scheduleDefinition = _undefined,
    Object? attribute = _undefined,
    Object? exceptionScheduleDefinition = _undefined,
  }) => _then(
    Input$ScheduleFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input$ScheduleFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input$ScheduleFilterInput>?),
      if (token != _undefined)
        'token': (token as Input$StringOperationFilterInput?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (description != _undefined)
        'description': (description as Input$StringOperationFilterInput?),
      if (scheduleDefinition != _undefined)
        'scheduleDefinition':
            (scheduleDefinition as Input$StringOperationFilterInput?),
      if (attribute != _undefined)
        'attribute':
            (attribute as Input$ListFilterInputTypeOfAttributeItemFilterInput?),
      if (exceptionScheduleDefinition != _undefined)
        'exceptionScheduleDefinition':
            (exceptionScheduleDefinition as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$ScheduleFilterInput>? Function(
      Iterable<CopyWith$Input$ScheduleFilterInput<Input$ScheduleFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$ScheduleFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$ScheduleFilterInput>? Function(
      Iterable<CopyWith$Input$ScheduleFilterInput<Input$ScheduleFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith$Input$ScheduleFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get token {
    final local$token = _instance.token;
    return local$token == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$token,
            (e) => call(token: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$description,
            (e) => call(description: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleDefinition {
    final local$scheduleDefinition = _instance.scheduleDefinition;
    return local$scheduleDefinition == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$scheduleDefinition,
            (e) => call(scheduleDefinition: e),
          );
  }

  CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput<TRes>
  get attribute {
    final local$attribute = _instance.attribute;
    return local$attribute == null
        ? CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput.stub(
            _then(_instance),
          )
        : CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput(
            local$attribute,
            (e) => call(attribute: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes>
  get exceptionScheduleDefinition {
    final local$exceptionScheduleDefinition =
        _instance.exceptionScheduleDefinition;
    return local$exceptionScheduleDefinition == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$exceptionScheduleDefinition,
            (e) => call(exceptionScheduleDefinition: e),
          );
  }
}

class _CopyWithStubImpl$Input$ScheduleFilterInput<TRes>
    implements CopyWith$Input$ScheduleFilterInput<TRes> {
  _CopyWithStubImpl$Input$ScheduleFilterInput(this._res);

  TRes _res;

  call({
    List<Input$ScheduleFilterInput>? and,
    List<Input$ScheduleFilterInput>? or,
    Input$StringOperationFilterInput? token,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? description,
    Input$StringOperationFilterInput? scheduleDefinition,
    Input$ListFilterInputTypeOfAttributeItemFilterInput? attribute,
    Input$StringOperationFilterInput? exceptionScheduleDefinition,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get token =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get description =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleDefinition =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput<TRes>
  get attribute =>
      CopyWith$Input$ListFilterInputTypeOfAttributeItemFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes>
  get exceptionScheduleDefinition =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$ScheduleSortInput {
  factory Input$ScheduleSortInput({
    Enum$SortEnumType? token,
    Enum$SortEnumType? name,
    Enum$SortEnumType? description,
    Enum$SortEnumType? scheduleDefinition,
    Enum$SortEnumType? exceptionScheduleDefinition,
  }) => Input$ScheduleSortInput._({
    if (token != null) r'token': token,
    if (name != null) r'name': name,
    if (description != null) r'description': description,
    if (scheduleDefinition != null) r'scheduleDefinition': scheduleDefinition,
    if (exceptionScheduleDefinition != null)
      r'exceptionScheduleDefinition': exceptionScheduleDefinition,
  });

  Input$ScheduleSortInput._(this._$data);

  factory Input$ScheduleSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('token')) {
      final l$token = data['token'];
      result$data['token'] = l$token == null
          ? null
          : fromJson$Enum$SortEnumType((l$token as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortEnumType((l$description as String));
    }
    if (data.containsKey('scheduleDefinition')) {
      final l$scheduleDefinition = data['scheduleDefinition'];
      result$data['scheduleDefinition'] = l$scheduleDefinition == null
          ? null
          : fromJson$Enum$SortEnumType((l$scheduleDefinition as String));
    }
    if (data.containsKey('exceptionScheduleDefinition')) {
      final l$exceptionScheduleDefinition = data['exceptionScheduleDefinition'];
      result$data['exceptionScheduleDefinition'] =
          l$exceptionScheduleDefinition == null
          ? null
          : fromJson$Enum$SortEnumType(
              (l$exceptionScheduleDefinition as String),
            );
    }
    return Input$ScheduleSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get token => (_$data['token'] as Enum$SortEnumType?);

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get description =>
      (_$data['description'] as Enum$SortEnumType?);

  Enum$SortEnumType? get scheduleDefinition =>
      (_$data['scheduleDefinition'] as Enum$SortEnumType?);

  Enum$SortEnumType? get exceptionScheduleDefinition =>
      (_$data['exceptionScheduleDefinition'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('token')) {
      final l$token = token;
      result$data['token'] = l$token == null
          ? null
          : toJson$Enum$SortEnumType(l$token);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null
          ? null
          : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description == null
          ? null
          : toJson$Enum$SortEnumType(l$description);
    }
    if (_$data.containsKey('scheduleDefinition')) {
      final l$scheduleDefinition = scheduleDefinition;
      result$data['scheduleDefinition'] = l$scheduleDefinition == null
          ? null
          : toJson$Enum$SortEnumType(l$scheduleDefinition);
    }
    if (_$data.containsKey('exceptionScheduleDefinition')) {
      final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
      result$data['exceptionScheduleDefinition'] =
          l$exceptionScheduleDefinition == null
          ? null
          : toJson$Enum$SortEnumType(l$exceptionScheduleDefinition);
    }
    return result$data;
  }

  CopyWith$Input$ScheduleSortInput<Input$ScheduleSortInput> get copyWith =>
      CopyWith$Input$ScheduleSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ScheduleSortInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (_$data.containsKey('token') != other._$data.containsKey('token')) {
      return false;
    }
    if (l$token != lOther$token) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$scheduleDefinition = scheduleDefinition;
    final lOther$scheduleDefinition = other.scheduleDefinition;
    if (_$data.containsKey('scheduleDefinition') !=
        other._$data.containsKey('scheduleDefinition')) {
      return false;
    }
    if (l$scheduleDefinition != lOther$scheduleDefinition) {
      return false;
    }
    final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
    final lOther$exceptionScheduleDefinition =
        other.exceptionScheduleDefinition;
    if (_$data.containsKey('exceptionScheduleDefinition') !=
        other._$data.containsKey('exceptionScheduleDefinition')) {
      return false;
    }
    if (l$exceptionScheduleDefinition != lOther$exceptionScheduleDefinition) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$name = name;
    final l$description = description;
    final l$scheduleDefinition = scheduleDefinition;
    final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
    return Object.hashAll([
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('scheduleDefinition')
          ? l$scheduleDefinition
          : const {},
      _$data.containsKey('exceptionScheduleDefinition')
          ? l$exceptionScheduleDefinition
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ScheduleSortInput<TRes> {
  factory CopyWith$Input$ScheduleSortInput(
    Input$ScheduleSortInput instance,
    TRes Function(Input$ScheduleSortInput) then,
  ) = _CopyWithImpl$Input$ScheduleSortInput;

  factory CopyWith$Input$ScheduleSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ScheduleSortInput;

  TRes call({
    Enum$SortEnumType? token,
    Enum$SortEnumType? name,
    Enum$SortEnumType? description,
    Enum$SortEnumType? scheduleDefinition,
    Enum$SortEnumType? exceptionScheduleDefinition,
  });
}

class _CopyWithImpl$Input$ScheduleSortInput<TRes>
    implements CopyWith$Input$ScheduleSortInput<TRes> {
  _CopyWithImpl$Input$ScheduleSortInput(this._instance, this._then);

  final Input$ScheduleSortInput _instance;

  final TRes Function(Input$ScheduleSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? scheduleDefinition = _undefined,
    Object? exceptionScheduleDefinition = _undefined,
  }) => _then(
    Input$ScheduleSortInput._({
      ..._instance._$data,
      if (token != _undefined) 'token': (token as Enum$SortEnumType?),
      if (name != _undefined) 'name': (name as Enum$SortEnumType?),
      if (description != _undefined)
        'description': (description as Enum$SortEnumType?),
      if (scheduleDefinition != _undefined)
        'scheduleDefinition': (scheduleDefinition as Enum$SortEnumType?),
      if (exceptionScheduleDefinition != _undefined)
        'exceptionScheduleDefinition':
            (exceptionScheduleDefinition as Enum$SortEnumType?),
    }),
  );
}

class _CopyWithStubImpl$Input$ScheduleSortInput<TRes>
    implements CopyWith$Input$ScheduleSortInput<TRes> {
  _CopyWithStubImpl$Input$ScheduleSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? token,
    Enum$SortEnumType? name,
    Enum$SortEnumType? description,
    Enum$SortEnumType? scheduleDefinition,
    Enum$SortEnumType? exceptionScheduleDefinition,
  }) => _res;
}

class Input$ScheduleStateChangeEventsIndexResultFilterInput {
  factory Input$ScheduleStateChangeEventsIndexResultFilterInput({
    List<Input$ScheduleStateChangeEventsIndexResultFilterInput>? and,
    List<Input$ScheduleStateChangeEventsIndexResultFilterInput>? or,
    Input$LongOperationFilterInput? rowId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? accessControllerName,
    Input$StringOperationFilterInput? scheduleToken,
    Input$StringOperationFilterInput? scheduleName,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$DateTimeOperationFilterInput? utcTime,
    Input$StringOperationFilterInput? topic2,
    Input$BooleanOperationFilterInput? active,
    Input$BooleanOperationFilterInput? specialDay,
  }) => Input$ScheduleStateChangeEventsIndexResultFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (rowId != null) r'rowId': rowId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (accessControllerName != null)
      r'accessControllerName': accessControllerName,
    if (scheduleToken != null) r'scheduleToken': scheduleToken,
    if (scheduleName != null) r'scheduleName': scheduleName,
    if (siteId != null) r'siteId': siteId,
    if (siteName != null) r'siteName': siteName,
    if (utcTime != null) r'utcTime': utcTime,
    if (topic2 != null) r'topic2': topic2,
    if (active != null) r'active': active,
    if (specialDay != null) r'specialDay': specialDay,
  });

  Input$ScheduleStateChangeEventsIndexResultFilterInput._(this._$data);

  factory Input$ScheduleStateChangeEventsIndexResultFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input$ScheduleStateChangeEventsIndexResultFilterInput.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input$ScheduleStateChangeEventsIndexResultFilterInput.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList();
    }
    if (data.containsKey('rowId')) {
      final l$rowId = data['rowId'];
      result$data['rowId'] = l$rowId == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$rowId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessControllerId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessControllerName')) {
      final l$accessControllerName = data['accessControllerName'];
      result$data['accessControllerName'] = l$accessControllerName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessControllerName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('scheduleToken')) {
      final l$scheduleToken = data['scheduleToken'];
      result$data['scheduleToken'] = l$scheduleToken == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$scheduleToken as Map<String, dynamic>),
            );
    }
    if (data.containsKey('scheduleName')) {
      final l$scheduleName = data['scheduleName'];
      result$data['scheduleName'] = l$scheduleName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$scheduleName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = l$siteId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$siteId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('siteName')) {
      final l$siteName = data['siteName'];
      result$data['siteName'] = l$siteName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$siteName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('utcTime')) {
      final l$utcTime = data['utcTime'];
      result$data['utcTime'] = l$utcTime == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$utcTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('topic2')) {
      final l$topic2 = data['topic2'];
      result$data['topic2'] = l$topic2 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$topic2 as Map<String, dynamic>),
            );
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>),
            );
    }
    if (data.containsKey('specialDay')) {
      final l$specialDay = data['specialDay'];
      result$data['specialDay'] = l$specialDay == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$specialDay as Map<String, dynamic>),
            );
    }
    return Input$ScheduleStateChangeEventsIndexResultFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ScheduleStateChangeEventsIndexResultFilterInput>? get and =>
      (_$data['and']
          as List<Input$ScheduleStateChangeEventsIndexResultFilterInput>?);

  List<Input$ScheduleStateChangeEventsIndexResultFilterInput>? get or =>
      (_$data['or']
          as List<Input$ScheduleStateChangeEventsIndexResultFilterInput>?);

  Input$LongOperationFilterInput? get rowId =>
      (_$data['rowId'] as Input$LongOperationFilterInput?);

  Input$StringOperationFilterInput? get accessControllerId =>
      (_$data['accessControllerId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accessControllerName =>
      (_$data['accessControllerName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get scheduleToken =>
      (_$data['scheduleToken'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get scheduleName =>
      (_$data['scheduleName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get siteId =>
      (_$data['siteId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get siteName =>
      (_$data['siteName'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get utcTime =>
      (_$data['utcTime'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get topic2 =>
      (_$data['topic2'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get specialDay =>
      (_$data['specialDay'] as Input$BooleanOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('rowId')) {
      final l$rowId = rowId;
      result$data['rowId'] = l$rowId?.toJson();
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId?.toJson();
    }
    if (_$data.containsKey('accessControllerName')) {
      final l$accessControllerName = accessControllerName;
      result$data['accessControllerName'] = l$accessControllerName?.toJson();
    }
    if (_$data.containsKey('scheduleToken')) {
      final l$scheduleToken = scheduleToken;
      result$data['scheduleToken'] = l$scheduleToken?.toJson();
    }
    if (_$data.containsKey('scheduleName')) {
      final l$scheduleName = scheduleName;
      result$data['scheduleName'] = l$scheduleName?.toJson();
    }
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId?.toJson();
    }
    if (_$data.containsKey('siteName')) {
      final l$siteName = siteName;
      result$data['siteName'] = l$siteName?.toJson();
    }
    if (_$data.containsKey('utcTime')) {
      final l$utcTime = utcTime;
      result$data['utcTime'] = l$utcTime?.toJson();
    }
    if (_$data.containsKey('topic2')) {
      final l$topic2 = topic2;
      result$data['topic2'] = l$topic2?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('specialDay')) {
      final l$specialDay = specialDay;
      result$data['specialDay'] = l$specialDay?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput<
    Input$ScheduleStateChangeEventsIndexResultFilterInput
  >
  get copyWith =>
      CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ScheduleStateChangeEventsIndexResultFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$rowId = rowId;
    final lOther$rowId = other.rowId;
    if (_$data.containsKey('rowId') != other._$data.containsKey('rowId')) {
      return false;
    }
    if (l$rowId != lOther$rowId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$accessControllerName = accessControllerName;
    final lOther$accessControllerName = other.accessControllerName;
    if (_$data.containsKey('accessControllerName') !=
        other._$data.containsKey('accessControllerName')) {
      return false;
    }
    if (l$accessControllerName != lOther$accessControllerName) {
      return false;
    }
    final l$scheduleToken = scheduleToken;
    final lOther$scheduleToken = other.scheduleToken;
    if (_$data.containsKey('scheduleToken') !=
        other._$data.containsKey('scheduleToken')) {
      return false;
    }
    if (l$scheduleToken != lOther$scheduleToken) {
      return false;
    }
    final l$scheduleName = scheduleName;
    final lOther$scheduleName = other.scheduleName;
    if (_$data.containsKey('scheduleName') !=
        other._$data.containsKey('scheduleName')) {
      return false;
    }
    if (l$scheduleName != lOther$scheduleName) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$siteName = siteName;
    final lOther$siteName = other.siteName;
    if (_$data.containsKey('siteName') !=
        other._$data.containsKey('siteName')) {
      return false;
    }
    if (l$siteName != lOther$siteName) {
      return false;
    }
    final l$utcTime = utcTime;
    final lOther$utcTime = other.utcTime;
    if (_$data.containsKey('utcTime') != other._$data.containsKey('utcTime')) {
      return false;
    }
    if (l$utcTime != lOther$utcTime) {
      return false;
    }
    final l$topic2 = topic2;
    final lOther$topic2 = other.topic2;
    if (_$data.containsKey('topic2') != other._$data.containsKey('topic2')) {
      return false;
    }
    if (l$topic2 != lOther$topic2) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$specialDay = specialDay;
    final lOther$specialDay = other.specialDay;
    if (_$data.containsKey('specialDay') !=
        other._$data.containsKey('specialDay')) {
      return false;
    }
    if (l$specialDay != lOther$specialDay) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$rowId = rowId;
    final l$accessControllerId = accessControllerId;
    final l$accessControllerName = accessControllerName;
    final l$scheduleToken = scheduleToken;
    final l$scheduleName = scheduleName;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$utcTime = utcTime;
    final l$topic2 = topic2;
    final l$active = active;
    final l$specialDay = specialDay;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('rowId') ? l$rowId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('accessControllerName')
          ? l$accessControllerName
          : const {},
      _$data.containsKey('scheduleToken') ? l$scheduleToken : const {},
      _$data.containsKey('scheduleName') ? l$scheduleName : const {},
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('siteName') ? l$siteName : const {},
      _$data.containsKey('utcTime') ? l$utcTime : const {},
      _$data.containsKey('topic2') ? l$topic2 : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('specialDay') ? l$specialDay : const {},
    ]);
  }
}

abstract class CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput<
  TRes
> {
  factory CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput(
    Input$ScheduleStateChangeEventsIndexResultFilterInput instance,
    TRes Function(Input$ScheduleStateChangeEventsIndexResultFilterInput) then,
  ) = _CopyWithImpl$Input$ScheduleStateChangeEventsIndexResultFilterInput;

  factory CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$ScheduleStateChangeEventsIndexResultFilterInput;

  TRes call({
    List<Input$ScheduleStateChangeEventsIndexResultFilterInput>? and,
    List<Input$ScheduleStateChangeEventsIndexResultFilterInput>? or,
    Input$LongOperationFilterInput? rowId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? accessControllerName,
    Input$StringOperationFilterInput? scheduleToken,
    Input$StringOperationFilterInput? scheduleName,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$DateTimeOperationFilterInput? utcTime,
    Input$StringOperationFilterInput? topic2,
    Input$BooleanOperationFilterInput? active,
    Input$BooleanOperationFilterInput? specialDay,
  });
  TRes and(
    Iterable<Input$ScheduleStateChangeEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput<
          Input$ScheduleStateChangeEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$ScheduleStateChangeEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput<
          Input$ScheduleStateChangeEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$LongOperationFilterInput<TRes> get rowId;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerName;
  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleToken;
  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleName;
  CopyWith$Input$StringOperationFilterInput<TRes> get siteId;
  CopyWith$Input$StringOperationFilterInput<TRes> get siteName;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get utcTime;
  CopyWith$Input$StringOperationFilterInput<TRes> get topic2;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get specialDay;
}

class _CopyWithImpl$Input$ScheduleStateChangeEventsIndexResultFilterInput<TRes>
    implements
        CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput<TRes> {
  _CopyWithImpl$Input$ScheduleStateChangeEventsIndexResultFilterInput(
    this._instance,
    this._then,
  );

  final Input$ScheduleStateChangeEventsIndexResultFilterInput _instance;

  final TRes Function(Input$ScheduleStateChangeEventsIndexResultFilterInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? rowId = _undefined,
    Object? accessControllerId = _undefined,
    Object? accessControllerName = _undefined,
    Object? scheduleToken = _undefined,
    Object? scheduleName = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? utcTime = _undefined,
    Object? topic2 = _undefined,
    Object? active = _undefined,
    Object? specialDay = _undefined,
  }) => _then(
    Input$ScheduleStateChangeEventsIndexResultFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and':
            (and
                as List<
                  Input$ScheduleStateChangeEventsIndexResultFilterInput
                >?),
      if (or != _undefined)
        'or':
            (or
                as List<
                  Input$ScheduleStateChangeEventsIndexResultFilterInput
                >?),
      if (rowId != _undefined)
        'rowId': (rowId as Input$LongOperationFilterInput?),
      if (accessControllerId != _undefined)
        'accessControllerId':
            (accessControllerId as Input$StringOperationFilterInput?),
      if (accessControllerName != _undefined)
        'accessControllerName':
            (accessControllerName as Input$StringOperationFilterInput?),
      if (scheduleToken != _undefined)
        'scheduleToken': (scheduleToken as Input$StringOperationFilterInput?),
      if (scheduleName != _undefined)
        'scheduleName': (scheduleName as Input$StringOperationFilterInput?),
      if (siteId != _undefined)
        'siteId': (siteId as Input$StringOperationFilterInput?),
      if (siteName != _undefined)
        'siteName': (siteName as Input$StringOperationFilterInput?),
      if (utcTime != _undefined)
        'utcTime': (utcTime as Input$DateTimeOperationFilterInput?),
      if (topic2 != _undefined)
        'topic2': (topic2 as Input$StringOperationFilterInput?),
      if (active != _undefined)
        'active': (active as Input$BooleanOperationFilterInput?),
      if (specialDay != _undefined)
        'specialDay': (specialDay as Input$BooleanOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$ScheduleStateChangeEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput<
          Input$ScheduleStateChangeEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$ScheduleStateChangeEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput<
          Input$ScheduleStateChangeEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  CopyWith$Input$LongOperationFilterInput<TRes> get rowId {
    final local$rowId = _instance.rowId;
    return local$rowId == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$rowId,
            (e) => call(rowId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId {
    final local$accessControllerId = _instance.accessControllerId;
    return local$accessControllerId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessControllerId,
            (e) => call(accessControllerId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerName {
    final local$accessControllerName = _instance.accessControllerName;
    return local$accessControllerName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessControllerName,
            (e) => call(accessControllerName: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleToken {
    final local$scheduleToken = _instance.scheduleToken;
    return local$scheduleToken == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$scheduleToken,
            (e) => call(scheduleToken: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleName {
    final local$scheduleName = _instance.scheduleName;
    return local$scheduleName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$scheduleName,
            (e) => call(scheduleName: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get siteId {
    final local$siteId = _instance.siteId;
    return local$siteId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$siteId,
            (e) => call(siteId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get siteName {
    final local$siteName = _instance.siteName;
    return local$siteName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$siteName,
            (e) => call(siteName: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get utcTime {
    final local$utcTime = _instance.utcTime;
    return local$utcTime == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$utcTime,
            (e) => call(utcTime: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get topic2 {
    final local$topic2 = _instance.topic2;
    return local$topic2 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$topic2,
            (e) => call(topic2: e),
          );
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active,
            (e) => call(active: e),
          );
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get specialDay {
    final local$specialDay = _instance.specialDay;
    return local$specialDay == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$specialDay,
            (e) => call(specialDay: e),
          );
  }
}

class _CopyWithStubImpl$Input$ScheduleStateChangeEventsIndexResultFilterInput<
  TRes
>
    implements
        CopyWith$Input$ScheduleStateChangeEventsIndexResultFilterInput<TRes> {
  _CopyWithStubImpl$Input$ScheduleStateChangeEventsIndexResultFilterInput(
    this._res,
  );

  TRes _res;

  call({
    List<Input$ScheduleStateChangeEventsIndexResultFilterInput>? and,
    List<Input$ScheduleStateChangeEventsIndexResultFilterInput>? or,
    Input$LongOperationFilterInput? rowId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? accessControllerName,
    Input$StringOperationFilterInput? scheduleToken,
    Input$StringOperationFilterInput? scheduleName,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$DateTimeOperationFilterInput? utcTime,
    Input$StringOperationFilterInput? topic2,
    Input$BooleanOperationFilterInput? active,
    Input$BooleanOperationFilterInput? specialDay,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$LongOperationFilterInput<TRes> get rowId =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleToken =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get siteId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get siteName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get utcTime =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get topic2 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get specialDay =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);
}

class Input$ScheduleStateChangeEventsIndexResultSortInput {
  factory Input$ScheduleStateChangeEventsIndexResultSortInput({
    Enum$SortEnumType? rowId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? accessControllerName,
    Enum$SortEnumType? scheduleToken,
    Enum$SortEnumType? scheduleName,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? utcTime,
    Enum$SortEnumType? topic2,
    Enum$SortEnumType? active,
    Enum$SortEnumType? specialDay,
  }) => Input$ScheduleStateChangeEventsIndexResultSortInput._({
    if (rowId != null) r'rowId': rowId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (accessControllerName != null)
      r'accessControllerName': accessControllerName,
    if (scheduleToken != null) r'scheduleToken': scheduleToken,
    if (scheduleName != null) r'scheduleName': scheduleName,
    if (siteId != null) r'siteId': siteId,
    if (siteName != null) r'siteName': siteName,
    if (utcTime != null) r'utcTime': utcTime,
    if (topic2 != null) r'topic2': topic2,
    if (active != null) r'active': active,
    if (specialDay != null) r'specialDay': specialDay,
  });

  Input$ScheduleStateChangeEventsIndexResultSortInput._(this._$data);

  factory Input$ScheduleStateChangeEventsIndexResultSortInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('rowId')) {
      final l$rowId = data['rowId'];
      result$data['rowId'] = l$rowId == null
          ? null
          : fromJson$Enum$SortEnumType((l$rowId as String));
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessControllerId as String));
    }
    if (data.containsKey('accessControllerName')) {
      final l$accessControllerName = data['accessControllerName'];
      result$data['accessControllerName'] = l$accessControllerName == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessControllerName as String));
    }
    if (data.containsKey('scheduleToken')) {
      final l$scheduleToken = data['scheduleToken'];
      result$data['scheduleToken'] = l$scheduleToken == null
          ? null
          : fromJson$Enum$SortEnumType((l$scheduleToken as String));
    }
    if (data.containsKey('scheduleName')) {
      final l$scheduleName = data['scheduleName'];
      result$data['scheduleName'] = l$scheduleName == null
          ? null
          : fromJson$Enum$SortEnumType((l$scheduleName as String));
    }
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = l$siteId == null
          ? null
          : fromJson$Enum$SortEnumType((l$siteId as String));
    }
    if (data.containsKey('siteName')) {
      final l$siteName = data['siteName'];
      result$data['siteName'] = l$siteName == null
          ? null
          : fromJson$Enum$SortEnumType((l$siteName as String));
    }
    if (data.containsKey('utcTime')) {
      final l$utcTime = data['utcTime'];
      result$data['utcTime'] = l$utcTime == null
          ? null
          : fromJson$Enum$SortEnumType((l$utcTime as String));
    }
    if (data.containsKey('topic2')) {
      final l$topic2 = data['topic2'];
      result$data['topic2'] = l$topic2 == null
          ? null
          : fromJson$Enum$SortEnumType((l$topic2 as String));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('specialDay')) {
      final l$specialDay = data['specialDay'];
      result$data['specialDay'] = l$specialDay == null
          ? null
          : fromJson$Enum$SortEnumType((l$specialDay as String));
    }
    return Input$ScheduleStateChangeEventsIndexResultSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get rowId => (_$data['rowId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessControllerId =>
      (_$data['accessControllerId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessControllerName =>
      (_$data['accessControllerName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get scheduleToken =>
      (_$data['scheduleToken'] as Enum$SortEnumType?);

  Enum$SortEnumType? get scheduleName =>
      (_$data['scheduleName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get siteId => (_$data['siteId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get siteName => (_$data['siteName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get utcTime => (_$data['utcTime'] as Enum$SortEnumType?);

  Enum$SortEnumType? get topic2 => (_$data['topic2'] as Enum$SortEnumType?);

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get specialDay =>
      (_$data['specialDay'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('rowId')) {
      final l$rowId = rowId;
      result$data['rowId'] = l$rowId == null
          ? null
          : toJson$Enum$SortEnumType(l$rowId);
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : toJson$Enum$SortEnumType(l$accessControllerId);
    }
    if (_$data.containsKey('accessControllerName')) {
      final l$accessControllerName = accessControllerName;
      result$data['accessControllerName'] = l$accessControllerName == null
          ? null
          : toJson$Enum$SortEnumType(l$accessControllerName);
    }
    if (_$data.containsKey('scheduleToken')) {
      final l$scheduleToken = scheduleToken;
      result$data['scheduleToken'] = l$scheduleToken == null
          ? null
          : toJson$Enum$SortEnumType(l$scheduleToken);
    }
    if (_$data.containsKey('scheduleName')) {
      final l$scheduleName = scheduleName;
      result$data['scheduleName'] = l$scheduleName == null
          ? null
          : toJson$Enum$SortEnumType(l$scheduleName);
    }
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId == null
          ? null
          : toJson$Enum$SortEnumType(l$siteId);
    }
    if (_$data.containsKey('siteName')) {
      final l$siteName = siteName;
      result$data['siteName'] = l$siteName == null
          ? null
          : toJson$Enum$SortEnumType(l$siteName);
    }
    if (_$data.containsKey('utcTime')) {
      final l$utcTime = utcTime;
      result$data['utcTime'] = l$utcTime == null
          ? null
          : toJson$Enum$SortEnumType(l$utcTime);
    }
    if (_$data.containsKey('topic2')) {
      final l$topic2 = topic2;
      result$data['topic2'] = l$topic2 == null
          ? null
          : toJson$Enum$SortEnumType(l$topic2);
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active == null
          ? null
          : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('specialDay')) {
      final l$specialDay = specialDay;
      result$data['specialDay'] = l$specialDay == null
          ? null
          : toJson$Enum$SortEnumType(l$specialDay);
    }
    return result$data;
  }

  CopyWith$Input$ScheduleStateChangeEventsIndexResultSortInput<
    Input$ScheduleStateChangeEventsIndexResultSortInput
  >
  get copyWith => CopyWith$Input$ScheduleStateChangeEventsIndexResultSortInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ScheduleStateChangeEventsIndexResultSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rowId = rowId;
    final lOther$rowId = other.rowId;
    if (_$data.containsKey('rowId') != other._$data.containsKey('rowId')) {
      return false;
    }
    if (l$rowId != lOther$rowId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$accessControllerName = accessControllerName;
    final lOther$accessControllerName = other.accessControllerName;
    if (_$data.containsKey('accessControllerName') !=
        other._$data.containsKey('accessControllerName')) {
      return false;
    }
    if (l$accessControllerName != lOther$accessControllerName) {
      return false;
    }
    final l$scheduleToken = scheduleToken;
    final lOther$scheduleToken = other.scheduleToken;
    if (_$data.containsKey('scheduleToken') !=
        other._$data.containsKey('scheduleToken')) {
      return false;
    }
    if (l$scheduleToken != lOther$scheduleToken) {
      return false;
    }
    final l$scheduleName = scheduleName;
    final lOther$scheduleName = other.scheduleName;
    if (_$data.containsKey('scheduleName') !=
        other._$data.containsKey('scheduleName')) {
      return false;
    }
    if (l$scheduleName != lOther$scheduleName) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$siteName = siteName;
    final lOther$siteName = other.siteName;
    if (_$data.containsKey('siteName') !=
        other._$data.containsKey('siteName')) {
      return false;
    }
    if (l$siteName != lOther$siteName) {
      return false;
    }
    final l$utcTime = utcTime;
    final lOther$utcTime = other.utcTime;
    if (_$data.containsKey('utcTime') != other._$data.containsKey('utcTime')) {
      return false;
    }
    if (l$utcTime != lOther$utcTime) {
      return false;
    }
    final l$topic2 = topic2;
    final lOther$topic2 = other.topic2;
    if (_$data.containsKey('topic2') != other._$data.containsKey('topic2')) {
      return false;
    }
    if (l$topic2 != lOther$topic2) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$specialDay = specialDay;
    final lOther$specialDay = other.specialDay;
    if (_$data.containsKey('specialDay') !=
        other._$data.containsKey('specialDay')) {
      return false;
    }
    if (l$specialDay != lOther$specialDay) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$rowId = rowId;
    final l$accessControllerId = accessControllerId;
    final l$accessControllerName = accessControllerName;
    final l$scheduleToken = scheduleToken;
    final l$scheduleName = scheduleName;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$utcTime = utcTime;
    final l$topic2 = topic2;
    final l$active = active;
    final l$specialDay = specialDay;
    return Object.hashAll([
      _$data.containsKey('rowId') ? l$rowId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('accessControllerName')
          ? l$accessControllerName
          : const {},
      _$data.containsKey('scheduleToken') ? l$scheduleToken : const {},
      _$data.containsKey('scheduleName') ? l$scheduleName : const {},
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('siteName') ? l$siteName : const {},
      _$data.containsKey('utcTime') ? l$utcTime : const {},
      _$data.containsKey('topic2') ? l$topic2 : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('specialDay') ? l$specialDay : const {},
    ]);
  }
}

abstract class CopyWith$Input$ScheduleStateChangeEventsIndexResultSortInput<
  TRes
> {
  factory CopyWith$Input$ScheduleStateChangeEventsIndexResultSortInput(
    Input$ScheduleStateChangeEventsIndexResultSortInput instance,
    TRes Function(Input$ScheduleStateChangeEventsIndexResultSortInput) then,
  ) = _CopyWithImpl$Input$ScheduleStateChangeEventsIndexResultSortInput;

  factory CopyWith$Input$ScheduleStateChangeEventsIndexResultSortInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$ScheduleStateChangeEventsIndexResultSortInput;

  TRes call({
    Enum$SortEnumType? rowId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? accessControllerName,
    Enum$SortEnumType? scheduleToken,
    Enum$SortEnumType? scheduleName,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? utcTime,
    Enum$SortEnumType? topic2,
    Enum$SortEnumType? active,
    Enum$SortEnumType? specialDay,
  });
}

class _CopyWithImpl$Input$ScheduleStateChangeEventsIndexResultSortInput<TRes>
    implements
        CopyWith$Input$ScheduleStateChangeEventsIndexResultSortInput<TRes> {
  _CopyWithImpl$Input$ScheduleStateChangeEventsIndexResultSortInput(
    this._instance,
    this._then,
  );

  final Input$ScheduleStateChangeEventsIndexResultSortInput _instance;

  final TRes Function(Input$ScheduleStateChangeEventsIndexResultSortInput)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rowId = _undefined,
    Object? accessControllerId = _undefined,
    Object? accessControllerName = _undefined,
    Object? scheduleToken = _undefined,
    Object? scheduleName = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? utcTime = _undefined,
    Object? topic2 = _undefined,
    Object? active = _undefined,
    Object? specialDay = _undefined,
  }) => _then(
    Input$ScheduleStateChangeEventsIndexResultSortInput._({
      ..._instance._$data,
      if (rowId != _undefined) 'rowId': (rowId as Enum$SortEnumType?),
      if (accessControllerId != _undefined)
        'accessControllerId': (accessControllerId as Enum$SortEnumType?),
      if (accessControllerName != _undefined)
        'accessControllerName': (accessControllerName as Enum$SortEnumType?),
      if (scheduleToken != _undefined)
        'scheduleToken': (scheduleToken as Enum$SortEnumType?),
      if (scheduleName != _undefined)
        'scheduleName': (scheduleName as Enum$SortEnumType?),
      if (siteId != _undefined) 'siteId': (siteId as Enum$SortEnumType?),
      if (siteName != _undefined) 'siteName': (siteName as Enum$SortEnumType?),
      if (utcTime != _undefined) 'utcTime': (utcTime as Enum$SortEnumType?),
      if (topic2 != _undefined) 'topic2': (topic2 as Enum$SortEnumType?),
      if (active != _undefined) 'active': (active as Enum$SortEnumType?),
      if (specialDay != _undefined)
        'specialDay': (specialDay as Enum$SortEnumType?),
    }),
  );
}

class _CopyWithStubImpl$Input$ScheduleStateChangeEventsIndexResultSortInput<
  TRes
>
    implements
        CopyWith$Input$ScheduleStateChangeEventsIndexResultSortInput<TRes> {
  _CopyWithStubImpl$Input$ScheduleStateChangeEventsIndexResultSortInput(
    this._res,
  );

  TRes _res;

  call({
    Enum$SortEnumType? rowId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? accessControllerName,
    Enum$SortEnumType? scheduleToken,
    Enum$SortEnumType? scheduleName,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? utcTime,
    Enum$SortEnumType? topic2,
    Enum$SortEnumType? active,
    Enum$SortEnumType? specialDay,
  }) => _res;
}

class Input$ScheduleUpdateEventsIndexResultFilterInput {
  factory Input$ScheduleUpdateEventsIndexResultFilterInput({
    List<Input$ScheduleUpdateEventsIndexResultFilterInput>? and,
    List<Input$ScheduleUpdateEventsIndexResultFilterInput>? or,
    Input$LongOperationFilterInput? rowId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? accessControllerName,
    Input$StringOperationFilterInput? scheduleToken,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$DateTimeOperationFilterInput? utcTime,
    Input$StringOperationFilterInput? topic2,
  }) => Input$ScheduleUpdateEventsIndexResultFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (rowId != null) r'rowId': rowId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (accessControllerName != null)
      r'accessControllerName': accessControllerName,
    if (scheduleToken != null) r'scheduleToken': scheduleToken,
    if (siteId != null) r'siteId': siteId,
    if (siteName != null) r'siteName': siteName,
    if (utcTime != null) r'utcTime': utcTime,
    if (topic2 != null) r'topic2': topic2,
  });

  Input$ScheduleUpdateEventsIndexResultFilterInput._(this._$data);

  factory Input$ScheduleUpdateEventsIndexResultFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$ScheduleUpdateEventsIndexResultFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$ScheduleUpdateEventsIndexResultFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('rowId')) {
      final l$rowId = data['rowId'];
      result$data['rowId'] = l$rowId == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$rowId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessControllerId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('accessControllerName')) {
      final l$accessControllerName = data['accessControllerName'];
      result$data['accessControllerName'] = l$accessControllerName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accessControllerName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('scheduleToken')) {
      final l$scheduleToken = data['scheduleToken'];
      result$data['scheduleToken'] = l$scheduleToken == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$scheduleToken as Map<String, dynamic>),
            );
    }
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = l$siteId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$siteId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('siteName')) {
      final l$siteName = data['siteName'];
      result$data['siteName'] = l$siteName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$siteName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('utcTime')) {
      final l$utcTime = data['utcTime'];
      result$data['utcTime'] = l$utcTime == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$utcTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('topic2')) {
      final l$topic2 = data['topic2'];
      result$data['topic2'] = l$topic2 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$topic2 as Map<String, dynamic>),
            );
    }
    return Input$ScheduleUpdateEventsIndexResultFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ScheduleUpdateEventsIndexResultFilterInput>? get and =>
      (_$data['and']
          as List<Input$ScheduleUpdateEventsIndexResultFilterInput>?);

  List<Input$ScheduleUpdateEventsIndexResultFilterInput>? get or =>
      (_$data['or'] as List<Input$ScheduleUpdateEventsIndexResultFilterInput>?);

  Input$LongOperationFilterInput? get rowId =>
      (_$data['rowId'] as Input$LongOperationFilterInput?);

  Input$StringOperationFilterInput? get accessControllerId =>
      (_$data['accessControllerId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accessControllerName =>
      (_$data['accessControllerName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get scheduleToken =>
      (_$data['scheduleToken'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get siteId =>
      (_$data['siteId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get siteName =>
      (_$data['siteName'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get utcTime =>
      (_$data['utcTime'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get topic2 =>
      (_$data['topic2'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('rowId')) {
      final l$rowId = rowId;
      result$data['rowId'] = l$rowId?.toJson();
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId?.toJson();
    }
    if (_$data.containsKey('accessControllerName')) {
      final l$accessControllerName = accessControllerName;
      result$data['accessControllerName'] = l$accessControllerName?.toJson();
    }
    if (_$data.containsKey('scheduleToken')) {
      final l$scheduleToken = scheduleToken;
      result$data['scheduleToken'] = l$scheduleToken?.toJson();
    }
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId?.toJson();
    }
    if (_$data.containsKey('siteName')) {
      final l$siteName = siteName;
      result$data['siteName'] = l$siteName?.toJson();
    }
    if (_$data.containsKey('utcTime')) {
      final l$utcTime = utcTime;
      result$data['utcTime'] = l$utcTime?.toJson();
    }
    if (_$data.containsKey('topic2')) {
      final l$topic2 = topic2;
      result$data['topic2'] = l$topic2?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput<
    Input$ScheduleUpdateEventsIndexResultFilterInput
  >
  get copyWith =>
      CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ScheduleUpdateEventsIndexResultFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$rowId = rowId;
    final lOther$rowId = other.rowId;
    if (_$data.containsKey('rowId') != other._$data.containsKey('rowId')) {
      return false;
    }
    if (l$rowId != lOther$rowId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$accessControllerName = accessControllerName;
    final lOther$accessControllerName = other.accessControllerName;
    if (_$data.containsKey('accessControllerName') !=
        other._$data.containsKey('accessControllerName')) {
      return false;
    }
    if (l$accessControllerName != lOther$accessControllerName) {
      return false;
    }
    final l$scheduleToken = scheduleToken;
    final lOther$scheduleToken = other.scheduleToken;
    if (_$data.containsKey('scheduleToken') !=
        other._$data.containsKey('scheduleToken')) {
      return false;
    }
    if (l$scheduleToken != lOther$scheduleToken) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$siteName = siteName;
    final lOther$siteName = other.siteName;
    if (_$data.containsKey('siteName') !=
        other._$data.containsKey('siteName')) {
      return false;
    }
    if (l$siteName != lOther$siteName) {
      return false;
    }
    final l$utcTime = utcTime;
    final lOther$utcTime = other.utcTime;
    if (_$data.containsKey('utcTime') != other._$data.containsKey('utcTime')) {
      return false;
    }
    if (l$utcTime != lOther$utcTime) {
      return false;
    }
    final l$topic2 = topic2;
    final lOther$topic2 = other.topic2;
    if (_$data.containsKey('topic2') != other._$data.containsKey('topic2')) {
      return false;
    }
    if (l$topic2 != lOther$topic2) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$rowId = rowId;
    final l$accessControllerId = accessControllerId;
    final l$accessControllerName = accessControllerName;
    final l$scheduleToken = scheduleToken;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$utcTime = utcTime;
    final l$topic2 = topic2;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('rowId') ? l$rowId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('accessControllerName')
          ? l$accessControllerName
          : const {},
      _$data.containsKey('scheduleToken') ? l$scheduleToken : const {},
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('siteName') ? l$siteName : const {},
      _$data.containsKey('utcTime') ? l$utcTime : const {},
      _$data.containsKey('topic2') ? l$topic2 : const {},
    ]);
  }
}

abstract class CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput<TRes> {
  factory CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput(
    Input$ScheduleUpdateEventsIndexResultFilterInput instance,
    TRes Function(Input$ScheduleUpdateEventsIndexResultFilterInput) then,
  ) = _CopyWithImpl$Input$ScheduleUpdateEventsIndexResultFilterInput;

  factory CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$ScheduleUpdateEventsIndexResultFilterInput;

  TRes call({
    List<Input$ScheduleUpdateEventsIndexResultFilterInput>? and,
    List<Input$ScheduleUpdateEventsIndexResultFilterInput>? or,
    Input$LongOperationFilterInput? rowId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? accessControllerName,
    Input$StringOperationFilterInput? scheduleToken,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$DateTimeOperationFilterInput? utcTime,
    Input$StringOperationFilterInput? topic2,
  });
  TRes and(
    Iterable<Input$ScheduleUpdateEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput<
          Input$ScheduleUpdateEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$ScheduleUpdateEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput<
          Input$ScheduleUpdateEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith$Input$LongOperationFilterInput<TRes> get rowId;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId;
  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerName;
  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleToken;
  CopyWith$Input$StringOperationFilterInput<TRes> get siteId;
  CopyWith$Input$StringOperationFilterInput<TRes> get siteName;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get utcTime;
  CopyWith$Input$StringOperationFilterInput<TRes> get topic2;
}

class _CopyWithImpl$Input$ScheduleUpdateEventsIndexResultFilterInput<TRes>
    implements CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput<TRes> {
  _CopyWithImpl$Input$ScheduleUpdateEventsIndexResultFilterInput(
    this._instance,
    this._then,
  );

  final Input$ScheduleUpdateEventsIndexResultFilterInput _instance;

  final TRes Function(Input$ScheduleUpdateEventsIndexResultFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? rowId = _undefined,
    Object? accessControllerId = _undefined,
    Object? accessControllerName = _undefined,
    Object? scheduleToken = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? utcTime = _undefined,
    Object? topic2 = _undefined,
  }) => _then(
    Input$ScheduleUpdateEventsIndexResultFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$ScheduleUpdateEventsIndexResultFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input$ScheduleUpdateEventsIndexResultFilterInput>?),
      if (rowId != _undefined)
        'rowId': (rowId as Input$LongOperationFilterInput?),
      if (accessControllerId != _undefined)
        'accessControllerId':
            (accessControllerId as Input$StringOperationFilterInput?),
      if (accessControllerName != _undefined)
        'accessControllerName':
            (accessControllerName as Input$StringOperationFilterInput?),
      if (scheduleToken != _undefined)
        'scheduleToken': (scheduleToken as Input$StringOperationFilterInput?),
      if (siteId != _undefined)
        'siteId': (siteId as Input$StringOperationFilterInput?),
      if (siteName != _undefined)
        'siteName': (siteName as Input$StringOperationFilterInput?),
      if (utcTime != _undefined)
        'utcTime': (utcTime as Input$DateTimeOperationFilterInput?),
      if (topic2 != _undefined)
        'topic2': (topic2 as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$ScheduleUpdateEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput<
          Input$ScheduleUpdateEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$ScheduleUpdateEventsIndexResultFilterInput>? Function(
      Iterable<
        CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput<
          Input$ScheduleUpdateEventsIndexResultFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  CopyWith$Input$LongOperationFilterInput<TRes> get rowId {
    final local$rowId = _instance.rowId;
    return local$rowId == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$rowId,
            (e) => call(rowId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId {
    final local$accessControllerId = _instance.accessControllerId;
    return local$accessControllerId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessControllerId,
            (e) => call(accessControllerId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerName {
    final local$accessControllerName = _instance.accessControllerName;
    return local$accessControllerName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accessControllerName,
            (e) => call(accessControllerName: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleToken {
    final local$scheduleToken = _instance.scheduleToken;
    return local$scheduleToken == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$scheduleToken,
            (e) => call(scheduleToken: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get siteId {
    final local$siteId = _instance.siteId;
    return local$siteId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$siteId,
            (e) => call(siteId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get siteName {
    final local$siteName = _instance.siteName;
    return local$siteName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$siteName,
            (e) => call(siteName: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get utcTime {
    final local$utcTime = _instance.utcTime;
    return local$utcTime == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$utcTime,
            (e) => call(utcTime: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get topic2 {
    final local$topic2 = _instance.topic2;
    return local$topic2 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$topic2,
            (e) => call(topic2: e),
          );
  }
}

class _CopyWithStubImpl$Input$ScheduleUpdateEventsIndexResultFilterInput<TRes>
    implements CopyWith$Input$ScheduleUpdateEventsIndexResultFilterInput<TRes> {
  _CopyWithStubImpl$Input$ScheduleUpdateEventsIndexResultFilterInput(this._res);

  TRes _res;

  call({
    List<Input$ScheduleUpdateEventsIndexResultFilterInput>? and,
    List<Input$ScheduleUpdateEventsIndexResultFilterInput>? or,
    Input$LongOperationFilterInput? rowId,
    Input$StringOperationFilterInput? accessControllerId,
    Input$StringOperationFilterInput? accessControllerName,
    Input$StringOperationFilterInput? scheduleToken,
    Input$StringOperationFilterInput? siteId,
    Input$StringOperationFilterInput? siteName,
    Input$DateTimeOperationFilterInput? utcTime,
    Input$StringOperationFilterInput? topic2,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$LongOperationFilterInput<TRes> get rowId =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accessControllerName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get scheduleToken =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get siteId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get siteName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get utcTime =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get topic2 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$ScheduleUpdateEventsIndexResultSortInput {
  factory Input$ScheduleUpdateEventsIndexResultSortInput({
    Enum$SortEnumType? rowId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? accessControllerName,
    Enum$SortEnumType? scheduleToken,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? utcTime,
    Enum$SortEnumType? topic2,
  }) => Input$ScheduleUpdateEventsIndexResultSortInput._({
    if (rowId != null) r'rowId': rowId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (accessControllerName != null)
      r'accessControllerName': accessControllerName,
    if (scheduleToken != null) r'scheduleToken': scheduleToken,
    if (siteId != null) r'siteId': siteId,
    if (siteName != null) r'siteName': siteName,
    if (utcTime != null) r'utcTime': utcTime,
    if (topic2 != null) r'topic2': topic2,
  });

  Input$ScheduleUpdateEventsIndexResultSortInput._(this._$data);

  factory Input$ScheduleUpdateEventsIndexResultSortInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('rowId')) {
      final l$rowId = data['rowId'];
      result$data['rowId'] = l$rowId == null
          ? null
          : fromJson$Enum$SortEnumType((l$rowId as String));
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessControllerId as String));
    }
    if (data.containsKey('accessControllerName')) {
      final l$accessControllerName = data['accessControllerName'];
      result$data['accessControllerName'] = l$accessControllerName == null
          ? null
          : fromJson$Enum$SortEnumType((l$accessControllerName as String));
    }
    if (data.containsKey('scheduleToken')) {
      final l$scheduleToken = data['scheduleToken'];
      result$data['scheduleToken'] = l$scheduleToken == null
          ? null
          : fromJson$Enum$SortEnumType((l$scheduleToken as String));
    }
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = l$siteId == null
          ? null
          : fromJson$Enum$SortEnumType((l$siteId as String));
    }
    if (data.containsKey('siteName')) {
      final l$siteName = data['siteName'];
      result$data['siteName'] = l$siteName == null
          ? null
          : fromJson$Enum$SortEnumType((l$siteName as String));
    }
    if (data.containsKey('utcTime')) {
      final l$utcTime = data['utcTime'];
      result$data['utcTime'] = l$utcTime == null
          ? null
          : fromJson$Enum$SortEnumType((l$utcTime as String));
    }
    if (data.containsKey('topic2')) {
      final l$topic2 = data['topic2'];
      result$data['topic2'] = l$topic2 == null
          ? null
          : fromJson$Enum$SortEnumType((l$topic2 as String));
    }
    return Input$ScheduleUpdateEventsIndexResultSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get rowId => (_$data['rowId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessControllerId =>
      (_$data['accessControllerId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accessControllerName =>
      (_$data['accessControllerName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get scheduleToken =>
      (_$data['scheduleToken'] as Enum$SortEnumType?);

  Enum$SortEnumType? get siteId => (_$data['siteId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get siteName => (_$data['siteName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get utcTime => (_$data['utcTime'] as Enum$SortEnumType?);

  Enum$SortEnumType? get topic2 => (_$data['topic2'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('rowId')) {
      final l$rowId = rowId;
      result$data['rowId'] = l$rowId == null
          ? null
          : toJson$Enum$SortEnumType(l$rowId);
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId == null
          ? null
          : toJson$Enum$SortEnumType(l$accessControllerId);
    }
    if (_$data.containsKey('accessControllerName')) {
      final l$accessControllerName = accessControllerName;
      result$data['accessControllerName'] = l$accessControllerName == null
          ? null
          : toJson$Enum$SortEnumType(l$accessControllerName);
    }
    if (_$data.containsKey('scheduleToken')) {
      final l$scheduleToken = scheduleToken;
      result$data['scheduleToken'] = l$scheduleToken == null
          ? null
          : toJson$Enum$SortEnumType(l$scheduleToken);
    }
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId == null
          ? null
          : toJson$Enum$SortEnumType(l$siteId);
    }
    if (_$data.containsKey('siteName')) {
      final l$siteName = siteName;
      result$data['siteName'] = l$siteName == null
          ? null
          : toJson$Enum$SortEnumType(l$siteName);
    }
    if (_$data.containsKey('utcTime')) {
      final l$utcTime = utcTime;
      result$data['utcTime'] = l$utcTime == null
          ? null
          : toJson$Enum$SortEnumType(l$utcTime);
    }
    if (_$data.containsKey('topic2')) {
      final l$topic2 = topic2;
      result$data['topic2'] = l$topic2 == null
          ? null
          : toJson$Enum$SortEnumType(l$topic2);
    }
    return result$data;
  }

  CopyWith$Input$ScheduleUpdateEventsIndexResultSortInput<
    Input$ScheduleUpdateEventsIndexResultSortInput
  >
  get copyWith =>
      CopyWith$Input$ScheduleUpdateEventsIndexResultSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ScheduleUpdateEventsIndexResultSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rowId = rowId;
    final lOther$rowId = other.rowId;
    if (_$data.containsKey('rowId') != other._$data.containsKey('rowId')) {
      return false;
    }
    if (l$rowId != lOther$rowId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$accessControllerName = accessControllerName;
    final lOther$accessControllerName = other.accessControllerName;
    if (_$data.containsKey('accessControllerName') !=
        other._$data.containsKey('accessControllerName')) {
      return false;
    }
    if (l$accessControllerName != lOther$accessControllerName) {
      return false;
    }
    final l$scheduleToken = scheduleToken;
    final lOther$scheduleToken = other.scheduleToken;
    if (_$data.containsKey('scheduleToken') !=
        other._$data.containsKey('scheduleToken')) {
      return false;
    }
    if (l$scheduleToken != lOther$scheduleToken) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$siteName = siteName;
    final lOther$siteName = other.siteName;
    if (_$data.containsKey('siteName') !=
        other._$data.containsKey('siteName')) {
      return false;
    }
    if (l$siteName != lOther$siteName) {
      return false;
    }
    final l$utcTime = utcTime;
    final lOther$utcTime = other.utcTime;
    if (_$data.containsKey('utcTime') != other._$data.containsKey('utcTime')) {
      return false;
    }
    if (l$utcTime != lOther$utcTime) {
      return false;
    }
    final l$topic2 = topic2;
    final lOther$topic2 = other.topic2;
    if (_$data.containsKey('topic2') != other._$data.containsKey('topic2')) {
      return false;
    }
    if (l$topic2 != lOther$topic2) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$rowId = rowId;
    final l$accessControllerId = accessControllerId;
    final l$accessControllerName = accessControllerName;
    final l$scheduleToken = scheduleToken;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$utcTime = utcTime;
    final l$topic2 = topic2;
    return Object.hashAll([
      _$data.containsKey('rowId') ? l$rowId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('accessControllerName')
          ? l$accessControllerName
          : const {},
      _$data.containsKey('scheduleToken') ? l$scheduleToken : const {},
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('siteName') ? l$siteName : const {},
      _$data.containsKey('utcTime') ? l$utcTime : const {},
      _$data.containsKey('topic2') ? l$topic2 : const {},
    ]);
  }
}

abstract class CopyWith$Input$ScheduleUpdateEventsIndexResultSortInput<TRes> {
  factory CopyWith$Input$ScheduleUpdateEventsIndexResultSortInput(
    Input$ScheduleUpdateEventsIndexResultSortInput instance,
    TRes Function(Input$ScheduleUpdateEventsIndexResultSortInput) then,
  ) = _CopyWithImpl$Input$ScheduleUpdateEventsIndexResultSortInput;

  factory CopyWith$Input$ScheduleUpdateEventsIndexResultSortInput.stub(
    TRes res,
  ) = _CopyWithStubImpl$Input$ScheduleUpdateEventsIndexResultSortInput;

  TRes call({
    Enum$SortEnumType? rowId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? accessControllerName,
    Enum$SortEnumType? scheduleToken,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? utcTime,
    Enum$SortEnumType? topic2,
  });
}

class _CopyWithImpl$Input$ScheduleUpdateEventsIndexResultSortInput<TRes>
    implements CopyWith$Input$ScheduleUpdateEventsIndexResultSortInput<TRes> {
  _CopyWithImpl$Input$ScheduleUpdateEventsIndexResultSortInput(
    this._instance,
    this._then,
  );

  final Input$ScheduleUpdateEventsIndexResultSortInput _instance;

  final TRes Function(Input$ScheduleUpdateEventsIndexResultSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rowId = _undefined,
    Object? accessControllerId = _undefined,
    Object? accessControllerName = _undefined,
    Object? scheduleToken = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? utcTime = _undefined,
    Object? topic2 = _undefined,
  }) => _then(
    Input$ScheduleUpdateEventsIndexResultSortInput._({
      ..._instance._$data,
      if (rowId != _undefined) 'rowId': (rowId as Enum$SortEnumType?),
      if (accessControllerId != _undefined)
        'accessControllerId': (accessControllerId as Enum$SortEnumType?),
      if (accessControllerName != _undefined)
        'accessControllerName': (accessControllerName as Enum$SortEnumType?),
      if (scheduleToken != _undefined)
        'scheduleToken': (scheduleToken as Enum$SortEnumType?),
      if (siteId != _undefined) 'siteId': (siteId as Enum$SortEnumType?),
      if (siteName != _undefined) 'siteName': (siteName as Enum$SortEnumType?),
      if (utcTime != _undefined) 'utcTime': (utcTime as Enum$SortEnumType?),
      if (topic2 != _undefined) 'topic2': (topic2 as Enum$SortEnumType?),
    }),
  );
}

class _CopyWithStubImpl$Input$ScheduleUpdateEventsIndexResultSortInput<TRes>
    implements CopyWith$Input$ScheduleUpdateEventsIndexResultSortInput<TRes> {
  _CopyWithStubImpl$Input$ScheduleUpdateEventsIndexResultSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? rowId,
    Enum$SortEnumType? accessControllerId,
    Enum$SortEnumType? accessControllerName,
    Enum$SortEnumType? scheduleToken,
    Enum$SortEnumType? siteId,
    Enum$SortEnumType? siteName,
    Enum$SortEnumType? utcTime,
    Enum$SortEnumType? topic2,
  }) => _res;
}

class Input$SearchAccessCredentialsInput {
  factory Input$SearchAccessCredentialsInput({
    String? query,
    required List<String> accessControllerIds,
    required List<String> groupIds,
  }) => Input$SearchAccessCredentialsInput._({
    if (query != null) r'query': query,
    r'accessControllerIds': accessControllerIds,
    r'groupIds': groupIds,
  });

  Input$SearchAccessCredentialsInput._(this._$data);

  factory Input$SearchAccessCredentialsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    final l$accessControllerIds = data['accessControllerIds'];
    result$data['accessControllerIds'] =
        (l$accessControllerIds as List<dynamic>)
            .map((e) => (e as String))
            .toList();
    final l$groupIds = data['groupIds'];
    result$data['groupIds'] = (l$groupIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Input$SearchAccessCredentialsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  List<String> get accessControllerIds =>
      (_$data['accessControllerIds'] as List<String>);

  List<String> get groupIds => (_$data['groupIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    final l$accessControllerIds = accessControllerIds;
    result$data['accessControllerIds'] = l$accessControllerIds
        .map((e) => e)
        .toList();
    final l$groupIds = groupIds;
    result$data['groupIds'] = l$groupIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$SearchAccessCredentialsInput<
    Input$SearchAccessCredentialsInput
  >
  get copyWith => CopyWith$Input$SearchAccessCredentialsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SearchAccessCredentialsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$accessControllerIds = accessControllerIds;
    final lOther$accessControllerIds = other.accessControllerIds;
    if (l$accessControllerIds.length != lOther$accessControllerIds.length) {
      return false;
    }
    for (int i = 0; i < l$accessControllerIds.length; i++) {
      final l$accessControllerIds$entry = l$accessControllerIds[i];
      final lOther$accessControllerIds$entry = lOther$accessControllerIds[i];
      if (l$accessControllerIds$entry != lOther$accessControllerIds$entry) {
        return false;
      }
    }
    final l$groupIds = groupIds;
    final lOther$groupIds = other.groupIds;
    if (l$groupIds.length != lOther$groupIds.length) {
      return false;
    }
    for (int i = 0; i < l$groupIds.length; i++) {
      final l$groupIds$entry = l$groupIds[i];
      final lOther$groupIds$entry = lOther$groupIds[i];
      if (l$groupIds$entry != lOther$groupIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$accessControllerIds = accessControllerIds;
    final l$groupIds = groupIds;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      Object.hashAll(l$accessControllerIds.map((v) => v)),
      Object.hashAll(l$groupIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$SearchAccessCredentialsInput<TRes> {
  factory CopyWith$Input$SearchAccessCredentialsInput(
    Input$SearchAccessCredentialsInput instance,
    TRes Function(Input$SearchAccessCredentialsInput) then,
  ) = _CopyWithImpl$Input$SearchAccessCredentialsInput;

  factory CopyWith$Input$SearchAccessCredentialsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SearchAccessCredentialsInput;

  TRes call({
    String? query,
    List<String>? accessControllerIds,
    List<String>? groupIds,
  });
}

class _CopyWithImpl$Input$SearchAccessCredentialsInput<TRes>
    implements CopyWith$Input$SearchAccessCredentialsInput<TRes> {
  _CopyWithImpl$Input$SearchAccessCredentialsInput(this._instance, this._then);

  final Input$SearchAccessCredentialsInput _instance;

  final TRes Function(Input$SearchAccessCredentialsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? accessControllerIds = _undefined,
    Object? groupIds = _undefined,
  }) => _then(
    Input$SearchAccessCredentialsInput._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (accessControllerIds != _undefined && accessControllerIds != null)
        'accessControllerIds': (accessControllerIds as List<String>),
      if (groupIds != _undefined && groupIds != null)
        'groupIds': (groupIds as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Input$SearchAccessCredentialsInput<TRes>
    implements CopyWith$Input$SearchAccessCredentialsInput<TRes> {
  _CopyWithStubImpl$Input$SearchAccessCredentialsInput(this._res);

  TRes _res;

  call({
    String? query,
    List<String>? accessControllerIds,
    List<String>? groupIds,
  }) => _res;
}

class Input$SearchDoorAccessAttemptsInput {
  factory Input$SearchDoorAccessAttemptsInput({
    String? query,
    required List<String> userIds,
    DateTime? from,
    DateTime? to,
    String? eventType,
    required List<String> siteIds,
    required List<String> accessControllerIds,
    bool? syncEventsFirst,
    int? unixUtcTime,
  }) => Input$SearchDoorAccessAttemptsInput._({
    if (query != null) r'query': query,
    r'userIds': userIds,
    if (from != null) r'from': from,
    if (to != null) r'to': to,
    if (eventType != null) r'eventType': eventType,
    r'siteIds': siteIds,
    r'accessControllerIds': accessControllerIds,
    if (syncEventsFirst != null) r'syncEventsFirst': syncEventsFirst,
    if (unixUtcTime != null) r'unixUtcTime': unixUtcTime,
  });

  Input$SearchDoorAccessAttemptsInput._(this._$data);

  factory Input$SearchDoorAccessAttemptsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    final l$userIds = data['userIds'];
    result$data['userIds'] = (l$userIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    if (data.containsKey('from')) {
      final l$from = data['from'];
      result$data['from'] = l$from == null
          ? null
          : DateTime.parse((l$from as String));
    }
    if (data.containsKey('to')) {
      final l$to = data['to'];
      result$data['to'] = l$to == null
          ? null
          : DateTime.parse((l$to as String));
    }
    if (data.containsKey('eventType')) {
      final l$eventType = data['eventType'];
      result$data['eventType'] = (l$eventType as String?);
    }
    final l$siteIds = data['siteIds'];
    result$data['siteIds'] = (l$siteIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$accessControllerIds = data['accessControllerIds'];
    result$data['accessControllerIds'] =
        (l$accessControllerIds as List<dynamic>)
            .map((e) => (e as String))
            .toList();
    if (data.containsKey('syncEventsFirst')) {
      final l$syncEventsFirst = data['syncEventsFirst'];
      result$data['syncEventsFirst'] = (l$syncEventsFirst as bool?);
    }
    if (data.containsKey('unixUtcTime')) {
      final l$unixUtcTime = data['unixUtcTime'];
      result$data['unixUtcTime'] = (l$unixUtcTime as int?);
    }
    return Input$SearchDoorAccessAttemptsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  List<String> get userIds => (_$data['userIds'] as List<String>);

  DateTime? get from => (_$data['from'] as DateTime?);

  DateTime? get to => (_$data['to'] as DateTime?);

  String? get eventType => (_$data['eventType'] as String?);

  List<String> get siteIds => (_$data['siteIds'] as List<String>);

  List<String> get accessControllerIds =>
      (_$data['accessControllerIds'] as List<String>);

  bool? get syncEventsFirst => (_$data['syncEventsFirst'] as bool?);

  int? get unixUtcTime => (_$data['unixUtcTime'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    final l$userIds = userIds;
    result$data['userIds'] = l$userIds.map((e) => e).toList();
    if (_$data.containsKey('from')) {
      final l$from = from;
      result$data['from'] = l$from?.toIso8601String();
    }
    if (_$data.containsKey('to')) {
      final l$to = to;
      result$data['to'] = l$to?.toIso8601String();
    }
    if (_$data.containsKey('eventType')) {
      final l$eventType = eventType;
      result$data['eventType'] = l$eventType;
    }
    final l$siteIds = siteIds;
    result$data['siteIds'] = l$siteIds.map((e) => e).toList();
    final l$accessControllerIds = accessControllerIds;
    result$data['accessControllerIds'] = l$accessControllerIds
        .map((e) => e)
        .toList();
    if (_$data.containsKey('syncEventsFirst')) {
      final l$syncEventsFirst = syncEventsFirst;
      result$data['syncEventsFirst'] = l$syncEventsFirst;
    }
    if (_$data.containsKey('unixUtcTime')) {
      final l$unixUtcTime = unixUtcTime;
      result$data['unixUtcTime'] = l$unixUtcTime;
    }
    return result$data;
  }

  CopyWith$Input$SearchDoorAccessAttemptsInput<
    Input$SearchDoorAccessAttemptsInput
  >
  get copyWith => CopyWith$Input$SearchDoorAccessAttemptsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SearchDoorAccessAttemptsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$userIds = userIds;
    final lOther$userIds = other.userIds;
    if (l$userIds.length != lOther$userIds.length) {
      return false;
    }
    for (int i = 0; i < l$userIds.length; i++) {
      final l$userIds$entry = l$userIds[i];
      final lOther$userIds$entry = lOther$userIds[i];
      if (l$userIds$entry != lOther$userIds$entry) {
        return false;
      }
    }
    final l$from = from;
    final lOther$from = other.from;
    if (_$data.containsKey('from') != other._$data.containsKey('from')) {
      return false;
    }
    if (l$from != lOther$from) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (_$data.containsKey('to') != other._$data.containsKey('to')) {
      return false;
    }
    if (l$to != lOther$to) {
      return false;
    }
    final l$eventType = eventType;
    final lOther$eventType = other.eventType;
    if (_$data.containsKey('eventType') !=
        other._$data.containsKey('eventType')) {
      return false;
    }
    if (l$eventType != lOther$eventType) {
      return false;
    }
    final l$siteIds = siteIds;
    final lOther$siteIds = other.siteIds;
    if (l$siteIds.length != lOther$siteIds.length) {
      return false;
    }
    for (int i = 0; i < l$siteIds.length; i++) {
      final l$siteIds$entry = l$siteIds[i];
      final lOther$siteIds$entry = lOther$siteIds[i];
      if (l$siteIds$entry != lOther$siteIds$entry) {
        return false;
      }
    }
    final l$accessControllerIds = accessControllerIds;
    final lOther$accessControllerIds = other.accessControllerIds;
    if (l$accessControllerIds.length != lOther$accessControllerIds.length) {
      return false;
    }
    for (int i = 0; i < l$accessControllerIds.length; i++) {
      final l$accessControllerIds$entry = l$accessControllerIds[i];
      final lOther$accessControllerIds$entry = lOther$accessControllerIds[i];
      if (l$accessControllerIds$entry != lOther$accessControllerIds$entry) {
        return false;
      }
    }
    final l$syncEventsFirst = syncEventsFirst;
    final lOther$syncEventsFirst = other.syncEventsFirst;
    if (_$data.containsKey('syncEventsFirst') !=
        other._$data.containsKey('syncEventsFirst')) {
      return false;
    }
    if (l$syncEventsFirst != lOther$syncEventsFirst) {
      return false;
    }
    final l$unixUtcTime = unixUtcTime;
    final lOther$unixUtcTime = other.unixUtcTime;
    if (_$data.containsKey('unixUtcTime') !=
        other._$data.containsKey('unixUtcTime')) {
      return false;
    }
    if (l$unixUtcTime != lOther$unixUtcTime) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$userIds = userIds;
    final l$from = from;
    final l$to = to;
    final l$eventType = eventType;
    final l$siteIds = siteIds;
    final l$accessControllerIds = accessControllerIds;
    final l$syncEventsFirst = syncEventsFirst;
    final l$unixUtcTime = unixUtcTime;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      Object.hashAll(l$userIds.map((v) => v)),
      _$data.containsKey('from') ? l$from : const {},
      _$data.containsKey('to') ? l$to : const {},
      _$data.containsKey('eventType') ? l$eventType : const {},
      Object.hashAll(l$siteIds.map((v) => v)),
      Object.hashAll(l$accessControllerIds.map((v) => v)),
      _$data.containsKey('syncEventsFirst') ? l$syncEventsFirst : const {},
      _$data.containsKey('unixUtcTime') ? l$unixUtcTime : const {},
    ]);
  }
}

abstract class CopyWith$Input$SearchDoorAccessAttemptsInput<TRes> {
  factory CopyWith$Input$SearchDoorAccessAttemptsInput(
    Input$SearchDoorAccessAttemptsInput instance,
    TRes Function(Input$SearchDoorAccessAttemptsInput) then,
  ) = _CopyWithImpl$Input$SearchDoorAccessAttemptsInput;

  factory CopyWith$Input$SearchDoorAccessAttemptsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SearchDoorAccessAttemptsInput;

  TRes call({
    String? query,
    List<String>? userIds,
    DateTime? from,
    DateTime? to,
    String? eventType,
    List<String>? siteIds,
    List<String>? accessControllerIds,
    bool? syncEventsFirst,
    int? unixUtcTime,
  });
}

class _CopyWithImpl$Input$SearchDoorAccessAttemptsInput<TRes>
    implements CopyWith$Input$SearchDoorAccessAttemptsInput<TRes> {
  _CopyWithImpl$Input$SearchDoorAccessAttemptsInput(this._instance, this._then);

  final Input$SearchDoorAccessAttemptsInput _instance;

  final TRes Function(Input$SearchDoorAccessAttemptsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? userIds = _undefined,
    Object? from = _undefined,
    Object? to = _undefined,
    Object? eventType = _undefined,
    Object? siteIds = _undefined,
    Object? accessControllerIds = _undefined,
    Object? syncEventsFirst = _undefined,
    Object? unixUtcTime = _undefined,
  }) => _then(
    Input$SearchDoorAccessAttemptsInput._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (userIds != _undefined && userIds != null)
        'userIds': (userIds as List<String>),
      if (from != _undefined) 'from': (from as DateTime?),
      if (to != _undefined) 'to': (to as DateTime?),
      if (eventType != _undefined) 'eventType': (eventType as String?),
      if (siteIds != _undefined && siteIds != null)
        'siteIds': (siteIds as List<String>),
      if (accessControllerIds != _undefined && accessControllerIds != null)
        'accessControllerIds': (accessControllerIds as List<String>),
      if (syncEventsFirst != _undefined)
        'syncEventsFirst': (syncEventsFirst as bool?),
      if (unixUtcTime != _undefined) 'unixUtcTime': (unixUtcTime as int?),
    }),
  );
}

class _CopyWithStubImpl$Input$SearchDoorAccessAttemptsInput<TRes>
    implements CopyWith$Input$SearchDoorAccessAttemptsInput<TRes> {
  _CopyWithStubImpl$Input$SearchDoorAccessAttemptsInput(this._res);

  TRes _res;

  call({
    String? query,
    List<String>? userIds,
    DateTime? from,
    DateTime? to,
    String? eventType,
    List<String>? siteIds,
    List<String>? accessControllerIds,
    bool? syncEventsFirst,
    int? unixUtcTime,
  }) => _res;
}

class Input$SearchDoorInput {
  factory Input$SearchDoorInput({
    String? query,
    required List<String> siteIds,
    required List<String> accessControllerIds,
  }) => Input$SearchDoorInput._({
    if (query != null) r'query': query,
    r'siteIds': siteIds,
    r'accessControllerIds': accessControllerIds,
  });

  Input$SearchDoorInput._(this._$data);

  factory Input$SearchDoorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    final l$siteIds = data['siteIds'];
    result$data['siteIds'] = (l$siteIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$accessControllerIds = data['accessControllerIds'];
    result$data['accessControllerIds'] =
        (l$accessControllerIds as List<dynamic>)
            .map((e) => (e as String))
            .toList();
    return Input$SearchDoorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  List<String> get siteIds => (_$data['siteIds'] as List<String>);

  List<String> get accessControllerIds =>
      (_$data['accessControllerIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    final l$siteIds = siteIds;
    result$data['siteIds'] = l$siteIds.map((e) => e).toList();
    final l$accessControllerIds = accessControllerIds;
    result$data['accessControllerIds'] = l$accessControllerIds
        .map((e) => e)
        .toList();
    return result$data;
  }

  CopyWith$Input$SearchDoorInput<Input$SearchDoorInput> get copyWith =>
      CopyWith$Input$SearchDoorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SearchDoorInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$siteIds = siteIds;
    final lOther$siteIds = other.siteIds;
    if (l$siteIds.length != lOther$siteIds.length) {
      return false;
    }
    for (int i = 0; i < l$siteIds.length; i++) {
      final l$siteIds$entry = l$siteIds[i];
      final lOther$siteIds$entry = lOther$siteIds[i];
      if (l$siteIds$entry != lOther$siteIds$entry) {
        return false;
      }
    }
    final l$accessControllerIds = accessControllerIds;
    final lOther$accessControllerIds = other.accessControllerIds;
    if (l$accessControllerIds.length != lOther$accessControllerIds.length) {
      return false;
    }
    for (int i = 0; i < l$accessControllerIds.length; i++) {
      final l$accessControllerIds$entry = l$accessControllerIds[i];
      final lOther$accessControllerIds$entry = lOther$accessControllerIds[i];
      if (l$accessControllerIds$entry != lOther$accessControllerIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$siteIds = siteIds;
    final l$accessControllerIds = accessControllerIds;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      Object.hashAll(l$siteIds.map((v) => v)),
      Object.hashAll(l$accessControllerIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$SearchDoorInput<TRes> {
  factory CopyWith$Input$SearchDoorInput(
    Input$SearchDoorInput instance,
    TRes Function(Input$SearchDoorInput) then,
  ) = _CopyWithImpl$Input$SearchDoorInput;

  factory CopyWith$Input$SearchDoorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SearchDoorInput;

  TRes call({
    String? query,
    List<String>? siteIds,
    List<String>? accessControllerIds,
  });
}

class _CopyWithImpl$Input$SearchDoorInput<TRes>
    implements CopyWith$Input$SearchDoorInput<TRes> {
  _CopyWithImpl$Input$SearchDoorInput(this._instance, this._then);

  final Input$SearchDoorInput _instance;

  final TRes Function(Input$SearchDoorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? siteIds = _undefined,
    Object? accessControllerIds = _undefined,
  }) => _then(
    Input$SearchDoorInput._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (siteIds != _undefined && siteIds != null)
        'siteIds': (siteIds as List<String>),
      if (accessControllerIds != _undefined && accessControllerIds != null)
        'accessControllerIds': (accessControllerIds as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Input$SearchDoorInput<TRes>
    implements CopyWith$Input$SearchDoorInput<TRes> {
  _CopyWithStubImpl$Input$SearchDoorInput(this._res);

  TRes _res;

  call({
    String? query,
    List<String>? siteIds,
    List<String>? accessControllerIds,
  }) => _res;
}

class Input$SearchScheduleStateChangeInput {
  factory Input$SearchScheduleStateChangeInput({
    String? query,
    DateTime? from,
    DateTime? to,
    required List<String> siteIds,
    required List<String> accessControllerIds,
  }) => Input$SearchScheduleStateChangeInput._({
    if (query != null) r'query': query,
    if (from != null) r'from': from,
    if (to != null) r'to': to,
    r'siteIds': siteIds,
    r'accessControllerIds': accessControllerIds,
  });

  Input$SearchScheduleStateChangeInput._(this._$data);

  factory Input$SearchScheduleStateChangeInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('from')) {
      final l$from = data['from'];
      result$data['from'] = l$from == null
          ? null
          : DateTime.parse((l$from as String));
    }
    if (data.containsKey('to')) {
      final l$to = data['to'];
      result$data['to'] = l$to == null
          ? null
          : DateTime.parse((l$to as String));
    }
    final l$siteIds = data['siteIds'];
    result$data['siteIds'] = (l$siteIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$accessControllerIds = data['accessControllerIds'];
    result$data['accessControllerIds'] =
        (l$accessControllerIds as List<dynamic>)
            .map((e) => (e as String))
            .toList();
    return Input$SearchScheduleStateChangeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  DateTime? get from => (_$data['from'] as DateTime?);

  DateTime? get to => (_$data['to'] as DateTime?);

  List<String> get siteIds => (_$data['siteIds'] as List<String>);

  List<String> get accessControllerIds =>
      (_$data['accessControllerIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('from')) {
      final l$from = from;
      result$data['from'] = l$from?.toIso8601String();
    }
    if (_$data.containsKey('to')) {
      final l$to = to;
      result$data['to'] = l$to?.toIso8601String();
    }
    final l$siteIds = siteIds;
    result$data['siteIds'] = l$siteIds.map((e) => e).toList();
    final l$accessControllerIds = accessControllerIds;
    result$data['accessControllerIds'] = l$accessControllerIds
        .map((e) => e)
        .toList();
    return result$data;
  }

  CopyWith$Input$SearchScheduleStateChangeInput<
    Input$SearchScheduleStateChangeInput
  >
  get copyWith => CopyWith$Input$SearchScheduleStateChangeInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SearchScheduleStateChangeInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (_$data.containsKey('from') != other._$data.containsKey('from')) {
      return false;
    }
    if (l$from != lOther$from) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (_$data.containsKey('to') != other._$data.containsKey('to')) {
      return false;
    }
    if (l$to != lOther$to) {
      return false;
    }
    final l$siteIds = siteIds;
    final lOther$siteIds = other.siteIds;
    if (l$siteIds.length != lOther$siteIds.length) {
      return false;
    }
    for (int i = 0; i < l$siteIds.length; i++) {
      final l$siteIds$entry = l$siteIds[i];
      final lOther$siteIds$entry = lOther$siteIds[i];
      if (l$siteIds$entry != lOther$siteIds$entry) {
        return false;
      }
    }
    final l$accessControllerIds = accessControllerIds;
    final lOther$accessControllerIds = other.accessControllerIds;
    if (l$accessControllerIds.length != lOther$accessControllerIds.length) {
      return false;
    }
    for (int i = 0; i < l$accessControllerIds.length; i++) {
      final l$accessControllerIds$entry = l$accessControllerIds[i];
      final lOther$accessControllerIds$entry = lOther$accessControllerIds[i];
      if (l$accessControllerIds$entry != lOther$accessControllerIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$from = from;
    final l$to = to;
    final l$siteIds = siteIds;
    final l$accessControllerIds = accessControllerIds;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('from') ? l$from : const {},
      _$data.containsKey('to') ? l$to : const {},
      Object.hashAll(l$siteIds.map((v) => v)),
      Object.hashAll(l$accessControllerIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$SearchScheduleStateChangeInput<TRes> {
  factory CopyWith$Input$SearchScheduleStateChangeInput(
    Input$SearchScheduleStateChangeInput instance,
    TRes Function(Input$SearchScheduleStateChangeInput) then,
  ) = _CopyWithImpl$Input$SearchScheduleStateChangeInput;

  factory CopyWith$Input$SearchScheduleStateChangeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SearchScheduleStateChangeInput;

  TRes call({
    String? query,
    DateTime? from,
    DateTime? to,
    List<String>? siteIds,
    List<String>? accessControllerIds,
  });
}

class _CopyWithImpl$Input$SearchScheduleStateChangeInput<TRes>
    implements CopyWith$Input$SearchScheduleStateChangeInput<TRes> {
  _CopyWithImpl$Input$SearchScheduleStateChangeInput(
    this._instance,
    this._then,
  );

  final Input$SearchScheduleStateChangeInput _instance;

  final TRes Function(Input$SearchScheduleStateChangeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? from = _undefined,
    Object? to = _undefined,
    Object? siteIds = _undefined,
    Object? accessControllerIds = _undefined,
  }) => _then(
    Input$SearchScheduleStateChangeInput._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (from != _undefined) 'from': (from as DateTime?),
      if (to != _undefined) 'to': (to as DateTime?),
      if (siteIds != _undefined && siteIds != null)
        'siteIds': (siteIds as List<String>),
      if (accessControllerIds != _undefined && accessControllerIds != null)
        'accessControllerIds': (accessControllerIds as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Input$SearchScheduleStateChangeInput<TRes>
    implements CopyWith$Input$SearchScheduleStateChangeInput<TRes> {
  _CopyWithStubImpl$Input$SearchScheduleStateChangeInput(this._res);

  TRes _res;

  call({
    String? query,
    DateTime? from,
    DateTime? to,
    List<String>? siteIds,
    List<String>? accessControllerIds,
  }) => _res;
}

class Input$SearchScheduleUpdateInput {
  factory Input$SearchScheduleUpdateInput({
    String? query,
    DateTime? from,
    DateTime? to,
    String? eventType,
    required List<String> siteIds,
    required List<String> accessControllerIds,
  }) => Input$SearchScheduleUpdateInput._({
    if (query != null) r'query': query,
    if (from != null) r'from': from,
    if (to != null) r'to': to,
    if (eventType != null) r'eventType': eventType,
    r'siteIds': siteIds,
    r'accessControllerIds': accessControllerIds,
  });

  Input$SearchScheduleUpdateInput._(this._$data);

  factory Input$SearchScheduleUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('from')) {
      final l$from = data['from'];
      result$data['from'] = l$from == null
          ? null
          : DateTime.parse((l$from as String));
    }
    if (data.containsKey('to')) {
      final l$to = data['to'];
      result$data['to'] = l$to == null
          ? null
          : DateTime.parse((l$to as String));
    }
    if (data.containsKey('eventType')) {
      final l$eventType = data['eventType'];
      result$data['eventType'] = (l$eventType as String?);
    }
    final l$siteIds = data['siteIds'];
    result$data['siteIds'] = (l$siteIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$accessControllerIds = data['accessControllerIds'];
    result$data['accessControllerIds'] =
        (l$accessControllerIds as List<dynamic>)
            .map((e) => (e as String))
            .toList();
    return Input$SearchScheduleUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  DateTime? get from => (_$data['from'] as DateTime?);

  DateTime? get to => (_$data['to'] as DateTime?);

  String? get eventType => (_$data['eventType'] as String?);

  List<String> get siteIds => (_$data['siteIds'] as List<String>);

  List<String> get accessControllerIds =>
      (_$data['accessControllerIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('from')) {
      final l$from = from;
      result$data['from'] = l$from?.toIso8601String();
    }
    if (_$data.containsKey('to')) {
      final l$to = to;
      result$data['to'] = l$to?.toIso8601String();
    }
    if (_$data.containsKey('eventType')) {
      final l$eventType = eventType;
      result$data['eventType'] = l$eventType;
    }
    final l$siteIds = siteIds;
    result$data['siteIds'] = l$siteIds.map((e) => e).toList();
    final l$accessControllerIds = accessControllerIds;
    result$data['accessControllerIds'] = l$accessControllerIds
        .map((e) => e)
        .toList();
    return result$data;
  }

  CopyWith$Input$SearchScheduleUpdateInput<Input$SearchScheduleUpdateInput>
  get copyWith => CopyWith$Input$SearchScheduleUpdateInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SearchScheduleUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (_$data.containsKey('from') != other._$data.containsKey('from')) {
      return false;
    }
    if (l$from != lOther$from) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (_$data.containsKey('to') != other._$data.containsKey('to')) {
      return false;
    }
    if (l$to != lOther$to) {
      return false;
    }
    final l$eventType = eventType;
    final lOther$eventType = other.eventType;
    if (_$data.containsKey('eventType') !=
        other._$data.containsKey('eventType')) {
      return false;
    }
    if (l$eventType != lOther$eventType) {
      return false;
    }
    final l$siteIds = siteIds;
    final lOther$siteIds = other.siteIds;
    if (l$siteIds.length != lOther$siteIds.length) {
      return false;
    }
    for (int i = 0; i < l$siteIds.length; i++) {
      final l$siteIds$entry = l$siteIds[i];
      final lOther$siteIds$entry = lOther$siteIds[i];
      if (l$siteIds$entry != lOther$siteIds$entry) {
        return false;
      }
    }
    final l$accessControllerIds = accessControllerIds;
    final lOther$accessControllerIds = other.accessControllerIds;
    if (l$accessControllerIds.length != lOther$accessControllerIds.length) {
      return false;
    }
    for (int i = 0; i < l$accessControllerIds.length; i++) {
      final l$accessControllerIds$entry = l$accessControllerIds[i];
      final lOther$accessControllerIds$entry = lOther$accessControllerIds[i];
      if (l$accessControllerIds$entry != lOther$accessControllerIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$from = from;
    final l$to = to;
    final l$eventType = eventType;
    final l$siteIds = siteIds;
    final l$accessControllerIds = accessControllerIds;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('from') ? l$from : const {},
      _$data.containsKey('to') ? l$to : const {},
      _$data.containsKey('eventType') ? l$eventType : const {},
      Object.hashAll(l$siteIds.map((v) => v)),
      Object.hashAll(l$accessControllerIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$SearchScheduleUpdateInput<TRes> {
  factory CopyWith$Input$SearchScheduleUpdateInput(
    Input$SearchScheduleUpdateInput instance,
    TRes Function(Input$SearchScheduleUpdateInput) then,
  ) = _CopyWithImpl$Input$SearchScheduleUpdateInput;

  factory CopyWith$Input$SearchScheduleUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SearchScheduleUpdateInput;

  TRes call({
    String? query,
    DateTime? from,
    DateTime? to,
    String? eventType,
    List<String>? siteIds,
    List<String>? accessControllerIds,
  });
}

class _CopyWithImpl$Input$SearchScheduleUpdateInput<TRes>
    implements CopyWith$Input$SearchScheduleUpdateInput<TRes> {
  _CopyWithImpl$Input$SearchScheduleUpdateInput(this._instance, this._then);

  final Input$SearchScheduleUpdateInput _instance;

  final TRes Function(Input$SearchScheduleUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? from = _undefined,
    Object? to = _undefined,
    Object? eventType = _undefined,
    Object? siteIds = _undefined,
    Object? accessControllerIds = _undefined,
  }) => _then(
    Input$SearchScheduleUpdateInput._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (from != _undefined) 'from': (from as DateTime?),
      if (to != _undefined) 'to': (to as DateTime?),
      if (eventType != _undefined) 'eventType': (eventType as String?),
      if (siteIds != _undefined && siteIds != null)
        'siteIds': (siteIds as List<String>),
      if (accessControllerIds != _undefined && accessControllerIds != null)
        'accessControllerIds': (accessControllerIds as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Input$SearchScheduleUpdateInput<TRes>
    implements CopyWith$Input$SearchScheduleUpdateInput<TRes> {
  _CopyWithStubImpl$Input$SearchScheduleUpdateInput(this._res);

  TRes _res;

  call({
    String? query,
    DateTime? from,
    DateTime? to,
    String? eventType,
    List<String>? siteIds,
    List<String>? accessControllerIds,
  }) => _res;
}

class Input$SiteFilterInput {
  factory Input$SiteFilterInput({
    List<Input$SiteFilterInput>? and,
    List<Input$SiteFilterInput>? or,
    Input$StringOperationFilterInput? yardCode,
    Input$StringOperationFilterInput? name,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  }) => Input$SiteFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (yardCode != null) r'yardCode': yardCode,
    if (name != null) r'name': name,
    if (createdOn != null) r'createdOn': createdOn,
    if (createdBy != null) r'createdBy': createdBy,
    if (id != null) r'id': id,
    if (active != null) r'active': active,
    if (modifiedOn != null) r'modifiedOn': modifiedOn,
    if (modifiedBy != null) r'modifiedBy': modifiedBy,
  });

  Input$SiteFilterInput._(this._$data);

  factory Input$SiteFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$SiteFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$SiteFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$yardCode as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$createdOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$createdBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>),
            );
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>),
            );
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$modifiedOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$modifiedBy as Map<String, dynamic>),
            );
    }
    return Input$SiteFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$SiteFilterInput>? get and =>
      (_$data['and'] as List<Input$SiteFilterInput>?);

  List<Input$SiteFilterInput>? get or =>
      (_$data['or'] as List<Input$SiteFilterInput>?);

  Input$StringOperationFilterInput? get yardCode =>
      (_$data['yardCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get createdOn =>
      (_$data['createdOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get createdBy =>
      (_$data['createdBy'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get modifiedOn =>
      (_$data['modifiedOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get modifiedBy =>
      (_$data['modifiedBy'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn?.toJson();
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SiteFilterInput<Input$SiteFilterInput> get copyWith =>
      CopyWith$Input$SiteFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SiteFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (_$data.containsKey('yardCode') !=
        other._$data.containsKey('yardCode')) {
      return false;
    }
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$yardCode = yardCode;
    final l$name = name;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$active = active;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$SiteFilterInput<TRes> {
  factory CopyWith$Input$SiteFilterInput(
    Input$SiteFilterInput instance,
    TRes Function(Input$SiteFilterInput) then,
  ) = _CopyWithImpl$Input$SiteFilterInput;

  factory CopyWith$Input$SiteFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SiteFilterInput;

  TRes call({
    List<Input$SiteFilterInput>? and,
    List<Input$SiteFilterInput>? or,
    Input$StringOperationFilterInput? yardCode,
    Input$StringOperationFilterInput? name,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  });
  TRes and(
    Iterable<Input$SiteFilterInput>? Function(
      Iterable<CopyWith$Input$SiteFilterInput<Input$SiteFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$SiteFilterInput>? Function(
      Iterable<CopyWith$Input$SiteFilterInput<Input$SiteFilterInput>>?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy;
}

class _CopyWithImpl$Input$SiteFilterInput<TRes>
    implements CopyWith$Input$SiteFilterInput<TRes> {
  _CopyWithImpl$Input$SiteFilterInput(this._instance, this._then);

  final Input$SiteFilterInput _instance;

  final TRes Function(Input$SiteFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
  }) => _then(
    Input$SiteFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input$SiteFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input$SiteFilterInput>?),
      if (yardCode != _undefined)
        'yardCode': (yardCode as Input$StringOperationFilterInput?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (createdOn != _undefined)
        'createdOn': (createdOn as Input$DateTimeOperationFilterInput?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Input$StringOperationFilterInput?),
      if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
      if (active != _undefined)
        'active': (active as Input$BooleanOperationFilterInput?),
      if (modifiedOn != _undefined)
        'modifiedOn': (modifiedOn as Input$DateTimeOperationFilterInput?),
      if (modifiedBy != _undefined)
        'modifiedBy': (modifiedBy as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$SiteFilterInput>? Function(
      Iterable<CopyWith$Input$SiteFilterInput<Input$SiteFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith$Input$SiteFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$SiteFilterInput>? Function(
      Iterable<CopyWith$Input$SiteFilterInput<Input$SiteFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith$Input$SiteFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode {
    final local$yardCode = _instance.yardCode;
    return local$yardCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$yardCode,
            (e) => call(yardCode: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn {
    final local$createdOn = _instance.createdOn;
    return local$createdOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$createdOn,
            (e) => call(createdOn: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$createdBy,
            (e) => call(createdBy: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id,
            (e) => call(id: e),
          );
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active,
            (e) => call(active: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn {
    final local$modifiedOn = _instance.modifiedOn;
    return local$modifiedOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$modifiedOn,
            (e) => call(modifiedOn: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy {
    final local$modifiedBy = _instance.modifiedBy;
    return local$modifiedBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$modifiedBy,
            (e) => call(modifiedBy: e),
          );
  }
}

class _CopyWithStubImpl$Input$SiteFilterInput<TRes>
    implements CopyWith$Input$SiteFilterInput<TRes> {
  _CopyWithStubImpl$Input$SiteFilterInput(this._res);

  TRes _res;

  call({
    List<Input$SiteFilterInput>? and,
    List<Input$SiteFilterInput>? or,
    Input$StringOperationFilterInput? yardCode,
    Input$StringOperationFilterInput? name,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$SiteSortInput {
  factory Input$SiteSortInput({
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? name,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  }) => Input$SiteSortInput._({
    if (yardCode != null) r'yardCode': yardCode,
    if (name != null) r'name': name,
    if (createdOn != null) r'createdOn': createdOn,
    if (createdBy != null) r'createdBy': createdBy,
    if (id != null) r'id': id,
    if (active != null) r'active': active,
    if (modifiedOn != null) r'modifiedOn': modifiedOn,
    if (modifiedBy != null) r'modifiedBy': modifiedBy,
  });

  Input$SiteSortInput._(this._$data);

  factory Input$SiteSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$yardCode as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdOn as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdBy as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedOn as String));
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedBy as String));
    }
    return Input$SiteSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get yardCode => (_$data['yardCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdOn =>
      (_$data['createdOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdBy =>
      (_$data['createdBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedOn =>
      (_$data['modifiedOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedBy =>
      (_$data['modifiedBy'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode == null
          ? null
          : toJson$Enum$SortEnumType(l$yardCode);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null
          ? null
          : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn == null
          ? null
          : toJson$Enum$SortEnumType(l$createdOn);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy == null
          ? null
          : toJson$Enum$SortEnumType(l$createdBy);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active == null
          ? null
          : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : toJson$Enum$SortEnumType(l$modifiedOn);
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : toJson$Enum$SortEnumType(l$modifiedBy);
    }
    return result$data;
  }

  CopyWith$Input$SiteSortInput<Input$SiteSortInput> get copyWith =>
      CopyWith$Input$SiteSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SiteSortInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (_$data.containsKey('yardCode') !=
        other._$data.containsKey('yardCode')) {
      return false;
    }
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$name = name;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$active = active;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    return Object.hashAll([
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$SiteSortInput<TRes> {
  factory CopyWith$Input$SiteSortInput(
    Input$SiteSortInput instance,
    TRes Function(Input$SiteSortInput) then,
  ) = _CopyWithImpl$Input$SiteSortInput;

  factory CopyWith$Input$SiteSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SiteSortInput;

  TRes call({
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? name,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  });
}

class _CopyWithImpl$Input$SiteSortInput<TRes>
    implements CopyWith$Input$SiteSortInput<TRes> {
  _CopyWithImpl$Input$SiteSortInput(this._instance, this._then);

  final Input$SiteSortInput _instance;

  final TRes Function(Input$SiteSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
  }) => _then(
    Input$SiteSortInput._({
      ..._instance._$data,
      if (yardCode != _undefined) 'yardCode': (yardCode as Enum$SortEnumType?),
      if (name != _undefined) 'name': (name as Enum$SortEnumType?),
      if (createdOn != _undefined)
        'createdOn': (createdOn as Enum$SortEnumType?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Enum$SortEnumType?),
      if (id != _undefined) 'id': (id as Enum$SortEnumType?),
      if (active != _undefined) 'active': (active as Enum$SortEnumType?),
      if (modifiedOn != _undefined)
        'modifiedOn': (modifiedOn as Enum$SortEnumType?),
      if (modifiedBy != _undefined)
        'modifiedBy': (modifiedBy as Enum$SortEnumType?),
    }),
  );
}

class _CopyWithStubImpl$Input$SiteSortInput<TRes>
    implements CopyWith$Input$SiteSortInput<TRes> {
  _CopyWithStubImpl$Input$SiteSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? name,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  }) => _res;
}

class Input$StringOperationFilterInput {
  factory Input$StringOperationFilterInput({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  }) => Input$StringOperationFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (eq != null) r'eq': eq,
    if (neq != null) r'neq': neq,
    if (contains != null) r'contains': contains,
    if (ncontains != null) r'ncontains': ncontains,
    if ($in != null) r'in': $in,
    if (nin != null) r'nin': nin,
    if (startsWith != null) r'startsWith': startsWith,
    if (nstartsWith != null) r'nstartsWith': nstartsWith,
    if (endsWith != null) r'endsWith': endsWith,
    if (nendsWith != null) r'nendsWith': nendsWith,
  });

  Input$StringOperationFilterInput._(this._$data);

  factory Input$StringOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$StringOperationFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$StringOperationFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('ncontains')) {
      final l$ncontains = data['ncontains'];
      result$data['ncontains'] = (l$ncontains as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('startsWith')) {
      final l$startsWith = data['startsWith'];
      result$data['startsWith'] = (l$startsWith as String?);
    }
    if (data.containsKey('nstartsWith')) {
      final l$nstartsWith = data['nstartsWith'];
      result$data['nstartsWith'] = (l$nstartsWith as String?);
    }
    if (data.containsKey('endsWith')) {
      final l$endsWith = data['endsWith'];
      result$data['endsWith'] = (l$endsWith as String?);
    }
    if (data.containsKey('nendsWith')) {
      final l$nendsWith = data['nendsWith'];
      result$data['nendsWith'] = (l$nendsWith as String?);
    }
    return Input$StringOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$StringOperationFilterInput>? get and =>
      (_$data['and'] as List<Input$StringOperationFilterInput>?);

  List<Input$StringOperationFilterInput>? get or =>
      (_$data['or'] as List<Input$StringOperationFilterInput>?);

  String? get eq => (_$data['eq'] as String?);

  String? get neq => (_$data['neq'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get ncontains => (_$data['ncontains'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  List<String?>? get nin => (_$data['nin'] as List<String?>?);

  String? get startsWith => (_$data['startsWith'] as String?);

  String? get nstartsWith => (_$data['nstartsWith'] as String?);

  String? get endsWith => (_$data['endsWith'] as String?);

  String? get nendsWith => (_$data['nendsWith'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('ncontains')) {
      final l$ncontains = ncontains;
      result$data['ncontains'] = l$ncontains;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('startsWith')) {
      final l$startsWith = startsWith;
      result$data['startsWith'] = l$startsWith;
    }
    if (_$data.containsKey('nstartsWith')) {
      final l$nstartsWith = nstartsWith;
      result$data['nstartsWith'] = l$nstartsWith;
    }
    if (_$data.containsKey('endsWith')) {
      final l$endsWith = endsWith;
      result$data['endsWith'] = l$endsWith;
    }
    if (_$data.containsKey('nendsWith')) {
      final l$nendsWith = nendsWith;
      result$data['nendsWith'] = l$nendsWith;
    }
    return result$data;
  }

  CopyWith$Input$StringOperationFilterInput<Input$StringOperationFilterInput>
  get copyWith => CopyWith$Input$StringOperationFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$StringOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$ncontains = ncontains;
    final lOther$ncontains = other.ncontains;
    if (_$data.containsKey('ncontains') !=
        other._$data.containsKey('ncontains')) {
      return false;
    }
    if (l$ncontains != lOther$ncontains) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$startsWith = startsWith;
    final lOther$startsWith = other.startsWith;
    if (_$data.containsKey('startsWith') !=
        other._$data.containsKey('startsWith')) {
      return false;
    }
    if (l$startsWith != lOther$startsWith) {
      return false;
    }
    final l$nstartsWith = nstartsWith;
    final lOther$nstartsWith = other.nstartsWith;
    if (_$data.containsKey('nstartsWith') !=
        other._$data.containsKey('nstartsWith')) {
      return false;
    }
    if (l$nstartsWith != lOther$nstartsWith) {
      return false;
    }
    final l$endsWith = endsWith;
    final lOther$endsWith = other.endsWith;
    if (_$data.containsKey('endsWith') !=
        other._$data.containsKey('endsWith')) {
      return false;
    }
    if (l$endsWith != lOther$endsWith) {
      return false;
    }
    final l$nendsWith = nendsWith;
    final lOther$nendsWith = other.nendsWith;
    if (_$data.containsKey('nendsWith') !=
        other._$data.containsKey('nendsWith')) {
      return false;
    }
    if (l$nendsWith != lOther$nendsWith) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$eq = eq;
    final l$neq = neq;
    final l$contains = contains;
    final l$ncontains = ncontains;
    final l$$in = $in;
    final l$nin = nin;
    final l$startsWith = startsWith;
    final l$nstartsWith = nstartsWith;
    final l$endsWith = endsWith;
    final l$nendsWith = nendsWith;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('ncontains') ? l$ncontains : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
                ? null
                : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('startsWith') ? l$startsWith : const {},
      _$data.containsKey('nstartsWith') ? l$nstartsWith : const {},
      _$data.containsKey('endsWith') ? l$endsWith : const {},
      _$data.containsKey('nendsWith') ? l$nendsWith : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringOperationFilterInput<TRes> {
  factory CopyWith$Input$StringOperationFilterInput(
    Input$StringOperationFilterInput instance,
    TRes Function(Input$StringOperationFilterInput) then,
  ) = _CopyWithImpl$Input$StringOperationFilterInput;

  factory CopyWith$Input$StringOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$StringOperationFilterInput;

  TRes call({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  });
  TRes and(
    Iterable<Input$StringOperationFilterInput>? Function(
      Iterable<
        CopyWith$Input$StringOperationFilterInput<
          Input$StringOperationFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$StringOperationFilterInput>? Function(
      Iterable<
        CopyWith$Input$StringOperationFilterInput<
          Input$StringOperationFilterInput
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Input$StringOperationFilterInput<TRes>
    implements CopyWith$Input$StringOperationFilterInput<TRes> {
  _CopyWithImpl$Input$StringOperationFilterInput(this._instance, this._then);

  final Input$StringOperationFilterInput _instance;

  final TRes Function(Input$StringOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? contains = _undefined,
    Object? ncontains = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? startsWith = _undefined,
    Object? nstartsWith = _undefined,
    Object? endsWith = _undefined,
    Object? nendsWith = _undefined,
  }) => _then(
    Input$StringOperationFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input$StringOperationFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input$StringOperationFilterInput>?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (neq != _undefined) 'neq': (neq as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (ncontains != _undefined) 'ncontains': (ncontains as String?),
      if ($in != _undefined) 'in': ($in as List<String?>?),
      if (nin != _undefined) 'nin': (nin as List<String?>?),
      if (startsWith != _undefined) 'startsWith': (startsWith as String?),
      if (nstartsWith != _undefined) 'nstartsWith': (nstartsWith as String?),
      if (endsWith != _undefined) 'endsWith': (endsWith as String?),
      if (nendsWith != _undefined) 'nendsWith': (nendsWith as String?),
    }),
  );

  TRes and(
    Iterable<Input$StringOperationFilterInput>? Function(
      Iterable<
        CopyWith$Input$StringOperationFilterInput<
          Input$StringOperationFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith$Input$StringOperationFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$StringOperationFilterInput>? Function(
      Iterable<
        CopyWith$Input$StringOperationFilterInput<
          Input$StringOperationFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith$Input$StringOperationFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Input$StringOperationFilterInput<TRes>
    implements CopyWith$Input$StringOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$StringOperationFilterInput(this._res);

  TRes _res;

  call({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;
}

class Input$UnlockAccessPointInput {
  factory Input$UnlockAccessPointInput({
    required String accessControllerId,
    required String accessPointToken,
    required int numberOfSeconds,
    required String reason,
  }) => Input$UnlockAccessPointInput._({
    r'accessControllerId': accessControllerId,
    r'accessPointToken': accessPointToken,
    r'numberOfSeconds': numberOfSeconds,
    r'reason': reason,
  });

  Input$UnlockAccessPointInput._(this._$data);

  factory Input$UnlockAccessPointInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = data['accessControllerId'];
    result$data['accessControllerId'] = (l$accessControllerId as String);
    final l$accessPointToken = data['accessPointToken'];
    result$data['accessPointToken'] = (l$accessPointToken as String);
    final l$numberOfSeconds = data['numberOfSeconds'];
    result$data['numberOfSeconds'] = (l$numberOfSeconds as int);
    final l$reason = data['reason'];
    result$data['reason'] = (l$reason as String);
    return Input$UnlockAccessPointInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessControllerId => (_$data['accessControllerId'] as String);

  String get accessPointToken => (_$data['accessPointToken'] as String);

  int get numberOfSeconds => (_$data['numberOfSeconds'] as int);

  String get reason => (_$data['reason'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = accessControllerId;
    result$data['accessControllerId'] = l$accessControllerId;
    final l$accessPointToken = accessPointToken;
    result$data['accessPointToken'] = l$accessPointToken;
    final l$numberOfSeconds = numberOfSeconds;
    result$data['numberOfSeconds'] = l$numberOfSeconds;
    final l$reason = reason;
    result$data['reason'] = l$reason;
    return result$data;
  }

  CopyWith$Input$UnlockAccessPointInput<Input$UnlockAccessPointInput>
  get copyWith => CopyWith$Input$UnlockAccessPointInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UnlockAccessPointInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$accessPointToken = accessPointToken;
    final lOther$accessPointToken = other.accessPointToken;
    if (l$accessPointToken != lOther$accessPointToken) {
      return false;
    }
    final l$numberOfSeconds = numberOfSeconds;
    final lOther$numberOfSeconds = other.numberOfSeconds;
    if (l$numberOfSeconds != lOther$numberOfSeconds) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessControllerId = accessControllerId;
    final l$accessPointToken = accessPointToken;
    final l$numberOfSeconds = numberOfSeconds;
    final l$reason = reason;
    return Object.hashAll([
      l$accessControllerId,
      l$accessPointToken,
      l$numberOfSeconds,
      l$reason,
    ]);
  }
}

abstract class CopyWith$Input$UnlockAccessPointInput<TRes> {
  factory CopyWith$Input$UnlockAccessPointInput(
    Input$UnlockAccessPointInput instance,
    TRes Function(Input$UnlockAccessPointInput) then,
  ) = _CopyWithImpl$Input$UnlockAccessPointInput;

  factory CopyWith$Input$UnlockAccessPointInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UnlockAccessPointInput;

  TRes call({
    String? accessControllerId,
    String? accessPointToken,
    int? numberOfSeconds,
    String? reason,
  });
}

class _CopyWithImpl$Input$UnlockAccessPointInput<TRes>
    implements CopyWith$Input$UnlockAccessPointInput<TRes> {
  _CopyWithImpl$Input$UnlockAccessPointInput(this._instance, this._then);

  final Input$UnlockAccessPointInput _instance;

  final TRes Function(Input$UnlockAccessPointInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessControllerId = _undefined,
    Object? accessPointToken = _undefined,
    Object? numberOfSeconds = _undefined,
    Object? reason = _undefined,
  }) => _then(
    Input$UnlockAccessPointInput._({
      ..._instance._$data,
      if (accessControllerId != _undefined && accessControllerId != null)
        'accessControllerId': (accessControllerId as String),
      if (accessPointToken != _undefined && accessPointToken != null)
        'accessPointToken': (accessPointToken as String),
      if (numberOfSeconds != _undefined && numberOfSeconds != null)
        'numberOfSeconds': (numberOfSeconds as int),
      if (reason != _undefined && reason != null) 'reason': (reason as String),
    }),
  );
}

class _CopyWithStubImpl$Input$UnlockAccessPointInput<TRes>
    implements CopyWith$Input$UnlockAccessPointInput<TRes> {
  _CopyWithStubImpl$Input$UnlockAccessPointInput(this._res);

  TRes _res;

  call({
    String? accessControllerId,
    String? accessPointToken,
    int? numberOfSeconds,
    String? reason,
  }) => _res;
}

class Input$UpdateAccessControllerInput {
  factory Input$UpdateAccessControllerInput({
    required String id,
    String? name,
    String? username,
    String? password,
    String? siteId,
  }) => Input$UpdateAccessControllerInput._({
    r'id': id,
    if (name != null) r'name': name,
    if (username != null) r'username': username,
    if (password != null) r'password': password,
    if (siteId != null) r'siteId': siteId,
  });

  Input$UpdateAccessControllerInput._(this._$data);

  factory Input$UpdateAccessControllerInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = (l$siteId as String?);
    }
    return Input$UpdateAccessControllerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String? get name => (_$data['name'] as String?);

  String? get username => (_$data['username'] as String?);

  String? get password => (_$data['password'] as String?);

  String? get siteId => (_$data['siteId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId;
    }
    return result$data;
  }

  CopyWith$Input$UpdateAccessControllerInput<Input$UpdateAccessControllerInput>
  get copyWith => CopyWith$Input$UpdateAccessControllerInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateAccessControllerInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$username = username;
    final l$password = password;
    final l$siteId = siteId;
    return Object.hashAll([
      l$id,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('siteId') ? l$siteId : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateAccessControllerInput<TRes> {
  factory CopyWith$Input$UpdateAccessControllerInput(
    Input$UpdateAccessControllerInput instance,
    TRes Function(Input$UpdateAccessControllerInput) then,
  ) = _CopyWithImpl$Input$UpdateAccessControllerInput;

  factory CopyWith$Input$UpdateAccessControllerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateAccessControllerInput;

  TRes call({
    String? id,
    String? name,
    String? username,
    String? password,
    String? siteId,
  });
}

class _CopyWithImpl$Input$UpdateAccessControllerInput<TRes>
    implements CopyWith$Input$UpdateAccessControllerInput<TRes> {
  _CopyWithImpl$Input$UpdateAccessControllerInput(this._instance, this._then);

  final Input$UpdateAccessControllerInput _instance;

  final TRes Function(Input$UpdateAccessControllerInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? username = _undefined,
    Object? password = _undefined,
    Object? siteId = _undefined,
  }) => _then(
    Input$UpdateAccessControllerInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (name != _undefined) 'name': (name as String?),
      if (username != _undefined) 'username': (username as String?),
      if (password != _undefined) 'password': (password as String?),
      if (siteId != _undefined) 'siteId': (siteId as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$UpdateAccessControllerInput<TRes>
    implements CopyWith$Input$UpdateAccessControllerInput<TRes> {
  _CopyWithStubImpl$Input$UpdateAccessControllerInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? username,
    String? password,
    String? siteId,
  }) => _res;
}

class Input$UpsertFloorPlanInput {
  factory Input$UpsertFloorPlanInput({
    required String id,
    required String siteId,
    required String imageUrl,
    required String name,
    required List<Input$HotspotInput> hotSpots,
  }) => Input$UpsertFloorPlanInput._({
    r'id': id,
    r'siteId': siteId,
    r'imageUrl': imageUrl,
    r'name': name,
    r'hotSpots': hotSpots,
  });

  Input$UpsertFloorPlanInput._(this._$data);

  factory Input$UpsertFloorPlanInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$siteId = data['siteId'];
    result$data['siteId'] = (l$siteId as String);
    final l$imageUrl = data['imageUrl'];
    result$data['imageUrl'] = (l$imageUrl as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$hotSpots = data['hotSpots'];
    result$data['hotSpots'] = (l$hotSpots as List<dynamic>)
        .map((e) => Input$HotspotInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$UpsertFloorPlanInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get siteId => (_$data['siteId'] as String);

  String get imageUrl => (_$data['imageUrl'] as String);

  String get name => (_$data['name'] as String);

  List<Input$HotspotInput> get hotSpots =>
      (_$data['hotSpots'] as List<Input$HotspotInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$siteId = siteId;
    result$data['siteId'] = l$siteId;
    final l$imageUrl = imageUrl;
    result$data['imageUrl'] = l$imageUrl;
    final l$name = name;
    result$data['name'] = l$name;
    final l$hotSpots = hotSpots;
    result$data['hotSpots'] = l$hotSpots.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$UpsertFloorPlanInput<Input$UpsertFloorPlanInput>
  get copyWith => CopyWith$Input$UpsertFloorPlanInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpsertFloorPlanInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (l$imageUrl != lOther$imageUrl) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$hotSpots = hotSpots;
    final lOther$hotSpots = other.hotSpots;
    if (l$hotSpots.length != lOther$hotSpots.length) {
      return false;
    }
    for (int i = 0; i < l$hotSpots.length; i++) {
      final l$hotSpots$entry = l$hotSpots[i];
      final lOther$hotSpots$entry = lOther$hotSpots[i];
      if (l$hotSpots$entry != lOther$hotSpots$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$siteId = siteId;
    final l$imageUrl = imageUrl;
    final l$name = name;
    final l$hotSpots = hotSpots;
    return Object.hashAll([
      l$id,
      l$siteId,
      l$imageUrl,
      l$name,
      Object.hashAll(l$hotSpots.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$UpsertFloorPlanInput<TRes> {
  factory CopyWith$Input$UpsertFloorPlanInput(
    Input$UpsertFloorPlanInput instance,
    TRes Function(Input$UpsertFloorPlanInput) then,
  ) = _CopyWithImpl$Input$UpsertFloorPlanInput;

  factory CopyWith$Input$UpsertFloorPlanInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpsertFloorPlanInput;

  TRes call({
    String? id,
    String? siteId,
    String? imageUrl,
    String? name,
    List<Input$HotspotInput>? hotSpots,
  });
  TRes hotSpots(
    Iterable<Input$HotspotInput> Function(
      Iterable<CopyWith$Input$HotspotInput<Input$HotspotInput>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Input$UpsertFloorPlanInput<TRes>
    implements CopyWith$Input$UpsertFloorPlanInput<TRes> {
  _CopyWithImpl$Input$UpsertFloorPlanInput(this._instance, this._then);

  final Input$UpsertFloorPlanInput _instance;

  final TRes Function(Input$UpsertFloorPlanInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? siteId = _undefined,
    Object? imageUrl = _undefined,
    Object? name = _undefined,
    Object? hotSpots = _undefined,
  }) => _then(
    Input$UpsertFloorPlanInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (siteId != _undefined && siteId != null) 'siteId': (siteId as String),
      if (imageUrl != _undefined && imageUrl != null)
        'imageUrl': (imageUrl as String),
      if (name != _undefined && name != null) 'name': (name as String),
      if (hotSpots != _undefined && hotSpots != null)
        'hotSpots': (hotSpots as List<Input$HotspotInput>),
    }),
  );

  TRes hotSpots(
    Iterable<Input$HotspotInput> Function(
      Iterable<CopyWith$Input$HotspotInput<Input$HotspotInput>>,
    )
    _fn,
  ) => call(
    hotSpots: _fn(
      _instance.hotSpots.map((e) => CopyWith$Input$HotspotInput(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl$Input$UpsertFloorPlanInput<TRes>
    implements CopyWith$Input$UpsertFloorPlanInput<TRes> {
  _CopyWithStubImpl$Input$UpsertFloorPlanInput(this._res);

  TRes _res;

  call({
    String? id,
    String? siteId,
    String? imageUrl,
    String? name,
    List<Input$HotspotInput>? hotSpots,
  }) => _res;

  hotSpots(_fn) => _res;
}

class Input$UpsertFullDoorConfigurationInput {
  factory Input$UpsertFullDoorConfigurationInput({
    required String accessControllerId,
    required String doorExternalId,
    required Input$DoorPriorityConfigurationInput doorPriorityConfiguration,
    required Input$DoorScheduleConfigurationInput doorScheduleConfiguration,
  }) => Input$UpsertFullDoorConfigurationInput._({
    r'accessControllerId': accessControllerId,
    r'doorExternalId': doorExternalId,
    r'doorPriorityConfiguration': doorPriorityConfiguration,
    r'doorScheduleConfiguration': doorScheduleConfiguration,
  });

  Input$UpsertFullDoorConfigurationInput._(this._$data);

  factory Input$UpsertFullDoorConfigurationInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = data['accessControllerId'];
    result$data['accessControllerId'] = (l$accessControllerId as String);
    final l$doorExternalId = data['doorExternalId'];
    result$data['doorExternalId'] = (l$doorExternalId as String);
    final l$doorPriorityConfiguration = data['doorPriorityConfiguration'];
    result$data['doorPriorityConfiguration'] =
        Input$DoorPriorityConfigurationInput.fromJson(
          (l$doorPriorityConfiguration as Map<String, dynamic>),
        );
    final l$doorScheduleConfiguration = data['doorScheduleConfiguration'];
    result$data['doorScheduleConfiguration'] =
        Input$DoorScheduleConfigurationInput.fromJson(
          (l$doorScheduleConfiguration as Map<String, dynamic>),
        );
    return Input$UpsertFullDoorConfigurationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessControllerId => (_$data['accessControllerId'] as String);

  String get doorExternalId => (_$data['doorExternalId'] as String);

  Input$DoorPriorityConfigurationInput get doorPriorityConfiguration =>
      (_$data['doorPriorityConfiguration']
          as Input$DoorPriorityConfigurationInput);

  Input$DoorScheduleConfigurationInput get doorScheduleConfiguration =>
      (_$data['doorScheduleConfiguration']
          as Input$DoorScheduleConfigurationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = accessControllerId;
    result$data['accessControllerId'] = l$accessControllerId;
    final l$doorExternalId = doorExternalId;
    result$data['doorExternalId'] = l$doorExternalId;
    final l$doorPriorityConfiguration = doorPriorityConfiguration;
    result$data['doorPriorityConfiguration'] = l$doorPriorityConfiguration
        .toJson();
    final l$doorScheduleConfiguration = doorScheduleConfiguration;
    result$data['doorScheduleConfiguration'] = l$doorScheduleConfiguration
        .toJson();
    return result$data;
  }

  CopyWith$Input$UpsertFullDoorConfigurationInput<
    Input$UpsertFullDoorConfigurationInput
  >
  get copyWith =>
      CopyWith$Input$UpsertFullDoorConfigurationInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpsertFullDoorConfigurationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$doorExternalId = doorExternalId;
    final lOther$doorExternalId = other.doorExternalId;
    if (l$doorExternalId != lOther$doorExternalId) {
      return false;
    }
    final l$doorPriorityConfiguration = doorPriorityConfiguration;
    final lOther$doorPriorityConfiguration = other.doorPriorityConfiguration;
    if (l$doorPriorityConfiguration != lOther$doorPriorityConfiguration) {
      return false;
    }
    final l$doorScheduleConfiguration = doorScheduleConfiguration;
    final lOther$doorScheduleConfiguration = other.doorScheduleConfiguration;
    if (l$doorScheduleConfiguration != lOther$doorScheduleConfiguration) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessControllerId = accessControllerId;
    final l$doorExternalId = doorExternalId;
    final l$doorPriorityConfiguration = doorPriorityConfiguration;
    final l$doorScheduleConfiguration = doorScheduleConfiguration;
    return Object.hashAll([
      l$accessControllerId,
      l$doorExternalId,
      l$doorPriorityConfiguration,
      l$doorScheduleConfiguration,
    ]);
  }
}

abstract class CopyWith$Input$UpsertFullDoorConfigurationInput<TRes> {
  factory CopyWith$Input$UpsertFullDoorConfigurationInput(
    Input$UpsertFullDoorConfigurationInput instance,
    TRes Function(Input$UpsertFullDoorConfigurationInput) then,
  ) = _CopyWithImpl$Input$UpsertFullDoorConfigurationInput;

  factory CopyWith$Input$UpsertFullDoorConfigurationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpsertFullDoorConfigurationInput;

  TRes call({
    String? accessControllerId,
    String? doorExternalId,
    Input$DoorPriorityConfigurationInput? doorPriorityConfiguration,
    Input$DoorScheduleConfigurationInput? doorScheduleConfiguration,
  });
  CopyWith$Input$DoorPriorityConfigurationInput<TRes>
  get doorPriorityConfiguration;
  CopyWith$Input$DoorScheduleConfigurationInput<TRes>
  get doorScheduleConfiguration;
}

class _CopyWithImpl$Input$UpsertFullDoorConfigurationInput<TRes>
    implements CopyWith$Input$UpsertFullDoorConfigurationInput<TRes> {
  _CopyWithImpl$Input$UpsertFullDoorConfigurationInput(
    this._instance,
    this._then,
  );

  final Input$UpsertFullDoorConfigurationInput _instance;

  final TRes Function(Input$UpsertFullDoorConfigurationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessControllerId = _undefined,
    Object? doorExternalId = _undefined,
    Object? doorPriorityConfiguration = _undefined,
    Object? doorScheduleConfiguration = _undefined,
  }) => _then(
    Input$UpsertFullDoorConfigurationInput._({
      ..._instance._$data,
      if (accessControllerId != _undefined && accessControllerId != null)
        'accessControllerId': (accessControllerId as String),
      if (doorExternalId != _undefined && doorExternalId != null)
        'doorExternalId': (doorExternalId as String),
      if (doorPriorityConfiguration != _undefined &&
          doorPriorityConfiguration != null)
        'doorPriorityConfiguration':
            (doorPriorityConfiguration as Input$DoorPriorityConfigurationInput),
      if (doorScheduleConfiguration != _undefined &&
          doorScheduleConfiguration != null)
        'doorScheduleConfiguration':
            (doorScheduleConfiguration as Input$DoorScheduleConfigurationInput),
    }),
  );

  CopyWith$Input$DoorPriorityConfigurationInput<TRes>
  get doorPriorityConfiguration {
    final local$doorPriorityConfiguration = _instance.doorPriorityConfiguration;
    return CopyWith$Input$DoorPriorityConfigurationInput(
      local$doorPriorityConfiguration,
      (e) => call(doorPriorityConfiguration: e),
    );
  }

  CopyWith$Input$DoorScheduleConfigurationInput<TRes>
  get doorScheduleConfiguration {
    final local$doorScheduleConfiguration = _instance.doorScheduleConfiguration;
    return CopyWith$Input$DoorScheduleConfigurationInput(
      local$doorScheduleConfiguration,
      (e) => call(doorScheduleConfiguration: e),
    );
  }
}

class _CopyWithStubImpl$Input$UpsertFullDoorConfigurationInput<TRes>
    implements CopyWith$Input$UpsertFullDoorConfigurationInput<TRes> {
  _CopyWithStubImpl$Input$UpsertFullDoorConfigurationInput(this._res);

  TRes _res;

  call({
    String? accessControllerId,
    String? doorExternalId,
    Input$DoorPriorityConfigurationInput? doorPriorityConfiguration,
    Input$DoorScheduleConfigurationInput? doorScheduleConfiguration,
  }) => _res;

  CopyWith$Input$DoorPriorityConfigurationInput<TRes>
  get doorPriorityConfiguration =>
      CopyWith$Input$DoorPriorityConfigurationInput.stub(_res);

  CopyWith$Input$DoorScheduleConfigurationInput<TRes>
  get doorScheduleConfiguration =>
      CopyWith$Input$DoorScheduleConfigurationInput.stub(_res);
}

class Input$UpsertPartialDoorConfigurationInput {
  factory Input$UpsertPartialDoorConfigurationInput({
    required String accessControllerId,
    required String doorExternalId,
    required String doorPriorityConfigurationToken,
    required String doorScheduleConfigurationToken,
  }) => Input$UpsertPartialDoorConfigurationInput._({
    r'accessControllerId': accessControllerId,
    r'doorExternalId': doorExternalId,
    r'doorPriorityConfigurationToken': doorPriorityConfigurationToken,
    r'doorScheduleConfigurationToken': doorScheduleConfigurationToken,
  });

  Input$UpsertPartialDoorConfigurationInput._(this._$data);

  factory Input$UpsertPartialDoorConfigurationInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = data['accessControllerId'];
    result$data['accessControllerId'] = (l$accessControllerId as String);
    final l$doorExternalId = data['doorExternalId'];
    result$data['doorExternalId'] = (l$doorExternalId as String);
    final l$doorPriorityConfigurationToken =
        data['doorPriorityConfigurationToken'];
    result$data['doorPriorityConfigurationToken'] =
        (l$doorPriorityConfigurationToken as String);
    final l$doorScheduleConfigurationToken =
        data['doorScheduleConfigurationToken'];
    result$data['doorScheduleConfigurationToken'] =
        (l$doorScheduleConfigurationToken as String);
    return Input$UpsertPartialDoorConfigurationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessControllerId => (_$data['accessControllerId'] as String);

  String get doorExternalId => (_$data['doorExternalId'] as String);

  String get doorPriorityConfigurationToken =>
      (_$data['doorPriorityConfigurationToken'] as String);

  String get doorScheduleConfigurationToken =>
      (_$data['doorScheduleConfigurationToken'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = accessControllerId;
    result$data['accessControllerId'] = l$accessControllerId;
    final l$doorExternalId = doorExternalId;
    result$data['doorExternalId'] = l$doorExternalId;
    final l$doorPriorityConfigurationToken = doorPriorityConfigurationToken;
    result$data['doorPriorityConfigurationToken'] =
        l$doorPriorityConfigurationToken;
    final l$doorScheduleConfigurationToken = doorScheduleConfigurationToken;
    result$data['doorScheduleConfigurationToken'] =
        l$doorScheduleConfigurationToken;
    return result$data;
  }

  CopyWith$Input$UpsertPartialDoorConfigurationInput<
    Input$UpsertPartialDoorConfigurationInput
  >
  get copyWith =>
      CopyWith$Input$UpsertPartialDoorConfigurationInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpsertPartialDoorConfigurationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$doorExternalId = doorExternalId;
    final lOther$doorExternalId = other.doorExternalId;
    if (l$doorExternalId != lOther$doorExternalId) {
      return false;
    }
    final l$doorPriorityConfigurationToken = doorPriorityConfigurationToken;
    final lOther$doorPriorityConfigurationToken =
        other.doorPriorityConfigurationToken;
    if (l$doorPriorityConfigurationToken !=
        lOther$doorPriorityConfigurationToken) {
      return false;
    }
    final l$doorScheduleConfigurationToken = doorScheduleConfigurationToken;
    final lOther$doorScheduleConfigurationToken =
        other.doorScheduleConfigurationToken;
    if (l$doorScheduleConfigurationToken !=
        lOther$doorScheduleConfigurationToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessControllerId = accessControllerId;
    final l$doorExternalId = doorExternalId;
    final l$doorPriorityConfigurationToken = doorPriorityConfigurationToken;
    final l$doorScheduleConfigurationToken = doorScheduleConfigurationToken;
    return Object.hashAll([
      l$accessControllerId,
      l$doorExternalId,
      l$doorPriorityConfigurationToken,
      l$doorScheduleConfigurationToken,
    ]);
  }
}

abstract class CopyWith$Input$UpsertPartialDoorConfigurationInput<TRes> {
  factory CopyWith$Input$UpsertPartialDoorConfigurationInput(
    Input$UpsertPartialDoorConfigurationInput instance,
    TRes Function(Input$UpsertPartialDoorConfigurationInput) then,
  ) = _CopyWithImpl$Input$UpsertPartialDoorConfigurationInput;

  factory CopyWith$Input$UpsertPartialDoorConfigurationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpsertPartialDoorConfigurationInput;

  TRes call({
    String? accessControllerId,
    String? doorExternalId,
    String? doorPriorityConfigurationToken,
    String? doorScheduleConfigurationToken,
  });
}

class _CopyWithImpl$Input$UpsertPartialDoorConfigurationInput<TRes>
    implements CopyWith$Input$UpsertPartialDoorConfigurationInput<TRes> {
  _CopyWithImpl$Input$UpsertPartialDoorConfigurationInput(
    this._instance,
    this._then,
  );

  final Input$UpsertPartialDoorConfigurationInput _instance;

  final TRes Function(Input$UpsertPartialDoorConfigurationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessControllerId = _undefined,
    Object? doorExternalId = _undefined,
    Object? doorPriorityConfigurationToken = _undefined,
    Object? doorScheduleConfigurationToken = _undefined,
  }) => _then(
    Input$UpsertPartialDoorConfigurationInput._({
      ..._instance._$data,
      if (accessControllerId != _undefined && accessControllerId != null)
        'accessControllerId': (accessControllerId as String),
      if (doorExternalId != _undefined && doorExternalId != null)
        'doorExternalId': (doorExternalId as String),
      if (doorPriorityConfigurationToken != _undefined &&
          doorPriorityConfigurationToken != null)
        'doorPriorityConfigurationToken':
            (doorPriorityConfigurationToken as String),
      if (doorScheduleConfigurationToken != _undefined &&
          doorScheduleConfigurationToken != null)
        'doorScheduleConfigurationToken':
            (doorScheduleConfigurationToken as String),
    }),
  );
}

class _CopyWithStubImpl$Input$UpsertPartialDoorConfigurationInput<TRes>
    implements CopyWith$Input$UpsertPartialDoorConfigurationInput<TRes> {
  _CopyWithStubImpl$Input$UpsertPartialDoorConfigurationInput(this._res);

  TRes _res;

  call({
    String? accessControllerId,
    String? doorExternalId,
    String? doorPriorityConfigurationToken,
    String? doorScheduleConfigurationToken,
  }) => _res;
}

class Input$UpsertSiteInput {
  factory Input$UpsertSiteInput({
    required String yardCode,
    required String name,
    String? id,
  }) => Input$UpsertSiteInput._({
    r'yardCode': yardCode,
    r'name': name,
    if (id != null) r'id': id,
  });

  Input$UpsertSiteInput._(this._$data);

  factory Input$UpsertSiteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$UpsertSiteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  String get name => (_$data['name'] as String);

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$UpsertSiteInput<Input$UpsertSiteInput> get copyWith =>
      CopyWith$Input$UpsertSiteInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpsertSiteInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$name = name;
    final l$id = id;
    return Object.hashAll([
      l$yardCode,
      l$name,
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpsertSiteInput<TRes> {
  factory CopyWith$Input$UpsertSiteInput(
    Input$UpsertSiteInput instance,
    TRes Function(Input$UpsertSiteInput) then,
  ) = _CopyWithImpl$Input$UpsertSiteInput;

  factory CopyWith$Input$UpsertSiteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpsertSiteInput;

  TRes call({String? yardCode, String? name, String? id});
}

class _CopyWithImpl$Input$UpsertSiteInput<TRes>
    implements CopyWith$Input$UpsertSiteInput<TRes> {
  _CopyWithImpl$Input$UpsertSiteInput(this._instance, this._then);

  final Input$UpsertSiteInput _instance;

  final TRes Function(Input$UpsertSiteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? id = _undefined,
  }) => _then(
    Input$UpsertSiteInput._({
      ..._instance._$data,
      if (yardCode != _undefined && yardCode != null)
        'yardCode': (yardCode as String),
      if (name != _undefined && name != null) 'name': (name as String),
      if (id != _undefined) 'id': (id as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$UpsertSiteInput<TRes>
    implements CopyWith$Input$UpsertSiteInput<TRes> {
  _CopyWithStubImpl$Input$UpsertSiteInput(this._res);

  TRes _res;

  call({String? yardCode, String? name, String? id}) => _res;
}

class Input$UserFilterInput {
  factory Input$UserFilterInput({
    List<Input$UserFilterInput>? and,
    List<Input$UserFilterInput>? or,
    Input$StringOperationFilterInput? azureId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? userName,
    Input$StringOperationFilterInput? cardNumber,
    Input$ListStringOperationFilterInput? groups,
    Input$StringOperationFilterInput? externalId,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  }) => Input$UserFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (azureId != null) r'azureId': azureId,
    if (name != null) r'name': name,
    if (userName != null) r'userName': userName,
    if (cardNumber != null) r'cardNumber': cardNumber,
    if (groups != null) r'groups': groups,
    if (externalId != null) r'externalId': externalId,
    if (createdOn != null) r'createdOn': createdOn,
    if (createdBy != null) r'createdBy': createdBy,
    if (id != null) r'id': id,
    if (active != null) r'active': active,
    if (modifiedOn != null) r'modifiedOn': modifiedOn,
    if (modifiedBy != null) r'modifiedBy': modifiedBy,
  });

  Input$UserFilterInput._(this._$data);

  factory Input$UserFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input$UserFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input$UserFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('azureId')) {
      final l$azureId = data['azureId'];
      result$data['azureId'] = l$azureId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$azureId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = l$userName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$userName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('cardNumber')) {
      final l$cardNumber = data['cardNumber'];
      result$data['cardNumber'] = l$cardNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$cardNumber as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groups')) {
      final l$groups = data['groups'];
      result$data['groups'] = l$groups == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$groups as Map<String, dynamic>),
            );
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = l$externalId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$externalId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$createdOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$createdBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>),
            );
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>),
            );
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$modifiedOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$modifiedBy as Map<String, dynamic>),
            );
    }
    return Input$UserFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$UserFilterInput>? get and =>
      (_$data['and'] as List<Input$UserFilterInput>?);

  List<Input$UserFilterInput>? get or =>
      (_$data['or'] as List<Input$UserFilterInput>?);

  Input$StringOperationFilterInput? get azureId =>
      (_$data['azureId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get userName =>
      (_$data['userName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get cardNumber =>
      (_$data['cardNumber'] as Input$StringOperationFilterInput?);

  Input$ListStringOperationFilterInput? get groups =>
      (_$data['groups'] as Input$ListStringOperationFilterInput?);

  Input$StringOperationFilterInput? get externalId =>
      (_$data['externalId'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get createdOn =>
      (_$data['createdOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get createdBy =>
      (_$data['createdBy'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get modifiedOn =>
      (_$data['modifiedOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get modifiedBy =>
      (_$data['modifiedBy'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('azureId')) {
      final l$azureId = azureId;
      result$data['azureId'] = l$azureId?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName?.toJson();
    }
    if (_$data.containsKey('cardNumber')) {
      final l$cardNumber = cardNumber;
      result$data['cardNumber'] = l$cardNumber?.toJson();
    }
    if (_$data.containsKey('groups')) {
      final l$groups = groups;
      result$data['groups'] = l$groups?.toJson();
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId?.toJson();
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn?.toJson();
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserFilterInput<Input$UserFilterInput> get copyWith =>
      CopyWith$Input$UserFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (_$data.containsKey('azureId') != other._$data.containsKey('azureId')) {
      return false;
    }
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$cardNumber = cardNumber;
    final lOther$cardNumber = other.cardNumber;
    if (_$data.containsKey('cardNumber') !=
        other._$data.containsKey('cardNumber')) {
      return false;
    }
    if (l$cardNumber != lOther$cardNumber) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (_$data.containsKey('groups') != other._$data.containsKey('groups')) {
      return false;
    }
    if (l$groups != lOther$groups) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$azureId = azureId;
    final l$name = name;
    final l$userName = userName;
    final l$cardNumber = cardNumber;
    final l$groups = groups;
    final l$externalId = externalId;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$active = active;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('azureId') ? l$azureId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('userName') ? l$userName : const {},
      _$data.containsKey('cardNumber') ? l$cardNumber : const {},
      _$data.containsKey('groups') ? l$groups : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserFilterInput<TRes> {
  factory CopyWith$Input$UserFilterInput(
    Input$UserFilterInput instance,
    TRes Function(Input$UserFilterInput) then,
  ) = _CopyWithImpl$Input$UserFilterInput;

  factory CopyWith$Input$UserFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserFilterInput;

  TRes call({
    List<Input$UserFilterInput>? and,
    List<Input$UserFilterInput>? or,
    Input$StringOperationFilterInput? azureId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? userName,
    Input$StringOperationFilterInput? cardNumber,
    Input$ListStringOperationFilterInput? groups,
    Input$StringOperationFilterInput? externalId,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  });
  TRes and(
    Iterable<Input$UserFilterInput>? Function(
      Iterable<CopyWith$Input$UserFilterInput<Input$UserFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input$UserFilterInput>? Function(
      Iterable<CopyWith$Input$UserFilterInput<Input$UserFilterInput>>?,
    )
    _fn,
  );
  CopyWith$Input$StringOperationFilterInput<TRes> get azureId;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get userName;
  CopyWith$Input$StringOperationFilterInput<TRes> get cardNumber;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get groups;
  CopyWith$Input$StringOperationFilterInput<TRes> get externalId;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy;
}

class _CopyWithImpl$Input$UserFilterInput<TRes>
    implements CopyWith$Input$UserFilterInput<TRes> {
  _CopyWithImpl$Input$UserFilterInput(this._instance, this._then);

  final Input$UserFilterInput _instance;

  final TRes Function(Input$UserFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? userName = _undefined,
    Object? cardNumber = _undefined,
    Object? groups = _undefined,
    Object? externalId = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
  }) => _then(
    Input$UserFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input$UserFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input$UserFilterInput>?),
      if (azureId != _undefined)
        'azureId': (azureId as Input$StringOperationFilterInput?),
      if (name != _undefined)
        'name': (name as Input$StringOperationFilterInput?),
      if (userName != _undefined)
        'userName': (userName as Input$StringOperationFilterInput?),
      if (cardNumber != _undefined)
        'cardNumber': (cardNumber as Input$StringOperationFilterInput?),
      if (groups != _undefined)
        'groups': (groups as Input$ListStringOperationFilterInput?),
      if (externalId != _undefined)
        'externalId': (externalId as Input$StringOperationFilterInput?),
      if (createdOn != _undefined)
        'createdOn': (createdOn as Input$DateTimeOperationFilterInput?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Input$StringOperationFilterInput?),
      if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
      if (active != _undefined)
        'active': (active as Input$BooleanOperationFilterInput?),
      if (modifiedOn != _undefined)
        'modifiedOn': (modifiedOn as Input$DateTimeOperationFilterInput?),
      if (modifiedBy != _undefined)
        'modifiedBy': (modifiedBy as Input$StringOperationFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input$UserFilterInput>? Function(
      Iterable<CopyWith$Input$UserFilterInput<Input$UserFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith$Input$UserFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input$UserFilterInput>? Function(
      Iterable<CopyWith$Input$UserFilterInput<Input$UserFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith$Input$UserFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith$Input$StringOperationFilterInput<TRes> get azureId {
    final local$azureId = _instance.azureId;
    return local$azureId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$azureId,
            (e) => call(azureId: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name,
            (e) => call(name: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get userName {
    final local$userName = _instance.userName;
    return local$userName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$userName,
            (e) => call(userName: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get cardNumber {
    final local$cardNumber = _instance.cardNumber;
    return local$cardNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$cardNumber,
            (e) => call(cardNumber: e),
          );
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$groups,
            (e) => call(groups: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId {
    final local$externalId = _instance.externalId;
    return local$externalId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$externalId,
            (e) => call(externalId: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn {
    final local$createdOn = _instance.createdOn;
    return local$createdOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$createdOn,
            (e) => call(createdOn: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$createdBy,
            (e) => call(createdBy: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id,
            (e) => call(id: e),
          );
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active,
            (e) => call(active: e),
          );
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn {
    final local$modifiedOn = _instance.modifiedOn;
    return local$modifiedOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$modifiedOn,
            (e) => call(modifiedOn: e),
          );
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy {
    final local$modifiedBy = _instance.modifiedBy;
    return local$modifiedBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$modifiedBy,
            (e) => call(modifiedBy: e),
          );
  }
}

class _CopyWithStubImpl$Input$UserFilterInput<TRes>
    implements CopyWith$Input$UserFilterInput<TRes> {
  _CopyWithStubImpl$Input$UserFilterInput(this._res);

  TRes _res;

  call({
    List<Input$UserFilterInput>? and,
    List<Input$UserFilterInput>? or,
    Input$StringOperationFilterInput? azureId,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? userName,
    Input$StringOperationFilterInput? cardNumber,
    Input$ListStringOperationFilterInput? groups,
    Input$StringOperationFilterInput? externalId,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? id,
    Input$BooleanOperationFilterInput? active,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? modifiedBy,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get azureId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get userName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get cardNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get groups =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get externalId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get modifiedBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$UserSortInput {
  factory Input$UserSortInput({
    Enum$SortEnumType? azureId,
    Enum$SortEnumType? name,
    Enum$SortEnumType? userName,
    Enum$SortEnumType? cardNumber,
    Enum$SortEnumType? externalId,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  }) => Input$UserSortInput._({
    if (azureId != null) r'azureId': azureId,
    if (name != null) r'name': name,
    if (userName != null) r'userName': userName,
    if (cardNumber != null) r'cardNumber': cardNumber,
    if (externalId != null) r'externalId': externalId,
    if (createdOn != null) r'createdOn': createdOn,
    if (createdBy != null) r'createdBy': createdBy,
    if (id != null) r'id': id,
    if (active != null) r'active': active,
    if (modifiedOn != null) r'modifiedOn': modifiedOn,
    if (modifiedBy != null) r'modifiedBy': modifiedBy,
  });

  Input$UserSortInput._(this._$data);

  factory Input$UserSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('azureId')) {
      final l$azureId = data['azureId'];
      result$data['azureId'] = l$azureId == null
          ? null
          : fromJson$Enum$SortEnumType((l$azureId as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = l$userName == null
          ? null
          : fromJson$Enum$SortEnumType((l$userName as String));
    }
    if (data.containsKey('cardNumber')) {
      final l$cardNumber = data['cardNumber'];
      result$data['cardNumber'] = l$cardNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$cardNumber as String));
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = l$externalId == null
          ? null
          : fromJson$Enum$SortEnumType((l$externalId as String));
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdOn as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdBy as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedOn as String));
    }
    if (data.containsKey('modifiedBy')) {
      final l$modifiedBy = data['modifiedBy'];
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$modifiedBy as String));
    }
    return Input$UserSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get azureId => (_$data['azureId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get userName => (_$data['userName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get cardNumber =>
      (_$data['cardNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get externalId =>
      (_$data['externalId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdOn =>
      (_$data['createdOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdBy =>
      (_$data['createdBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedOn =>
      (_$data['modifiedOn'] as Enum$SortEnumType?);

  Enum$SortEnumType? get modifiedBy =>
      (_$data['modifiedBy'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('azureId')) {
      final l$azureId = azureId;
      result$data['azureId'] = l$azureId == null
          ? null
          : toJson$Enum$SortEnumType(l$azureId);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null
          ? null
          : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName == null
          ? null
          : toJson$Enum$SortEnumType(l$userName);
    }
    if (_$data.containsKey('cardNumber')) {
      final l$cardNumber = cardNumber;
      result$data['cardNumber'] = l$cardNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$cardNumber);
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId == null
          ? null
          : toJson$Enum$SortEnumType(l$externalId);
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn == null
          ? null
          : toJson$Enum$SortEnumType(l$createdOn);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy == null
          ? null
          : toJson$Enum$SortEnumType(l$createdBy);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active == null
          ? null
          : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : toJson$Enum$SortEnumType(l$modifiedOn);
    }
    if (_$data.containsKey('modifiedBy')) {
      final l$modifiedBy = modifiedBy;
      result$data['modifiedBy'] = l$modifiedBy == null
          ? null
          : toJson$Enum$SortEnumType(l$modifiedBy);
    }
    return result$data;
  }

  CopyWith$Input$UserSortInput<Input$UserSortInput> get copyWith =>
      CopyWith$Input$UserSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UserSortInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (_$data.containsKey('azureId') != other._$data.containsKey('azureId')) {
      return false;
    }
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$cardNumber = cardNumber;
    final lOther$cardNumber = other.cardNumber;
    if (_$data.containsKey('cardNumber') !=
        other._$data.containsKey('cardNumber')) {
      return false;
    }
    if (l$cardNumber != lOther$cardNumber) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (_$data.containsKey('modifiedBy') !=
        other._$data.containsKey('modifiedBy')) {
      return false;
    }
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$azureId = azureId;
    final l$name = name;
    final l$userName = userName;
    final l$cardNumber = cardNumber;
    final l$externalId = externalId;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$active = active;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    return Object.hashAll([
      _$data.containsKey('azureId') ? l$azureId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('userName') ? l$userName : const {},
      _$data.containsKey('cardNumber') ? l$cardNumber : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('modifiedBy') ? l$modifiedBy : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserSortInput<TRes> {
  factory CopyWith$Input$UserSortInput(
    Input$UserSortInput instance,
    TRes Function(Input$UserSortInput) then,
  ) = _CopyWithImpl$Input$UserSortInput;

  factory CopyWith$Input$UserSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserSortInput;

  TRes call({
    Enum$SortEnumType? azureId,
    Enum$SortEnumType? name,
    Enum$SortEnumType? userName,
    Enum$SortEnumType? cardNumber,
    Enum$SortEnumType? externalId,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  });
}

class _CopyWithImpl$Input$UserSortInput<TRes>
    implements CopyWith$Input$UserSortInput<TRes> {
  _CopyWithImpl$Input$UserSortInput(this._instance, this._then);

  final Input$UserSortInput _instance;

  final TRes Function(Input$UserSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? userName = _undefined,
    Object? cardNumber = _undefined,
    Object? externalId = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
  }) => _then(
    Input$UserSortInput._({
      ..._instance._$data,
      if (azureId != _undefined) 'azureId': (azureId as Enum$SortEnumType?),
      if (name != _undefined) 'name': (name as Enum$SortEnumType?),
      if (userName != _undefined) 'userName': (userName as Enum$SortEnumType?),
      if (cardNumber != _undefined)
        'cardNumber': (cardNumber as Enum$SortEnumType?),
      if (externalId != _undefined)
        'externalId': (externalId as Enum$SortEnumType?),
      if (createdOn != _undefined)
        'createdOn': (createdOn as Enum$SortEnumType?),
      if (createdBy != _undefined)
        'createdBy': (createdBy as Enum$SortEnumType?),
      if (id != _undefined) 'id': (id as Enum$SortEnumType?),
      if (active != _undefined) 'active': (active as Enum$SortEnumType?),
      if (modifiedOn != _undefined)
        'modifiedOn': (modifiedOn as Enum$SortEnumType?),
      if (modifiedBy != _undefined)
        'modifiedBy': (modifiedBy as Enum$SortEnumType?),
    }),
  );
}

class _CopyWithStubImpl$Input$UserSortInput<TRes>
    implements CopyWith$Input$UserSortInput<TRes> {
  _CopyWithStubImpl$Input$UserSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? azureId,
    Enum$SortEnumType? name,
    Enum$SortEnumType? userName,
    Enum$SortEnumType? cardNumber,
    Enum$SortEnumType? externalId,
    Enum$SortEnumType? createdOn,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? id,
    Enum$SortEnumType? active,
    Enum$SortEnumType? modifiedOn,
    Enum$SortEnumType? modifiedBy,
  }) => _res;
}

enum Enum$ApplyPolicy {
  BEFORE_RESOLVER,
  AFTER_RESOLVER,
  VALIDATION,
  $unknown;

  factory Enum$ApplyPolicy.fromJson(String value) =>
      fromJson$Enum$ApplyPolicy(value);

  String toJson() => toJson$Enum$ApplyPolicy(this);
}

String toJson$Enum$ApplyPolicy(Enum$ApplyPolicy e) {
  switch (e) {
    case Enum$ApplyPolicy.BEFORE_RESOLVER:
      return r'BEFORE_RESOLVER';
    case Enum$ApplyPolicy.AFTER_RESOLVER:
      return r'AFTER_RESOLVER';
    case Enum$ApplyPolicy.VALIDATION:
      return r'VALIDATION';
    case Enum$ApplyPolicy.$unknown:
      return r'$unknown';
  }
}

Enum$ApplyPolicy fromJson$Enum$ApplyPolicy(String value) {
  switch (value) {
    case r'BEFORE_RESOLVER':
      return Enum$ApplyPolicy.BEFORE_RESOLVER;
    case r'AFTER_RESOLVER':
      return Enum$ApplyPolicy.AFTER_RESOLVER;
    case r'VALIDATION':
      return Enum$ApplyPolicy.VALIDATION;
    default:
      return Enum$ApplyPolicy.$unknown;
  }
}

enum Enum$NotificationSeverityEnum {
  ERROR,
  WARNING,
  INFORMATION,
  SUCCESS,
  $unknown;

  factory Enum$NotificationSeverityEnum.fromJson(String value) =>
      fromJson$Enum$NotificationSeverityEnum(value);

  String toJson() => toJson$Enum$NotificationSeverityEnum(this);
}

String toJson$Enum$NotificationSeverityEnum(Enum$NotificationSeverityEnum e) {
  switch (e) {
    case Enum$NotificationSeverityEnum.ERROR:
      return r'ERROR';
    case Enum$NotificationSeverityEnum.WARNING:
      return r'WARNING';
    case Enum$NotificationSeverityEnum.INFORMATION:
      return r'INFORMATION';
    case Enum$NotificationSeverityEnum.SUCCESS:
      return r'SUCCESS';
    case Enum$NotificationSeverityEnum.$unknown:
      return r'$unknown';
  }
}

Enum$NotificationSeverityEnum fromJson$Enum$NotificationSeverityEnum(
  String value,
) {
  switch (value) {
    case r'ERROR':
      return Enum$NotificationSeverityEnum.ERROR;
    case r'WARNING':
      return Enum$NotificationSeverityEnum.WARNING;
    case r'INFORMATION':
      return Enum$NotificationSeverityEnum.INFORMATION;
    case r'SUCCESS':
      return Enum$NotificationSeverityEnum.SUCCESS;
    default:
      return Enum$NotificationSeverityEnum.$unknown;
  }
}

enum Enum$NotificationTypeEnum {
  FAILED_ACCESS_ATTEMPTS,
  MULTIPLE_DENIED_CARD_ATTEMPTS,
  ACCESS_POINT_SNAPSHOT,
  $unknown;

  factory Enum$NotificationTypeEnum.fromJson(String value) =>
      fromJson$Enum$NotificationTypeEnum(value);

  String toJson() => toJson$Enum$NotificationTypeEnum(this);
}

String toJson$Enum$NotificationTypeEnum(Enum$NotificationTypeEnum e) {
  switch (e) {
    case Enum$NotificationTypeEnum.FAILED_ACCESS_ATTEMPTS:
      return r'FAILED_ACCESS_ATTEMPTS';
    case Enum$NotificationTypeEnum.MULTIPLE_DENIED_CARD_ATTEMPTS:
      return r'MULTIPLE_DENIED_CARD_ATTEMPTS';
    case Enum$NotificationTypeEnum.ACCESS_POINT_SNAPSHOT:
      return r'ACCESS_POINT_SNAPSHOT';
    case Enum$NotificationTypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$NotificationTypeEnum fromJson$Enum$NotificationTypeEnum(String value) {
  switch (value) {
    case r'FAILED_ACCESS_ATTEMPTS':
      return Enum$NotificationTypeEnum.FAILED_ACCESS_ATTEMPTS;
    case r'MULTIPLE_DENIED_CARD_ATTEMPTS':
      return Enum$NotificationTypeEnum.MULTIPLE_DENIED_CARD_ATTEMPTS;
    case r'ACCESS_POINT_SNAPSHOT':
      return Enum$NotificationTypeEnum.ACCESS_POINT_SNAPSHOT;
    default:
      return Enum$NotificationTypeEnum.$unknown;
  }
}

enum Enum$SnapshotReasonEnum {
  ACCESS_DENIED,
  RESTRICTED_ACCESS_POINT,
  DOOR_FORCED_OPEN,
  DOOR_OPEN_TOO_LONG,
  UNKNOWN,
  $unknown;

  factory Enum$SnapshotReasonEnum.fromJson(String value) =>
      fromJson$Enum$SnapshotReasonEnum(value);

  String toJson() => toJson$Enum$SnapshotReasonEnum(this);
}

String toJson$Enum$SnapshotReasonEnum(Enum$SnapshotReasonEnum e) {
  switch (e) {
    case Enum$SnapshotReasonEnum.ACCESS_DENIED:
      return r'ACCESS_DENIED';
    case Enum$SnapshotReasonEnum.RESTRICTED_ACCESS_POINT:
      return r'RESTRICTED_ACCESS_POINT';
    case Enum$SnapshotReasonEnum.DOOR_FORCED_OPEN:
      return r'DOOR_FORCED_OPEN';
    case Enum$SnapshotReasonEnum.DOOR_OPEN_TOO_LONG:
      return r'DOOR_OPEN_TOO_LONG';
    case Enum$SnapshotReasonEnum.UNKNOWN:
      return r'UNKNOWN';
    case Enum$SnapshotReasonEnum.$unknown:
      return r'$unknown';
  }
}

Enum$SnapshotReasonEnum fromJson$Enum$SnapshotReasonEnum(String value) {
  switch (value) {
    case r'ACCESS_DENIED':
      return Enum$SnapshotReasonEnum.ACCESS_DENIED;
    case r'RESTRICTED_ACCESS_POINT':
      return Enum$SnapshotReasonEnum.RESTRICTED_ACCESS_POINT;
    case r'DOOR_FORCED_OPEN':
      return Enum$SnapshotReasonEnum.DOOR_FORCED_OPEN;
    case r'DOOR_OPEN_TOO_LONG':
      return Enum$SnapshotReasonEnum.DOOR_OPEN_TOO_LONG;
    case r'UNKNOWN':
      return Enum$SnapshotReasonEnum.UNKNOWN;
    default:
      return Enum$SnapshotReasonEnum.$unknown;
  }
}

enum Enum$SortEnumType {
  ASC,
  DESC,
  $unknown;

  factory Enum$SortEnumType.fromJson(String value) =>
      fromJson$Enum$SortEnumType(value);

  String toJson() => toJson$Enum$SortEnumType(this);
}

String toJson$Enum$SortEnumType(Enum$SortEnumType e) {
  switch (e) {
    case Enum$SortEnumType.ASC:
      return r'ASC';
    case Enum$SortEnumType.DESC:
      return r'DESC';
    case Enum$SortEnumType.$unknown:
      return r'$unknown';
  }
}

Enum$SortEnumType fromJson$Enum$SortEnumType(String value) {
  switch (value) {
    case r'ASC':
      return Enum$SortEnumType.ASC;
    case r'DESC':
      return Enum$SortEnumType.DESC;
    default:
      return Enum$SortEnumType.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
