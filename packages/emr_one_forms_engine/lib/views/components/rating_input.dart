import 'package:emr_one_forms_engine/core/store/components/rating_component.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/views/components/component.dart';
import 'package:flutter/material.dart';

class RatingWidget extends FormComponentWidget<RatingComponent> {
  const RatingWidget({super.key, required super.model});

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState
    extends FormComponentState<RatingComponent, RatingWidget> {
  final _textController = TextEditingController();
  late FocusNode _focusNode;
  static const double _answerButtonHeight = 45;
  static const double _answerButtonWidth = 45;
  static const double _answerButtonSpacing = 15;

  static EdgeInsets get _answerButtonPadding => const EdgeInsets.all(5);

  @override
  void initState() {
    super.initState();

    _textController.text = currentModel.answerText;
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> cellChildren = [
      Text(
        currentModel.label ?? 'Select a Rating',
        style: FormTextStyles.questionStyle,
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          _sizedButton(_oneStarButton),
          const SizedBox(width: _answerButtonSpacing),
          _sizedButton(_twoStarButton),
          const SizedBox(width: _answerButtonSpacing),
          _sizedButton(_threeStarButton),
          const SizedBox(width: _answerButtonSpacing),
          _sizedButton(_fourStarButton),
          const SizedBox(width: _answerButtonSpacing),
          _sizedButton(_fiveStarButton),
        ],
      ),
    ];
    if (!currentModel.isValid) {
      var componentErrorMessage = StringLiteral.RatingValidationText;
      cellChildren.add(
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            componentErrorMessage,
            style: FormTextStyles.errorMessageTextStyle,
          ),
        ),
      );
    }
    bool differentUser =
        FormsEngine().isPreview ||
        (currentModel.answeredBy !=
                ServiceContainer().get<IFormConfiguration>().userName &&
            currentModel.answerText.isNotEmpty);
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

  void _onChange(String value) {
    currentModel.answerText = value;
    changeValue(value);
  }

  void onStateButtonPressed(String state) {
    if (currentModel.value != state) {
      _onChange(state);
    }
    setState(() {});
  }

  Widget _sizedButton(Widget answerButton) => SizedBox(
    width: _answerButtonWidth,
    height: _answerButtonHeight,
    child: answerButton,
  );

  Widget get _oneStarButton => IconButton(
    // onPressed: () => currentModel.isOneStarSelected
    //     ? onStateButtonPressed(RatingAnswerValues.zero)
    //     : onStateButtonPressed(RatingAnswerValues.one),
    onPressed: () => onStateButtonPressed(RatingAnswerValues.one),
    icon: const Icon(Icons.star),
    style: ElevatedButton.styleFrom(
      foregroundColor: FormColors.white,
      backgroundColor: currentModel.isOneStarSelected
          ? FormColors.buttonColorGreen
          : FormColors.buttonColorGray,
      padding: _answerButtonPadding,
    ),
  );

  Widget get _twoStarButton => IconButton(
    onPressed: () => onStateButtonPressed(RatingAnswerValues.two),
    icon: const Icon(Icons.star),
    style: ElevatedButton.styleFrom(
      foregroundColor: FormColors.white,
      backgroundColor: currentModel.isTwoStarSelected
          ? FormColors.buttonColorGreen
          : FormColors.buttonColorGray,
      padding: _answerButtonPadding,
    ),
  );

  Widget get _threeStarButton => IconButton(
    onPressed: () => onStateButtonPressed(RatingAnswerValues.three),
    icon: const Icon(Icons.star),
    style: ElevatedButton.styleFrom(
      foregroundColor: FormColors.white,
      backgroundColor: currentModel.isThreeStarSelected
          ? FormColors.buttonColorGreen
          : FormColors.buttonColorGray,
      padding: _answerButtonPadding,
    ),
  );

  Widget get _fourStarButton => IconButton(
    onPressed: () => onStateButtonPressed(RatingAnswerValues.four),
    icon: const Icon(Icons.star),
    style: ElevatedButton.styleFrom(
      foregroundColor: FormColors.white,
      backgroundColor: currentModel.isFourStarSelected
          ? FormColors.buttonColorGreen
          : FormColors.buttonColorGray,
      padding: _answerButtonPadding,
    ),
  );

  Widget get _fiveStarButton => IconButton(
    onPressed: () => onStateButtonPressed(RatingAnswerValues.five),
    icon: const Icon(Icons.star),
    style: ElevatedButton.styleFrom(
      foregroundColor: FormColors.white,
      backgroundColor: currentModel.isFiveStarSelected
          ? FormColors.buttonColorGreen
          : FormColors.buttonColorGray,
      padding: _answerButtonPadding,
    ),
  );
}
