import 'dart:async';

import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/screens/account_management/'
    'sub_screens/manage_contact/models/uploaded_file.dart';
import 'package:emr_one_accounts/screens/account_management/'
    'sub_screens/manage_licence_exemption/constants/'
    'licence_exemption_constants.dart';
import 'package:emr_one_accounts/screens/account_management/'
    'sub_screens/manage_licence_exemption/controllers/'
    'manage_licence_exemption_controller.dart';
import 'package:emr_one_accounts/screens/account_management/'
    'sub_screens/manage_licence_exemption/models/'
    'edit_licence_exemption_form_data.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

bool _isMediaWideLayout(BuildContext context) =>
    MediaQuery.sizeOf(context).width >= Insets.gutter * 40;

/// ISO/IEC 7810 ID-1 card aspect ratio (85.60 mm × 54.0 mm).
/// Used so licence/document previews keep standard card proportions.
const double _kIdCardAspectRatio = 85.6 / 54.0;

class LicenceExemptionDetails extends EmrTabBarVerticalViewItem {
  LicenceExemptionDetails({
    required BuildContext context,
    required this.controller,
    required this.formKey,
    super.key,
  }) : super(title: context.l10n.handlingWaste, allowedPermissions: const []);

  final ManageLicenceExemptionController controller;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return _LicenceExemptionDetailsBody(
      controller: controller,
      formKey: formKey,
    );
  }
}

class _LicenceExemptionDetailsBody extends StatefulWidget {
  const _LicenceExemptionDetailsBody({
    required this.controller,
    required this.formKey,
  });

  final ManageLicenceExemptionController controller;
  final GlobalKey<FormState> formKey;

  @override
  State<_LicenceExemptionDetailsBody> createState() =>
      _LicenceExemptionDetailsBodyState();
}

class _LicenceExemptionDetailsBodyState
    extends State<_LicenceExemptionDetailsBody> {
  int _formGeneration = 0;
  EditLicenceExemptionFormData? _trackedData;

  @override
  void initState() {
    super.initState();
    _trackedData = widget.controller.data;
  }

  @override
  void didUpdateWidget(covariant _LicenceExemptionDetailsBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newData = widget.controller.data;
    if (!identical(_trackedData, newData)) {
      _trackedData = newData;
      _formGeneration++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: KeyedSubtree(
        key: ValueKey<int>(_formGeneration),
        child: _HandlingWasteCard(
          controller: widget.controller,
          fields: _buildFields(context),
        ),
      ),
    );
  }

  List<Widget> _buildFields(BuildContext context) {
    final controller = widget.controller;
    final data = controller.data;

    return [
      EmrSwitchFormField(
        labelText: context.l10n.isProducerOfWaste,
        binding: data.isWasteProducer,
      ),
      EmrSwitchFormField(
        labelText: context.l10n.isImporterOfWaste,
        binding: data.isWasteImporter,
      ),
      EmrSwitchFormField(
        labelText: context.l10n.isTransporterOfWaste,
        binding: data.isWasteTransporter,
      ),
      EmrSwitchFormField(
        labelText: context.l10n.isRegisteredWasteCarrier,
        binding: data.isWasteRegisteredCarrier,
      ),
      EmrTextFormField<String>(
        labelText: context.l10n.wasteCarrierRegNo,
        binding: data.wasteCarrierRegNo,
        enabled: data.isWasteRegisteredCarrier,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => Validators.join([
          Validators.length(
            value,
            max: LicenceExemptionConstants.wasteCarrierRegNoMaxLength,
          ),
        ]),
      ),
      _AnnualWasteTransferNoteSwitch(controller: controller),
    ];
  }
}

class _AnnualWasteTransferNoteSwitch extends StatefulWidget {
  const _AnnualWasteTransferNoteSwitch({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  State<_AnnualWasteTransferNoteSwitch> createState() =>
      _AnnualWasteTransferNoteSwitchState();
}

class _AnnualWasteTransferNoteSwitchState
    extends State<_AnnualWasteTransferNoteSwitch> {
  ValueNotifier<bool> get _binding =>
      widget.controller.data.annualWasteTransferNote;

  bool _shouldConfirmTurnOff(ManageLicenceExemptionController controller) =>
      controller.hasDocument || controller.isReadingDocument;

  Future<void> _handleSwitchChanged(bool newValue) async {
    if (newValue) {
      widget.controller.ensureWasteTransferNoteDocumentSubtype();
      _binding.value = true;
      return;
    }

    if (!_shouldConfirmTurnOff(widget.controller)) {
      widget.controller.clearDocumentTypeUploadValidation();
      _binding.value = false;
      return;
    }

    await _showWasteTransferLicenceWarning();
  }

  Future<void> _showWasteTransferLicenceWarning() async {
    if (!mounted) {
      return;
    }

    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.annualWasteTransferNote,
      acceptLabel: context.l10n.continueForm,
      onAccept: () async {
        widget.controller.clearWasteTransferLicense();
        widget.controller.clearDocumentTypeUploadValidation();
        _binding.value = false;
        if (mounted) {
          Navigator.of(context, rootNavigator: true).pop();
        }
      },
      onCancel: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
      builder: _buildWasteTransferLicenceWarningContent,
    );
  }

  Widget _buildWasteTransferLicenceWarningContent(BuildContext dialogContext) {
    final screenWidth = MediaQuery.sizeOf(dialogContext).width;
    final safeContentWidth = screenWidth - Insets.gutter * 9;
    const compactScreenBreakpoint = Insets.gutter * 40;
    final textStyle = Theme.of(dialogContext).textTheme.bodyMedium;

    final messageText = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          dialogContext.l10n.annualWTNWarning,
          textAlign: TextAlign.center,
          softWrap: true,
          style: textStyle,
        ),
        const SizedBox(height: Insets.gutter / 2),
        Text(
          dialogContext.l10n.doYouWantToProceed,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      ],
    );

    if (screenWidth <= compactScreenBreakpoint) {
      final fixedWidth = safeContentWidth > 0 ? safeContentWidth : screenWidth;
      return SizedBox(width: fixedWidth, child: messageText);
    }

    final compactMaxWidth = safeContentWidth.clamp(
      gutterTimes15,
      screenWidth * 0.35,
    );

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: compactMaxWidth),
      child: messageText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(context.l10n.annualWasteTransferNote),
        const SizedBox(height: labelControlSpacing),
        ValueListenableBuilder<bool>(
          valueListenable: _binding,
          builder: (context, isOn, _) {
            return Switch.adaptive(
              value: isOn,
              onChanged: (newValue) =>
                  unawaited(_handleSwitchChanged(newValue)),
            );
          },
        ),
      ],
    );
  }
}

bool _showAnnualWasteTransferUploadSection(
  ManageLicenceExemptionController controller,
) => controller.data.annualWasteTransferNote.value;

bool _showDocumentPreview(ManageLicenceExemptionController controller) =>
    _showAnnualWasteTransferUploadSection(controller) &&
    (controller.hasDocument || controller.isReadingDocument);

String _formatLicenceDisplayDate(DateTime? date) {
  if (date == null) {
    return '—';
  }
  return DateFormat.yMMMd().format(date);
}

String _documentTypeDisplayLabel(
  ManageLicenceExemptionController controller,
  String? documentSubtype,
) {
  final normalized = controller.normalizeDocumentSubtype(documentSubtype);
  if (normalized == null) {
    return '—';
  }
  return AccountService.mapFromIdentificationSubType(
    AccountService.mapToIdentificationSubType(normalized),
  );
}

class _HandlingWasteCard extends StatelessWidget {
  const _HandlingWasteCard({required this.controller, required this.fields});

  final ManageLicenceExemptionController controller;
  final List<Widget> fields;

  @override
  Widget build(BuildContext context) {
    return EmrTabBarVerticalViewCard(
      title: '',
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ListenableBuilder(
            listenable: Listenable.merge([
              controller,
              controller.data.annualWasteTransferNote,
              controller.wasteTransferLicense,
              controller.existingWasteTransferLicenseUrl,
              controller.data.documentType,
              controller.data.validFrom,
              controller.data.validTo,
            ]),
            builder: (context, _) {
              final showUpload = _showAnnualWasteTransferUploadSection(
                controller,
              );
              final isWide = _isMediaWideLayout(context);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _ResponsiveFormWrap(
                    maxWidth: constraints.maxWidth,
                    children: fields,
                  ),
                  if (showUpload) ...[
                    const SizedBox(height: Insets.gutter),
                    _WasteTransferLicenseMediaPanel(
                      controller: controller,
                      enabled: controller.data.annualWasteTransferNote,
                      isWide: isWide,
                    ),
                  ],
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class _ResponsiveFormWrap extends StatelessWidget {
  const _ResponsiveFormWrap({required this.maxWidth, required this.children});

  final double maxWidth;
  final List<Widget> children;

  static const int _smallScreenMaxWidth = 480;
  static const int _mediumScreenMaxWidth = 960;
  static const int _largeScreenMaxWidth = 1440;

  @override
  Widget build(BuildContext context) {
    final numberOfColumns = switch (maxWidth) {
      <= _smallScreenMaxWidth => 1,
      <= _mediumScreenMaxWidth => 2,
      <= _largeScreenMaxWidth => 3,
      _ => 4,
    };

    final columnWidth =
        (maxWidth / numberOfColumns) -
        (Insets.gutter * (numberOfColumns - 1) / numberOfColumns);
    final remainder = children.length % numberOfColumns;

    return Wrap(
      spacing: Insets.gutter,
      children: [
        for (final child in children)
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: columnWidth),
            child: child,
          ),
        for (var i = 0; i < numberOfColumns - remainder; i++)
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: columnWidth, maxHeight: 0),
            child: const SizedBox.expand(),
          ),
      ],
    );
  }
}

class _WasteTransferLicenseMediaPanel extends StatelessWidget {
  const _WasteTransferLicenseMediaPanel({
    required this.controller,
    required this.enabled,
    required this.isWide,
  });

  final ManageLicenceExemptionController controller;
  final ValueNotifier<bool> enabled;
  final bool isWide;

  @override
  Widget build(BuildContext context) {
    final showPreview = _showDocumentPreview(controller);
    controller.ensureWasteTransferNoteDocumentSubtype(notify: false);
    const fieldGap = SizedBox(width: Insets.gutter);

    const documentTypeField = _WasteTransferDocumentTypeField();
    final filePicker = _WasteTransferLicenseFilePicker(
      controller: controller,
      enabled: enabled,
    );

    final uploadFields = isWide
        ? IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(child: documentTypeField),
                fieldGap,
                Expanded(child: filePicker),
              ],
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              documentTypeField,
              const SizedBox(height: Insets.gutter),
              filePicker,
            ],
          );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        uploadFields,
        _WasteTransferLicenseUploadStatus(controller: controller),
        if (showPreview) ...[
          const SizedBox(height: Insets.gutter),
          _DocumentPreviewPanel(controller: controller, isWide: isWide),
        ],
      ],
    );
  }
}

class _WasteTransferLicenseUploadStatus extends StatelessWidget {
  const _WasteTransferLicenseUploadStatus({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        if (controller.isReadingDocument) {
          return _DocumentExtractionProgress(controller: controller);
        }

        final uploadedFile = controller.wasteTransferLicense.value;
        if (uploadedFile != null && controller.shouldShowDocumentReadError) {
          return Padding(
            padding: const EdgeInsets.only(top: Insets.gutter),
            child: Container(
              padding: const EdgeInsets.all(Insets.gutter),
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.errorContainer.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(Insets.gutter / 4),
                border: Border.all(
                  color: Theme.of(
                    context,
                  ).colorScheme.error.withValues(alpha: 0.5),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: Insets.gutter,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  const SizedBox(width: Insets.gutter / 2),
                  Expanded(
                    child: Text(
                      context.l10n.invalidDocumentUpload,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}

class _DocumentExtractionProgress extends StatefulWidget {
  const _DocumentExtractionProgress({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  State<_DocumentExtractionProgress> createState() =>
      _DocumentExtractionProgressState();
}

class _DocumentExtractionProgressState
    extends State<_DocumentExtractionProgress> {
  static const Duration _tickInterval = Duration(milliseconds: 250);

  double _progress = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onControllerChanged);
    if (widget.controller.isReadingDocument) {
      _startSimulatedProgress();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    widget.controller.removeListener(_onControllerChanged);
    super.dispose();
  }

  void _onControllerChanged() {
    if (widget.controller.isReadingDocument) {
      _startSimulatedProgress();
    } else {
      _stopSimulatedProgress();
    }
  }

  void _startSimulatedProgress() {
    _timer?.cancel();
    setState(() => _progress = 0.05);
    _timer = Timer.periodic(_tickInterval, (_) {
      if (!mounted || !widget.controller.isReadingDocument) {
        return;
      }
      setState(() {
        if (_progress < 0.92) {
          _progress += (0.92 - _progress) * 0.12;
        }
      });
    });
  }

  void _stopSimulatedProgress() {
    _timer?.cancel();
    if (mounted) {
      setState(() => _progress = 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.controller.isReadingDocument) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);
    final primary = theme.colorScheme.primary;
    final trackColor = theme.colorScheme.surfaceContainerHighest;
    final percent = (_progress * 100).round().clamp(1, 99);

    return Padding(
      padding: const EdgeInsets.only(top: Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '$percent%',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: Insets.gutter / 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(Insets.gutter / 2),
            child: LinearProgressIndicator(
              value: _progress.clamp(0.05, 0.95),
              minHeight: Insets.gutter / 2.5,
              backgroundColor: trackColor,
              color: primary,
            ),
          ),
          const SizedBox(height: Insets.gutter / 2),
          Text(
            context.l10n.extractionInProgress,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}

class _DocumentPreviewPanel extends StatelessWidget {
  const _DocumentPreviewPanel({required this.controller, required this.isWide});

  final ManageLicenceExemptionController controller;
  final bool isWide;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const panelPadding = EdgeInsets.all(Insets.gutter);

    return ListenableBuilder(
      listenable: Listenable.merge([
        controller,
        controller.wasteTransferLicense,
        controller.existingWasteTransferLicenseUrl,
        controller.data.documentType,
        controller.data.validFrom,
        controller.data.validTo,
      ]),
      builder: (context, _) {
        final uploadedFile = controller.wasteTransferLicense.value;
        final documentTypeLabel = _documentTypeDisplayLabel(
          controller,
          controller.data.documentType.value,
        );

        return DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(EmrCard.cardRadius),
            border: Border.all(
              color: theme.dividerColor.withValues(alpha: 0.35),
            ),
            boxShadow: [
              BoxShadow(
                color: theme.shadowColor.withValues(alpha: 0.04),
                blurRadius: Insets.gutter * 1.5,
                offset: const Offset(0, Insets.gutter / 4),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: panelPadding,
                child: isWide
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 6,
                            child: _DocumentPreviewImagePane(
                              controller: controller,
                              uploadedFile: uploadedFile,
                            ),
                          ),
                          const SizedBox(width: Insets.gutter * 1.5),
                          Expanded(
                            flex: 4,
                            child: _DocumentPreviewDetailsPane(
                              controller: controller,
                              documentTypeLabel: documentTypeLabel,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _DocumentPreviewDetailsPane(
                            controller: controller,
                            documentTypeLabel: documentTypeLabel,
                          ),
                          const SizedBox(height: Insets.gutter),
                          _DocumentPreviewImagePane(
                            controller: controller,
                            uploadedFile: uploadedFile,
                          ),
                        ],
                      ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: IgnorePointer(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(EmrCard.cardRadius),
                    ),
                    child: CustomPaint(
                      size: const Size(Insets.gutter * 10, Insets.gutter * 5),
                      painter: _PreviewAccentPainter(
                        primary: theme.colorScheme.primary,
                        tertiary: theme.colorScheme.tertiary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PreviewAccentPainter extends CustomPainter {
  _PreviewAccentPainter({required this.primary, required this.tertiary});

  final Color primary;
  final Color tertiary;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        colors: [
          primary.withValues(alpha: 0.14),
          tertiary.withValues(alpha: 0.08),
          Colors.transparent,
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final path = Path()
      ..moveTo(size.width, size.height)
      ..quadraticBezierTo(
        size.width * 0.4,
        size.height * 0.85,
        size.width * 0.15,
        size.height,
      )
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _PreviewAccentPainter oldDelegate) => false;
}

class _DocumentPreviewImagePane extends StatelessWidget {
  const _DocumentPreviewImagePane({
    required this.controller,
    required this.uploadedFile,
  });

  final ManageLicenceExemptionController controller;
  final UploadedFile? uploadedFile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isWide = _isMediaWideLayout(context);
    // Large preview (Image 1); cap only on very wide viewports.
    final maxImageHeight = isWide ? gutterTimes15 : Insets.gutter * 10;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Insets.gutter * 0.5),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(
          alpha: 0.25,
        ),
        borderRadius: BorderRadius.circular(EmrCard.cardRadius),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final contentWidth = constraints.maxWidth;
          var imageWidth = contentWidth;
          var imageHeight = imageWidth / _kIdCardAspectRatio;
          if (imageHeight > maxImageHeight) {
            imageHeight = maxImageHeight;
            imageWidth = imageHeight * _kIdCardAspectRatio;
          }

          return _DocumentPreview(
            key: ValueKey(
              '${controller.selectedDocumentSasUrl}_'
              '${controller.existingWasteTransferLicenseUrl.value}',
            ),
            controller: controller,
            uploadedFile: uploadedFile,
            maxWidth: imageWidth,
            maxPreviewHeight: imageHeight,
            useFixedHeight: true,
          );
        },
      ),
    );
  }
}

class _DocumentPreviewDetailsPane extends StatelessWidget {
  const _DocumentPreviewDetailsPane({
    required this.controller,
    required this.documentTypeLabel,
  });

  final ManageLicenceExemptionController controller;
  final String documentTypeLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.titleMedium?.copyWith(
      fontWeight: FontWeight.w600,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(context.l10n.previewDocument, style: titleStyle),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Insets.gutter / 6),
                border: Border.all(
                  color: theme.dividerColor.withValues(alpha: 0.5),
                ),
              ),
              child: IconButton(
                icon: const Icon(Icons.delete_outline),
                iconSize: Insets.gutter * 1.1,
                color: theme.colorScheme.error,
                onPressed: controller.clearWasteTransferLicense,
                tooltip: context.l10n.delete,
                style: IconButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.all(Insets.gutter / 3),
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _DocumentMetadataRow(
              icon: Icons.description_outlined,
              label: context.l10n.documentType,
              value: documentTypeLabel,
            ),
            const Divider(height: Insets.gutter),
            _DocumentMetadataRow(
              icon: Icons.calendar_today_outlined,
              label: context.l10n.validFrom,
              value: _formatLicenceDisplayDate(controller.data.validFrom.value),
            ),
            const Divider(height: Insets.gutter),
            _DocumentMetadataRow(
              icon: Icons.event_outlined,
              label: context.l10n.validTo,
              value: _formatLicenceDisplayDate(controller.data.validTo.value),
            ),
          ],
        ),
      ],
    );
  }
}

class _DocumentMetadataRow extends StatelessWidget {
  const _DocumentMetadataRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Icon(
          icon,
          size: Insets.gutter * 1.1,
          color: theme.colorScheme.primary.withValues(alpha: 0.85),
        ),
        const SizedBox(width: Insets.gutter * 0.75),
        Expanded(child: Text(label, style: theme.textTheme.bodyMedium)),
        const SizedBox(width: Insets.gutter / 2),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}

/// Fixed document type for licence exemption (always waste transfer note).
class _WasteTransferDocumentTypeField extends StatelessWidget {
  const _WasteTransferDocumentTypeField();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final label = AccountService.mapFromIdentificationSubType(
      Enum$IdentificationSubType.WASTE_TRANSFER_NOTE,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(context.l10n.documentType),
        const SizedBox(height: labelControlSpacing),
        DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: theme.dividerColor),
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ColoredBox(
                  color: theme.colorScheme.primary,
                  child: const SizedBox(width: 4),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Insets.gutter,
                      vertical: Insets.gutter * 0.75,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.description_outlined,
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: Insets.gutter),
                        Expanded(
                          child: Text(
                            label,
                            style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _DocumentPreview extends StatefulWidget {
  const _DocumentPreview({
    required this.controller,
    this.uploadedFile,
    this.maxWidth,
    this.maxPreviewHeight = 280,
    this.useFixedHeight = false,
    super.key,
  });

  final ManageLicenceExemptionController controller;
  final UploadedFile? uploadedFile;
  final double? maxWidth;
  final double maxPreviewHeight;
  final bool useFixedHeight;

  @override
  State<_DocumentPreview> createState() => _DocumentPreviewState();
}

class _DocumentPreviewState extends State<_DocumentPreview> {
  bool _hasRetriedPreviewLoad = false;
  bool _hasScheduledRemotePreviewLoad = false;
  String? _lastSasUrl;

  static const double _minPreviewSize = 120;
  static const double _defaultPreviewSize = 200;

  double get _previewWidth =>
      (widget.maxWidth != null && widget.maxWidth! > _minPreviewSize)
      ? widget.maxWidth!
      : _defaultPreviewSize;

  double get _previewHeight => widget.useFixedHeight
      ? widget.maxPreviewHeight
      : _previewWidth.clamp(_minPreviewSize, widget.maxPreviewHeight);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _ensureRemotePreviewLoaded();
    });
  }

  void _ensureRemotePreviewLoaded() {
    if (!mounted || _hasScheduledRemotePreviewLoad) {
      return;
    }

    final controller = widget.controller;
    final existingUrl = controller.existingWasteTransferLicenseUrl.value;
    if (existingUrl == null || existingUrl.isEmpty) {
      return;
    }
    if (widget.uploadedFile != null) {
      return;
    }
    if (controller.selectedDocumentSasUrl?.isNotEmpty ?? false) {
      return;
    }
    if (controller.isLoadingPreview) {
      return;
    }

    _hasScheduledRemotePreviewLoad = true;
    unawaited(controller.retryPreviewUrl());
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.controller,
      builder: (context, _) => _buildPreviewContent(context),
    );
  }

  Widget _buildPreviewContent(BuildContext context) {
    final width = _previewWidth;
    final height = _previewHeight;
    final isLoadingPreview = widget.controller.isLoadingPreview;

    if (isLoadingPreview) {
      return _buildLoadingIndicator(context, width: width, height: height);
    }

    final url = widget.controller.selectedDocumentSasUrl ?? '';
    if (url != _lastSasUrl) {
      _lastSasUrl = url;
      _hasRetriedPreviewLoad = false;
      if (url.isNotEmpty) {
        _hasScheduledRemotePreviewLoad = false;
      }
    }

    if (url.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _ensureRemotePreviewLoaded();
        }
      });
    }

    if (url.isNotEmpty) {
      final isPdf = url.toLowerCase().endsWith('.pdf');
      if (isPdf) {
        return _buildPlaceholder(context, context.l10n.viewPdf);
      }
      final previewUrl = widget.controller.buildPreviewUrl(url);
      return FutureBuilder<String>(
        key: ValueKey(previewUrl),
        future: FirebaseLogin.getToken(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return _buildLoadingIndicator(
              context,
              width: width,
              height: height,
            );
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return _buildPlaceholder(context, context.l10n.noImagesFound);
          }

          final headers = widget.controller.buildPreviewHeaders(snapshot.data!);

          return GestureDetector(
            onTap: () => showImageViewer(
              context,
              NetworkImage(previewUrl, headers: headers),
            ),
            child: _PreviewImageFrame(
              width: width,
              height: height,
              child: Image.network(
                previewUrl,
                headers: headers,
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
                frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded || frame != null) {
                    return child;
                  }

                  return _buildLoadingIndicator(
                    context,
                    width: width,
                    height: height,
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }

                  return _buildLoadingIndicator(
                    context,
                    width: width,
                    height: height,
                    progress: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                        : null,
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  if (!_hasRetriedPreviewLoad) {
                    _hasRetriedPreviewLoad = true;
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      widget.controller.retryPreviewUrl();
                    });
                    return _buildLoadingIndicator(
                      context,
                      width: width,
                      height: height,
                    );
                  }
                  return _buildPlaceholder(context, context.l10n.noImagesFound);
                },
              ),
            ),
          );
        },
      );
    }

    if (widget.uploadedFile != null &&
        (widget.uploadedFile!.extension?.toLowerCase() ?? '') !=
            context.l10n.pdfExtention) {
      return GestureDetector(
        onTap: () =>
            showImageViewer(context, MemoryImage(widget.uploadedFile!.bytes!)),
        child: _PreviewImageFrame(
          width: width,
          height: height,
          child: Image.memory(
            widget.uploadedFile!.bytes!,
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
            errorBuilder: (_, __, ___) =>
                _buildPlaceholder(context, context.l10n.noImagesFound),
          ),
        ),
      );
    }

    return _buildPlaceholder(context, context.l10n.noImagesFound);
  }

  Widget _buildLoadingIndicator(
    BuildContext context, {
    required double width,
    required double height,
    double? progress,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: Insets.gutter * 2,
              height: Insets.gutter * 2,
              child: CircularProgressIndicator(strokeWidth: 2, value: progress),
            ),
            const SizedBox(height: Insets.gutter),
            Text(
              context.l10n.loading,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context, String text) {
    return _PreviewImageFrame(
      width: _previewWidth,
      height: _previewHeight,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.image_not_supported_outlined,
              size: Insets.gutter * 3,
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: 0.45),
            ),
            const SizedBox(height: Insets.gutter / 2),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}

class _PreviewImageFrame extends StatelessWidget {
  const _PreviewImageFrame({
    required this.width,
    required this.height,
    required this.child,
  });

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final imageRadius = BorderRadius.circular(Insets.gutter * 0.75);
    const framePadding = Insets.gutter / 4;

    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: imageRadius,
          border: Border.all(color: theme.colorScheme.surface, width: 2),
          boxShadow: [
            BoxShadow(
              color: theme.shadowColor.withValues(alpha: 0.06),
              blurRadius: Insets.gutter * 1.25,
              spreadRadius: Insets.gutter / 12,
              offset: const Offset(0, Insets.gutter / 3),
            ),
            BoxShadow(
              color: theme.shadowColor.withValues(alpha: 0.03),
              blurRadius: Insets.gutter / 2,
              offset: const Offset(0, Insets.gutter / 8),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(framePadding),
        child: child,
      ),
    );
  }
}

class _WasteTransferLicenseFilePicker extends StatefulWidget {
  const _WasteTransferLicenseFilePicker({
    required this.controller,
    required this.enabled,
  });

  final ManageLicenceExemptionController controller;
  final ValueNotifier<bool> enabled;

  @override
  State<_WasteTransferLicenseFilePicker> createState() =>
      _WasteTransferLicenseFilePickerState();
}

class _WasteTransferLicenseFilePickerState
    extends State<_WasteTransferLicenseFilePicker> {
  final ValueNotifier<XFile?> _fileBinding = ValueNotifier(null);
  final ValueNotifier<String?> _errorMessage = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    _fileBinding.addListener(_onFileChanged);
    widget.controller.wasteTransferLicense.addListener(_onControllerChanged);
  }

  @override
  void dispose() {
    _fileBinding.removeListener(_onFileChanged);
    widget.controller.wasteTransferLicense.removeListener(_onControllerChanged);
    _fileBinding.dispose();
    _errorMessage.dispose();
    super.dispose();
  }

  void _onControllerChanged() {
    if (widget.controller.wasteTransferLicense.value == null) {
      _fileBinding.value = null;
      _errorMessage.value = null;
    }
  }

  Future<void> _onFileChanged() async {
    if (!widget.enabled.value) return;

    final file = _fileBinding.value;
    if (file != null) {
      final extension = file.name.split('.').last.toLowerCase();

      if (!LicenceExemptionConstants.allowedFileExtensions.contains(
        extension,
      )) {
        if (mounted) {
          _errorMessage.value = context.l10n.invalidDocumentUpload;
        }
        _fileBinding.value = null;
        return;
      }

      _errorMessage.value = null;

      final bytes = await file.readAsBytes();
      if (!mounted) return;
      final uploadedFile = UploadedFile(
        bytes: bytes,
        identifier: file.path,
        extension: extension,
        name: file.name,
      );
      unawaited(widget.controller.setWasteTransferLicense(uploadedFile));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: widget.enabled,
      builder: (context, annualWasteTransferNoteEnabled, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmrFilePickerFormField(
              labelText: context.l10n.wasteTransferLicence,
              hintText: context.l10n.chooseaFileToUploadHint,
              binding: _fileBinding,
              enabled: widget.enabled,
              extensions: EmrFilePickerFormFieldFileExtensions.pictures,
            ),
            ValueListenableBuilder<String?>(
              valueListenable: _errorMessage,
              builder: (context, error, _) {
                if (error == null || error.isEmpty) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.only(top: Insets.gutter / 2),
                  child: Text(
                    error,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
