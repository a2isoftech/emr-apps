import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_inform/company_preference/views/preference_widget.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:flutter/material.dart';

class OverridablePreferenceWidget extends StatefulWidget {
  const OverridablePreferenceWidget({
    required this.isDefault,
    required this.parentModel,
    required this.currentModel,
    required this.defaultModel,
    required this.onStateChanged,
    required this.yards,
    required this.overrideTags,
    super.key,
  });

  final bool isDefault;
  final Map<String, dynamic> parentModel;
  final MapEntry<String, dynamic> currentModel;
  final MapEntry<String, dynamic> defaultModel;
  final List<Yard> yards;
  final List<String> overrideTags;
  final void Function() onStateChanged;

  @override
  State<OverridablePreferenceWidget> createState() =>
      _OverridablePreferenceWidgetState();
}

class _OverridablePreferenceWidgetState
    extends State<OverridablePreferenceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: !widget.isDefault &&
                !widget.overrideTags.contains(widget.currentModel.key)
            ? FormAppColors.lightGrey
            : null,
        border: Border.all(
          color: EmrColours.primaryBlue,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          if (!widget.isDefault)
            Row(
              children: [
                Checkbox(
                  value: !widget.overrideTags.contains(widget.currentModel.key),
                  onChanged: (value) {
                    setState(() {
                      if (value!) {
                        if (widget.overrideTags
                            .contains(widget.currentModel.key)) {
                          widget.overrideTags.remove(widget.currentModel.key);
                          setState(
                            () => widget.parentModel[widget.currentModel.key] =
                                widget.defaultModel.value,
                          );
                          widget.onStateChanged();
                        }
                      } else {
                        if (!widget.overrideTags
                            .contains(widget.currentModel.key)) {
                          widget.overrideTags.add(widget.currentModel.key);
                        }
                      }
                    });
                  },
                ),
                const SizedBox(width: 15),
                const Text('Inherit from default'),
              ],
            ),
          AbsorbPointer(
            absorbing: !widget.isDefault &&
                !widget.overrideTags.contains(widget.currentModel.key),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: PreferenceWidget(
                parentModel: widget.parentModel,
                currentModel: widget.currentModel,
                yards: widget.yards,
                onStateChanged: () => widget.onStateChanged(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
