import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNewDoorController extends StatelessWidget {
  const AddNewDoorController({
    required this.doorControllerFormKey,
    required this.controller,
    this.accessController,
    super.key,
  });

  final GlobalKey<FormState> doorControllerFormKey;
  final ManageDoorControllerController controller;
  final AccessController? accessController;

  @override
  Widget build(BuildContext context) {
    return EmrSecurityContainer(
      allowedPermissions: Permissions.getAllowedPermissions(
        Permissions.manageDoorControllers,
      ),
      child: FutureBuilder(
        future: controller.init(accessController),
        builder: (BuildContext ctx, AsyncSnapshot<AccessController?> snapshot) {
          if (ConnectionState.done == snapshot.connectionState) {
            return Padding(
              padding: const EdgeInsetsGeometry.all(Insets.gutter),
              child:
                  ChangeNotifierProvider<ManageDoorControllerController>.value(
                    value: controller,
                    child: Consumer<ManageDoorControllerController>(
                      builder: (context, controller, child) {
                        return Form(
                          key: doorControllerFormKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              EmrTextFormField(
                                labelText: 'Name',
                                binding: controller.data.name,
                                validator: Validators.required,
                              ),
                              EmrTextFormField(
                                enabled: ValueNotifier(
                                  accessController == null,
                                ),
                                labelText: 'Url',
                                binding: controller.data.url,
                                validator: (value) => Validators.join([
                                  Validators.required(value),
                                  Validators.url(value),
                                ]),
                              ),
                              EmrTextFormField(
                                labelText: 'Username',
                                binding: controller.data.username,
                                validator: Validators.required,
                              ),
                              EmrTextFormField(
                                labelText: 'Password',
                                binding: controller.data.password,
                                validator: accessController == null
                                    ? Validators.required
                                    : Validators.none,
                              ),
                              EmrPickerFormField(
                                labelText: 'Site',
                                items: controller.sites,
                                itemTitleText: (item) => item.value,
                                binding: controller.data.siteId,
                                validator: Validators.required,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
            );
          } else {
            return const Center(
              child: SizedBox(
                height: Insets.gutter * 2,
                width: Insets.gutter * 2,
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
