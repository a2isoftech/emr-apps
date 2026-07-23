import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/common/colors.dart';
import 'package:emr_one_eam/models/import_api_response.dart';
import 'package:emr_one_eam/widgets/information_container.dart';
import 'package:flutter/material.dart';

class ApiResponseTypeWidget extends StatelessWidget {
  const ApiResponseTypeWidget({
    required this.importResponseType,
    this.onImportPressed,
    this.onResetPressed,
    super.key,
  });

  final ValueNotifier<ImportApiResponse?> importResponseType;
  final void Function()? onImportPressed;
  final void Function()? onResetPressed;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: importResponseType,
      builder: (context, value, child) {
        if (value == null) {
          return Container();
        }
        return Column(
          children: [
            if (value.infos != null)
              if (value.infos!.isNotEmpty)
                InformationContainer(
                  messages: value.infos!,
                  backgroundColor: EamAppColors.information,
                  leadingIcon: const Icon(Icons.info),
                ),
            const SizedBox(
              height: 20,
            ),
            if (value.errors != null)
              if (value.errors!.isNotEmpty)
                InformationContainer(
                  messages: value.errors!,
                  backgroundColor: EamAppColors.error,
                  leadingIcon: const Icon(Icons.error),
                ),
            const SizedBox(
              height: 20,
            ),
            if (value.successes != null)
              if (value.successes!.isNotEmpty)
                InformationContainer(
                  messages: value.successes!,
                  backgroundColor: EamAppColors.success,
                  leadingIcon: const Icon(Icons.check_circle),
                ),
            const SizedBox(
              height: 20,
            ),
            if (value.warnings != null)
              if (value.warnings!.isNotEmpty)
                InformationContainer(
                  messages: value.warnings!,
                  backgroundColor: Colors.amber,
                  leadingIcon: const Icon(Icons.warning),
                ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Spacer(),
                if (onResetPressed == null)
                  Container()
                else
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: onResetPressed,
                      child: Text(context.l10n.editAgain),
                    ),
                  ),
                const SizedBox(
                  width: 20,
                ),
                if (importResponseType.value != null &&
                    (importResponseType.value!.successes == null ||
                        importResponseType.value!.successes!.isEmpty))
                  onImportPressed == null
                      ? Container()
                      : SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: importResponseType.value != null &&
                                    (importResponseType.value!.errors == null ||
                                        importResponseType
                                            .value!.errors!.isEmpty)
                                ? onImportPressed?.call
                                : null,
                            child: Text(context.l10n.import),
                          ),
                        ),
              ],
            ),
          ],
        );
      },
    );
  }
}
