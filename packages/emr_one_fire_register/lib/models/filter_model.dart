import 'package:emr_one_fire_register/constants/string_constants.dart';

class GeneralFilterModel {
  GeneralFilterModel({required this.title, required this.value});

  final String title;
  final String value;

  static List<GeneralFilterModel> get defaultList => <GeneralFilterModel>[
        GeneralFilterModel(
          title: 'All',
          value: StringConstants.all,
        ),
        GeneralFilterModel(
          title: 'On Site At Zone',
          value: StringConstants.onSite,
        ),
        GeneralFilterModel(
          title: 'Off Site From Yard',
          value: StringConstants.offSite,
        ),
      ];

  static List<GeneralFilterModel> get empTypeList => <GeneralFilterModel>[
        GeneralFilterModel(
          title: 'All',
          value: StringConstants.allUserTypes,
        ),
        GeneralFilterModel(
          title: 'Staff',
          value: StringConstants.staffType,
        ),
        GeneralFilterModel(
          title: 'Visitor',
          value: StringConstants.visitorType,
        ),
      ];
}
