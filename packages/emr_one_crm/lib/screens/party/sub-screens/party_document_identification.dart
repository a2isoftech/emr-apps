import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party/sub-screens/party_document_identification_controller.dart';
import 'package:emr_one_crm/screens/party/widgets/party_document.dart';
import 'package:emr_one_crm/services/party_info_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class PartyDocumentIdentification extends StatefulWidget {
  const PartyDocumentIdentification({
    required this.partyAccountNo,
    required this.config,
    super.key,
  });

  final AppConfig config;
  final String partyAccountNo;

  @override
  State<PartyDocumentIdentification> createState() =>
      _PartyDocumentIdentificationState();
}

class _PartyDocumentIdentificationState
    extends State<PartyDocumentIdentification> {
  late final PartyDocumentController controller;
  bool isLoading = false;

  @override
  void dispose() {
    controller.removeListener(_changeNotifier);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    isLoading = true;
    final client = Provider.of<BaseClient>(
      context,
      listen: false,
    );

    controller = PartyDocumentController(
      partyInfoService: PartyInfoService(
        client,
        widget.config,
      ),
      coreApiService: context.coreApi,
    );

    controller.addListener(_changeNotifier);
  }

  void _changeNotifier() {
    setState(() {
      isLoading = false;
    });
  }

  Row _header() {
    return Row(
      children: [
        Expanded(
          child: Text(
            context.l10n.documentIdentification,
            style: EmrOneConstants.kSmallHeadingTextStyle,
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            await context.pushNamed(
              NamedRoutes.partyDocumentUpload,
              params: {'partyAccountNo': widget.partyAccountNo},
            );
          },
          child: Text(context.l10n.upload),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    controller.getImageList(locale, widget.partyAccountNo, context);

    return ValueListenableBuilder<bool>(
      valueListenable: controller.isBusy,
      builder: (context, value, child) {
        if (value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (controller.activeDocuments.isEmpty &&
            controller.expiredDocuments.isEmpty) {
          return const GenericMessage(
            subTitle: '',
            title: 'This party does not have any documents',
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(),
            if (controller.activeDocuments.isNotEmpty) ...[
              const SizedBox(height: Insets.gutter),
              Consumer(
                builder: (context, value, child) {
                  return PartyDocument(
                    documentStatus: context.l10n.active,
                    documents: controller.activeDocuments,
                  );
                },
              ),
            ],
            if (controller.expiredDocuments.isNotEmpty) ...[
              const SizedBox(height: Insets.gutter),
              PartyDocument(
                documentStatus: context.l10n.expired,
                documents: controller.expiredDocuments,
              ),
            ],
          ],
        );
      },
    );
  }
}
