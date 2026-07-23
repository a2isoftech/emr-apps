import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class AddNewSite extends StatelessWidget {
  const AddNewSite({
    required this.siteFormKey,
    required this.controller,
    this.site,
    super.key,
  });

  final GlobalKey<FormState> siteFormKey;
  final ManageSiteController controller;
  final Site? site;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(Insets.gutter),
      child: ChangeNotifierProvider<ManageSiteController>.value(
        value: controller,
        child: Consumer<ManageSiteController>(
          builder: (context, controller, child) {
            controller.init(site);
            return Form(
              key: siteFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EmrTextFormField(
                    labelText: 'Name',
                    binding: controller.data.name,
                    validator: Validators.required,
                  ),
                  EmrTextFormField(
                    labelText: 'Yard Code',
                    binding: controller.data.yardCode,
                    validator: (value) => Validators.join([
                      Validators.required(value),
                      Validators.decimal(value),
                    ]),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
