import 'package:emr_one_forms_engine/core/constants/colors.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';
import 'package:emr_one_forms_engine/core/store/components/static_label_component.dart';
import 'package:emr_one_forms_engine/views/components/component.dart';
import 'package:flutter/material.dart';

class StaticLabelWidget extends FormComponentWidget<StaticLabelComponent> {
  const StaticLabelWidget({super.key, required super.model});

  @override
  State<StaticLabelWidget> createState() => _StaticLabelWidgetState();
}

class _StaticLabelWidgetState
    extends FormComponentState<StaticLabelComponent, StaticLabelWidget> {
  late Color? _titleColor;
  late Icon _titleIcon;

  @override
  void initState() {
    super.initState();
    _titleColor = _getTitleColor(currentModel);
    _titleIcon = _getTitleIcon(currentModel);
  }

  @override
  Widget build(BuildContext context) {
    if (currentModel.messageType != null) {
      return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          children: [_addLabelTitle(currentModel), _addLabelBody(currentModel)],
        ),
      );
    } else {
      return Container(child: _addLabelBody(currentModel));
    }
  }

  Widget _addLabelTitle(StaticLabelComponent currentModel) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            color: _titleColor,
            height: 40.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: _titleIcon,
            ),
          ),
        ),
        Expanded(
          flex: 9,
          child: Container(
            alignment: Alignment.centerLeft,
            color: _titleColor,
            height: 40.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                currentModel.title,
                style: FormTextStyles.questionTitle,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _addLabelBody(StaticLabelComponent currentModel) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                currentModel.message,
                style: FormTextStyles.questionStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color? _getTitleColor(StaticLabelComponent currentModel) {
    if (currentModel.messageType == LabelTypes.error) {
      return FormColors.error;
    } else if (currentModel.messageType == LabelTypes.information) {
      return FormColors.information;
    } else if (currentModel.messageType == LabelTypes.warning) {
      return FormColors.warning;
    }
    return null;
  }

  Icon _getTitleIcon(StaticLabelComponent currentModel) {
    if (currentModel.messageType == LabelTypes.error) {
      return FormIcons.error;
    } else if (currentModel.messageType == LabelTypes.information) {
      return FormIcons.information;
    } else if (currentModel.messageType == LabelTypes.warning) {
      return FormIcons.warning;
    } else {
      return FormIcons.error;
    }
  }
}
