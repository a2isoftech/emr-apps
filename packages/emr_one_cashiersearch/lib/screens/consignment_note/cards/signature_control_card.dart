import 'package:emr_one_cashiersearch/controllers/consignment_note_controller.dart';
import 'package:emr_one_cashiersearch/services/media_service.dart';
import 'package:emr_one_cashiersearch/widgets/qr_signature_widget.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class SignatureControlCard extends EmrTabBarVerticalViewCard {
  SignatureControlCard({
    required super.title,
    required ConsignmentNoteController controller,
    required MediaService mediaService,
    required String ticketNumber,
    required String yardCode,
    super.key,
  }) : super(
          child: Builder(
            builder: (context) {
              return QrSignatureWidget(
                headerText: context.l10n.carrierSignature,
                signatureImage: controller.signatureImage,
                ticketNo: ticketNumber,
                mediaService: mediaService,
                yardCode: yardCode,
              );
            },
          ),
        );
}
