import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/account_contact.dart';
import 'package:emr_one_crm/models/document_sub_type.dart';
import 'package:emr_one_crm/models/document_type.dart';
import 'package:emr_one_crm/models/party_document_upload_details.dart';
import 'package:emr_one_crm/screens/party/sub-screens/party_document_identification_upload_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PartyDocumentIdentificationUploadForm extends StatefulWidget {
  const PartyDocumentIdentificationUploadForm({
    required this.partyDocumentUploadController,
    required this.onSave,
    required this.onClear,
    this.onFormValidationCheck,
    super.key,
  });
  final PartyDocumentUploadController partyDocumentUploadController;
  final void Function(PartyDocumentUploadDetailModel) onSave;
  final VoidCallback onClear;
  final VoidCallback? onFormValidationCheck;

  @override
  State<PartyDocumentIdentificationUploadForm> createState() =>
      _PartyDocumentIdentificationUploadFormState();
}

class _PartyDocumentIdentificationUploadFormState
    extends State<PartyDocumentIdentificationUploadForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  DocumentType? selectedDocumentType;
  DocumentSubType? selectedDocumentSubType;
  AccountContact? selectedContact;
  DateTime? selectedDate;

  final TextEditingController _documentNumberController =
      TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();

  Padding _buildExpirationDate() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        Insets.gutter,
        Insets.gutter,
        Insets.gutter,
      ),
      child: TextFormField(
        controller: _expiryDateController,
        readOnly: true,
        decoration: InputDecoration(
          labelText: context.l10n.expirationDate,
          border: const OutlineInputBorder(),
          prefixIcon: const Icon(Icons.calendar_month),
        ),
        onTap: _updateExpirationDate,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter ${context.l10n.expirationDate}';
          }
          return null;
        },
      ),
    );
  }

  Future<void> _updateExpirationDate() async {
    final result = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 7300)), // for 20 years
      cancelText: context.l10n.cancel,
    );

    if (result == null) {
      return;
    }
    selectedDate = result;
    _expiryDateController.text = DateFormat('yyyy/MM/dd').format(result);
  }

  Padding _buildAccountContactDropdownButtonField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        Insets.gutter,
        Insets.gutter,
        Insets.gutter,
      ),
      child: ValueListenableBuilder(
        valueListenable:
            widget.partyDocumentUploadController.accountContactNotifier,
        builder: (context, value, child) {
          if (value.isNotEmpty) {
            selectedContact =
                value.firstWhere((element) => element.description == 'Main');
          }
          return DropdownButtonFormField(
            initialValue: selectedContact,
            decoration: FormStyles.textFieldDecoration(context)
                .copyWith(labelText: context.l10n.contact),
            hint: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                context.l10n.accountContactHint,
              ),
            ),
            isExpanded: true,
            items: value
                .map(
                  (e) => DropdownMenuItem<AccountContact>(
                    value: e,
                    child: Text(
                      '${e.firstName} ${e.lastName} - ${e.description}',
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedContact = value;
              });
            },
            validator: (value) {
              if (value == null) {
                return 'Please select ${context.l10n.contact}';
              }
              return null;
            },
          );
        },
      ),
    );
  }

  Padding _buildDocumentTypeDropdownButtonField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        Insets.gutter,
        Insets.gutter,
        Insets.gutter,
      ),
      child: ValueListenableBuilder(
        valueListenable:
            widget.partyDocumentUploadController.documentTypesNotifier,
        builder: (context, value, child) {
          return DropdownButtonFormField(
            initialValue: selectedDocumentType,
            decoration: FormStyles.textFieldDecoration(context)
                .copyWith(labelText: context.l10n.documentType),
            hint: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                context.l10n.documentTypeHint,
              ),
            ),
            isExpanded: true,
            items: value
                .map(
                  (e) => DropdownMenuItem<DocumentType>(
                    value: e,
                    child: Text(e.description),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedDocumentType = value;
              });
            },
            validator: (value) {
              if (value == null) {
                return 'Please select ${context.l10n.documentType}';
              }
              return null;
            },
          );
        },
      ),
    );
  }

  Padding _buildSubTypeDropdownButtonField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        Insets.gutter,
        Insets.gutter,
        Insets.gutter,
      ),
      child: ValueListenableBuilder(
        valueListenable:
            widget.partyDocumentUploadController.documentSubTypesNotifier,
        builder: (context, value, child) {
          return DropdownButtonFormField(
            initialValue: selectedDocumentSubType,
            decoration: FormStyles.textFieldDecoration(context)
                .copyWith(labelText: context.l10n.documentSubType),
            hint: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                context.l10n.documentSubTypeHint,
              ),
            ),
            isExpanded: true,
            items: value
                .map(
                  (e) => DropdownMenuItem<DocumentSubType>(
                    value: e,
                    child: Text(e.description),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedDocumentSubType = value;
              });
            },
            validator: (value) {
              if (value == null) {
                return 'Please select ${context.l10n.documentSubType}';
              }
              return null;
            },
          );
        },
      ),
    );
  }

  Padding _buildDocumentNumberTextField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        Insets.gutter,
        Insets.gutter,
        Insets.gutter,
      ),
      child: TextFormField(
        controller: _documentNumberController,
        decoration: FormStyles.textFieldDecoration(context)
            .copyWith(labelText: context.l10n.documentNumber),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter ${context.l10n.documentNumber}';
          }
          if (value.length > 20) {
            return 'Please enter valid document Number';
          }
          return null;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Insets.gutter),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            context.l10n.documentInformation,
            style: EmrOneConstants.kTinyHeadingTextStyle,
          ),
          const SizedBox(
            height: Insets.gutter,
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                _buildAccountContactDropdownButtonField(),
                _buildDocumentTypeDropdownButtonField(),
                _buildSubTypeDropdownButtonField(),
                _buildDocumentNumberTextField(),
                _buildExpirationDate(),
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          widget.partyDocumentUploadController.isSaveProcessing
                              .value = false;
                          formKey.currentState!.reset();
                          _documentNumberController.clear();
                          _expiryDateController.clear();
                          selectedDocumentType = null;
                          selectedDocumentSubType = null;
                          selectedContact = null;
                          widget.onClear();
                        },
                        child: Text(context.l10n.clear),
                      ),
                      const SizedBox(
                        width: Insets.gutter,
                      ),
                      ValueListenableBuilder(
                        valueListenable: widget
                            .partyDocumentUploadController.isSaveProcessing,
                        builder: (context, value, child) {
                          return ElevatedButton(
                            onPressed: value
                                ? null
                                : () async {
                                    widget.onFormValidationCheck?.call();
                                    if (formKey.currentState!.validate()) {
                                      final saveRequest =
                                          PartyDocumentUploadDetailModel(
                                        documentTypeId:
                                            selectedDocumentType?.id ??
                                                Enum$DocumentTypeId.$unknown,
                                        documentSubTypeId:
                                            selectedDocumentSubType?.id ??
                                                Enum$DocumentSubTypeId.$unknown,
                                        contactId: selectedContact?.id ?? 0,
                                        documentNumber:
                                            _documentNumberController.text,
                                        expiryDate: selectedDate!,
                                      );
                                      widget.onSave(saveRequest);
                                    }
                                  },
                            child: Row(
                              children: [
                                if (value) ...[
                                  const CupertinoActivityIndicator(),
                                  const SizedBox(
                                    width: Insets.gutter - 6,
                                  ),
                                ],
                                Text(context.l10n.save),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
