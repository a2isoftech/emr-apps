import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/form_fields/emr_text_form_field.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/data/models/containers/updatable_driver_event_job_container_dto.dart';
import 'package:flutter/material.dart';

class ContainerRetentionWidget extends StatefulWidget {
  const ContainerRetentionWidget({
    required this.containerLabel,
    required this.container,
    required this.index,
    required this.onUpdate,
    required this.showRetentionCheckBox,
    super.key,
  });

  final String containerLabel;
  final UpdatableDriverEventJobContainerDto container;
  final int index;
  final bool showRetentionCheckBox;
  final void Function(UpdatableDriverEventJobContainerDto) onUpdate;

  @override
  State<ContainerRetentionWidget> createState() =>
      _ContainerRetentionWidgetState();
}

class _ContainerRetentionWidgetState extends State<ContainerRetentionWidget> {
  late ValueNotifier<String?> assetNumberNotifier;
  late ValueNotifier<bool> isRetainedNotifier;

  @override
  void initState() {
    super.initState();
    assetNumberNotifier = ValueNotifier(widget.container.assetNumberUsed);
    isRetainedNotifier = ValueNotifier(widget.container.isRetained);

    // Listen for changes and update parent
    assetNumberNotifier.addListener(_updateContainer);
    isRetainedNotifier.addListener(_updateContainer);
  }

  void _updateContainer() {
    final updatedContainer = UpdatableDriverEventJobContainerDto(
      containerType: widget.container.containerType,
      containerGuid: widget.container.containerGuid,
      isRetained: isRetainedNotifier.value,
      assetNumberUsed: assetNumberNotifier.value,
      comments: widget.container.comments,
    );
    widget.onUpdate(updatedContainer);
  }

  @override
  Widget build(BuildContext context) {
    final driverComments = widget.container.comments ?? '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Insets.gutter / 2,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Insets.gutter / 2,
              ),
              decoration: BoxDecoration(
                color: TransportAppColors.greyCardBg,
                borderRadius: BorderRadius.circular(Insets.gutter / 4),
              ),
              width: 100,
              child: Center(
                child: Text(
                  widget.containerLabel,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(width: Insets.gutter),
            Text(
              widget.container.containerType,
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 200,
              child: EmrTextFormField(
                hintText: context.l10n.assetNumberUsed,
                binding: assetNumberNotifier,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => Validators.length(value, max: 16),
              ),
            ),
            const SizedBox(width: Insets.gutter),
            if (widget.showRetentionCheckBox) ...[
              ValueListenableBuilder<bool>(
                valueListenable: isRetainedNotifier,
                builder: (context, isRetained, child) {
                  return Checkbox(
                    value: isRetained,
                    onChanged: (val) {
                      isRetainedNotifier.value = val ?? false;
                    },
                  );
                },
              ),
              Text(context.l10n.retainContainer),
            ],
          ],
        ),
        if (driverComments.isNotEmpty)
          Row(children: [Text('${context.l10n.comments} : $driverComments')]),
      ],
    );
  }
}
