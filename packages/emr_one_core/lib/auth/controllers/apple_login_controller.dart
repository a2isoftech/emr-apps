import 'package:emr_one_core/auth/apple_login_view.dart';
import 'package:emr_one_core/auth/auth.dart';
import 'package:emr_one_core/screens/login_screen.dart';
import 'package:flutter/widgets.dart';

class AppleLoginController extends LoginController {
  AppleLoginController({required super.customAuthUrl, super.onUserLoggedIn});

  @override
  Future<void> startEmailPasswordLogin(String email, String password) async {
    try {
      state = LoginState.busy;
      notifyListeners();

      await FirebaseLogin.beginSignInBasic(email, password);
    } catch (error) {
      state = LoginState.error;
      notifyListeners();
    }
  }

  @override
  Widget? loginWidgetBuilder(BuildContext context) =>
      const LoginScreen(loggedOutWidgetBuilder: AppleLoginView.new);
}
