import 'package:emr_one_core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class PartyTicketsScreen extends StatelessWidget {
  const PartyTicketsScreen({required this.partyAccountNo, super.key});

  final String partyAccountNo;

  @override
  Widget build(BuildContext context) {
    return Text(context.l10n.partyTickets.toUpperCase());
  }
}
