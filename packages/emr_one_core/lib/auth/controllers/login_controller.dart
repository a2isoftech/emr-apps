import 'package:emr_one_core/auth/auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;

class LoginController extends BaseLoginController {
  LoginController({
    required this.customAuthUrl,
    this.onUserLoggedIn,
  }) : super() {
    FirebaseLogin.getInstance()
        .authStateChanges()
        .listen(_handleFirebaseUserChanges);
  }

  /// A function which can be called after the user logs in, but before
  /// `notifyListeners` is called.
  final Future<void> Function(
    LoginController controller,
    fb_auth.User user,
  )? onUserLoggedIn;

  final String customAuthUrl;

  @override
  void reset() {
    state = LoginState.loggedOut;
    notifyListeners();
  }

  @override
  Future<CustomTokenResponse> doBadgeLogin(
    String cardNumber,
    String pin,
    String newPin,
  ) async {
    try {
      final result = await FirebaseLogin.beginSignInCardPin(
        cardNumber,
        pin,
        newPin,
        customAuthUrl,
      );

      if (!result.success) {
        state = LoginState.error;
        notifyListeners();
      }

      return result;
    } catch (error) {
      state = LoginState.error;
      notifyListeners();

      return CustomTokenResponse(errorCode: CustomAuthErrorCode.none);
    }
  }

  @override
  Future<void> startBadgeLogin() async {
    state = LoginState.badgeLogIn;
    notifyListeners();
  }

  @override
  Future<void> startUsernamePasswordLogin() async {
    try {
      state = LoginState.busy;
      notifyListeners();

      await FirebaseLogin.beginSignInDomainCredentials();
    } catch (error) {
      state = LoginState.error;
      notifyListeners();
    }
  }

  @override
  void cancelBadgeLogin() {
    state = LoginState.loggedOut;
    notifyListeners();
  }

  @override
  void loginError() {
    state = LoginState.error;
    notifyListeners();
  }

  Future<void> _handleFirebaseUserChanges(fb_auth.User? user) async {
    if (state != LoginState.loggedIn && user == null) {
      return;
    }

    // Change the state to busy to make sure the app shows a spinner while we're
    // calling onUserLoggedIn.
    state = LoginState.busy;
    notifyListeners();

    // Get whether we think we're logged in or not.
    final nextState = user != null ? LoginState.loggedIn : LoginState.loggedOut;

    // When we're logging in, give the caller a chance to do something. This
    // could include calling a method, e.g. loginError which could change the
    // value of _state.
    if (nextState == LoginState.loggedIn) {
      await onUserLoggedIn!(this, user!);
    }

    // If onUserLoggedIn hasn't changed state then update state.
    if (state == LoginState.busy) {
      state = nextState;
    }

    notifyListeners();
  }
}
