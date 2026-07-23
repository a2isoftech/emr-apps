import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/extensions/user_fragment_extensions.dart';
import 'package:emr_one_core/graphql/queries/queries.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:http/http.dart';

class StaffUserService extends UserService {
  factory StaffUserService.fromClient(Client httpClient) {
    _singleton._httpClient = httpClient;

    UserService.instance = _singleton;

    return _singleton;
  }

  StaffUserService._internal();

  static final StaffUserService _singleton = StaffUserService._internal();

  late Client _httpClient;

  User? _user;

  @override
  Future<User?> getUser() async {
    if (_user != null) {
      return _user!;
    }

    final result = await documentNodeQueryGetUserInfo.execute(
      _httpClient,
      Query$GetUserInfo.fromJson,
    );

    if (result.hasErrors() || result.data?.me == null) {
      return null;
    }

    return _user = result.data!.me.toUser();
  }

  @override
  User get user {
    if (_user == null) {
      throw Exception('User is not yet available');
    }

    return _user!;
  }

  @override
  void clear() {
    _user = null;
  }

  @override
  bool get hasUser => _user != null;
}
