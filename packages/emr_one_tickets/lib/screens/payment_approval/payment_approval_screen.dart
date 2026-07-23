import 'package:emr_core_api/graphql/fragments/payment/payment_approval.graphql.dart';
import 'package:emr_core_api/services/reference_data_service.dart';
import 'package:emr_one_tickets/exceptions/exceptions.dart';
import 'package:emr_one_tickets/services/tickets_service.dart';
import 'package:emr_one_tickets/widgets/error_display.dart';
import 'package:emr_one_tickets/widgets/payment_approval/payment_approval.dart';
import 'package:flutter/material.dart';
import 'package:gql_exec/gql_exec.dart';

class PaymentApprovalScreen extends StatefulWidget {
  const PaymentApprovalScreen({
    required this.approvalId,
    required this.ticketsService,
    required this.referenceDataService,
    super.key,
  });

  final TicketsService ticketsService;
  final ReferenceDataService referenceDataService;
  final String approvalId;

  @override
  State<PaymentApprovalScreen> createState() => _PaymentApprovalScreenState();
}

class _PaymentApprovalScreenState extends State<PaymentApprovalScreen> {
  late Future<Fragment$PaymentApproval> getPamentApproval;

  @override
  void initState() {
    super.initState();

    getPamentApproval = widget.ticketsService.getPaymentApproval(
      widget.approvalId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: getPamentApproval, builder: _buildFuture);
  }

  Widget _buildFuture(
    BuildContext context,
    AsyncSnapshot<Fragment$PaymentApproval> snapshot,
  ) {
    if (snapshot.hasError) {
      if (snapshot.error is PaymentApprovalNotFound) {
        return const ErrorDisplayWidget(
          heading: 'Not Found',
          message: 'Approval request may have been withdrawn.',
        );
      }

      if (snapshot.error is PaymentApprovalNotAuthorized) {
        return const ErrorDisplayWidget(
          heading: 'Not Authorized',
          message: 'You are not authorized to view this Payment Approval',
          icon: Icon(Icons.lock, size: 128, color: Colors.white),
        );
      }

      if (snapshot.error is GraphQLError) {
        final error = snapshot.error! as GraphQLError;
        return Text('Error: ${error.message}');
      }

      return const Text('Error');
    }

    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator());
    }

    return PaymentApproval(
      ticketsService: widget.ticketsService,
      referenceDataService: widget.referenceDataService,
      paymentApproval: snapshot.data!,
    );
  }
}
