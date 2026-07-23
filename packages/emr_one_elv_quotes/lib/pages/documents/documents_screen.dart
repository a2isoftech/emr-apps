import 'package:emr_one_elv_core/styles/elv_button_styles.dart';
import 'package:emr_one_elv_core/widgets/elv_wrapper.dart';
import 'package:emr_one_elv_quotes/pages/documents/controllers/documents_controller.dart';
import 'package:emr_one_elv_quotes/pages/documents/widgets/documents_widgets.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:provider/provider.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({
    required this.batchQuoteId,
    required this.quoteId,
    super.key,
  });

  final int batchQuoteId;
  final int quoteId;

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  late DocumentsController controller;

  @override
  void initState() {
    super.initState();
    controller = Provider.of<DocumentsController>(context, listen: false);
    controller.initState(
      batchQuoteId: widget.batchQuoteId,
      quoteId: widget.quoteId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.getVehicleDocuments(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text(context.l10n.pleaseTryAgain));
        }

        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        return ElvScreenWrapper(
          header: DocumentHeader(
            identifierType: controller.state.documents?.vehicleReg == null
                ? context.l10n.vin
                : context.l10n.vehicleReg,
            vehicleIdentifier: (controller.state.documents?.vehicleReg ??
                    controller.state.documents?.vin) ??
                '',
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTitle(context),
              const SizedBox(height: Insets.gutter),
              Expanded(child: _buildDocumentContent(context)),
              const SizedBox(height: Insets.gutter),
              _buildGoBackButton(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      context.l10n.photos,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildDocumentContent(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<bool>(
        valueListenable: controller.state.noDocumentMessage,
        builder: (context, noDocs, _) {
          if (noDocs) {
            return Padding(
              padding: const EdgeInsets.only(top: Insets.gutter * 2),
              child: Center(
                child: Text(
                  context.l10n.noDocumentsFound,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            );
          }

          return Wrap(
            runSpacing: Insets.gutter / 2,
            children: [
              ...(controller.state.documents?.documents ?? []).map(
                (x) => VehicleDocumentsCard(
                  document: x,
                ),
              ),
              ...(controller.state.documents?.vehicleCats ?? []).map(
                (x) => CatDocumentsCard(
                  vehicleCat: x,
                ),
              ),
              const SizedBox(
                width: Insets.gutter / 2,
              ),
              ...(controller.state.documents?.nonConformingParts ?? []).map(
                (x) => NonConfirmingDocumentCard(
                  document: x,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildGoBackButton(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: 150,
        child: ElevatedButton(
          style: elvSecondaryButtonStyle(context),
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              context.pop();
            } else {
              context.goNamed(
                NamedRoutes.elvQuotesSummary,
                params: {
                  'batchQuoteId': widget.batchQuoteId.toString(),
                },
              );
            }
          },
          child: Text(
            context.l10n.goBack,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}
