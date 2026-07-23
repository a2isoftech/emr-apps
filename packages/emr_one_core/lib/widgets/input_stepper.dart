import 'package:emr_one_core/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputStepper extends FormField<String?> {
  InputStepper({
    required TextEditingController controller,
    FormFieldValidator<String?>? validator = Validators.required,
    bool? enabled = true,
    bool? readOnly = false,
    String? hintText = '',
    super.key,
  }) : super(
          validator: (_) => validator!(controller.text),
          builder: (field) => StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              final buttonsEnabled = enabled! && !readOnly!;

              return ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 245),
                child: InputDecorator(
                  decoration:  InputDecoration(
                    hintText: hintText,
                    errorText: field.errorText,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        iconSize: 24,
                        icon: const Icon(Icons.remove),
                        onPressed: buttonsEnabled
                            ? () => setState(() {
                                  var i = int.tryParse(controller.text) ?? 1;
                                  i > 1 ? i = i - 1 : i = 1;
                                  controller.text = '$i';
                                })
                            : null,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            hintText: hintText,
                          ),
                          controller: controller,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          enabled: enabled,
                          readOnly: readOnly!,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: buttonsEnabled
                            ? () => setState(() {
                                  var i = int.tryParse(controller.text) ?? 0;
                                  i = i + 1;
                                  controller.text = '$i';
                                })
                            : null,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
}
