import 'dart:async';

import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/screens/account_management/'
    'sub_screens/manage_contact/models/uploaded_file.dart';
import 'package:emr_one_accounts/screens/account_management/'
    'sub_screens/manage_licence_exemption/constants/'
    'licence_exemption_constants.dart';
import 'package:emr_one_accounts/screens/account_management/'
    'sub_screens/manage_licence_exemption/controllers/'
    'manage_licence_exemption_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';

class EditLicenceExemption extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditLicenceExemption(
    BuildContext context, {
    required ManageLicenceExemptionController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrSwitchFormField(
             labelText: context.l10n.isProducerOfWaste,
             binding: controller.data.isWasteProducer,
           ),
           EmrSwitchFormField(
             labelText: context.l10n.isImporterOfWaste,
             binding: controller.data.isWasteImporter,
           ),
           EmrSwitchFormField(
             labelText: context.l10n.isTransporterOfWaste,
             binding: controller.data.isWasteTransporter,
           ),
           EmrSwitchFormField(
             labelText: context.l10n.isRegisteredWasteCarrier,
             binding: controller.data.isWasteRegisteredCarrier,
           ),
           EmrTextFormField<String>(
             labelText: context.l10n.wasteCarrierRegNo,
             binding: controller.data.wasteCarrierRegNo,
             enabled: controller.data.isWasteRegisteredCarrier,
             autovalidateMode: AutovalidateMode.onUserInteraction,
             validator: (value) => Validators.join([
               Validators.length(
                 value,
                 max: LicenceExemptionConstants.wasteCarrierRegNoMaxLength,
               ),
             ]),
           ),
           EmrSwitchFormField(
             labelText: context.l10n.annualWasteTransferNote,
             binding: controller.data.annualWasteTransferNote,
           ),
           _WasteTransferLicenseOnlySlot(controller: controller),
           _DocumentTypeOnlySlot(controller: controller),
           _ValidFromSlot(controller: controller),
           _ValidToSlot(controller: controller),
           _PreviewColumnSlot(controller: controller),
           const _PlaceholderSlot(),
         ],
       );
}

class _WasteTransferLicenseOnlySlot extends StatelessWidget {
  const _WasteTransferLicenseOnlySlot({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        controller,
        controller.wasteTransferLicense,
      ]),
      builder: (context, _) {
        if (controller.hasDocument) {
          return _WasteTransferLicenseFilePickerWithStatus(
            controller: controller,
          );
        }
        return _WasteTransferLicenseSection(controller: controller);
      },
    );
  }
}

class _DocumentTypeOnlySlot extends StatelessWidget {
  const _DocumentTypeOnlySlot({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        controller,
        controller.wasteTransferLicense,
      ]),
      builder: (context, _) {
        return controller.hasDocument
            ? _DocumentTypeField(controller: controller)
            : const SizedBox.shrink();
      },
    );
  }
}

class _PlaceholderSlot extends StatelessWidget {
  const _PlaceholderSlot();

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}

class _ValidFromSlot extends StatelessWidget {
  const _ValidFromSlot({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        controller,
        controller.wasteTransferLicense,
      ]),
      builder: (context, _) {
        return controller.hasDocument
            ? _ValidFromField(controller: controller)
            : const SizedBox.shrink();
      },
    );
  }
}

class _ValidToSlot extends StatelessWidget {
  const _ValidToSlot({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        controller,
        controller.wasteTransferLicense,
      ]),
      builder: (context, _) {
        return controller.hasDocument
            ? _ValidToField(controller: controller)
            : const SizedBox.shrink();
      },
    );
  }
}

class _PreviewColumnSlot extends StatelessWidget {
  const _PreviewColumnSlot({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        controller,
        controller.wasteTransferLicense,
      ]),
      builder: (context, _) {
        return controller.hasDocument
            ? _PreviewWithDelete(controller: controller)
            : const SizedBox.shrink();
      },
    );
  }
}

class _WasteTransferLicenseFilePickerWithStatus extends StatelessWidget {
  const _WasteTransferLicenseFilePickerWithStatus({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _WasteTransferLicenseFilePicker(controller: controller),
        ListenableBuilder(
          listenable: controller,
          builder: (context, _) {
            if (controller.isReadingDocument) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    const SizedBox(width: Insets.gutter / 2),
                    Expanded(
                      child: Text(
                        context.l10n.extractionInProgress,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            }
            final uploadedFile = controller.wasteTransferLicense.value;
            if (uploadedFile != null &&
                controller.shouldShowDocumentReadError) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
                child: Container(
                  padding: const EdgeInsets.all(Insets.gutter),
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.errorContainer.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(6),
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
                        size: 16,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      const SizedBox(width: Insets.gutter / 2),
                      Expanded(
                        child: Text(
                          context.l10n.invalidDocumentUpload,
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
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
        ),
      ],
    );
  }
}

class _DocumentTypeField extends StatefulWidget {
  const _DocumentTypeField({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  State<_DocumentTypeField> createState() => _DocumentTypeFieldState();
}

class _DocumentTypeFieldState extends State<_DocumentTypeField> {
  late final FocusNode _focusNode;
  late int _lastFocusRequestCount;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _lastFocusRequestCount = widget.controller.documentTypeFocusRequestCount;
    widget.controller.addListener(_handleControllerChanged);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted &&
          widget.controller.shouldShowDocumentTypeRequired &&
          widget.controller.data.documentType.value == null) {
        _focusNode.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(_handleControllerChanged);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleControllerChanged() {
    final focusRequestCount = widget.controller.documentTypeFocusRequestCount;
    if (_lastFocusRequestCount == focusRequestCount) {
      return;
    }

    _lastFocusRequestCount = focusRequestCount;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _focusNode.requestFocus();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedDocumentSubtype = widget.controller.normalizeDocumentSubtype(
      widget.controller.data.documentType.value,
    );
    final errorText = widget.controller.shouldShowDocumentTypeRequired
        ? 'Required'
        : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.l10n.documentType),
        const SizedBox(height: Insets.gutter / 8),
        DropdownButtonFormField<String>(
          focusNode: _focusNode,
          isExpanded: true,
          initialValue: selectedDocumentSubtype,
          decoration: InputDecoration(errorText: errorText),
          items: widget.controller.availableDocumentSubtypes
              .map(
                (documentSubtype) => DropdownMenuItem<String>(
                  value: documentSubtype,
                  child: Text(
                    AccountService.mapFromIdentificationSubType(
                      AccountService.mapToIdentificationSubType(
                        documentSubtype,
                      ),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
              .toList(growable: false),
          onChanged: widget.controller.isReadingDocument
              ? null
              : (documentSubtype) {
                  unawaited(
                    widget.controller.selectDocumentSubtype(documentSubtype),
                  );
                },
        ),
      ],
    );
  }
}

class _ValidFromField extends StatelessWidget {
  const _ValidFromField({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return EmrDateFormField(
      labelText: context.l10n.validFrom,
      enabled: ValueNotifier(false),
      readOnly: ValueNotifier(true),
      binding: controller.data.validFrom,
    );
  }
}

class _ValidToField extends StatelessWidget {
  const _ValidToField({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return EmrDateFormField(
      labelText: context.l10n.validTo,
      enabled: ValueNotifier(false),
      readOnly: ValueNotifier(true),
      binding: controller.data.validTo,
    );
  }
}

class _PreviewWithDelete extends StatelessWidget {
  const _PreviewWithDelete({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        controller,
        controller.wasteTransferLicense,
      ]),
      builder: (context, _) {
        final uploadedFile = controller.wasteTransferLicense.value;
        final sasUrl = controller.selectedDocumentSasUrl;
        final isLoading = controller.isLoadingPreview;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(context.l10n.previewDocument),
                IconButton(
                  icon: const Icon(Icons.delete_outline),
                  iconSize: 20,
                  color: Theme.of(context).colorScheme.error,
                  onPressed: controller.clearWasteTransferLicense,
                  tooltip: context.l10n.delete,
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                  ),
                ),
              ],
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return _DocumentPreview(
                  controller: controller,
                  uploadedFile: uploadedFile,
                  selectedDocumentSasUrl: sasUrl,
                  isLoadingPreview: isLoading,
                  maxWidth: constraints.maxWidth,
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class _WasteTransferLicenseSection extends StatelessWidget {
  const _WasteTransferLicenseSection({required this.controller});

  final ManageLicenceExemptionController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _WasteTransferLicenseFilePicker(controller: controller),
        const SizedBox(height: Insets.gutter / 2),
        ListenableBuilder(
          listenable: controller,
          builder: (context, _) {
            if (controller.isReadingDocument) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
                child: Row(
                  children: [
                    const SizedBox(
                      width: Insets.gutter,
                      height: Insets.gutter,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    const SizedBox(width: Insets.gutter / 2),
                    Expanded(
                      child: Text(
                        context.l10n.extractionInProgress,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            }
            final uploadedFile = controller.wasteTransferLicense.value;
            if (uploadedFile != null &&
                controller.shouldShowDocumentReadError) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
                child: Container(
                  padding: const EdgeInsets.all(Insets.gutter),
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.errorContainer.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(6),
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
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
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
        ),
        ListenableBuilder(
          listenable: Listenable.merge([
            controller,
            controller.data.documentType,
            controller.data.validFrom,
            controller.data.validTo,
          ]),
          builder: (context, _) {
            if (!controller.hasDocument) return const SizedBox.shrink();

            return ListenableBuilder(
              listenable: Listenable.merge([
                controller,
                controller.wasteTransferLicense,
              ]),
              builder: (context, _) {
                final uploadedFile = controller.wasteTransferLicense.value;
                final sasUrl = controller.selectedDocumentSasUrl;
                final isLoading = controller.isLoadingPreview;

                return Padding(
                  padding: const EdgeInsets.only(top: Insets.gutter),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _DocumentTypeField(controller: controller),
                      const SizedBox(height: Insets.gutter / 2),
                      _ValidFromField(controller: controller),
                      const SizedBox(height: Insets.gutter / 2),
                      _ValidToField(controller: controller),
                      const SizedBox(height: Insets.gutter / 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(context.l10n.previewDocument),
                          IconButton(
                            icon: const Icon(Icons.delete_outline),
                            iconSize: Insets.gutter * 1.2,
                            color: Theme.of(context).colorScheme.error,
                            onPressed: controller.clearWasteTransferLicense,
                            tooltip: context.l10n.delete,
                            style: IconButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                            ),
                          ),
                        ],
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return _DocumentPreview(
                            controller: controller,
                            uploadedFile: uploadedFile,
                            selectedDocumentSasUrl: sasUrl,
                            isLoadingPreview: isLoading,
                            maxWidth: constraints.maxWidth,
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class _DocumentPreview extends StatefulWidget {
  const _DocumentPreview({
    required this.controller,
    this.uploadedFile,
    this.selectedDocumentSasUrl,
    this.isLoadingPreview = false,
    this.maxWidth,
  });

  final ManageLicenceExemptionController controller;
  final UploadedFile? uploadedFile;
  final String? selectedDocumentSasUrl;
  final bool isLoadingPreview;
  final double? maxWidth;

  @override
  State<_DocumentPreview> createState() => _DocumentPreviewState();
}

class _DocumentPreviewState extends State<_DocumentPreview> {
  bool _hasRetriedPreviewLoad = false;

  static const double _minPreviewSize = 120;
  static const double _defaultPreviewSize = 200;
  static const double _maxPreviewHeight = 280;

  double get _previewWidth =>
      (widget.maxWidth != null && widget.maxWidth! > _minPreviewSize)
      ? widget.maxWidth!
      : _defaultPreviewSize;

  double get _previewHeight =>
      _previewWidth.clamp(_minPreviewSize, _maxPreviewHeight);

  @override
  void didUpdateWidget(covariant _DocumentPreview oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedDocumentSasUrl != widget.selectedDocumentSasUrl) {
      _hasRetriedPreviewLoad = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = _previewWidth;
    final height = _previewHeight;

    if (widget.isLoadingPreview) {
      return _buildLoadingIndicator(context, width: width, height: height);
    }

    final url = widget.selectedDocumentSasUrl ?? '';
    if (url.isNotEmpty) {
      final isPdf = url.toLowerCase().endsWith('.pdf');
      if (isPdf) {
        return _buildPlaceholder(context, context.l10n.viewPdf);
      }
      final previewUrl = widget.controller.buildPreviewUrl(url);
      return FutureBuilder<String>(
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
            child: SizedBox(
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
        child: SizedBox(
          width: width,
          height: height,
          child: ClipRect(
            child: Image.memory(
              widget.uploadedFile!.bytes!,
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
              errorBuilder: (_, __, ___) =>
                  _buildPlaceholder(context, context.l10n.noImagesFound),
            ),
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
    return SizedBox(
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

class _WasteTransferLicenseFilePicker extends StatefulWidget {
  const _WasteTransferLicenseFilePicker({required this.controller});

  final ManageLicenceExemptionController controller;

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
      widget.controller.data.documentType.value = null;
      widget.controller.data.validFrom.value = null;
      widget.controller.data.validTo.value = null;
      widget.controller.refresh();

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Listener(
          onPointerDown: (_) {
            if (_errorMessage.value != null) {
              _errorMessage.value = null;
            }
          },
          child: EmrFilePickerFormField(
            labelText: context.l10n.wasteTransferLicence,
            binding: _fileBinding,
            extensions: EmrFilePickerFormFieldFileExtensions.pictures,
          ),
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
  }
}
