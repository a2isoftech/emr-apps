import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/core/store/components/yes_no_question_component.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/views/subcomponents/media_capture.dart';
import 'package:emr_one_forms_engine/views/subcomponents/notes_capture.dart';
import 'package:flutter/material.dart';

import 'component.dart';

class YesNoQuestionWidget extends FormComponentWidget<YesNoQuestionComponent> {
  const YesNoQuestionWidget({super.key, required super.model});

  @override
  State<StatefulWidget> createState() => _YesNoQuestionState();
}

class _YesNoQuestionState
    extends FormComponentState<YesNoQuestionComponent, YesNoQuestionWidget> {
  // static const double _answerButtonIconSize = 18;
  static const double _answerButtonFontSize = 18;
  static const double _answerButtonHeight = 45;
  static const double _answerButtonWidth = 45;
  static const double _answerButtonSpacing = 15;

  static EdgeInsets get _answerButtonPadding => const EdgeInsets.all(5);
  late FocusNode _notesFocusNode;
  bool hasMedia = false;
  bool isAnswered = false;

  @override
  void initState() {
    super.initState();
    _notesFocusNode = FocusNode();
    _setHasMedia(currentModel);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (!FormsEngine().isPreview) {
        _showValidationAlert();
      }
    });
  }

  @override
  void dispose() {
    _notesFocusNode.dispose();
    super.dispose();
  }

  Widget get _yesButton => currentModel.isYesSelected
      ? TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: FormColors.white,
            backgroundColor: FormColors.buttonColorGreen,
            padding: _answerButtonPadding,
          ),
          child: const Text(
            'Y',
            style: TextStyle(
              fontSize: _answerButtonFontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      : TextButton(
          onPressed: () => onStateButtonPressed(YesNoQuestionAnswerValues.yes),
          style: TextButton.styleFrom(
            foregroundColor: FormColors.white,
            backgroundColor: FormColors.buttonColorGray,
            padding: _answerButtonPadding,
          ),
          child: const Text(
            'Y',
            style: TextStyle(
              fontSize: _answerButtonFontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        );

  Widget _noButton(BuildContext context) => currentModel.isNoSelected
      ? TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: FormColors.white,
            backgroundColor: FormColors.buttonColorRed,
            padding: _answerButtonPadding,
          ),
          child: const Text(
            'N',
            style: TextStyle(
              fontSize: _answerButtonFontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      : TextButton(
          onPressed: () => onNoButtonPressed(),
          style: TextButton.styleFrom(
            foregroundColor: FormColors.white,
            backgroundColor: FormColors.buttonColorGray,
            padding: _answerButtonPadding,
          ),
          child: const Text(
            'N',
            style: TextStyle(
              fontSize: _answerButtonFontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        );

  Widget get _notAppButton => currentModel.isNotApplicableSelected
      ? TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: FormColors.white,
            backgroundColor: FormColors.buttonColorGreen,
            padding: _answerButtonPadding,
          ),
          child: const Text(
            'N/A',
            style: TextStyle(
              fontSize: _answerButtonFontSize * .8,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      : TextButton(
          onPressed: () =>
              onStateButtonPressed(YesNoQuestionAnswerValues.notApp),
          style: TextButton.styleFrom(
            foregroundColor: FormColors.white,
            backgroundColor: FormColors.buttonColorGray,
            padding: _answerButtonPadding,
          ),
          child: const Text(
            'N/A',
            style: TextStyle(
              fontSize: _answerButtonFontSize * .8,
              fontWeight: FontWeight.w500,
            ),
          ),
        );

  Widget _srButton(BuildContext context) => !currentModel.isSRRequired
      ? const SizedBox(width: _answerButtonWidth, height: _answerButtonHeight)
      : currentModel.isSelfRepairSelected
      ? TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: FormColors.white,
            backgroundColor: FormColors.buttonColorGreen,
            padding: _answerButtonPadding,
          ),
          child: const Text(
            'SR',
            style: TextStyle(
              fontSize: _answerButtonFontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      : TextButton(
          onPressed: () => onSrButtonPressed(),
          style: TextButton.styleFrom(
            foregroundColor: FormColors.white,
            backgroundColor: FormColors.buttonColorGray,
            padding: _answerButtonPadding,
          ),
          child: const Text(
            'SR',
            style: TextStyle(
              fontSize: _answerButtonFontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        );

  void onMediaButtonPressed() {
    context.pushNamed(
      'Inform_Question_Media_Capture',
      extra: QuestionMediaCapture(
        componentId: currentModel.id,
        existingMediaPaths: currentModel.capturedMedia,
        onSave: (mediaItems, removedItems) async {
          if (mediaItems.isNotEmpty) {
            await currentModel.addNewMedia(mediaItems);
          }
          if (removedItems.isNotEmpty) {
            await currentModel.deleteMedia(removedItems);
          }
          _setHasMedia(currentModel);
        },
      ),
    );
  }

  void _setHasMedia(YesNoQuestionComponent mediaItems) => setState(() {
    if (mediaItems.capturedMedia.isNotEmpty) {
      hasMedia = true;
    }
  });

  void showNotes(bool show) {
    if (currentModel.showNotes != show) {
      currentModel.showNotes = show;
      (show)
          ? _notesFocusNode.requestFocus()
          : FocusScope.of(context).unfocus();
    }
  }

  void onNoteButtonPressed() {
    final show =
        !currentModel.showNotes ||
        currentModel.notes.isNotEmpty ||
        currentModel.isNoSelected;

    if (show != currentModel.showNotes) {
      setState(() => showNotes(show));
    }
  }

  void onStateButtonPressed(String state) {
    if (currentModel.value != state) {
      showNotes(currentModel.notes.isNotEmpty);
      changeValue(state);
    }
    setState(() {});
  }

  void onNoButtonPressed() {
    if (!currentModel.isNoSelected) {
      showNotes(true);
      changeValue(YesNoQuestionAnswerValues.no);
      _showValidationAlert();
    }
    setState(() {});
  }

  void onSrButtonPressed() {
    if (!currentModel.isSelfRepairSelected) {
      showNotes(true);
      changeValue(YesNoQuestionAnswerValues.sr);
      _showValidationAlert();
      _showSelfRepairPrompt();
    }
    setState(() {});
  }

  Widget _sizedButton(Widget answerButton) => SizedBox(
    width: _answerButtonWidth,
    height: _answerButtonHeight,
    child: answerButton,
  );

  Widget _addMediaCount() {
    return Align(
      alignment: Alignment.center,
      child: currentModel.capturedMedia.isNotEmpty
          ? Container(
              width: 50 * .4,
              height: 50 * .4,
              decoration: BoxDecoration(
                color:
                    (currentModel.value == "Self Repair" &&
                        !currentModel.hasRequiredImages())
                    ? FormColors.error
                    : FormColors.success,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '${currentModel.capturedMedia.length}',
                  style: TextStyle(color: FormColors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          : Container(),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (currentModel.notes.isNotEmpty &&
        hasMedia &&
        (currentModel.value == 'No' || currentModel.value == 'Self Repair')) {
      currentModel.isValid = true;
    }

    if (currentModel.value == 'Self Repair' &&
        !currentModel.hasRequiredImages()) {
      currentModel.isValid = false;
    }

    if (currentModel.isYesSelected ||
        currentModel.isNoSelected ||
        currentModel.isNotApplicableSelected ||
        currentModel.isSelfRepairSelected) {
      isAnswered = true;
    }

    if ((currentModel.notes.isEmpty || !hasMedia) &&
        (currentModel.value == 'No' || currentModel.value == 'Self Repair')) {
      currentModel.isValid = false;
    }

    final List<Widget> cellChildren = [
      Text(currentModel.questionText, style: FormTextStyles.questionStyle),
      const SizedBox(height: 10),
      Row(
        children: [
          Stack(
            children: [
              Center(
                child: IconButton(
                  onPressed: isAnswered ? onMediaButtonPressed : null,
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    size: 20,
                    color: currentModel.capturedMedia.isNotEmpty
                        ? FormColors.buttonColorGreen
                        : null,
                  ),
                ),
              ),
              _addMediaCount(),
            ],
          ),
          IconButton(
            onPressed: () => onNoteButtonPressed(),
            icon: Icon(
              Icons.edit_outlined,
              size: 22,
              color: currentModel.notes.isNotEmpty
                  ? FormColors.buttonColorGreen
                  : null,
            ),
          ),
          _sizedButton(_yesButton),
          const SizedBox(width: _answerButtonSpacing),
          _sizedButton(_noButton(context)),
          if (!currentModel.isRequired) ...[
            const SizedBox(width: _answerButtonSpacing),
            _sizedButton(_notAppButton),
          ],
          if (currentModel.isSRRequired) ...[
            const SizedBox(width: _answerButtonSpacing),
            _sizedButton(_srButton(context)),
          ],
        ],
      ),
    ];

    if (currentModel.showNotes) {
      cellChildren.add(
        QuestionNotesCapture(
          parentComponentId: currentModel.id,
          focusNode: _notesFocusNode,
          initialValue: currentModel.notes,
          onChange: (text) => setState(() => currentModel.notes = text),
          isSRNotes: currentModel.isSelfRepairSelected,
        ),
      );
    }

    if (!currentModel.isValid) {
      var componentErrorMessage = StringLiteral.ComponentValidationText;
      if (currentModel.isNoSelected || currentModel.isSelfRepairSelected) {
        if (currentModel.notes.isEmpty) {
          componentErrorMessage = StringLiteral.ComponentValidationNote;
        }
        if (currentModel.capturedMedia.isEmpty) {
          componentErrorMessage = StringLiteral.ComponentValidationMedia;
        }
        if (currentModel.isSelfRepairSelected &&
            !currentModel.hasRequiredImages()) {
          componentErrorMessage = StringLiteral.ComponentValidationMediaSR;
        }
      }
      cellChildren.add(
        Text(
          componentErrorMessage,
          style: FormTextStyles.errorMessageTextStyle,
        ),
      );
    }
    bool differentUser =
        FormsEngine().isPreview ||
        (currentModel.answeredBy !=
                ServiceContainer().get<IFormConfiguration>().userName &&
            (currentModel.isYesSelected ||
                currentModel.isNoSelected ||
                currentModel.isNotApplicableSelected ||
                currentModel.isSelfRepairSelected));
    return Column(
      children: [
        AbsorbPointer(
          absorbing: differentUser,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: currentModel.isValid
                    ? FormColors.componentBorderColor
                    : FormColors.componentErrorBorderColor,
                width: currentModel.isValid ? 1.0 : 2.0,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              color: differentUser ? FormColors.componentBorderColor : null,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: cellChildren,
            ),
          ),
        ),
      ],
    );
  }

  /// Convert into a AlertDialogWidget
  Future<void> _showValidationAlert() async {
    if (currentModel.validators == null || currentModel.isYesSelected) return;
    if (!currentModel.isYesSelected && !currentModel.isNoSelected) return;

    currentModel.isValid = false;
    currentModel.showNotes = false;
    var title = StringLiteral.AlertTitle;
    var validators = currentModel.validators
        ?.where(
          (x) =>
              x.type == TemplateValidatorTypes.exitOnNo ||
              x.type == TemplateValidatorTypes.warningOnNo,
        )
        .toList();
    if (validators != null && validators.isEmpty) return;

    var message =
        currentModel.validators
            ?.where(
              (x) =>
                  x.type == TemplateValidatorTypes.exitOnNo ||
                  x.type == TemplateValidatorTypes.warningOnNo,
            )
            .first
            .message ??
        '';

    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(children: <Widget>[Text(message)]),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Okay'),
              onPressed: () {
                context.pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showSelfRepairPrompt() async {
    if (currentModel.notes.isNotEmpty) return;
    var title = StringLiteral.SRAlertTitle;
    var message = 'SR requires to add both defect and repair notes';

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(children: <Widget>[Text(message)]),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Okay'),
              onPressed: () => context.pop(),
            ),
          ],
        );
      },
    );
  }
}
