import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:provider/provider.dart';

@internal
class BasicLoginForm extends StatefulWidget {
  const BasicLoginForm({required this.onCancel, super.key});
  final VoidCallback onCancel;

  @override
  State<BasicLoginForm> createState() => _BasicLoginFormState();
}

class _BasicLoginFormState extends State<BasicLoginForm> {
  final _email = ValueNotifier<String?>(null);
  final _password = ValueNotifier<String?>(null);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        key: const ValueKey('loginForm'),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmrTextFormField(
            labelText: context.l10n.emailAddress,
            binding: _email,
            validator: Validators.email,
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.disabled,
            autoFocus: true,
            onFieldSubmitted: (_) => _submit(),
          ),
          EmrTextFormField(
            labelText: context.l10n.password,
            binding: _password,
            autovalidateMode: AutovalidateMode.disabled,
            obscureText: true,
            validator: Validators.required,
            onFieldSubmitted: (_) => _submit(),
          ),
          const Spacer(),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter / 2),
                      child: FilledButton(
                        onPressed: _submit,
                        style: EmrButtonStyles.cta(),
                        child: Text(context.l10n.routeDisplayNameLogIn),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter / 2),
                      child: TextButton(
                        onPressed: widget.onCancel,
                        child: Text(context.l10n.cancel),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      (context.read<BaseLoginController>() as AppleLoginController)
          .startEmailPasswordLogin(_email.value!, _password.value!);
    }
  }
}
