import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PreferenceWidget extends StatefulWidget {
  const PreferenceWidget({
    required this.parentModel,
    required this.currentModel,
    required this.onStateChanged,
    required this.yards,
    super.key,
  });

  final Map<String, dynamic> parentModel;
  final MapEntry<String, dynamic> currentModel;
  final List<Yard> yards;
  final void Function() onStateChanged;

  @override
  State<PreferenceWidget> createState() => _PreferenceWidgetState();
}

class _PreferenceWidgetState extends State<PreferenceWidget> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.currentModel.value is String ||
        widget.currentModel.value is int ||
        widget.currentModel.value is double) {
      _textController.text = widget.currentModel.value.toString();
    } else {
      _textController.text = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return _getContent();
  }

  Widget _getContent() {
    if (isPremitive()) {
      return Row(
        children: [
          Text(widget.currentModel.key),
          const SizedBox(width: 30),
          _getValueWidget(),
        ],
      );
    }

    if (widget.currentModel.key == 'Overrides') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.currentModel.key),
              _addButton(),
            ],
          ),
          _getValueWidget(),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.currentModel.key),
        _getValueWidget(),
      ],
    );
  }

  Widget _addButton() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () async {
                final textController = TextEditingController();
                String? value;
                await showDialog<String>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Yard'),
                    content: TypeAheadFormField<Yard>(
                      onSuggestionSelected: (suggestion) {
                        textController.text = suggestion.yardCode!;
                        value = suggestion.yardCode;
                      },
                      itemBuilder: (context, itemData) => ListTile(
                        title: Text(itemData.yardCode!),
                        subtitle: Text(itemData.displayName),
                      ),
                      suggestionsCallback: (pattern) => widget.yards.where(
                        (e) => e.yardCode!
                            .toLowerCase()
                            .contains(pattern.toLowerCase()),
                      ),
                      textFieldConfiguration: TextFieldConfiguration(
                        controller: textController,
                        decoration:
                            FormStyles.textFieldDecoration(context).copyWith(
                          labelText: 'Yard',
                          hintText: 'Yard',
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => context.pop(),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => context.pop(value),
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                  barrierDismissible: false,
                ).then((yardCode) async {
                  if (yardCode?.isEmpty ?? true) return;
                  final overrideDictionary =
                      widget.currentModel.value as Map<String, dynamic>;
                  final exists =
                      overrideDictionary.keys.any((e) => e == yardCode);
                  if (exists) return;

                  overrideDictionary.addEntries(
                    [MapEntry(yardCode!, widget.parentModel['Value'])],
                  );
                  widget.onStateChanged();
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(context.l10n.add),
                  SvgPicture.asset(
                    FormAppAssetsPath.add,
                    package: FormAppStringLiteral.PackageName,
                    width: 24,
                    colorFilter: ColorFilter.mode(
                      FormAppColors.lightGrey,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  Widget _getValueWidget() {
    if (widget.currentModel.value is bool) {
      return Switch(
        value: widget.currentModel.value as bool,
        onChanged: _updateModel,
      );
    } else if (widget.currentModel.value is String) {
      return Expanded(
        child: InformTextBox(
          key: _formKey,
          controller: _textController,
          onChanged: _updateModel,
        ),
      );
    } else if (widget.currentModel.value is int ||
        widget.currentModel.value is double) {
      return Expanded(
        child: InformTextBox(
          key: _formKey,
          controller: _textController,
          keyboardType: TextInputType.number,
          customValidator: (text) {
            if (text != null &&
                (text.isEmpty ||
                    !isNumeric(text) ||
                    (int.parse(text) < 10 || int.parse(text) > 100))) {
              return 'Enter a valid number between 10-100';
            }
            return null;
          },
          onChanged: _updateModel,
        ),
      );
    } else if (widget.currentModel.value is Map<String, dynamic>) {
      return Padding(
        padding:
            const EdgeInsets.only(left: 50, right: 10, bottom: 10, top: 10),
        child: Column(
          children: ((widget.currentModel.value as Map<String, dynamic>)
                  .entries
                  .isEmpty)
              ? [Container()]
              : (widget.currentModel.value as Map<String, dynamic>)
                  .entries
                  .map(
                    (e) => PreferenceWidget(
                      parentModel:
                          widget.currentModel.value as Map<String, dynamic>,
                      currentModel: e,
                      onStateChanged: () => widget.onStateChanged(),
                      yards: widget.yards,
                    ),
                  )
                  .toList(),
        ),
      );
    }
    return const Text('Unknown');
  }

  bool isPremitive() {
    if (widget.currentModel.value is bool ||
        widget.currentModel.value is int ||
        widget.currentModel.value is double ||
        widget.currentModel.value is String) {
      return true;
    }
    return false;
  }

  void _updateModel(dynamic value) {
    setState(() {
      if (widget.currentModel.value is int ||
          widget.currentModel.value is double) {
        widget.parentModel[widget.currentModel.key] =
            double.parse(value.toString());
      } else {
        widget.parentModel[widget.currentModel.key] = value;
      }
    });
    widget.onStateChanged();
  }

  bool isNumeric(String s) {
    return double.tryParse(s) != null;
  }
}
