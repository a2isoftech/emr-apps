import 'dart:convert';

import 'package:emr_one_core/auth/auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

/// Firebase authentication helper methods for EMR login flows
class FirebaseLogin {
  /// Sign in with Firebase using username and password
  static Future<fb_auth.UserCredential> beginSignInBasic(
    String email,
    String password,
  ) async {
    final instance = getInstance();
    final userCredential = await instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    await _saveOAuthAccessToken(userCredential);
    return userCredential;
  }

  /// Start the process of interactive logon using AD email/password
  static Future<void> beginSignInDomainCredentials() async {
    final instance = getInstance();

    final provider = fb_auth.MicrosoftAuthProvider();

    provider.setCustomParameters({
      'tenant': '4d8be152-a029-4b68-8c63-3463be27d03f',
    });

    // Sign in the user with Firebase on Web.
    final credentials = await (kIsWeb
        ? instance.signInWithPopup(provider)
        : instance.signInWithProvider(provider));

    await _saveOAuthAccessToken(credentials);
  }

  /// Start the process of interactive logon using supplied Card & PIN
  static Future<CustomTokenResponse> beginSignInCardPin(
    String cardNumber,
    String pin,
    String newPin,
    String customAuthUrl,
  ) async {
    if (customAuthUrl.isEmpty) {
      throw Exception('customAuthUrl is required for badge login');
    }

    final response = await http.get(
      Uri.parse('$customAuthUrl&uid=$cardNumber&pin=$pin&newpin=$newPin'),
    );

    final responseContent = response.body;

    final json = jsonDecode(responseContent) as Map<String, dynamic>;

    final result = CustomTokenResponse.fromJson(json);

    if (result.success && result.errorCode == CustomAuthErrorCode.none) {
      // Sign in the user with Firebase.
      await getInstance().signInWithCustomToken(result.idToken!);
    }

    return result;
  }

  static Future<void> beginSignOut() {
    return getInstance().signOut();
  }

  /// Get hold of our authentication app instance
  static fb_auth.FirebaseAuth getInstance() => fb_auth.FirebaseAuth.instance;

  static Future<String> getToken({bool forceRefresh = false}) async {
    final instance = getInstance();

    if (instance.currentUser == null) {
      throw Exception('No user loggged in');
    }

    final token = await instance.currentUser!.getIdToken(forceRefresh);

    // firebase_auth latest version can return null now
    // ignore: unnecessary_null_comparison
    if (token == null) {
      throw Exception('No token available');
    }

    return Future.value(token);
  }

  static Future<String> getOAuthToken({bool forceRefresh = false}) async {
    if (forceRefresh == false) {
      final prefs = await SharedPreferences.getInstance();
      final accessToken = prefs.getString('oauth:accessToken');
      if (accessToken != null) {
        return accessToken;
      }
    }

    await beginSignInDomainCredentials();

    return getOAuthToken();
  }

  static Future<fb_auth.ConfirmationResult> beginSignInWithPhoneNumber(
    String phoneNumber,
  ) {
    final instance = getInstance();
    return instance.signInWithPhoneNumber(phoneNumber);
  }

  static Future<void> completeSignInWithPhoneNumber(
    fb_auth.ConfirmationResult confirmationResult,
    String verificationCode,
  ) async {
    final userCredential = await confirmationResult.confirm(verificationCode);
    await _saveOAuthAccessToken(userCredential);
  }

  static Future<void> beginSignEmailLink(
    String email,
    String callback,
    String languageCode,
  ) async {
    final instance = getInstance();
    await instance.setLanguageCode(languageCode);
    await instance.sendSignInLinkToEmail(
      email: email,
      actionCodeSettings: fb_auth.ActionCodeSettings(
        url: callback,
        handleCodeInApp: true,
      ),
    );
  }

  static Future<void> completeSignInWithEmailLink(
    String email,
    String emailLink,
  ) async {
    final instance = getInstance();
    if (instance.isSignInWithEmailLink(emailLink)) {
      final userCredential = await instance.signInWithEmailLink(
        email: email,
        emailLink: emailLink,
      );

      await _saveOAuthAccessToken(userCredential);
    }
  }

  static Future<void> _saveOAuthAccessToken(
    fb_auth.UserCredential userCredential,
  ) async {
    final prefs = await SharedPreferences.getInstance();

    if (userCredential.credential != null) {
      await prefs.setString(
        'oauth:accessToken',
        userCredential.credential!.accessToken!,
      );
    }
  }
}
