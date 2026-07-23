import 'package:emr_one_core/auth/auth.dart';
import 'package:flutter/material.dart';

class BaseLoginController with ChangeNotifier {
  BaseLoginController({this.state = LoginState.loggedOut});

  LoginState state;

  void reset() {
    throw UnimplementedError();
  }

  Future<CustomTokenResponse> doBadgeLogin(
    String cardNumber,
    String pin,
    String newPin,
  ) async {
    throw UnimplementedError();
  }

  Widget? loginWidgetBuilder(BuildContext context) {
    return null;
  }

  Future<void> startBadgeLogin() async {
    throw UnimplementedError();
  }

  Future<void> startUsernamePasswordLogin() async {
    throw UnimplementedError();
  }

  Future<void> startEmailPasswordLogin(String email, String password) async {
    throw UnimplementedError();
  }

  void cancelBadgeLogin() {
    throw UnimplementedError();
  }

  void loginError() {
    throw UnimplementedError();
  }
}
