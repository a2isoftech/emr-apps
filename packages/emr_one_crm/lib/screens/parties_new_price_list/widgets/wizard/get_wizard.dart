import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/wizard/wizard_container.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/wizard/wizard_content.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/wizard/wizard_header.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/wizard/wizard_sheet.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';

EOWizard getMobileWizardWidget(PartiesPriceListWizardController controller) {
  return EOWizard<PartiesPriceListWizardController>(
    controller: controller,
    contentBuilder: myWizardContentBuilder,
    baseContainerBuilder: myWizardContainerBuilder,
    sheetContainerBuilder: myWizardSheetBuilder,
    sheetHeaderBuilder: myWizardHeaderBuilder,
  );
}
