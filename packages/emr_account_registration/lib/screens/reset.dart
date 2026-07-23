import 'package:emr_account_registration/signup.dart';
import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  const Reset({super.key});

  Future<bool> _fetchData() async {
    await JourneyController.resetModel();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _fetchData(),

      builder: (BuildContext ctx, AsyncSnapshot<bool> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          context.goToRegister();
        }
        return processingIndicator();
      },
    );
  }
}
