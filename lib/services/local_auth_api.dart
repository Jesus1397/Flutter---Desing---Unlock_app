import 'package:flutter/services.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi {
  static final _auth = LocalAuthentication();

  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
      return false;
    }
  }

  static Future<bool> authenticate() async {
    final isAviaible = await hasBiometrics();

    if (!isAviaible) return false;

    return await _auth.authenticate(
      androidAuthStrings: AndroidAuthMessages(
        signInTitle: 'Tap to login',
      ),
      localizedReason: 'Fingerprint',
      useErrorDialogs: true,
      stickyAuth: true,
    );
  }
}
