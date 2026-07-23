import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/companies/companies.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/cupertino.dart';

extension CompanyExtension on CompanyFormData {
  ValueNotifier<bool> get isExistingCompanyNotifier {
    return ValueNotifier(id.value.isNotEmpty);
  }
}

class CompanyDetail extends EmrTabBarVerticalViewCard {
  CompanyDetail({
    required super.title,
    required CompanyFormData companyFormData,
    required BuildContext context,
    super.key,
  }) : super(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EmrTextFormField(
                labelText: 'Code',
                hintText: 'e.g. D23',
                binding: companyFormData.code,
                validator: Validators.required,
                readOnly: companyFormData.isExistingCompanyNotifier,
              ),
              EmrTextFormField(
                labelText: 'Short Name',
                hintText: 'e.g. EMR Ltd',
                binding: companyFormData.shortName,
                validator: Validators.required,
              ),
              EmrTextFormField(
                labelText: 'Full Name',
                hintText: 'e.g. EMR Group Limited',
                binding: companyFormData.fullName,
                validator: Validators.required,
              ),
              EmrPickerFormField<Territory>(
                labelText: 'Territory Code',
                binding: companyFormData.territory,
                items: context.coreApi.referenceData.territories,
                itemTitleText: (item) => item.code,
                itemSubtitleText: (item) => item.name,
                validator: Validators.required,
              ),
              EmrSwitchFormField(
                labelText: 'Active',
                binding: companyFormData.active,
                enabled: companyFormData.isExistingCompanyNotifier,
              ),
            ],
          ),
        );
}
