import 'package:emr_one_elv_quotes/extensions/extensions.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/vin_scrap_quote_controller.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class VinInputField extends StatefulWidget {
  const VinInputField({super.key});

  @override
  State<VinInputField> createState() => _VinInputFieldState();
}

class _VinInputFieldState extends State<VinInputField> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<VINScrapController>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.gutter * 2,
      ),
      child: SizedBox(
        width: 500,
        child: TextField(
          controller: controller.vinController,
          autofocus: true,
          decoration: InputDecoration(
            label: Text('${controller.activeTerritory.vinVrnText(context)}:'),
            suffixIcon: IconButton(
              icon: const Icon(Icons.paste),
              onPressed: () => _getClipboardText(controller),
            ),
          ),
          maxLength: controller.activeTerritory == ElvTerritory.usa ? 17 : 7,
          onChanged: (v) async {
            await controller.searchVin();
            if (controller.state.apiError &&
                controller.state.apiErrorMessage.isNotEmpty) {
              if (context.mounted) {
                var errorMessage = controller.state.apiErrorMessage;
                final failedVehicleSearch = controller.state.failedVrnLookUps
                    .where((x) => x == v)
                    .firstOrNull;
                if (failedVehicleSearch != null) {
                  errorMessage = controller.activeTerritory == ElvTerritory.uk
                      ? context.l10n.vrnIsNotValid
                      : context.l10n.vinNumberIsNotValid;
                }
                await EmrDialog.ok(
                  context,
                  titleText: context.l10n.error,
                  contentText: errorMessage,
                );
              }
              controller.state.apiErrorMessage = '';
            }
          },
        ),
      ),
    );
  }

  Future<void> _getClipboardText(
    VINScrapController controller,
  ) async {
    final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
    final clipboardText = clipboardData?.text;
    if (clipboardText != null) {
      if (controller.vinController.text.isEmpty) {
        controller.vinController.text = clipboardText;
      } else if (!controller.vinController.text.contains(clipboardText)) {
        controller.vinController.text =
            '${controller.vinController.text} $clipboardText';
      }
      await controller.searchVin();
    }
  }
}
