import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/companies/cards/cards.dart';
import 'package:emr_one_data_management/screens/companies/companies.dart';
import 'package:emr_sharedtypes/models/company.dart';
import 'package:flutter/material.dart';

class CompanyForm extends StatefulWidget {
  const CompanyForm({super.key, this.code = ''});
  final String code;

  @override
  State<CompanyForm> createState() => _CompanyFormState();
}

class _CompanyFormState extends State<CompanyForm> {
  late final Future<void> _future;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Company _companyDetail = Company(id: '');
  late CompanyFormData? _companyFormData;

  @override
  void initState() {
    super.initState();

    _future = _getCompany();
  }

  Future<void> _getCompany() async {
    if (widget.code.isNotEmpty) {
      _companyDetail = await context.coreApi.referenceData.getCompanyById(
        '${EmrCoreApiConstants.kCompaniesCollection}/${widget.code}',
      );
    }
    _companyFormData = CompanyFormData.fromCompany(_companyDetail);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        return Form(
          key: _formKey,
          child: (snapshot.connectionState != ConnectionState.done)
              ? const Center(child: CircularProgressIndicator())
              : (widget.code.isNotEmpty && _companyDetail.id.isEmpty)
              ? const Center(child: Text('Company not found.'))
              : EmrTabBarVerticalView(
                  onSave: () async {
                    if (_formKey.currentState?.validate() == false) {
                      await EmrModal.showMessageBar(
                        context,
                        'Please correct the validation error(s).',
                        messageType: MessageBarTypes.error,
                      );

                      return;
                    }
                    final company = _companyFormData!.toCompany();
                    final result = await context.coreApi.referenceData
                        .saveCompany(company);

                    if (!result.success) {
                      if (!context.mounted) {
                        return;
                      }

                      await EmrModal.showMessageBar(
                        context,
                        result.message,
                        messageType: MessageBarTypes.error,
                      );
                      return;
                    }

                    if (!context.mounted) {
                      return;
                    }

                    await EmrModal.showMessageBar(
                      context,
                      'Successfully saved',
                    ).then((_) {
                      if (!context.mounted) {
                        return;
                      }

                      context.goNamed(
                        EmrOneDataManagementConstants.kRouteCompanySearch,
                      );
                    });
                  },
                  onCancel: () =>
                      Navigator.of(context, rootNavigator: true).pop(),
                  children: [
                    CompanyDetail(
                      context: context,
                      title: 'Company Details',
                      companyFormData: _companyFormData!,
                    ),
                    CompanyChequeDetails(
                      context: context,
                      title: 'Cheques',
                      companyFormData: _companyFormData!,
                    ),
                  ],
                ),
        );
      },
    );
  }
}
