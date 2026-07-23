import 'dart:io';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/core/models/submit_parameters.dart';
import 'package:emr_one_forms_engine/core/store/components/rating_component.dart';
import 'package:emr_one_forms_engine/core/store/components/submit_form_component.dart';
import 'package:emr_one_forms_engine/core/store/store.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/views/components/component.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

typedef IntCallbackFunc = void Function(int);

class SubmitFormWidget extends FormComponentWidget<SubmitFormComponent> {
  final IntCallbackFunc onSubmit;
  final String? message;

  const SubmitFormWidget({
    super.key,
    required super.model,
    required this.onSubmit,
    this.message,
  });

  @override
  State<StatefulWidget> createState() => _SubmitFormState();
}

class _SubmitFormState
    extends FormComponentState<SubmitFormComponent, SubmitFormWidget> {
  bool isChecked = false;
  DateTime today = DateTime.now();
  IFormStore store = ServiceContainer().get<IFormStore>();
  String submitDate = '', submitTime = '', userName = '', userUuid = '';
  ValueNotifier<bool> isButtonDisabled = ValueNotifier(true);
  GlobalKey key = GlobalKey();
  ValueNotifier<Uint8List?> signatureImage = ValueNotifier(null);
  final inkController = EmrInkPadController();

  void returnTabIndex(int tabIndex) {
    widget.onSubmit(tabIndex);
  }

  @override
  void initState() {
    super.initState();

    _initialiseComponent();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [_submitCard()]);
  }

  Widget _submitCard() {
    String? confirmationMessage = widget.message ?? '';
    if (confirmationMessage == '') isChecked = true;

    _initialiseDate(context: context);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: FormColors.componentBorderColor),
        borderRadius: const BorderRadius.all(Radius.circular(7.0)),
      ),
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          _submitComponentHeader(),
          _submitComponentBody(userName, submitDate, submitTime),
          if (confirmationMessage != '') ...[
            _submitComponentConfirmation(
              today,
              submitDate,
              submitTime,
              context,
              widget.message!,
            ),
          ],
          if (kIsWeb) ...[_showSignature()],
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (FormsEngine().isDigitalSignatureRequired) ...[
                  _submitComponentSignature(),
                ],
                _submitComponentSubmit(store),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _showSignature() {
    return ValueListenableBuilder(
      valueListenable: signatureImage,
      builder: (BuildContext context, value, Widget? child) {
        if (value == null) return Container();
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.memory(value),
        );
      },
    );
  }

  Widget _submitComponentHeader() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(children: [Text(StringLiteral.SubmissionText)]),
    );
  }

  Widget _submitComponentBody(
    String userName,
    String submitDate,
    String submitTime,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.person),
            const SizedBox(width: 2.0),
            Text(userName),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.calendar_today),
            const SizedBox(width: 2.0),
            Text(submitDate),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.schedule),
            const SizedBox(width: 2.0),
            Text(submitTime),
          ],
        ),
      ],
    );
  }

  CheckboxListTile _submitComponentConfirmation(
    DateTime today,
    String submitDate,
    String submitTime,
    BuildContext context,
    String message,
  ) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      dense: false,
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue!;
          _initialiseComponent(context: context);
        });
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: Text(message, style: const TextStyle(fontSize: 16.0)),
      ),
      visualDensity: const VisualDensity(horizontal: -4),
    );
  }

  Widget _submitComponentSubmit(IFormStore store) {
    isButtonDisabled.value =
        (FormsEngine().isDigitalSignatureRequired &&
        signatureImage.value == null);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ValueListenableBuilder(
          valueListenable: isButtonDisabled,
          builder: (context, value, child) {
            return ElevatedButton(
              onPressed: !value && isChecked
                  ? () async {
                      isButtonDisabled.value = true;
                      var isSuccess = FormsEngine().isPreview
                          ? await _validatePreviewForm(store)
                          : await _validateAndSave(store);
                      if (!isSuccess) {
                        int errorIndex = _getTabWithError(store);
                        returnTabIndex(errorIndex);
                      }
                    }
                  : null,
              style: FormDecorations.submitButtonStyle,
              child: Text(
                StringLiteral.SubmitButtonText,
                style: FormTextStyles.buttonTextStyle,
              ),
            );
          },
        ),
      ],
    );
  }

  Future<bool> checkImageValid(Uint8List bytes) async {
    // Example byte data (replace with your actual image bytes)

    // Decode the image dimensions and pixel data
    final codec = await instantiateImageCodec(bytes);
    final FrameInfo frameInfo = await codec.getNextFrame();
    final ByteData? byteData = await frameInfo.image.toByteData();

    if (byteData != null) {
      // Extract pixel data
      final pixels = byteData.buffer.asUint32List();

      // Count unique colors
      Set<int> colors = {};
      for (int pixel in pixels) {
        colors.add(pixel);
        // You can break early if you find more than one color
        if (colors.length > 1) {
          return true;
        }
      }
    }
    return false;
  }

  Widget _getSignature(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) => SizedBox(
        height: 300,
        child: Column(
          children: [
            Expanded(
              child: EmrInkPad(
                key: key,
                controller: inkController,
                penThickness: 5,
                penColour: Colors.red,
                backgroundColour: Colors.grey.shade300,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {
                        inkController.resetImage();
                      },
                      child: const Text('Clear'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        final imageBytes = await inkController.getImage();
                        if (context.mounted) {
                          context.pop(imageBytes);
                        }
                      },
                      child: const Text('Ok'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _validateSignatureData(Uint8List? image) async {
    if (image != null) {
      final isValidImage = await checkImageValid(image);
      if (isValidImage) {
        signatureImage.value = image;
        isButtonDisabled.value = false;
      } else {
        signatureImage.value = null;
        isButtonDisabled.value = true;
      }
    }
  }

  Widget _submitComponentSignature() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ValueListenableBuilder(
          valueListenable: signatureImage,
          builder: (BuildContext context, value, Widget? child) {
            return ElevatedButton.icon(
              onPressed: () => kIsWeb
                  ? showDialog<Uint8List>(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Signature'),
                              IconButton(
                                onPressed: () => context.pop(),
                                icon: const Icon(Icons.clear),
                              ),
                            ],
                          ),
                          content: SizedBox(
                            width: 600,
                            child: _getSignature(context),
                          ),
                        );
                      },
                    ).then((image) async {
                      await _validateSignatureData(image);
                    })
                  : showModalBottomSheet<Uint8List>(
                      // constraints: const BoxConstraints.expand(),
                      context: context,
                      builder: (context) {
                        return _getSignature(context);
                      },
                    ).then((image) async {
                      await _validateSignatureData(image);
                    }),
              label: Text('Signature', style: FormTextStyles.buttonTextStyle),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(
                  value == null
                      ? FormColors.buttonColorRed
                      : FormColors.buttonColorGreen,
                ),
              ),
              icon: value == null
                  ? const Icon(Icons.clear)
                  : const Icon(Icons.done),
            );
          },
        ),
      ),
    );
  }

  int _getTabWithError(IFormStore store) {
    var formSections = store.formSections;
    int tab = formSections.length - 1;
    for (var i = 0; i < formSections.length - 1; i++) {
      var comp = formSections.elementAt(i).components.toList();
      var check = comp.where(
        (x) =>
            (x is YesNoQuestionComponent ||
                x is TextInputComponent ||
                x is DropdownComponent ||
                x is DatePickerComponent ||
                x is PhoneComponent ||
                x is EmailComponent ||
                x is RatingComponent ||
                x is CheckboxComponent) &&
            !x.isValid,
      );
      if (check.isNotEmpty) {
        tab = i;
        break;
      }
    }
    return tab;
  }

  _initialiseComponent({BuildContext? context}) {
    today = DateTime.now();
    _initialiseDate(context: context);
    submitTime = today.toIso8601String().substring(11, 16);
    userName = ServiceContainer().get<IFormConfiguration>().userName;
    userUuid = ServiceContainer().get<IFormConfiguration>().userUuid;
  }

  _initialiseDate({BuildContext? context}) {
    if (context != null) {
      final activeLocale = Localizations.localeOf(context);
      submitDate = DateFormat.yMd(activeLocale.toString()).format(today);
    } else {
      submitDate = DateFormat.yMd("en_US").format(today);
    }
  }

  Future<bool> _validatePreviewForm(IFormStore formStore) async {
    Navigator.maybePop(context);
    return true;
  }

  Future<bool> _validateAndSave(IFormStore formStore) async {
    if (formStore.validate()) {
      if (FormsEngine().isDigitalSignatureRequired &&
          signatureImage.value == null) {
        await showMessageDialog(
          message: 'Digital signature required',
          messageType: AlertMessageType.error,
        );
        isChecked = false;
        isButtonDisabled.value = true;
        key = GlobalKey();
        setState(() {});

        return isChecked;
      }
      var signature = FormsEngine().isDigitalSignatureRequired
          ? await addSignature(formStore, signatureImage.value!)
          : null;

      await formStore.submit(
        SubmitParameters(
          signature: signature,
          emailsToNotify: FormsEngine().emailsToNotify,
        ),
      );

      await showMessageDialog(
        message: StringLiteral.FormSubmitted,
        messageType: AlertMessageType.success,
      );

      if (mounted) {
        Navigator.maybePop(context);
      }
    } else {
      await showMessageDialog(
        message: StringLiteral.FormNotSubmitted,
        messageType: AlertMessageType.error,
      );

      isChecked = false;
      isButtonDisabled.value = false;
      setState(() {});
    }

    return isChecked;
  }

  SnackBar appSnackBar(String text) {
    return SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.done_outline_rounded, size: 20, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
      backgroundColor: FormColors.success,
      duration: const Duration(seconds: 5),
      behavior: SnackBarBehavior.floating,
    );
  }

  Future<ui.Image> bytesToImage(Uint8List imgBytes) async {
    ui.Codec codec = await ui.instantiateImageCodec(imgBytes);
    ui.FrameInfo frameInfo = await codec.getNextFrame();
    codec.dispose();
    return frameInfo.image;
  }

  Future<CapturedMediaDTO> addSignature(
    IFormStore formStore,
    Uint8List signatureData,
  ) async {
    var uniqueId = ServiceContainer()
        .get<IUniqueIdGenerator>()
        .generateUniqueId();
    var filePath = '';
    CapturedMedia? capturedMedia;
    if (kIsWeb) {
      filePath = uniqueId;
      capturedMedia = CapturedMedia(
        type: CapturedMediaType.image,
        uniqueId: uniqueId,
        componentId: currentModel.id,
        bytes: signatureData.buffer.asUint8List(),
      );
    } else {
      var directory = await getApplicationDocumentsDirectory();
      filePath = "${directory.path}/$uniqueId.png";
      var file = File(filePath);
      await file.writeAsBytes(signatureData.buffer.asUint8List(), flush: true);
      capturedMedia = CapturedMedia(
        type: CapturedMediaType.image,
        uniqueId: uniqueId,
        componentId: currentModel.id,
        file: XFile(filePath),
      );
    }
    final saveService = ServiceContainer().get<ISaveFormInstanceService>();
    await saveService.storeMedia(
      component: currentModel,
      media: [capturedMedia],
    );
    return CapturedMediaDTO(
      path: filePath,
      uuid: uniqueId,
      componentId: currentModel.id,
      type: 'image',
    );
  }

  Future<void> showMessageDialog({
    required AlertMessageType messageType,
    required String message,
  }) {
    return showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 20,
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                _getMessageIcon(messageType),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _getMessageText(messageType),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        message,
                        softWrap: false,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis, // new
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Icon _getMessageIcon(AlertMessageType messageType) {
    return switch (messageType) {
      AlertMessageType.success => Icon(
        Icons.check_circle_rounded,
        size: 200,
        color: FormColors.success,
      ),
      AlertMessageType.error => Icon(
        Icons.error,
        size: 200,
        color: FormColors.error,
      ),
      AlertMessageType.warning => Icon(
        Icons.warning,
        size: 200,
        color: FormColors.warning,
      ),
      AlertMessageType.information => Icon(
        Icons.info,
        size: 200,
        color: FormColors.information,
      ),
    };
  }

  String _getMessageText(AlertMessageType messageType) {
    return switch (messageType) {
      AlertMessageType.success => 'Success',
      AlertMessageType.error => 'Error',
      AlertMessageType.warning => 'Warning',
      AlertMessageType.information => 'Information',
    };
  }
}
