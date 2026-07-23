import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionNonConformingPartCardWidget extends StatefulWidget {
  const InspectionNonConformingPartCardWidget({
    required this.selectedPart,
    required this.onDeletePart,
    super.key,
  });

  final VehicleNonConformingPartModel selectedPart;
  final void Function()? onDeletePart;

  @override
  State<InspectionNonConformingPartCardWidget> createState() =>
      _InspectionNonConformingPartCardWidgetState();
}

class _InspectionNonConformingPartCardWidgetState
    extends State<InspectionNonConformingPartCardWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: Insets.gutter,
        ),
        Text(
          widget.selectedPart.partName,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: Insets.gutter / 4,
        ),
        Text(
          context.l10n.photos,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: Insets.gutter / 4,
        ),
        Stack(
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: FutureBuilder(
                future: controller.getDocument(
                  documentType: VehicleDocumentEnums.fromString(
                    widget.selectedPart.partName,
                  ),
                  serverImagePath: widget.selectedPart.path,
                ),
                builder: (context, snapshot) {
                  if (snapshot.connectionState != ConnectionState.done) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.data != null) {
                    return Image.memory(
                      snapshot.data!,
                      fit: BoxFit.fill,
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),
            if (widget.onDeletePart != null) ...{
              Positioned(
                right: 0,
                top: 0,
                child: IconButton(
                  onPressed: widget.onDeletePart,
                  icon: Icon(
                    Icons.cancel,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            },
          ],
        ),
      ],
    );
  }
}
