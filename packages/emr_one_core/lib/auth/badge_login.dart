import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum BadgeLoginState {
  wantCardNumber,
  wantPIN,
  loggingIn,
  loggedIn,
  wantNewPIN,
  wantNewPINConfirmation
}

class BadgeLogin extends StatefulWidget {
  const BadgeLogin({super.key});

  @override
  State<BadgeLogin> createState() => _BadgeLoginState();
}

class _BadgeLoginState extends State<BadgeLogin> {
  BadgeLoginState state = BadgeLoginState.wantCardNumber;
  String cardNo = '';
  String pin = '';
  String newPin = '';
  Widget? _stateWidget;

  @override
  void initState() {
    super.initState();
    _stateWidget = _getStateWidget(BadgeLoginState.wantCardNumber);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: _stateWidget,
    );
  }

  Widget _getStateWidget(BadgeLoginState state) {
    switch (state) {
      case BadgeLoginState.wantCardNumber:
        return _badgeLoginWantCardNo(context);
      case BadgeLoginState.wantPIN:
        return _badgeLoginWantPin(
          context,
          'Enter PIN',
          onSubmit: _setPIN,
        );
      case BadgeLoginState.loggingIn:
        return _loggingIn(context);
      case BadgeLoginState.wantNewPIN:
        return _badgeLoginWantPin(
          context,
          'Your PIN has expired\nEnter a new PIN',
          onSubmit: _confirmPIN,
          onValidate: _validateNewPIN,
        );
      case BadgeLoginState.wantNewPINConfirmation:
        return _badgeLoginWantPin(
          context,
          'Confirm your new PIN',
          onSubmit: _setPIN,
          onValidate: _validatePINConfirmation,
        );
      case BadgeLoginState.loggedIn:
        return Container();
    }
  }

  Widget _badgeLoginWantCardNo(BuildContext context) {
    return Center(
      key: const ValueKey<BadgeLoginState>(BadgeLoginState.wantCardNumber),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NumberPad(
              promptText: 'Badge Number',
              defaultValue: cardNo,
              obscurePin: false,
              onCancel: () {
                Provider.of<BaseLoginController>(context, listen: false)
                    .cancelBadgeLogin();
              },
              onSubmit: _setCardNumber,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () async {
                    final badgeNumber = await ScanHelper.startInlineCodeScan(
                      context,
                      title: 'Scan Employee Badge',
                    );

                    if (badgeNumber != null) {
                      _setCardNumber(badgeNumber);
                    }
                  },
                  child: const Text('Scan my badge'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _setCardNumber(String cardNo) {
    this.cardNo = cardNo;
    state = BadgeLoginState.wantPIN;

    setState(() {
      _stateWidget = _getStateWidget(state);
    });
  }

  Future<void> _setPIN(String pinOrNewPin) async {
    if (state == BadgeLoginState.wantNewPINConfirmation) {
      newPin = pinOrNewPin;
    } else {
      pin = pinOrNewPin;
    }

    state = BadgeLoginState.loggingIn;
    setState(() {
      _stateWidget = _getStateWidget(state);
    });

    final result =
        await Provider.of<BaseLoginController>(context, listen: false)
            .doBadgeLogin(cardNo, pin, newPin);

    if (result.errorCode == CustomAuthErrorCode.pinExpired) {
      state = BadgeLoginState.wantNewPIN;
      setState(() {
        _stateWidget = _getStateWidget(state);
      });
    }
  }

  // Make sure the PIN isn't the default value.
  bool _validateNewPIN(String newPin) => newPin != '0000';

  // Make sure the PIN confirmation value matches the new PIN.
  bool _validatePINConfirmation(String confirmPin) => confirmPin == newPin;

  void _confirmPIN(String pin) {
    newPin = pin;
    state = BadgeLoginState.wantNewPINConfirmation;
    setState(() {
      _stateWidget = _getStateWidget(state);
    });
  }

  Widget _badgeLoginWantPin(
    BuildContext context,
    String promptText, {
    void Function(String)? onSubmit,
    bool Function(String)? onValidate,
  }) {
    return Center(
      key: ValueKey<BadgeLoginState>(state),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: NumberPad(
          promptText: promptText,
          obscurePin: true,
          onCancel: () => setState(() {
            state = BadgeLoginState.wantCardNumber;
            _stateWidget = _getStateWidget(state);
          }),
          onValidate: onValidate,
          onSubmit: onSubmit,
        ),
      ),
    );
  }

  Widget _loggingIn(BuildContext context) {
    return const WaitingIndicator();
  }
}
