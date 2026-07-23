import 'package:emr_account_registration/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConsumerScreenWidget extends StatelessWidget {
  const ConsumerScreenWidget({
    super.key,
    required this.journeyController,
    required this.signupModel,
    required this.onRefresh,
    required this.children,
  });

  final List<Widget> children;
  final SignupModel signupModel;
  final JourneyController journeyController;
  final void Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeNotifyingService>(
      builder: (context, dataBindingService, child) {
        journeyController.refresh(signupModel);
        onRefresh();
        return Column(children: children);
      },
    );
  }
}
