import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:emr_one_inform/create_template/views/question_widget.dart';
import 'package:emr_one_inform/widgets/inform_app_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uuid/uuid.dart';

class SectionWidget extends StatefulWidget {
  const SectionWidget({
    required this.template,
    required this.section,
    required this.onStateChanged,
    super.key,
  });

  final CreateEditFormTemplateInfo template;
  final Section section;
  final void Function() onStateChanged;

  @override
  State<SectionWidget> createState() => _SectionWidgetState();
}

class _SectionWidgetState extends State<SectionWidget> {
  final TextEditingController _sectionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _sectionController.text = widget.section.header ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: EmrColours.primaryBlue),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          _textFormFieldSectionTitle(context),
          const SizedBox(height: 10),
          if (widget.section.components?.isNotEmpty ?? false) ...[
            Wrap(
              runSpacing: 10,
              children: widget.section.components!
                  .where(
                    (e) =>
                        e.id != 'do-not-use-warning' && e.id != 'declaration',
                  )
                  .map(
                    (e) => AbsorbPointer(
                      absorbing: e.mroDataProvider != null,
                      child: QuestionWidget(
                        key: UniqueKey(),
                        section: widget.section,
                        component: e,
                        onStateChanged: widget.onStateChanged,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
          _actionButtonAddQuestions(),
        ],
      ),
    );
  }

  Widget _textFormFieldSectionTitle(BuildContext context) {
    _sectionController.selection = TextSelection.fromPosition(
      TextPosition(offset: _sectionController.text.length),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InformAppLabel(
              labelText: context.l10n.adhocSectionLabel,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                onTap: () {
                  widget.template.sections!.remove(widget.section);
                  widget.onStateChanged();
                },
                child: SvgPicture.asset(
                  FormAppAssetsPath.remove,
                  package: FormAppStringLiteral.PackageName,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    FormAppColors.lightGrey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
        // const SizedBox(height: 5),
        Divider(color: FormAppColors.lighterGrey, height: 5),
        const SizedBox(height: 5),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _sectionController,
          decoration: FormStyles.textFieldDecoration(context)
              .copyWith(labelText: context.l10n.sectionName),
          onChanged: (value) {
            setState(() => widget.section.header = value);
          },
          validator: (value) => (value == null || value.isEmpty)
              ? context.l10n.adhocSectionValidation
              : null,
        ),
      ],
    );
  }

  Widget _actionButtonAddQuestions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () => setState(
              () => widget.section.components!
                  .add(Component(id: const Uuid().v4())),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(context.l10n.addAQuestion),
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
  }
}
