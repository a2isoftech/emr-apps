import 'package:emr_one_crm/screens/party/party_controller.dart';
import 'package:emr_one_crm/screens/party/widgets/party_details.dart';
import 'package:flutter/material.dart';

class PartyDetails extends StatelessWidget {
  const PartyDetails({required this.partyController, super.key});

  final PartyController partyController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: PartyDetailsList(partyController: partyController),
      ),
    );
  }
}
