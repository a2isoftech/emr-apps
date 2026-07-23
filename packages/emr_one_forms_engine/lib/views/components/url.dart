import 'package:emr_one_forms_engine/core/constants/colors.dart';
import 'package:emr_one_forms_engine/core/store/components/url_component.dart';
import 'package:emr_one_forms_engine/views/components/component.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlWidget extends FormComponentWidget<UrlComponent> {
  const UrlWidget({super.key, required super.model});

  @override
  State<UrlWidget> createState() => _UrlWidgetState();
}

class _UrlWidgetState extends FormComponentState<UrlComponent, UrlWidget> {
  @override
  Widget build(BuildContext context) {
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
  }

  Widget _addLabelTitle(UrlComponent currentModel) {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: Container(
            alignment: Alignment.centerLeft,
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

  Widget _addLabelBody(UrlComponent currentModel) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () async {
                  await launchUrl(Uri.parse(currentModel.url));
                },
                child: Text(
                  currentModel.url,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
