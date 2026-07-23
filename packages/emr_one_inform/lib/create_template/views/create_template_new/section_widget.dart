import 'package:dotted_border/dotted_border.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:emr_one_inform/create_template/views/create_template_new/question_placeholder_widget.dart';
import 'package:emr_one_inform/widgets/inform_app_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uuid/uuid.dart';

class SectionWidget extends StatefulWidget {
  const SectionWidget({
    required this.template,
    required this.section,
    required this.onStateChanged,
    required this.onQuestionSelected,
    required this.index,
    super.key,
  });

  final CreateEditFormTemplateInfo template;
  final Section section;
  final void Function() onStateChanged;
  final void Function(Section, Component) onQuestionSelected;
  final int index;

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
    final widComponents = widget.section.components;
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
          DragTarget<String>(
            builder:
                (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return DottedBorder(
                    borderType: BorderType.RRect,
                    padding: const EdgeInsets.all(6),
                    strokeWidth: 2,
                    dashPattern: const [8],
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: (widget.section.components?.isNotEmpty ?? false)
                          ? ReorderableListView(
                              shrinkWrap: true,
                              buildDefaultDragHandles: false,
                              children: [
                                for (final item in widComponents!)
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    key: Key('${widComponents.indexOf(item)}'),
                                    children: [
                                      ReorderableDragStartListener(
                                        index: widComponents.indexOf(item),
                                        child: const FaIcon(
                                          FontAwesomeIcons.upDownLeftRight,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: QuestionPlaceholderWidget(
                                          key: UniqueKey(),
                                          section: widget.section,
                                          component: item,
                                          onStateChanged: widget.onStateChanged,
                                          onQuestionSelected:
                                              widget.onQuestionSelected,
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                              onReorder: (oldIndex, newIndex) {
                                setState(() {
                                  final newItem = widget.section.components!
                                      .removeAt(oldIndex);

                                  widget.section.components!.insert(
                                    (newIndex > oldIndex)
                                        ? newIndex - 1
                                        : newIndex,
                                    newItem,
                                  );
                                });
                              },
                            )
                          : const Center(
                              child: Text(
                                'Drop here',
                                textScaler: TextScaler.linear(2),
                              ),
                            ),
                    ),
                  );
                },
            onAcceptWithDetails: (details) {
              if (details.data == 'DoNotUse') {
                setState(
                  () => widget.section.components!.add(
                    Component(
                      id: 'do-not-use-warning',
                      type: 'Label',
                      title: 'DO NOT USE',
                      messageType: 'error',
                    ),
                  ),
                );
              } else {
                setState(
                  () => widget.section.components!.add(
                    Component(id: const Uuid().v4(), type: details.data),
                  ),
                );
              }
            },
          ),
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
            Row(
              children: [
                ReorderableDragStartListener(
                  index: widget.index,
                  child: const FaIcon(FontAwesomeIcons.upDownLeftRight),
                ),
                const SizedBox(width: 15),
                InformAppLabel(labelText: context.l10n.adhocSectionLabel),
              ],
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
        Divider(color: FormAppColors.lighterGrey, height: 5),
        const SizedBox(height: 5),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _sectionController,
          decoration: FormStyles.textFieldDecoration(
            context,
          ).copyWith(labelText: context.l10n.sectionName),
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
}
